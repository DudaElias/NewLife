
int sensorPin = 0;
int period = 200;

int HearHate_porSegundo=0;
int HearHate_porMin = 0;
int count = 0;
int countBeat=0;
const int Calibration_Value = 10;

float oldValue = 0;
float rawValue = 0;
void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
  delay(100);
}

void loop() {
rawValue = analogRead (sensorPin);

   if( abs(rawValue - oldValue) >= Calibration_Value)
   {
      countBeat++;
   }
   count++;

   //cada 1 segundo faz essa conta
   if(count == 10)
   {
      HearHate_porSegundo = countBeat;
      HearHate_porMin =60*countBeat;
      Serial.print("HearHate_porSegundo");
      Serial.println(HearHate_porSegundo);
      Serial.print("HearHate_porMin");
      Serial.println(HearHate_porMin);
      count=0;
      countBeat=0;
   }
   
  oldValue = rawValue;
  delay(period);
}

