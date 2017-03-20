
(cl:in-package :asdf)

(defsystem "hlpr_knowledge_retrieval-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ObjectKnowledge" :depends-on ("_package_ObjectKnowledge"))
    (:file "_package_ObjectKnowledge" :depends-on ("_package"))
    (:file "ObjectKnowledgeArray" :depends-on ("_package_ObjectKnowledgeArray"))
    (:file "_package_ObjectKnowledgeArray" :depends-on ("_package"))
  ))