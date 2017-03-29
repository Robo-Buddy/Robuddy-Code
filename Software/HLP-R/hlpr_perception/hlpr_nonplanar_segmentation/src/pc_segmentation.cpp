/*
 * Software License Agreement (BSD License)
 *
 *  Copyright (c) 2012, Willow Garage, Inc.
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above
 *     copyright notice, this list of conditions and the following
 *     disclaimer in the documentation and/or other materials provided
 *     with the distribution.
 *   * Neither the name of Willow Garage, Inc. nor the names of its
 *     contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 *  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 *  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *  POSSIBILITY OF SUCH DAMAGE.
 *
 */
#include <common.hpp>
#include <pc_segmentation.hpp>

#include <pcl/common/time.h>
#include <pcl/segmentation/organized_connected_component_segmentation.h>
#include <pcl/segmentation/euclidean_cluster_comparator.h>
//#include <utils_pcl_ros.hpp>

// Set up the visualization window
boost::shared_ptr<pcl::visualization::PCLVisualizer>
cloudViewer (pcl::PointCloud<PointT>::ConstPtr cloud)
{
  boost::shared_ptr < pcl::visualization::PCLVisualizer> viewer (new pcl::visualization::PCLVisualizer ("Viewer"));
  viewer->setBackgroundColor (0, 0, 0);
  pcl::visualization::PointCloudColorHandlerCustom<PointT> single_color (cloud, 0, 255, 0);
  viewer->addPointCloud<PointT> (cloud, single_color, "cloud");
  viewer->setPointCloudRenderingProperties (pcl::visualization::PCL_VISUALIZER_POINT_SIZE, 1, "cloud");
  viewer->setPointCloudRenderingProperties (pcl::visualization::PCL_VISUALIZER_OPACITY, 0.15, "cloud");
  viewer->addCoordinateSystem (1.0);
  viewer->initCameraParameters ();
  return (viewer);
}

void
OpenNIOrganizedMultiPlaneSegmentation::removePreviousDataFromScreen (size_t prev_models_size)
{
  char name[1024];
  for (int i = 0; i < prev_models_size; i++)
  {
    /*sprintf (name, "normal_%zu", i);
    viewer->removeShape (name);*/

    sprintf (name, "plane_%d", i);
    viewer->removePointCloud (name);
  }
}

void
OpenNIOrganizedMultiPlaneSegmentation::removePreviousCLustersFromScreen (size_t num_clusters)
{
  for (size_t i = 0; i < num_clusters; i++)
  {
    sprintf (name, "cluster_%lu", i);
    viewer->removeShape (name);
  }
}

// display clusters in with color
void
OpenNIOrganizedMultiPlaneSegmentation::displayEuclideanClusters (const pcl::PointCloud<PointT>::CloudVectorType &clusters, boost::shared_ptr<pcl::visualization::PCLVisualizer> viewer)
{
  unsigned char red [6] = {255,   0,   0, 255, 255,   0};
  unsigned char grn [6] = {  0, 255,   0, 255,   0, 255};
  unsigned char blu [6] = {  0,   0, 255,   0, 255, 255};
  unsigned char color[3];

  for (size_t i = 0; i < clusters.size (); i++)
  {
    color[0] = red[i%6]; color[1] = grn[i%6]; color[2] = blu[i%6];
    displayEuclideanCluster (clusters[i], viewer, color, i);
  }
}

// display each cluster given its color
void
OpenNIOrganizedMultiPlaneSegmentation::displayEuclideanCluster (const pcl::PointCloud<PointT> &cluster, boost::shared_ptr<pcl::visualization::PCLVisualizer> viewer, unsigned char color[], size_t clusterNum)
{
    sprintf (name, "cluster_%lu",clusterNum);
    pcl::visualization::PointCloudColorHandlerCustom<PointT> color0(boost::make_shared<pcl::PointCloud<PointT> >(cluster),color[0],color[1],color[2]);
    if (!viewer->updatePointCloud (boost::make_shared<pcl::PointCloud<PointT> >(cluster),color0,name))
      viewer->addPointCloud (boost::make_shared<pcl::PointCloud<PointT> >(cluster),color0,name);
    viewer->setPointCloudRenderingProperties (pcl::visualization::PCL_VISUALIZER_POINT_SIZE, 5, name);
    viewer->setPointCloudRenderingProperties (pcl::visualization::PCL_VISUALIZER_OPACITY, 0.3, name);
}

