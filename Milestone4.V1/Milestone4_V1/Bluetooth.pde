
//importieren der Bluetooth Bibliothek
import processing.serial.*;

// Variable für die Bluetooth Kommunikation vom Typ "Serial"
Serial myPort;

void Bluetooth () {
  String COM7 = Serial.list()[0];
  myPort = new Serial(this, COM7, 9600);

  String[] beispiel = new String[20];

  if (myPort.available() > 0) {
    
    COM7.readBytes()
  }

  /*
 * Aufbau der Bluetooth Nachricht:
   * Byte 1 und 2   = Anzahl alle nachfolgend übertragenden Bytes
   * Byte 3 und 4   = Message Counter (sollte 1 sein)
   * Byte 5 und 6   = Datentyp (Da die App nur IEEE-FP Zahlen sendet sollten die Bytes immer 81 und 9E sein)
   * Byte 7         = Anzahl Bytes für den Namen der sendenden Mailbox ==> Also 7 Bytes mit dem Leerzeichen am Ende
   * Byte 8 bis 14  = Name der Mailbox
   * Byte 13        = Enthält B1 oder A1 Dadurch kann uterschieden werden ob Geschwindigkeit oder Winkel gesendet wurde!!!
   * Byte 15 und 16 = Payload der Nummer (da es sich um eine IEEE-FP Zahl handelt sollten es immer 4 sein)
   * Byte 17 bis 20 = IEEE-FP Zahl wobei zu beachten ist das 20 das Höchstwertige Byte ist!!!
   */

  /**
   * Nimmt die gesendete Bluetooth Nachricht an und gibt sie als String Array zurück
   * Der Aufbau der Nachricht ist oben beschrieben.
   */
  String[] getBluetoothMessageArray() {
    int [] decData = new int[20];
    byte[] read = new byte[20];
    myPort.readBytes(read);

    /*
   * konvertiert das byte Array in ein Integer Array  
     */

    for (int i = 0; i<20; i++) {
      if (read[i] >= 0) {
        decData[i] = read[i];
      } else {
        decData[i] = 128 + (128 + read[i]);
      }
    }

    /*
  * konvertiert die integer zahlen in die Binär Darstellung 
     * und fügt sie in ein String Array hinzu
     */

    String bluetoothMessage[] = new String[20];
    for (int i = 0; i < 20; ++i) {
      bluetoothMessage[i] = "";
    }
    for (int i = 19; i >= 0; i--) {
      bluetoothMessage[i] += binary(decData[i]).substring(24, 28);
      bluetoothMessage[i] += binary(decData[i]).substring(28, 32);
    }
    return bluetoothMessage;
  }

  /**
   *  Konvertiert eine Zahl in der IEEE FP Darstellung in einen float und gibt ihn zurück
   *  Die Zahl muss in binär Darstellung und als String erfolgen.
   *
   *  Bsp: println(simpleIEEEConversion("01000001110110000000000000000000"));
   *  => 27.0
   */
  float simpleIEEEConversion(String str) {
    float result = 0;
    if (str.charAt(0) == '0') {
      result = Float.intBitsToFloat(unbinary(str));
    } else {
      str = str.substring(1, 32);
      result = -Float.intBitsToFloat(unbinary(str));
    }
    return result;
  }
