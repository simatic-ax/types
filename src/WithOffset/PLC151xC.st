NAMESPACE Simatic.Ax.Types.WithOffset
    TYPE CountHwIrq : STRUCT
              gateStart  AT %X0.0 : Bool;   // Gate start
              gateStop   AT %X0.1 : Bool;   // Gate stop
              overflow   AT %X0.2 : Bool;   // Overflow (high counting limit violated)
              underflow  AT %X0.3 : Bool;   // Underflow (low counting limit violated)
              direction  AT %X0.4 : Bool;   // Change of direction
              reserved0  AT %X0.5 : Bool;   // Reserved
              reserved1  AT %X0.6 : Bool;   // Reserved
              reserved2  AT %X0.7 : Bool;   // Reserved
              reference0 AT %X1.0 : Bool;   // Comparison event for DQ0 has occurred
              reserved3  AT %X1.1 : Bool;   // Reserved
              reference1 AT %X1.2 : Bool;   // Comparison event for DQ1 has occurred
              reserved4  AT %X1.3 : Bool;   // Reserved
              zeroCross  AT %X1.4 : Bool;   // Zero pass
              reserved5  AT %X1.5 : Bool;   // Reserved
              capture    AT %X1.6 : Bool;   // New Capture value available
              sync       AT %X1.7 : Bool;   // Synchronization of the counter by an external signal
           END_STRUCT;
        
        END_TYPE
        
        TYPE CountBehaviorDQ : STRUCT
              setOutput       AT %B0 : Byte := BYTE#16#11;   // Set Output
              behavior        AT %B1 : Byte := BYTE#16#F0;   // Behavior
              pulsDurationDQ0 AT %B2 : Int := 500;   // PulsDuration DQ0
              pulsDurationDQ1 AT %B4 : Int := 500;   // PulsDuration DQ1
           END_STRUCT;
        
        END_TYPE
        
        TYPE CountBehaviorDI : STRUCT
              behaviorDI0 AT %B0 : Byte := BYTE#16#20;   // Behavior DI 0
              behaviorDI1 AT %B1 : Byte := BYTE#16#26;   // Behavior DI 1
              behaviorDI2 AT %B2 : Byte := BYTE#16#26;   // Behavior DI 2
              diSetup     AT %B3 : Byte := BYTE#16#02;   // DI Setup
           END_STRUCT;
        
        END_TYPE
        
        TYPE CountValues : STRUCT
              upperCountingLimit AT %B0 : DInt := DINT#2147483647;   // High Counting Limit
              reference0         AT %B4 : DInt;   // Comparison value 0
              reference1         AT %B8 : DInt := DINT#10;   // Comparison value 1
              startValue         AT %B12 : DInt;   // Start value
              lowerCountingLimit AT %B16 : DInt := DINT#-2147483648;   // Low Counting Limit
              updateTime         AT %B20 : DInt := DINT#10000;   // Update time
           END_STRUCT;
        
        END_TYPE
        
        TYPE CPU151xCCountDataRecCh : STRUCT
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
              di0           AT %B45 : Byte;   // Use of DI0 / Reserved / Selection HSC DI0
              di1           AT %B46 : Byte;   // Use of DI1 / Reserved / Selection HSC DI1
              dq1           AT %B47 : Byte;   // Use of DQ1 / Reserved / Selection HSC DQ1
           END_STRUCT;
        
        END_TYPE
        
        TYPE CPU151xCCountDataRec : STRUCT
              majMinVer          AT %B0 : Byte := BYTE#16;   // Major / minor version
              channelParamLength AT %B1 : Byte := BYTE#48;   // Length of parameter data per channel
              reserved           AT %B2 : Int;   // Reserved
              channelParams      AT %B4 : CPU151xCCountDataRecCh;   // Channel parameters
           END_STRUCT;
        
        END_TYPE
        
        TYPE CPU151xCDataRecDICh : STRUCT
              majMinVer          AT %B0 : Byte := BYTE#16;   // Major / minor version
              channelParamLength AT %B1 : Byte := BYTE#2;   // Length of parameter data per channel
              enableDiagnostics  AT %B2 : Byte;   // Enable diagnostics
              inputDelay         AT %B3 : Byte;   // Hardware interrupt / Input delay
           END_STRUCT;
        
        END_TYPE
        
        TYPE CPU151xCDataRecAQCh : STRUCT
              majMinVer          AT %B0 : Byte := BYTE#16;   // Major / minor version
              channelParamLength AT %B1 : Byte := BYTE#6;   // Length of parameter data per channel
              outputType         AT %B2 : Byte;   // Output 
              outputRange        AT %B3 : Byte;   // Output range
              enableDiagnostics  AT %B4 : Byte;   // Enable diagnostics
              reaction           AT %B5 : Byte;   // Reaction to CPU STOP
              substValue         AT %B6 : Int;   // Substitute value for channel
           END_STRUCT;
        
        END_TYPE
        
        TYPE CPU151xCDataRecAICh : STRUCT
              majMinVer          AT %B0 : Byte := BYTE#16;   // Major / minor version
              channelParamLength AT %B1 : Byte := BYTE#26;   // Length of parameter data per channel
              measType           AT %B2 : Byte;   // Measurement 
              measRange          AT %B3 : Byte;   // Measuring range
              tempCoef           AT %B4 : Byte;   // Temperature coefficient
              frequSmooth        AT %B5 : Byte;   // Interference frequency suppression / Smoothing
              IlimitTempUnit     AT %B6 : Byte;   // Current limit for wire break diag. / Temperature unit
              hwIRQ              AT %B7 : Byte;   // Hardware interrupt
              enableDiagnostics  AT %B8 : Byte;   // Enable diagnostics
              reserved0          AT %B9 : Byte;   // Reserved
              reserved1          AT %B10 : Word;   // Reserved
              hwIRQHighLimit1    AT %B12 : Word;   // Hardware interrupt, high limit 1
              hwIRQLowLimit1     AT %B14 : Word;   // Hardware interrupt, low limit 1
              hwIRQHighLimit2    AT %B16 : Word;   // Hardware interrupt, high limit 2
              hwIRQLowLimit2     AT %B18 : Word;   // Hardware interrupt, low limit 2
              reserved2          AT %B20 : DWord;   // Reserved
              reserved3          AT %B24 : DWord;   // Reserved
           END_STRUCT;
        
        END_TYPE
        
        TYPE CPU151xCDataRecDQCh : STRUCT
              majMinVer          AT %B0 : Byte := BYTE#16;   // Major / minor version
              channelParamLength AT %B1 : Byte := BYTE#2;   // Length of parameter data per channel
              enableDiagnostics  AT %B2 : Byte;   // Enable diagnostics
              reaction           AT %B3 : Byte;   // Reaction to CPU STOP
           END_STRUCT;
        
        END_TYPE
        
    END_NAMESPACE
    