void
OpenNIOrganizedMultiPlaneSegmentation::displayPlane(pcl::PointCloud<PointT>::Ptr &contour, int plane_num)
{
  std::cout<<"Plane to be displayed: "<< plane_num <<std::endl;
  sprintf(name,"plane_%d", plane_num);
  pcl::visualization::PointCloudColorHandlerCustom <PointT> color2 (contour, 255,62,62);//red[i], grn[i], blu[i]);
  viewer->addPointCloud (contour, color2, name);
}

void
OpenNIOrganizedMultiPlaneSegmentation::displayPlanes(std::vector<pcl::PointCloud<PointT>::Ptr> &contours)
{
  std::cout<<"Total number of planes got: "<< contours.size() <<std::endl;
  for(int i = 0; i < contours.size(); i++)
  {
    displayPlane(contours[i],i);
  }
}


void
OpenNIOrganizedMultiPlaneSegmentation::setWorkingVolumeThresholds(float* a)
{
  for(int i = 0; i < 6; i++)
    threshs[i] = a[i];

}

//allow for reading a file
void
OpenNIOrganizedMultiPlaneSegmentation::initSegmentation(int color_seg, float distance_thresh, float color_thresh)
{
  // configure normal estimation
  ne.setNormalEstimationMethod (ne.COVARIANCE_MATRIX);
  ne.setMaxDepthChangeFactor (0.025f); //(0.01f);//0.03f
  ne.setNormalSmoothingSize (20.0f);//15.0f//20.0f

  // create a euclidean cluster comparator
switch (color_seg)
{
case 0:
  euclidean_cluster_comparator_ = pcl::MyEuclideanClusterComparator<PointT, pcl::Normal, pcl::Label>::Ptr (new pcl::MyEuclideanClusterComparator<PointT, pcl::Normal, pcl::Label> ());
  break;
case 1:
  euclidean_cluster_comparator_ = pcl::RGBEuclideanClusterComparator<PointT, pcl::Normal, pcl::Label>::Ptr (new pcl::RGBEuclideanClusterComparator<PointT, pcl::Normal, pcl::Label> ());
  break;
case 2:
default:
  euclidean_cluster_comparator_ = pcl::HueEuclideanClusterComparator<PointT, pcl::Normal, pcl::Label>::Ptr (new pcl::HueEuclideanClusterComparator<PointT, pcl::Normal, pcl::Label> ());
break;
}
  euclidean_cluster_comparator_->setDistanceThreshold (distance_thresh, false);
  euclidean_cluster_comparator_->setColorThreshold(color_thresh*color_thresh);

  // configure the multi plane segmentor
  mps.setMinInliers (10000); //(10000);
  mps.setAngularThreshold (0.017453 * 3.0);// ); //4.5// 3 degrees
  mps.setDistanceThreshold (0.01); //0.01 in meters
  mps.setMaximumCurvature(1000.005);//0.001

  //set up color segmentation
  tree = boost::shared_ptr<pcl::search::Search<PointT> > (new pcl::search::KdTree<PointT>);

  reg.setDistanceThreshold (10); //10
  reg.setPointColorThreshold (25); //6      
  reg.setRegionColorThreshold (20); //5
  reg.setMinClusterSize (200); //600   
  reg.setSearchMethod (tree);

  // setup vfh (this is for feature extraction and not for segmentation, consider moving
  vfh.setSearchMethod (tree);

  sor = pcl::StatisticalOutlierRemoval<PointT>::Ptr(new pcl::StatisticalOutlierRemoval<PointT> ());
  sor->setMeanK (10);  
  sor->setStddevMulThresh (1.0);
  sor->setNegative (true);
}

