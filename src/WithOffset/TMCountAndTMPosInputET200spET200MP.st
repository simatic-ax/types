NAMESPACE Siemens.Ax.Types.WithOffset

   TYPE CountDataRecCh : STRUCT
         operationMode AT %B0 : Byte := BYTE#16#01;   // Operation mode
         basicParam    AT %B1 : Byte;   // Basic Parameters
         counterInputs AT %B2 : Word := WORD#16#0A01;   // Counter inputs
         hwIRQ         AT %B4 : CountHwIrq;   // Hardware interrupts
         behaviorDQ    AT %B6 : CountBehaviorDQ;   // Behavior DQ
         behaviorDI    AT %B12 : CountBehaviorDI;   // Behavior DI
         values        AT %B16 : CountValues;   // Values
         behaviorLimit AT %B40 : Byte := BYTE#16#48;   // Counter behavior at limits
         value         AT %B41 : Byte;   // Specify measured value
         speed         AT %B42 : Int := 1;   // Increments per unit
         hystersis     AT %B44 : Byte;   // Set hysteresis range
         reserved0     AT %B45 : Byte;   // Reserved
         reserved1     AT %B46 : Byte;   // Reserved
         reserved2     AT %B47 : Byte;   // Reserved
      END_STRUCT;
   END_TYPE

   TYPE CountSSIDataRecCh : STRUCT
         operationMode   AT %B0  : Byte := BYTE#16#01;   // Operation mode
         basicParam      AT %B1  : Byte;   // Basic Parameters
         counterInputs   AT %B2  : Word := WORD#16#0A01;   // Counter inputs
         hwIRQ           AT %B4  : CountHwIrq;   // Hardware interrupts
         behaviorDQ      AT %B6  : CountBehaviorDQ;   // Behavior DQ
         behaviorDI      AT %B12  : CountBehaviorDI;   // Behavior DI
         values          AT %B16  : CountValues;   // Values
         behaviorLimit   AT %B40  : Byte := BYTE#16#48;   // Counter behavior at limits
         value           AT %B41  : Byte;   // Specify measured value
         speed           AT %B42  : Int := 1;   // Increments per unit
         hystersis       AT %B44  : Byte;   // Set hysteresis range
         frameLengthSSI  AT %B45  : Byte;   // Reserved / frame length SSI
         posValueLsbSSI  AT %B46  : Byte;   // Reserved / Bit number LSB of the position value SSI
         posValueMsbSSI  AT %B47  : Byte;   // Reserved / Bit number MSB of the position value SSI
      END_STRUCT;
   END_TYPE

   TYPE Count1DataRec : STRUCT
         majMinVer           AT %B0 : Byte := BYTE#1;   // Major / minor version
         channelParamLength  AT %B1 : Byte := BYTE#48;   // Length of parameter data per channel
         reserved            AT %B2 : Int;   // Reserved
         channelParams       AT %B4 : CountDataRecCh;   // Channel parameters
      END_STRUCT;
   END_TYPE

   TYPE Count1SSIDataRec : STRUCT
         majMinVer           AT %B0 : Byte := BYTE#1;   // Major / minor version
         channelParamLength  AT %B1 : Byte := BYTE#48;   // Length of parameter data per channel
         reserved            AT %B2 : Int;   // Reserved
         channelParams       AT %B4 : CountSSIDataRecCh;   // Channel parameters
      END_STRUCT;
   END_TYPE

   TYPE Count2DataRec : STRUCT
         majMinVer           AT %B0 : Byte := BYTE#1;   // Major / minor version
         channelParamLength  AT %B1 : Byte := BYTE#48;   // Length of parameter data per channel
         reserved            AT %B2 : Int;   // Reserved
         channelParams       AT %B4 : Array[0..1] of CountDataRecCh;   // Channel parameters
      END_STRUCT;
   END_TYPE

   TYPE Count2SSIDataRec : STRUCT
         majMinVer           AT %B0 : Byte := BYTE#1;   // Major / minor version
         channelParamLength  AT %B1 : Byte := BYTE#48;   // Length of parameter data per channel
         reserved            AT %B2 : Int;   // Reserved
         channelParams       AT %B4 : Array[0..1] of CountSSIDataRecCh;   // Channel parameters
      END_STRUCT;
   END_TYPE

   TYPE CountControlCh : STRUCT
         loadValue0    AT %B0 : DWord := DWORD#16#0000;   // Load value 0
         loadValue1    AT %B4 : DWord := DWORD#16#0000;   // Load value 1
         controlByte   AT %B8 : Byte := BYTE#16#00;   // Control byte load value
         swGate        AT %X9.0 : Bool := FALSE;   // Software gate
         tmCtrlDQ0     AT %X9.1 : Bool := FALSE;   //  Enable technological function DQ0
         tmCtrlDQ1     AT %X9.2 : Bool := FALSE;   // Enable technological function DQ1
         setDQ0        AT %X9.3 : Bool := FALSE;   // Set DQ0
         setDQ1        AT %X9.4 : Bool := FALSE;   // Set DQ1
         enSyncUp      AT %X9.5 : Bool := FALSE;   // Enable upward synchronization
         enSyncDown    AT %X9.6 : Bool := FALSE;   // Enable downward synchronization
         enCapture     AT %X9.7 : Bool := FALSE;   // Enable capture function
         resError      AT %X10.0 : Bool := FALSE;   // Reset of saved error states
         resEvent      AT %X10.1 : Bool := FALSE;   // Reset of saved events
         reserved0     AT %X10.2 : Bool := FALSE;   // Reserved
         reserved1     AT %X10.3 : Bool := FALSE;   // Reserved
         reserved2     AT %X10.4 : Bool := FALSE;   // Reserved
         reserved3     AT %X10.5 : Bool := FALSE;   // Reserved
         reserved4     AT %X10.6 : Bool := FALSE;   // Reserved
         SetDir        AT %X10.7 : Bool := FALSE;   // Count direction (with encoder without direction signal)
         reserved5     AT %B11 : Byte;   // Reserved
      END_STRUCT;
   END_TYPE

   TYPE CountFeedbackCh : STRUCT
         countValue       AT %B0 : DInt := 16#0000;   // Current count value
         capturedValue    AT %B4 : DInt := 16#0000;   // Last Capture value acquired
         measuredValue    AT %B8 : Real := REAL#0.0;   // Current measured value
         powerError       AT %X12.0 : Bool := FALSE;   // Incorrect supply voltage L+
         encError         AT %X12.1 : Bool := FALSE;   // Incorrect encoder signal
         ldError          AT %X12.2 : Bool := FALSE;   // Error when loading via control interface
         reserved1        AT %X12.3 : Bool := FALSE;   // Reserved
         reserved2        AT %X12.4 : Bool := FALSE;   // Reserved
         reserved3        AT %X12.5 : Bool := FALSE;   // Reserved
         reserved4        AT %X12.6 : Bool := FALSE;   // Reserved
         reserved5        AT %X12.7 : Bool := FALSE;   // Reserved
         commActive       AT %X13.0 : Bool := FALSE;   // Comm active
         resEventAck      AT %X13.1 : Bool := FALSE;   // Reset of event bits active
         ldStsSlot0       AT %X13.2 : Bool := FALSE;   // Load request for Slot 0 detected and executed (toggling)
         ldStsSlot1       AT %X13.3 : Bool := FALSE;   // Load request for Slot 1 detected and executed (toggling)
         stsReady         AT %X13.4 : Bool := FALSE;   // Digital on-board I/O started up and parameters assigned
         stsSwGate        AT %X13.5 : Bool := FALSE;   // Software gate status
         reserved7        AT %X13.6 : Bool := FALSE;   // Reserved
         reserved8        AT %X13.7 : Bool := FALSE;   // Reserved
         stsDir           AT %X14.0 : Bool := FALSE;   // Direction of last count value change
         stsCount         AT %X14.1 : Bool := FALSE;   // Count pulse detected within last approx. 0.5 s
         stsGate          AT %X14.2 : Bool := FALSE;   // Internal gate status
         stsDQ0           AT %X14.3 : Bool := FALSE;   // Status HSC DQ0
         stsDQ1           AT %X14.4 : Bool := FALSE;   // Status HSC DQ1
         stsDI0           AT %X14.5 : Bool := FALSE;   // Status HSC DI0
         stsDI1           AT %X14.6 : Bool := FALSE;   // Status HSC DI1
         stsDI2           AT %X14.7 : Bool := FALSE;   // Status HSC DI2
         eventZero        AT %X15.0 : Bool := FALSE;   // Zero crossing has occurred
         eventUnderflow   AT %X15.1 : Bool := FALSE;   // Underflow has occurred
         eventOverflow    AT %X15.2 : Bool := FALSE;   // Overflow has occurred
         eventCompare0    AT %X15.3 : Bool := FALSE;   // Comparison event for DQ0 has occurred
         eventCompare1    AT %X15.4 : Bool := FALSE;   // Comparison event for DQ1 has occurred
         eventSync        AT %X15.5 : Bool := FALSE;   // Synchronization has occurred
         eventCapture     AT %X15.6 : Bool := FALSE;   // Capture event has occurred
         stsMeasInterval  AT %X15.7 : Bool := FALSE;   // Count pulse detected in previous measuring interval
      END_STRUCT;
   END_TYPE

END_NAMESPACE
