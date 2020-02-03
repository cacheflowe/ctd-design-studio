import SimpleOpenNI.*;

SimpleOpenNI kinect;

void setup() {
  size(1280,480,P3D);

  kinect = new SimpleOpenNI(this);
  if(kinect.isInit() == false) {
     println("Can't init SimpleOpenNI, maybe the camera is not connected!"); 
     exit();
     return;  
  }
  
  // enable camera feeds & set to mirror
  kinect.setMirror(true);
  kinect.enableRGB();
  kinect.enableDepth();
}

void draw()
{
  // update the cam
  kinect.update();

  // draw rgb & depth images 
  image(kinect.rgbImage(), 0, 0);
  image(kinect.depthImage(), kinect.rgbImage().width, 0);
}