//isFilter: aray of 6 denoting whether to threshold xmin,xmax,ymin,ymax,zmin,zmax and limits is the corresponding limits
//probably there is a better built in way of doing this
void
OpenNIOrganizedMultiPlaneSegmentation::threshXYZ(pcl::PointCloud<PointT>::Ptr out_cloud, bool isFilter[], float limits[])
{
  for (size_t i = 0; i < out_cloud->size(); i++)
  {
          if (out_cloud->points[i].x < limits[0] && isFilter[0])
      out_cloud->points[i].x = std::numeric_limits<float>::quiet_NaN();
    else  if (out_cloud->points[i].x > limits[1] && isFilter[1])
      out_cloud->points[i].x = std::numeric_limits<float>::quiet_NaN();
    else  if (out_cloud->points[i].y < limits[2] && isFilter[2])
      out_cloud->points[i].x = std::numeric_limits<float>::quiet_NaN();
    else  if (out_cloud->points[i].y > limits[3] && isFilter[3])
      out_cloud->points[i].x = std::numeric_limits<float>::quiet_NaN();
    else  if (out_cloud->points[i].z < limits[4] && isFilter[4])
      out_cloud->points[i].x = std::numeric_limits<float>::quiet_NaN();
    else  if (out_cloud->points[i].z > limits[5] && isFilter[5])
      out_cloud->points[i].x = std::numeric_limits<float>::quiet_NaN();
  }
}

std::vector<int> indices;
void OpenNIOrganizedMultiPlaneSegmentation::preProcPointCloud(pcl::PointCloud<PointT>::Ptr filtered_cloud, bool noiseFilter)
{
  bool isFilter[] = {true, true, true, true, true, true};
  threshXYZ(filtered_cloud, isFilter, threshs);

  if(noiseFilter)
  {
	  sor->setInputCloud(filtered_cloud);
	  sor->filter(indices);//filter(*filtered_cloud);

	  for (size_t i = 0; i < indices.size(); i++)
	  {
		filtered_cloud->points[indices[i]].z = std::numeric_limits<float>::quiet_NaN();
	  }
  }
}

void
OpenNIOrganizedMultiPlaneSegmentation::planeExtract(
    pcl::PointCloud<PointT>::Ptr filtered_cloud,
    std::vector<pcl::PlanarRegion<PointT>, Eigen::aligned_allocator<pcl::PlanarRegion<PointT> > > &regions,
    pcl::PointCloud<pcl::Normal>::Ptr normal_cloud,
    std::vector<pcl::ModelCoefficients> &model_coefficients,
    std::vector<pcl::PointIndices> &inlier_indices,
    pcl::PointCloud<pcl::Label>::Ptr labels,
    std::vector<pcl::PointIndices> &label_indices,
    std::vector<pcl::PointIndices> &boundary_indices,
    bool estimate_normals
    )
{
  regions.clear();

  if(estimate_normals)
  {
    // Estimate normals
    double normal_start = pcl::getTime ();
    ne.setInputCloud (filtered_cloud);
    ne.compute (*normal_cloud);
    double normal_end = pcl::getTime ();
    if(verbose)
      std::cout << "Normal Estimation took " << double (normal_end - normal_start) << std::endl;
  }

  // Segment planes
  double plane_extract_start = pcl::getTime ();
  mps.setInputNormals (normal_cloud);
  mps.setInputCloud (filtered_cloud);
  mps.segmentAndRefine (regions, model_coefficients, inlier_indices, labels, label_indices, boundary_indices);
  double plane_extract_end = pcl::getTime ();
  if(verbose)
    std::cout << "Plane extraction took " << double (plane_extract_end - plane_extract_start) << std::endl;
}

void OpenNIOrganizedMultiPlaneSegmentation::computePlaneModels(std::vector<pcl::PlanarRegion<PointT>, Eigen::aligned_allocator<pcl::PlanarRegion<PointT> > > &regions, std::vector<Eigen::Vector4f> &plane_coefficients,
std::vector<pcl::PointCloud<PointT>::Ptr> &contours){
   std::cout<<"Got "<<regions.size()<< "regions. Now finding contours" << std::endl;
   for (size_t i = 0; i < regions.size (); i++)
  {
    Eigen::Vector4f model = regions[i].getCoefficients ();
    plane_coefficients.push_back(model);

    // get the contours of each of the planes
    pcl::PointCloud<PointT>::Ptr contour (new pcl::PointCloud<PointT>);
    contour->points = regions[i].getContour();
    contours.push_back(contour);
  }

   std::cout<<"Got "<<contours.size()<< "contours" << std::endl;
}

