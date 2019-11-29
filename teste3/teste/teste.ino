
int sensorPin = 0;
int period = 100;
#include <SoftwareSerial.h>
SoftwareSerial HM10(10, 11);
int HearHate_porSegundo=0;
int HearHate_porMin = 0;
int count = 0;
int countBeat=0;
const int Calibration_Value = 10;

float oldValue = 0;
float rawValue = 0;
void setup() {
  HM10.begin(9600);
  Serial.begin(9600);
  delay(100);
}

void loop() {
rawValue = analogRead (sensorPin); // lê o valor que está vindo do sensor

  //verifica se o móulo está de acordo com o valor calibrado
   if( abs(rawValue - oldValue) >= Calibration_Value) 
   {
      //adiciona um na variavel que conta a qtd de batimentos
      countBeat++;
   }
   count++;

   //cada 1 segundo faz essa conta
   if(count == 10)
   {
      //variavel que guarda a quantidade de batimentos por segundo
      HearHate_porSegundo = countBeat;
      //variavel que guarda a quantidade de batimentos por minuto
      HearHate_porMin =60*countBeat;
      Serial.print("HearHate_porSegundo");
      Serial.println(HearHate_porSegundo);
      Serial.print("HearHate_porMin");
      Serial.println(HearHate_porMin);
      HM10.println(HearHate_porMin);
      count=0;
      countBeat=0;
   }

   //valor antigo recebe o novo valor
  oldValue = rawValue;
  delay(100);
}
