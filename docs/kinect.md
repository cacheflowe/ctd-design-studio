# Working with the Kinect (and other cameras)

## Platforms to use

* Processing
* openframeworks
* Cinder
* Unity
* TouchDesigner

## Cool uses of depth cameras 

* [Cedric Kiefer](https://vimeo.com/38840688)
* [Universal Everything](https://www.thisiscolossal.com/2019/05/future-you-universal-everything/)
* [Biborg Lab](https://www.youtube.com/watch?v=xw-7R1tRvdM)
* [Vincent Houze](https://www.instagram.com/p/BZWeV1WnJDv/)
* [Daniel Rozin](https://www.youtube.com/watch?v=ck_soI_Agy8)
* [Waltz Binaire](https://www.youtube.com/watch?v=FnulH8TrZVo)
* [Jeremy Bailey](https://www.youtube.com/watch?v=Q1gbQXwBKxU)
* [OhHeckYeah](https://vimeo.com/99276873)

## The hardware

  * Kinect [v1](https://i0.wp.com/skarredghost.com/wp-content/uploads/2016/12/20161129_202059.jpg?zoom=2&resize=800%2C445&ssl=1) vs [v2](https://i2.wp.com/zugara.com/wp-content/uploads/Kinect-1-vs-Kinect-2-Tech-Comparison.png) vs [Azure](https://azure.microsoft.com/en-us/services/kinect-dk/)
  * Alternative depth cameras ([Intel Realsense](https://www.intel.com/content/www/us/en/architecture-and-technology/realsense-overview.html), [Zed](https://www.stereolabs.com/) - both work in daylight)
  * Failure points (ambient sunlight)

## The data

* [Skeleton](https://github.com/totovr/SimpleOpenNI/tree/master/SimpleOpenNI/SimpleOpenNI/examples/OpenNI/Tracking_Skeleton) [detection](https://github.com/totovr/SimpleOpenNI/blob/master/Assets/Kinect_V2_Tracking.gif) vs [depth data](https://www.youtube.com/watch?v=E1eIg54clGo)
* Shiffman: Kinect and Processing Tutorial ([playlist](https://www.youtube.com/playlist?list=PLRqwX-V7Uu6ZMlWHdcy8hAGDy6IaoxUKf)):
  * [What is the Kinect?](https://www.youtube.com/watch?v=QmVNgdapJJM)
  * [The Depth Image](https://www.youtube.com/watch?v=QmVNgdapJJM)
  * [Raw Depth Data - Point Clouds and Thresholds](https://www.youtube.com/watch?v=E1eIg54clGo)
  * [Average Point Hand Tracking](https://www.youtube.com/watch?v=Kr4s5sLoROY)
  * [Closest or Highest Point Tracking](https://www.youtube.com/watch?v=nYCvdtZGveg)

## Installing for Processing

* Kinect v1: [SimpleOpenNI](https://github.com/totovr/SimpleOpenNI) - examples & documentation
  * You need to manually install the library into your Processing libraries directory in the Processing directory in your user account's filesystem
  * If you're on OS X and this library doesn't work, try [OpenKinect for Processing](https://github.com/shiffman/OpenKinect-for-Processing), which is installed from Processing's library manager 
* Kinect v2 (OS X): [OpenKinect for Processing](https://github.com/shiffman/OpenKinect-for-Processing) - install from Processing's library manager
* Kinect v2 (Windows): [KinectPV2](https://github.com/ThomasLengeling/KinectPV2) - install from Processing's library manager
* On Windows, you also need to install the original MS drivers
  * Kinect v1 uses [SDK 1.8](https://www.microsoft.com/en-us/download/details.aspx?id=40278)
  * Kinect v2 uses [SDK 2.0](https://www.microsoft.com/en-us/download/details.aspx?id=44561)

## Demos

* Show [demos](../code/kinect/) & explain code
* Haxademic demos
  * [Demo_Kinect_ConfigureApp](https://github.com/cacheflowe/haxademic/blob/master/src/com/haxademic/demo/hardware/depthcamera/shared/Demo_Kinect_ConfigureApp.java)
  * [Demo_KinectRegionGrid](https://github.com/cacheflowe/haxademic/blob/master/src/com/haxademic/demo/hardware/depthcamera/shared/Demo_KinectRegionGrid.java)
  * [Demo_KinectDepthSilhouetteSmoothed](https://github.com/cacheflowe/haxademic/blob/master/src/com/haxademic/demo/hardware/depthcamera/shared/Demo_KinectDepthSilhouetteSmoothed.java)
  * [Demo_KinectAmbientActivityMonitor](https://github.com/cacheflowe/haxademic/blob/master/src/com/haxademic/demo/hardware/depthcamera/shared/Demo_KinectAmbientActivityMonitor.java)
  * [Demo_Kinect_RoomScan](https://github.com/cacheflowe/haxademic/blob/master/src/com/haxademic/demo/hardware/depthcamera/shared/Demo_Kinect_RoomScan.java)
    * What to do with a silhouette map?
    * Blob detection
    * Scan image for black & white pixels meeting
    * Adapt BB technique
* Show [Kinect v2 demos](https://github.com/ThomasLengeling/KinectPV2/tree/master/KinectPV2/examples)

## Other user-tracking solutions

### Camera-based:

* Shiffman: [Introduction to Computer Vision](https://www.youtube.com/watch?v=h8tk0hmWB44)
* Webcam / CV doing Kinect-like things
  * [Demo_BufferFrameDifference](https://github.com/cacheflowe/haxademic/blob/master/src/com/haxademic/demo/hardware/webcam/Demo_BufferFrameDifference.java)
  * [Demo_BufferFrameDifference_MaskedWebcam](https://github.com/cacheflowe/haxademic/blob/master/src/com/haxademic/demo/hardware/webcam/Demo_BufferFrameDifference_MaskedWebcam.java)
  * [Demo_FrameDifferenceShapesLauncher](https://github.com/cacheflowe/haxademic/blob/master/src/com/haxademic/demo/hardware/webcam/Demo_FrameDifferenceShapesLauncher.java)
  * [Demo_ColorObjectDetection](https://github.com/cacheflowe/haxademic/blob/master/src/com/haxademic/demo/hardware/webcam/Demo_ColorObjectDetection.java)
  * [Demo_BufferActivityMonitor_flipped](https://github.com/cacheflowe/haxademic/blob/master/src/com/haxademic/demo/hardware/webcam/Demo_BufferActivityMonitor_flipped.java)
  * MagicMirrors
* ML tools
  * [YOLO](https://pjreddie.com/darknet/yolo/)
  * [PoseNet](https://github.com/tensorflow/tfjs-models/tree/master/posenet)
  * [OpenPose](https://github.com/CMU-Perceptual-Computing-Lab/openpose)
  * [DensePose](https://www.youtube.com/watch?v=Dhkd_bAwwMc)

### Other devices

* [LIDAR](https://www.slamtec.com/en/Lidar/A3)
* [BlackTrax](https://blacktrax.cast-soft.com/)