/*float OpenNIOrganizedMultiPlaneSegmentation::getClosestPlaneModel(std::vector<pcl::PlanarRegion<PointT>, Eigen::aligned_allocator<pcl::PlanarRegion<PointT> > > &regions, int &closestIndex)
{
  // get the closest plane
  int nRegions = 0;
  float closestDepth = 10.0;//MAX_Z_THRESH;
  closestIndex = -1;

  for (size_t i = 0; i < regions.size (); i++)
  {
    Eigen::Vector3f centroid = regions[i].getCentroid ();
    Eigen::Vector4f model = regions[i].getCoefficients ();
    if (model[3] < closestDepth)
    {
      closestDepth = model[3];
      closestIndex = i;
    }
    nRegions++;
  }

  pcl::PointCloud<PointT>::Ptr contour (new pcl::PointCloud<PointT>);

  return closestDepth;
}*/

int
OpenNIOrganizedMultiPlaneSegmentation::getClosestObject(std::map<size_t, pcl::PointCloud<PointT> > clusterids_to_clusters, size_t &closestObjectIndex)
{
	float closestObjDist = 10.0; //MAX_Z_THRESH
	closestObjectIndex = -1;
	
	for(std::map<size_t, pcl::PointCloud<PointT> >::const_iterator it = clusterids_to_clusters.begin(); it != clusterids_to_clusters.end(); ++it)
	{
		pcl::PointCloud<PointT> cluster = it->second;
		pcl::CentroidPoint<pcl::PointXYZ> centroid;
		for(int i = 0;i<cluster.points.size();i++){
			centroid.add(pcl::PointXYZ (cluster[i].x, cluster[i].y, cluster[i].z));
		}
		PointT centroidPoint;
		centroid.get(centroidPoint);
		if(centroidPoint.z < closestObjDist){
			closestObjDist = centroidPoint.z;
			closestObjectIndex = it->first;
		}
	}
	
	std::cout<<"Found closest object at index: "<<closestObjectIndex<<std::endl;
	return closestObjectIndex;
}



// Check if the same hue clusters are between a distance threshold or else dont merge them
bool
OpenNIOrganizedMultiPlaneSegmentation::checkIfBetweenMergeDistance(pcl::PointCloud<PointT> cluster1, pcl::PointCloud<PointT>  cluster2)
{
	float distaceThreshForMerge = 0.05;
	
	pcl::CentroidPoint<pcl::PointXYZ> centroid1;
	for(int i = 0;i<cluster1.points.size();i++){
			centroid1.add(pcl::PointXYZ (cluster1[i].x, cluster1[i].y, cluster1[i].z));
	}
	PointT centroidPoint1;
	centroid1.get(centroidPoint1);
		
	pcl::CentroidPoint<pcl::PointXYZ> centroid2;
	for(int i = 0;i<cluster2.points.size();i++){
			centroid2.add(pcl::PointXYZ (cluster2[i].x, cluster2[i].y, cluster2[i].z));
	}
	PointT centroidPoint2;
	centroid2.get(centroidPoint2);
	
	// Compute difference between the two centroids
	float dx = centroidPoint1.x - centroidPoint2.x;
	float dy = centroidPoint1.y - centroidPoint2.y;
	float dz = centroidPoint1.z - centroidPoint2.z;
	
	float eu_dist = sqrt (dx*dx + dy*dy + dz*dz);
	//std::cout<<"eu_dist: "<<eu_dist<<std::endl;
	
	if(eu_dist < distaceThreshForMerge)
		return true;
	else
		return false;
}

