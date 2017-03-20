#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/kristopher/vector_ws/src/vector_v1/vector_desktop/vector_dashboard"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/kristopher/vector_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/kristopher/vector_ws/install/lib/python2.7/dist-packages:/home/kristopher/vector_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/kristopher/vector_ws/build" \
    "/usr/bin/python" \
    "/home/kristopher/vector_ws/src/vector_v1/vector_desktop/vector_dashboard/setup.py" \
    build --build-base "/home/kristopher/vector_ws/build/vector_v1/vector_desktop/vector_dashboard" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/kristopher/vector_ws/install" --install-scripts="/home/kristopher/vector_ws/install/bin"
