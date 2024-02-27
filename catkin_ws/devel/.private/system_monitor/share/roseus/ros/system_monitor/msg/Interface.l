;; Auto-generated. Do not edit!


(when (boundp 'system_monitor::Interface)
  (if (not (find-package "SYSTEM_MONITOR"))
    (make-package "SYSTEM_MONITOR"))
  (shadow 'Interface (find-package "SYSTEM_MONITOR")))
(unless (find-package "SYSTEM_MONITOR::INTERFACE")
  (make-package "SYSTEM_MONITOR::INTERFACE"))

(in-package "ROS")
;;//! \htmlinclude Interface.msg.html


(defclass system_monitor::Interface
  :super ros::object
  :slots (_name _state _input _output _mtu _received _transmitted _collisions _rxError _txError ))

(defmethod system_monitor::Interface
  (:init
   (&key
    ((:name __name) "")
    ((:state __state) "")
    ((:input __input) 0.0)
    ((:output __output) 0.0)
    ((:mtu __mtu) 0)
    ((:received __received) 0.0)
    ((:transmitted __transmitted) 0.0)
    ((:collisions __collisions) 0)
    ((:rxError __rxError) 0)
    ((:txError __txError) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _state (string __state))
   (setq _input (float __input))
   (setq _output (float __output))
   (setq _mtu (round __mtu))
   (setq _received (float __received))
   (setq _transmitted (float __transmitted))
   (setq _collisions (round __collisions))
   (setq _rxError (round __rxError))
   (setq _txError (round __txError))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:input
   (&optional __input)
   (if __input (setq _input __input)) _input)
  (:output
   (&optional __output)
   (if __output (setq _output __output)) _output)
  (:mtu
   (&optional __mtu)
   (if __mtu (setq _mtu __mtu)) _mtu)
  (:received
   (&optional __received)
   (if __received (setq _received __received)) _received)
  (:transmitted
   (&optional __transmitted)
   (if __transmitted (setq _transmitted __transmitted)) _transmitted)
  (:collisions
   (&optional __collisions)
   (if __collisions (setq _collisions __collisions)) _collisions)
  (:rxError
   (&optional __rxError)
   (if __rxError (setq _rxError __rxError)) _rxError)
  (:txError
   (&optional __txError)
   (if __txError (setq _txError __txError)) _txError)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _state
    4 (length _state)
    ;; float32 _input
    4
    ;; float32 _output
    4
    ;; int32 _mtu
    4
    ;; float32 _received
    4
    ;; float32 _transmitted
    4
    ;; int32 _collisions
    4
    ;; int32 _rxError
    4
    ;; int32 _txError
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; float32 _input
       (sys::poke _input (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _output
       (sys::poke _output (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _mtu
       (write-long _mtu s)
     ;; float32 _received
       (sys::poke _received (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _transmitted
       (sys::poke _transmitted (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _collisions
       (write-long _collisions s)
     ;; int32 _rxError
       (write-long _rxError s)
     ;; int32 _txError
       (write-long _txError s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _input
     (setq _input (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _output
     (setq _output (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _mtu
     (setq _mtu (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _received
     (setq _received (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _transmitted
     (setq _transmitted (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _collisions
     (setq _collisions (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rxError
     (setq _rxError (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _txError
     (setq _txError (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get system_monitor::Interface :md5sum-) "5b547a89cc3995f4c9d69adede1755a6")
(setf (get system_monitor::Interface :datatype-) "system_monitor/Interface")
(setf (get system_monitor::Interface :definition-)
      "string name
string state
#input/output speed in MB/s
float32 input
float32 output
int32 mtu
#Data received/transmitted in MB
float32 received
float32 transmitted
int32 collisions
int32 rxError
int32 txError

")



(provide :system_monitor/Interface "5b547a89cc3995f4c9d69adede1755a6")