void     
OpenNIOrganizedMultiPlaneSegmentation::segmentPointCloud(pcl::PointCloud<PointT>::Ptr filtered_cloud,
                                                         pcl::PointCloud<PointT>::CloudVectorType &clusters,
                                                         std::vector<pcl::PointCloud<pcl::Normal> > &cluster_normals,
                                                         std::vector<pcl::PointCloud<PointT>::Ptr> &contours,
                                                         std::vector<Eigen::Vector4f
> &plane_coefficients
                                                         )
{
  std::vector<pcl::PlanarRegion<PointT>, Eigen::aligned_allocator<pcl::PlanarRegion<PointT> > > regions;
  pcl::PointCloud<pcl::Normal>::Ptr normal_cloud (new pcl::PointCloud<pcl::Normal>);

  std::vector<pcl::ModelCoefficients> model_coefficients;
  std::vector<pcl::PointIndices> inlier_indices;
  pcl::PointCloud<pcl::Label>::Ptr labels (new pcl::PointCloud<pcl::Label>);
  std::vector<pcl::PointIndices> label_indices;
  std::vector<pcl::PointIndices> boundary_indices;
  
  planeExtract(filtered_cloud, regions, normal_cloud,model_coefficients,inlier_indices,labels,label_indices,boundary_indices);

  unsigned int min_cluster_size = 30;
 
  // Segment objects
  double segment_start = pcl::getTime ();
  std::vector<size_t> clusterIndices;
  
  // The following are required for an intermediate step
  pcl::PointCloud<PointT>::CloudVectorType temp_clusters;
  std::vector<size_t> temp_clusterIndices;
  std::vector<pcl::PointCloud<pcl::Normal> > temp_cluster_normals;
  
  /*if (regions.size () > 0)
  {
    Eigen::Vector3f used_plane_centroid;
    int closest_index;
    float closestDepth = getClosestPlaneModel(regions, closest_index);
    used_plane_centroid = regions[closest_index].getCentroid ();
    used_plane_model    = regions[closest_index].getCoefficients ();

    if(contour != NULL)
      contour->points = regions[closest_index].getContour();*/
      
	// Take out all the planes in the clusters as they are not objects
    std::vector<bool> plane_labels;
    plane_labels.resize (label_indices.size (), false);
    for (size_t i = 0; i < label_indices.size (); i++)
      if (label_indices[i].indices.size () > MIN_PLANE_SIZE){
        plane_labels[i] = true;
      }
    
    // get the coefficents for all segmented planes
    computePlaneModels(regions, plane_coefficients, contours);

    euclidean_cluster_comparator_->setInputCloud (filtered_cloud);
    euclidean_cluster_comparator_->setLabels (labels);
    euclidean_cluster_comparator_->setExcludeLabels (plane_labels);

    pcl::PointCloud<pcl::Label> euclidean_labels;
    std::vector<pcl::PointIndices> euclidean_label_indices;
    pcl::OrganizedConnectedComponentSegmentation<PointT,pcl::Label> euclidean_segmentation (euclidean_cluster_comparator_);
    euclidean_segmentation.setInputCloud (filtered_cloud);
    euclidean_segmentation.segment (euclidean_labels, euclidean_label_indices);

    for (size_t i = 0; i < euclidean_label_indices.size (); i++)
    {
		// Added by Priyanka - MAX_CLUSTER_SIZE for testing out purposes
      if (euclidean_label_indices[i].indices.size () > MIN_CLUSTER_SIZE && euclidean_label_indices[i].indices.size () < MAX_CLUSTER_SIZE)
      {
        pcl::PointCloud<PointT> cluster;
        pcl::PointCloud<pcl::Normal> cluster_normal;

        pcl::copyPointCloud (*filtered_cloud,euclidean_label_indices[i].indices,cluster);

        if(cluster.size() < min_cluster_size)
          continue;
        
        // Keep track of the selected cluster so far  
        temp_clusters.push_back (cluster);
	    temp_clusterIndices.push_back(i);
	    pcl::copyPointCloud (*normal_cloud, euclidean_label_indices[i], cluster_normal);
		temp_cluster_normals.push_back(cluster_normal);
      }
    }
    
    // If there is something to be seen
    if(temp_clusters.size() != 0){
		// Map to keep track of which cluster IDs belong to which clusters
		std::map<size_t, pcl::PointCloud<PointT> > clusterids_to_clusters;
		for (size_t i = 0; i < temp_clusterIndices.size (); i++)
		{
			clusterids_to_clusters.insert(std::pair<size_t, pcl::PointCloud<PointT> > (temp_clusterIndices[i], temp_clusters[i]));
		}
		
		// Map to keep track of which cluster IDs belong to which normal clouds
		std::map<size_t, pcl::PointCloud<pcl::Normal> > clusterids_to_normals;
		for (size_t i = 0; i < temp_clusterIndices.size (); i++)
		{
			clusterids_to_normals.insert(std::pair<size_t, pcl::PointCloud<pcl::Normal> > (temp_clusterIndices[i], temp_cluster_normals[i]));
		}
		
		// Map to keep track of average hue values of the chosen clusters so far
		std::map<size_t, std::pair<double,double> > cluster_to_avg_hue_sat;
		computeAvgHueSatForClusters(cluster_to_avg_hue_sat, temp_clusters, temp_clusterIndices);
		
		/*for(std::map<size_t, std::pair<double,double> >::const_iterator it = cluster_to_avg_hue_sat.begin(); it != cluster_to_avg_hue_sat.end(); ++it)
		{	
			std::cout << "BEFORE: " << it->first << " " << it->second.first << " " << it->second.second <<"\n";
		}*/
		
		// For the remaining clusters, combine the clusters which are within a difference of 20 average hue value
		// Combine cluster -> have to combine their points and normals as well and keep one of their cluster indices
		std::map<size_t, std::pair<double,double> >::const_iterator it = cluster_to_avg_hue_sat.begin();
		bool merge = true;      // flag to keep track if more merging is possible
		int counter = 0; 
	   
		while(merge)
		{
			std::map<size_t, std::pair<double,double> >::const_iterator it2 = cluster_to_avg_hue_sat.begin();
			bool keep_going = false;
			while(it2 != cluster_to_avg_hue_sat.end())
			{	
				//std::cout<<"I have chosen: "<<it->first<< " and " << it2->first<<std::endl;
				// The two cluster's hue values are within a range of 20 from each other
				if(it->second.first-it2->second.first != 0 && abs(it->second.first-it2->second.first) < 20){
					// Check if they are also between the distance threshold for merging or else dont merge them
					bool shouldMerge = checkIfBetweenMergeDistance(clusterids_to_clusters.find(it->first)->second, clusterids_to_clusters.find(it2->first)->second);
					
					//std::cout<<"Shouldmerge: "<<shouldMerge<<std::endl;
					if(shouldMerge)
					{
						//std::cout<<"I have decided to merge them as "<<  it->second.first << " and " << it2->second.first<<std::endl;
						keep_going = true;
						// Merge the points and normals of both the clouds
						int merged_index = it->first;
						pcl::PointCloud<PointT> merged_cluster = clusterids_to_clusters.find(it->first)->second;
						merged_cluster += clusterids_to_clusters.find(it2->first)->second;
						
						pcl::PointCloud<pcl::Normal> merged_normals = clusterids_to_normals.find(it->first)->second;
						merged_normals += clusterids_to_normals.find(it2->first)->second;
						
						// Get the avg hue and sat of the merged cluster
						std::pair<double, double> HS_1 = cluster_to_avg_hue_sat.find(it->first)->second;
						std::pair<double, double> HS_2 = cluster_to_avg_hue_sat.find(it2->first)->second;
						double merged_avg_hue = (HS_1.first + HS_2.first) / 2;
						double merged_avg_sat = (HS_1.second + HS_2.second) / 2;
						
						// Remove both the clusters from the maps and add the merged one instead
						clusterids_to_clusters.erase(it->first);
						clusterids_to_clusters.erase(it2->first);
						clusterids_to_clusters.insert(std::pair<size_t, pcl::PointCloud<PointT> > (merged_index, merged_cluster));
						
						clusterids_to_normals.erase(it->first);
						clusterids_to_normals.erase(it2->first);
						clusterids_to_normals.insert(std::pair<size_t, pcl::PointCloud<pcl::Normal> > (merged_index, merged_normals));
						
						// VERY HACKY CODE BELOW -> But it works, so keeping it for now!:D
						int prev_it = it->first; 
						if(it != cluster_to_avg_hue_sat.end()){
							cluster_to_avg_hue_sat.erase(it++->first);
							if(it == cluster_to_avg_hue_sat.end())
								it = cluster_to_avg_hue_sat.begin();
						}
						
						if(it->first == it2->first){
							//std::cout<<"Shit i chose: "<<it->first<<std::endl;
							it++;
							if(it == cluster_to_avg_hue_sat.end())
								it = cluster_to_avg_hue_sat.begin();	
							//std::cout<<"Now i changing to: "<<it->first<<std::endl;
						}
						

						cluster_to_avg_hue_sat.erase(it2++->first);
							
						if(it2->first == prev_it){
							//std::cout<<"Shit i2 chose: "<<it2->first<<std::endl;
							it2++;
							//std::cout<<"Now i2 changing to: "<<it2->first<<std::endl;
						}
						cluster_to_avg_hue_sat.insert(std::pair<size_t, std::pair<double, double> > (merged_index, std::pair <double, double> (merged_avg_hue, merged_avg_sat)));
						
						if(cluster_to_avg_hue_sat.size() == 1)
							merge = false;
					}
					else{
						++it2;
					}
				}
				
				else{
					++it2;
				}
			}
			// All merging is complete
			if(keep_going == false){
				counter++;
				// Stop the merge as all combinations for merging are checked
				if(counter >= cluster_to_avg_hue_sat.size()){
					std::cout<<"I am giving up on merging!!!!" << std::endl;
					merge = false;
					counter = 0;
				}
				// Check all the other possibilities as well before stopping the merge
				it++;
				if(it == cluster_to_avg_hue_sat.end()){
					it = cluster_to_avg_hue_sat.begin();
				}
			}
			
			// Still left with clusters to merge 
			if(keep_going == true && it != cluster_to_avg_hue_sat.end()){
				++it;
			}
			if(keep_going == true && it == cluster_to_avg_hue_sat.end()){
				it = cluster_to_avg_hue_sat.begin();
			}
		}
		
		/*for(std::map<size_t, std::pair<double,double> >::const_iterator it = cluster_to_avg_hue_sat.begin(); it != cluster_to_avg_hue_sat.end(); ++it)
		{	
			std::cout << "AFTER: " << it->first << " " << it->second.first << " " << it->second.second <<"\n";
		}*/	
		
		// Find the cluster closest to the Kinect and only publish that
		/*size_t closestObjectIndex;
		getClosestObject(clusterids_to_clusters, closestObjectIndex);
		
		std::cout<<"Closest object index: " << closestObjectIndex<<std::endl;
		
		clusters.push_back (clusterids_to_clusters.find(closestObjectIndex)->second);
		clusterIndices.push_back(closestObjectIndex);
		cluster_normals.push_back(clusterids_to_normals.find(closestObjectIndex)->second);*/
		
		// Push everything into the respective parameters to display
		for (std::map<size_t, std::pair<double,double> >::const_iterator it3 = cluster_to_avg_hue_sat.begin(); it3 != cluster_to_avg_hue_sat.end(); ++it3){
			clusters.push_back (clusterids_to_clusters.find(it3->first)->second);
			clusterIndices.push_back(it3->first);
			cluster_normals.push_back(clusterids_to_normals.find(it3->first)->second);
		}
		
		if(verbose)
		  PCL_INFO ("Got %d euclidean clusters!\n", clusters.size ());
    }
    else 
    {
		std::cout<<"No clusters found to display!\n";
    };
      
	double segment_end = pcl::getTime();
	if(verbose)
		std::cout << "Segmentation took " << double (segment_end - segment_start) << std::endl;
}

