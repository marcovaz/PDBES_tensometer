#include "PCD8544.h"

// pin 7 - Serial clock out (SCLK)
// pin 6 - Serial data out (DIN)
// pin 5 - Data/Command select (D/C)
// pin 4 - LCD chip select (CS)
// pin 3 - LCD reset (RST)
PCD8544 nokia = PCD8544(7, 6, 5, 4, 3);

int sensorPin = A0;    // select the input pin for the potentiometer
int sensorValue = 0;  // variable to store the value coming from the sensor

void setup(void) {
  Serial.begin(9600);
  
  // init screen
  nokia.init();

  // draw a string at location (0,0)
  nokia.setCursor(0, 0);
  nokia.print("PDESB");
  nokia.setCursor(0, 10);
  nokia.print("Tensometer");
  nokia.display();
  
}

void loop(void) {

// read the value from the sensor:
  sensorValue = 0;    
  sensorValue = analogRead(sensorPin);    
  nokia.setCursor(20, 20);
  nokia.print((double)sensorValue*((double)5/(double)1024));
  nokia.display();
  Serial.println((double)sensorValue*((double)5/(double)1024));

}


