## Arduino Overview

### What is the Arduino?

- A [USB-connected microcontroller](https://store-cdn.arduino.cc/usa/catalog/product/cache/1/image/1040x660/604a3538c15e081937dbfbd20aa60aad/a/0/a000066_featured_1_2.jpg) - a flexible platform to build your own hardware system with custom [embedded](https://en.wikipedia.org/wiki/Embedded_software) [software](https://www.sam-solutions.com/blog/top-ten-embedded-software-development-tools/)
  - If you open up any piece of electronics, and you'll find a less flexible [circuitboard](https://upload.wikimedia.org/wikipedia/commons/3/3d/Inside_radio_clock.jpg) built for a very specific purpose
  - Arduino lets you build your own. If you wanted to mass produce your creation, you could manufacture your own PCB board and microcontroller
- Hardware I/O:
  - Inputs
    - Sensors
    - Switches
    - Other devices
  - Outputs
    - LEDs
    - Screens
    - Motors
- Alternatives to Arduino
  - [Raspberry Pi](https://www.raspberrypi.org/)
  - [Teensy](https://www.pjrc.com/teensy/)
  - [Tessel](https://tessel.io/)
  - [PlatformIO](https://platformio.org/)
  - [Johnny-Five](http://johnny-five.io/)
  - [Frightprops](https://www.frightprops.com/boobox-flexmax.html)
  
### Use cases

- Extending your computer with custom hardware I/O
  - [Nike React treadmill](https://cacheflowe.com/code/installation/epic-react-instant-go)
  - [FF AR screens](https://cacheflowe.com/secret/ff-prototype.mp4)
  - [LIDAR person detection](https://github.com/cacheflowe/haxademic/blob/master/arduino/VL53L1X/VL53L1X.ino)
- Building standalone devices
  - [Automatic plant watering system](https://www.instructables.com/Arduino-Automatic-Watering-System/)
  - [LIDAR + LED strip](https://github.com/cacheflowe/haxademic/blob/master/arduino/VL53L1X_FastLED/VL53L1X_FastLED.ino)
- Hacking into existing electronics
  - [Telephone soundboard hack](https://vimeo.com/202334449)
- [Arduino vs Raspberry Pi](https://makezine.com/2015/12/04/admittedly-simplistic-guide-raspberry-pi-vs-arduino/)

### How to use it

- Choose your [Arduino model](https://www.arduino.cc/en/main/boards)
  - [Knock-off brands](https://www.amazon.com/ATmega328P-Controller-Module-CH340G-Arduino/dp/B07RQ8S1LG/) are fine
- Connect Arduino device to computer via USB
  - Check baud rate. This is the speed of serial communication between your computer and the Arduino when your program is running. It must match between your program and your receiving desktop app (Arduino's Serial Monitor or your own app in Processing, Node.js, Unity, etc)
- [Connect hardware](https://www.researchgate.net/profile/Tracey_Booth/publication/259581958/figure/fig1/AS:297156150874112@1447858955606/Example-of-a-prototype-using-an-Arduino-microcontroller-board.png) to ports on [Arduino](https://store-cdn.arduino.cc/usa/catalog/product/cache/1/image/1040x660/604a3538c15e081937dbfbd20aa60aad/a/0/a000066_featured_1_2.jpg)
- [Write some code](https://www.arduino.cc/reference/en/) to upload onto your Arduino
  - You can upload one program at a time (aka embedded software), which replaces the previous app
  - The language is c++, and written in the Arduino editor
  - There are 4 main components of an Arduino program
    - Imports (references to downloaded libraries)
    - Global variables for your own logic
    - `setup()`
    - `loop()`
  - Find the libraries to use with your hardware
    - Look at the examples that come with the library (found inside the Arduino IDE and on GitHub)
    - Sometimes you have to try different libraries. If one isn't working, try another (assuming there is another)!
  
  - Debugging
    - First check: does your program compile? 
      - Fix your errors
      - Make sure the libraries work on your Arduino device
      - Make sure you have the right device port (`COM` on Windows, `/tty` on Mac) selected to upload to your device
      - Make sure you have the right device selected (Arduino Uno vs Nano, for example)
    - The built-in `Serial` object lets you write data to a [console](https://www.freecodecamp.org/news/you-should-have-better-logging-now-fbab2f667fac/) via the USB cable, specifically the Serial Monitor inside the Arduino IDE. This is also how you can send messages to a Processing (or other desktop) app, by [reading from the Serial port](https://learn.sparkfun.com/tutorials/connecting-arduino-to-processing/all) on the other end.
    - Attach a screen or LED light that updates with your code
- Connect your electronics components & hardware
  - Arduino supplies power to devices & reads or writes data with electrical signals
  - Voltage matters: 5, 12, 24v are the most common. Arduino has 3.3v & 5v outputs
  - [Digital vs Analog pins](https://www.allaboutcircuits.com/projects/using-the-arduinos-analog-io/)
  - General components for Arduino development
    - [Jumper wires](https://www.exploringarduino.com/parts/jumper-wires/)
    - [Breadboard](https://cdn-learn.adafruit.com/guides/cropped_images/000/000/114/medium640/breadboard.jpg?1520539890)
    - [Pin headers](https://en.wikipedia.org/wiki/Pin_header#/media/File:6_Pin_Header.jpg)
      - [Arduino pinout detail](https://www.theengineeringprojects.com/wp-content/uploads/2018/06/Introduction-to-Arduino-UNO.png)
    - [Lever nuts](https://images-na.ssl-images-amazon.com/images/I/616zsAdDLyL._AC_SX679_.jpg) (solderless clips)
    - [Soldering tools](https://learn.adafruit.com/adafruit-guide-excellent-soldering)
    - Power supply ([batteries](https://i.ebayimg.com/images/g/MEAAAOSwxuxbEhT6/s-l1600.jpg) or [wall plug](https://images-na.ssl-images-amazon.com/images/I/31cMIPPiSpL._AC_.jpg))
    - [Prototyping board](http://2.bp.blogspot.com/_ZVgJtItVgnk/SwYL1cxAlcI/AAAAAAAAAmg/B93YDLSgDn4/s400/DIY-Vacuum-Tube-Prototyping-Board.jpg) (I often use scrap wood)
  - Specific components for constructing your piece
    - Input hardware (sensors, etc)
    - Output hardware (LEDs, etc)
- Build a bridge to your desktop software (Processing, Unity)
  - Communicate to the Arduino via a serial connection
    - This extends your computer with custom hardware beyond standard peripherals like mouse, keyboard, monitor. How about a moisture sensor? Or LEDs? Or a motor?
    - Read and/or write serial data
    - Serial Monitor for debugging