void OpenNIOrganizedMultiPlaneSegmentation::computeAvgHueSatForClusters(
         std::map<size_t, std::pair<double, double> > &cluster_to_avg_hue_sat,
         pcl::PointCloud<PointT>::CloudVectorType &clusters,
         std::vector<size_t> &clusterIndices)
{
	for(int k = 0; k < clusters.size(); k++){
		double sum_hue = 0;
		double sum_sat = 0;
		pcl::PointCloud<PointT> cluster = clusters[k];

		for(int i = 0; i < cluster.points.size(); i++){
			std::pair<double, double> current_HS = rgb2huesat((int)cluster.points[i].r,(int)cluster.points[i].g,(int)cluster.points[i].b);
			sum_hue = sum_hue + current_HS.first;	
			sum_sat = sum_sat + current_HS.second;
		}
		//std::cout<<"Sum_hue: " << sum_hue<<endl; 
		double avg_hue = sum_hue/cluster.points.size();
		double avg_sat = sum_sat/cluster.points.size();
		//std::cout<<"Avg_hue: " << avg_hue<<endl;
		
		std::pair<double, double> avg_HS (avg_hue, avg_sat);
		cluster_to_avg_hue_sat.insert(std::pair<size_t, std::pair<double, double> > (clusterIndices[k], avg_HS));
	 }
}

