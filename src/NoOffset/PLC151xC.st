NAMESPACE Siemens.Ax.Types.NoOffset
TYPE CountHwIrq : STRUCT
          gateStart   : Bool;   // Gate start
          gateStop    : Bool;   // Gate stop
          overflow    : Bool;   // Overflow (high counting limit violated)
          underflow   : Bool;   // Underflow (low counting limit violated)
          direction   : Bool;   // Change of direction
          reserved0   : Bool;   // Reserved
          reserved1   : Bool;   // Reserved
          reserved2   : Bool;   // Reserved
          reference0  : Bool;   // Comparison event for DQ0 has occurred
          reserved3   : Bool;   // Reserved
          reference1  : Bool;   // Comparison event for DQ1 has occurred
          reserved4   : Bool;   // Reserved
          zeroCross   : Bool;   // Zero pass
          reserved5   : Bool;   // Reserved
          capture     : Bool;   // New Capture value available
          sync        : Bool;   // Synchronization of the counter by an external signal
       END_STRUCT;
    
    END_TYPE
    
    TYPE CountBehaviorDQ : STRUCT
          setOutput       : Byte := BYTE#16#11;   // Set Output
          behavior        : Byte := BYTE#16#F0;   // Behavior
          pulsDurationDQ0 : Int := 500;   // PulsDuration DQ0
          pulsDurationDQ1 : Int := 500;   // PulsDuration DQ1
       END_STRUCT;
    
    END_TYPE
    
    TYPE CountBehaviorDI : STRUCT
          behaviorDI0  : Byte := BYTE#16#20;   // Behavior DI 0
          behaviorDI1  : Byte := BYTE#16#26;   // Behavior DI 1
          behaviorDI2  : Byte := BYTE#16#26;   // Behavior DI 2
          diSetup      : Byte := BYTE#16#02;   // DI Setup
       END_STRUCT;
    
    END_TYPE
    
    TYPE CountValues : STRUCT
          upperCountingLimit : DInt := DINT#2147483647;   // High Counting Limit
          reference0         : DInt;   // Comparison value 0
          reference1         : DInt := DINT#10;   // Comparison value 1
          startValue         : DInt;   // Start value
          lowerCountingLimit : DInt := DINT#-2147483648;   // Low Counting Limit
          updateTime         : DInt := DINT#10000;   // Update time
       END_STRUCT;
    
    END_TYPE
    
    TYPE CPU151xCCountDataRecCh : STRUCT
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
          di0            : Byte;   // Use of DI0 / Reserved / Selection HSC DI0
          di1            : Byte;   // Use of DI1 / Reserved / Selection HSC DI1
          dq1            : Byte;   // Use of DQ1 / Reserved / Selection HSC DQ1
       END_STRUCT;
    
    END_TYPE
    
    TYPE CPU151xCCountDataRec : STRUCT
          majMinVer          : Byte := BYTE#16;   // Major / minor version
          channelParamLength : Byte := BYTE#48;   // Length of parameter data per channel
          reserved           : Int;   // Reserved
          channelParams      : CPU151xCCountDataRecCh;   // Channel parameters
       END_STRUCT;
    
    END_TYPE
    
    TYPE CPU151xCDataRecDICh : STRUCT
          majMinVer          : Byte := BYTE#16;   // Major / minor version
          channelParamLength : Byte := BYTE#2;   // Length of parameter data per channel
          enableDiagnostics  : Byte;   // Enable diagnostics
          inputDelay         : Byte;   // Hardware interrupt / Input delay
       END_STRUCT;
    
    END_TYPE
    
    TYPE CPU151xCDataRecAQCh : STRUCT
          majMinVer          : Byte := BYTE#16;   // Major / minor version
          channelParamLength : Byte := BYTE#6;   // Length of parameter data per channel
          outputType         : Byte;   // Output 
          outputRange        : Byte;   // Output range
          enableDiagnostics  : Byte;   // Enable diagnostics
          reaction           : Byte;   // Reaction to CPU STOP
          substValue         : Int;   // Substitute value for channel
       END_STRUCT;
    
    END_TYPE
    
    TYPE CPU151xCDataRecAICh : STRUCT
          majMinVer         : Byte := BYTE#16;   // Major / minor version
          channelParamLength: Byte := BYTE#26;   // Length of parameter data per channel
          measType          : Byte;   // Measurement 
          measRange         : Byte;   // Measuring range
          tempCoef          : Byte;   // Temperature coefficient
          frequSmooth       : Byte;   // Interference frequency suppression / Smoothing
          IlimitTempUnit    : Byte;   // Current limit for wire break diag. / Temperature unit
          hwIRQ             : Byte;   // Hardware interrupt
          enableDiagnostics : Byte;   // Enable diagnostics
          reserved0         : Byte;   // Reserved
          reserved1         : Word;   // Reserved
          hwIRQHighLimit1   : Word;   // Hardware interrupt, high limit 1
          hwIRQLowLimit1    : Word;   // Hardware interrupt, low limit 1
          hwIRQHighLimit2   : Word;   // Hardware interrupt, high limit 2
          hwIRQLowLimit2    : Word;   // Hardware interrupt, low limit 2
          reserved2         : DWord;   // Reserved
          reserved3         : DWord;   // Reserved
       END_STRUCT;
    
    END_TYPE
    
    TYPE CPU151xCDataRecDQCh : STRUCT
          majMinVer          : Byte := BYTE#16;   // Major / minor version
          channelParamLength : Byte := BYTE#2;   // Length of parameter data per channel
          enableDiagnostics  : Byte;   // Enable diagnostics
          reaction           : Byte;   // Reaction to CPU STOP
       END_STRUCT;
    
    END_TYPE
    
END_NAMESPACE
