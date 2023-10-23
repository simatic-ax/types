NAMESPACE Siemens.Ax.Types.NoOffset

   TYPE CountDataRecCh : STRUCT
         operationMode  : Byte := BYTE#16#01;   // Operation mode
         basicParam     : Byte;   // Basic Parameters
         counterInputs  : Word := WORD#16#0A01;   // Counter inputs
         hwIRQ          : CountHwIrq;   // Hardware interrupts
         behaviorDQ     : CountBehaviorDQ;   // Behavior DQ
         behaviorDI     : CountBehaviorDI;   // Behavior DI
         values         : CountValues;   // Values
         behaviorLimit  : Byte := BYTE#16#48;   // Counter behavior at limits
         value          : Byte;   // Specify measured value
         speed          : Int := 1;   // Increments per unit
         hystersis      : Byte;   // Set hysteresis range
         reserved0      : Byte;   // Reserved
         reserved1      : Byte;   // Reserved
         reserved2      : Byte;   // Reserved
      END_STRUCT;
   END_TYPE

   TYPE CountSSIDataRecCh : STRUCT
         operationMode     : Byte := BYTE#16#01;   // Operation mode
         basicParam        : Byte;   // Basic Parameters
         counterInputs     : Word := WORD#16#0A01;   // Counter inputs
         hwIRQ             : CountHwIrq;   // Hardware interrupts
         behaviorDQ        : CountBehaviorDQ;   // Behavior DQ
         behaviorDI        : CountBehaviorDI;   // Behavior DI
         values            : CountValues;   // Values
         behaviorLimit     : Byte := BYTE#16#48;   // Counter behavior at limits
         value             : Byte;   // Specify measured value
         speed             : Int := 1;   // Increments per unit
         hystersis         : Byte;   // Set hysteresis range
         frameLengthSSI    : Byte;   // Reserved / frame length SSI
         posValueLsbSSI    : Byte;   // Reserved / Bit number LSB of the position value SSI
         posValueMsbSSI    : Byte;   // Reserved / Bit number MSB of the position value SSI
      END_STRUCT;
   END_TYPE

   TYPE Count1DataRec : STRUCT
         majMinVer            : Byte := BYTE#1;   // Major / minor version
         channelParamLength   : Byte := BYTE#48;   // Length of parameter data per channel
         reserved             : Int;   // Reserved
         channelParams        : CountDataRecCh;   // Channel parameters
      END_STRUCT;
   END_TYPE

   TYPE Count1SSIDataRec : STRUCT
         majMinVer            : Byte := BYTE#1;   // Major / minor version
         channelParamLength   : Byte := BYTE#48;   // Length of parameter data per channel
         reserved             : Int;   // Reserved
         channelParams        : CountSSIDataRecCh;   // Channel parameters
      END_STRUCT;
   END_TYPE

   TYPE Count2DataRec : STRUCT
         majMinVer            : Byte := BYTE#1;   // Major / minor version
         channelParamLength   : Byte := BYTE#48;   // Length of parameter data per channel
         reserved             : Int;   // Reserved
         channelParams        : Array[0..1] of CountDataRecCh;   // Channel parameters
      END_STRUCT;
   END_TYPE

   TYPE Count2SSIDataRec : STRUCT
         majMinVer            : Byte := BYTE#1;   // Major / minor version
         channelParamLength   : Byte := BYTE#48;   // Length of parameter data per channel
         reserved             : Int;   // Reserved
         channelParams        : Array[0..1] of CountSSIDataRecCh;   // Channel parameters
      END_STRUCT;
   END_TYPE

   TYPE CountControlCh : STRUCT
         loadValue0     : DWord := DWORD#16#0000;   // Load value 0
         loadValue1     : DWord := DWORD#16#0000;   // Load value 1
         controlByte    : Byte := BYTE#16#00;   // Control byte load value
         swGate         : Bool := FALSE;   // Software gate
         tmCtrlDQ0      : Bool := FALSE;   //  Enable technological function DQ0
         tmCtrlDQ1      : Bool := FALSE;   // Enable technological function DQ1
         setDQ0         : Bool := FALSE;   // Set DQ0
         setDQ1         : Bool := FALSE;   // Set DQ1
         enSyncUp       : Bool := FALSE;   // Enable upward synchronization
         enSyncDown     : Bool := FALSE;   // Enable downward synchronization
         enCapture      : Bool := FALSE;   // Enable capture function
         resError       : Bool := FALSE;   // Reset of saved error states
         resEvent       : Bool := FALSE;   // Reset of saved events
         reserved0      : Bool := FALSE;   // Reserved
         reserved1      : Bool := FALSE;   // Reserved
         reserved2      : Bool := FALSE;   // Reserved
         reserved3      : Bool := FALSE;   // Reserved
         reserved4      : Bool := FALSE;   // Reserved
         SetDir         : Bool := FALSE;   // Count direction (with encoder without direction signal)
         reserved5      : Byte;   // Reserved
      END_STRUCT;
   END_TYPE

   TYPE CountFeedbackCh : STRUCT
         countValue        : DInt := 16#0000;   // Current count value
         capturedValue     : DInt := 16#0000;   // Last Capture value acquired
         measuredValue     : Real := REAL#0.0;   // Current measured value
         powerError        : Bool := FALSE;   // Incorrect supply voltage L+
         encError          : Bool := FALSE;   // Incorrect encoder signal
         ldError           : Bool := FALSE;   // Error when loading via control interface
         reserved1         : Bool := FALSE;   // Reserved
         reserved2         : Bool := FALSE;   // Reserved
         reserved3         : Bool := FALSE;   // Reserved
         reserved4         : Bool := FALSE;   // Reserved
         reserved5         : Bool := FALSE;   // Reserved
         commActive        : Bool := FALSE;   // Comm active
         resEventAck       : Bool := FALSE;   // Reset of event bits active
         ldStsSlot0        : Bool := FALSE;   // Load request for Slot 0 detected and executed (toggling)
         ldStsSlot1        : Bool := FALSE;   // Load request for Slot 1 detected and executed (toggling)
         stsReady          : Bool := FALSE;   // Digital on-board I/O started up and parameters assigned
         stsSwGate         : Bool := FALSE;   // Software gate status
         reserved7         : Bool := FALSE;   // Reserved
         reserved8         : Bool := FALSE;   // Reserved
         stsDir            : Bool := FALSE;   // Direction of last count value change
         stsCount          : Bool := FALSE;   // Count pulse detected within last approx. 0.5 s
         stsGate           : Bool := FALSE;   // Internal gate status
         stsDQ0            : Bool := FALSE;   // Status HSC DQ0
         stsDQ1            : Bool := FALSE;   // Status HSC DQ1
         stsDI0            : Bool := FALSE;   // Status HSC DI0
         stsDI1            : Bool := FALSE;   // Status HSC DI1
         stsDI2            : Bool := FALSE;   // Status HSC DI2
         eventZero         : Bool := FALSE;   // Zero crossing has occurred
         eventUnderflow    : Bool := FALSE;   // Underflow has occurred
         eventOverflow     : Bool := FALSE;   // Overflow has occurred
         eventCompare0     : Bool := FALSE;   // Comparison event for DQ0 has occurred
         eventCompare1     : Bool := FALSE;   // Comparison event for DQ1 has occurred
         eventSync         : Bool := FALSE;   // Synchronization has occurred
         eventCapture      : Bool := FALSE;   // Capture event has occurred
         stsMeasInterval   : Bool := FALSE;   // Count pulse detected in previous measuring interval
      END_STRUCT;
   END_TYPE

END_NAMESPACE