int OpenNIOrganizedMultiPlaneSegmentation::processOnce (
		pcl::PointCloud<PointT>::ConstPtr prev_cl,
		pcl::PointCloud<PointT>::CloudVectorType &clustersOut,
		std::vector<pcl::PointCloud<pcl::Normal> > &clustersOutNormals,
		std::vector<Eigen::Vector4f> &plane_coefficients,
    std::vector<pcl::PointCloud<PointT>::Ptr> &contours,
		bool preProc, bool merge_clusters, bool viewer_enabled, bool noiseFilter)
{
  if(!prev_cl)
    return 0;             

  static size_t prev_models_size = 0;
  static size_t prev_cluster_num = 0;
  double start = pcl::getTime();

  pcl::PointCloud<PointT>::Ptr filtered_prev_cloud(new pcl::PointCloud<PointT>(*prev_cl));
  cloud_mutex.unlock ();
  if(preProc)
    preProcPointCloud(filtered_prev_cloud, noiseFilter);

  // variables for the used plane contours
  pcl::PointCloud<PointT>::CloudVectorType clusters;
  std::vector<pcl::PointCloud<pcl::Normal> > cluster_normals;
  pcl::PointCloud<PointT>::CloudVectorType merged_clusters;
  std::vector<pcl::PointCloud<pcl::Normal> > merged_normals;
  pcl::PointCloud<PointT>::CloudVectorType *used_clusters;
  std::vector<pcl::PointCloud<pcl::Normal> > *used_cluster_normals;

  segmentPointCloud(filtered_prev_cloud, clusters, cluster_normals, contours, plane_coefficients);

  std::cout<<"Got "<< contours.size() << " after returning from segmentPointCloud"<<std::endl;

  if(clusters.empty())
  {
    if(viewer_enabled)
    {
      if (!viewer->updatePointCloud<PointT> (filtered_prev_cloud, "cloud"))
          viewer->addPointCloud<PointT> (filtered_prev_cloud, "cloud");
      viewer->removeShape ("plane_00");
      //displayPlane(contour);

      // clear the visualizer
      removePreviousDataFromScreen (prev_models_size);
      removePreviousCLustersFromScreen(prev_cluster_num);
    }
    return -1;          
   }
  clustersOut.clear();
  used_clusters = &clusters;
  used_cluster_normals = &cluster_normals;
 
  for(int i = 0; i < clusters.size(); i++) 
    clustersOut.push_back(clusters[i]);
  for(int i = 0; i < cluster_normals.size(); i++)
    clustersOutNormals.push_back(cluster_normals[i]);

  if(verbose)
    std::cout << "Number of clusters of interest: " << used_clusters->size() << std::endl;

  if(viewer_enabled)
  {
    if (!viewer->updatePointCloud<PointT> (filtered_prev_cloud, "cloud"))
      viewer->addPointCloud<PointT> (filtered_prev_cloud, "cloud");

    // clear the visualizer
    removePreviousDataFromScreen (prev_models_size);
    removePreviousCLustersFromScreen(prev_cluster_num);

    // Draw Visualization
    displayPlanes(contours);
    displayEuclideanClusters (*used_clusters, viewer);
  }

  prev_models_size = contours.size();
  prev_cluster_num = used_clusters->size();

  double end = pcl::getTime();
  if(verbose)
    std::cout << "Processing loop took " << double (end - start) << std::endl;

  return 0; 
}
