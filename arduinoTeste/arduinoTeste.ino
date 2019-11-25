#include <SoftwareSerial.h>
SoftwareSerial HM10(10, 9); // RX = 2, TX = 3
char appData;  
String inData = "";
void setup()
{
  Serial.begin(9600);
  Serial.println("HM10 serial started at 9600"); 
  HM10.begin(9600);

}

void loop()
{
  HM10.write(analogRead(0));
}
