NAMESPACE Simatic.Ax.Types.WithOffset
   TYPE DI16HFCountControlCh : STRUCT
         loadValue   AT %B0 : DWord;   // Load value counter
         controlByte AT %B4 : Byte;   // Control byte counter
         reserved0   AT %B5 : Byte;   // Reserved
         reserved1   AT %B6 : Byte;   // Reserved
         reserved2   AT %B7 : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE DI32HFCountFeedbackCh : STRUCT
         counterValue AT %B0 : DWord;   // Current counter value for the Respective channel
         stsDQ        AT %X4.0 : Bool;   // Status DQ
         stsGate      AT %X4.1 : Bool;   // Status of the internal gate for the Respective channel
         reserved0    AT %X4.2 : Bool;   // Reserved
         reserved1    AT %X4.3 : Bool;   // Reserved
         stsSWGATE    AT %X4.4 : Bool;   // Status in the control interface
         reserved2    AT %X4.5 : Bool;   // Reserved
         ldStsSlot    AT %X4.6 : Bool;   // The load request for SLOT (LD_SLOT) has been detected and executed (toggling)
         ldError      AT %X4.7 : Bool;   // Error occured for the respective channel
         reserved4    AT %B5 : Byte;   // Reserved
         reserved5    AT %B6 : Byte;   // Reserved
         reserved6    AT %B7 : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE DI32HFCountControlCh : STRUCT
         loadValue   AT %B0 : DWord;   // Load value counter
         controlByte AT %B4 : Byte;   // Control byte counter
         reserved0   AT %B5 : Byte;   // Reserved
         reserved1   AT %B6 : Byte;   // Reserved
         reserved2   AT %B7 : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE AI8URRTDTCHFDataRec235Ch : STRUCT
         scalMeasRangeClip   AT %B0 : Byte;   // Scalable measuring range enabled / Clipping
         resolution          AT %B1 : Byte :=  BYTE#0;   // Resolution
         measRangeCenter     AT %B2 : Word;   // Measuring range center
         overflow            AT %B4 : Word := WORD#0;   // Overflow
         underflow           AT %B6 : Word;   // Underflow
      END_STRUCT;

   END_TYPE

   TYPE DI16HFCountFeedbackCh : STRUCT
         counterValue  AT %B0 : DWord;   // Current counter value for the Respective channel
         stsDQ         AT %X4.0 : Bool;   // Status DQ
         stsGate       AT %X4.1 : Bool;   // Status of the internal gate for the Respective channel
         reserved0     AT %X4.2 : Bool;   // Reserved
         reserved1     AT %X4.3 : Bool;   // Reserved
         reserved2     AT %X4.4 : Bool;   // Reserved
         reserved3     AT %X4.5 : Bool;   // Reserved
         ldStsSlot     AT %X4.6 : Bool;   // The load request for SLOT (LD_SLOT) has been detected and executed (toggling)
         ldError       AT %X4.7 : Bool;   // Error occured for the Respective channel
         reserved4     AT %B5 : Byte;   // Reserved
         reserved5     AT %B6 : Byte;   // Reserved
         reserved6     AT %B7 : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE TMTimerDIDQ16Control : STRUCT
         setDQ0      AT %X0.0 : Bool;   // Set DQ0 in the DQ operating mode Timer DQ
         setDQ1      AT %X0.1 : Bool;   // Set DQ1 in the DQ operating mode Timer DQ
         setDQ2      AT %X0.2 : Bool;   // Set DQ2 in the DQ operating mode Timer DQ
         setDQ3      AT %X0.3 : Bool;   // Set DQ3 in the DQ operating mode Timer DQ
         setDQ4      AT %X0.4 : Bool;   // Set DQ4 in the DQ operating mode Timer DQ
         setDQ5      AT %X0.5 : Bool;   // Set DQ5 in the DQ operating mode Timer DQ
         setDQ6      AT %X0.6 : Bool;   // Set DQ6 in the DQ operating mode Timer DQ
         setDQ7      AT %X0.7 : Bool;   // Set DQ7 in the DQ operating mode Timer DQ
         setDQ8      AT %X1.0 : Bool;   // Set DQ8 in the DQ operating mode Timer DQ
         setDQ9      AT %X1.1 : Bool;   // Set DQ9 in the DQ operating mode Timer DQ
         setDQ10     AT %X1.2 : Bool;   // Set DQ10 in the DQ operating mode Timer DQ
         setDQ11     AT %X1.3 : Bool;   // Set DQ11 in the DQ operating mode Timer DQ
         setDQ12     AT %X1.4 : Bool;   // Set DQ12 in the DQ operating mode Timer DQ
         setDQ13     AT %X1.5 : Bool;   // Set DQ13 in the DQ operating mode Timer DQ
         setDQ14     AT %X1.6 : Bool;   // Set DQ14 in the DQ operating mode Timer DQ
         setDQ15     AT %X1.7 : Bool;   // Set DQ15 in the DQ operating mode Timer DQ
         setEnDIDQ0  AT %X2.0 : Bool;   // Override hardware enable for DI0 or DQ0
         setEnDIDQ1  AT %X2.1 : Bool;   // Override hardware enable for DI1 or DQ1
         setEnDIDQ2  AT %X2.2 : Bool;   // Override hardware enable for DI2 or DQ2
         setEnDIDQ3  AT %X2.3 : Bool;   // Override hardware enable for DI3 or DQ3
         setEnDIDQ4  AT %X2.4 : Bool;   // Override hardware enable for DI4 or DQ4
         setEnDIDQ5  AT %X2.5 : Bool;   // Override hardware enable for DI5 or DQ5
         setEnDIDQ6  AT %X2.6 : Bool;   // Override hardware enable for DI6 or DQ6
         setEnDIDQ7  AT %X2.7 : Bool;   // Override hardware enable for DI7 or DQ7
         setEnDQ8    AT %X3.0 : Bool;   // Override hardware enable for DQ8
         setEnDQ9    AT %X3.1 : Bool;   // Override hardware enable for DQ9
         setEnDQ10   AT %X3.2 : Bool;   // Override hardware enable for DQ10
         setEnDQ11   AT %X3.3 : Bool;   // Override hardware enable for DQ11
         setEnDQ12   AT %X3.4 : Bool;   // Override hardware enable for DQ12
         setEnDQ13   AT %X3.5 : Bool;   // Override hardware enable for DQ13
         setEnDQ14   AT %X3.6 : Bool;   // Override hardware enable for DQ14
         setEnDQ15   AT %X3.7 : Bool;   // Override hardware enable for DQ15
         tecOutDQ0   AT %B4 : DWord;   // Value depends on DQ operating mode
         tecOutDQ1   AT %B8 : DWord;   // Value depends on DQ operating mode
         tecOutDQ2   AT %B12 : DWord;   // Value depends on DQ operating mode
         tecOutDQ3   AT %B16 : DWord;   // Value depends on DQ operating mode
         tecOutDQ4   AT %B20 : DWord;   // Value depends on DQ operating mode
         tecOutDQ5   AT %B24 : DWord;   // Value depends on DQ operating mode
         tecOutDQ6   AT %B28 : DWord;   // Value depends on DQ operating mode
         tecOutDQ7   AT %B32 : DWord;   // Value depends on DQ operating mode
         tecOutDQ8   AT %B36 : DWord;   // Value depends on DQ operating mode
         tecOutDQ9   AT %B40 : DWord;   // Value depends on DQ operating mode
         tecOutDQ10  AT %B44 : DWord;   // Value depends on DQ operating mode
         tecOutDQ11  AT %B48 : DWord;   // Value depends on DQ operating mode
         tecOutDQ12  AT %B52 : DWord;   // Value depends on DQ operating mode
         tecOutDQ13  AT %B56 : DWord;   // Value depends on DQ operating mode
         tecOutDQ14  AT %B60 : DWord;   // Value depends on DQ operating mode
         tecOutDQ15  AT %B64 : DWord;   // Value depends on DQ operating mode
         selDI0      AT %B68 : Byte;   // This Value is supplied by the TIO instruction TIO_DI
         selDI2      AT %B69 : Byte;   // This Value is supplied by the TIO instruction TIO_DI
         selDI4      AT %B70 : Byte;   // This Value is supplied by the TIO instruction TIO_DI
         selDI6      AT %B71 : Byte;   // This Value is supplied by the TIO instruction TIO_DI
         stw         AT %B72 : Word;   // This Value is controlled by the TIO instruction TIO_SYNC
      END_STRUCT;

   END_TYPE

   TYPE DI32HFDataRecDICh : STRUCT
         majMinVer           AT %B0 : Byte := BYTE#16;   // Major / minor version
         channelParamLength  AT %B1 : Byte := BYTE#2;   // Length of parameter data per channel
         enableDiagnostics   AT %B2 : Byte;   // Enable diagnostics
         inputDelay          AT %B3 : Byte;   // Hardware interrupt / Input delay
      END_STRUCT;

   END_TYPE

   TYPE DI32HFDataRecCountCh : STRUCT
         majMinVer           AT %B0 : Byte := BYTE#17;   // Major / minor version
         channelParamLength  AT %B1 : Byte := BYTE#16;   // Length of parameter data per channel
         enableDiagnostics   AT %B2 : Byte;   // Enable diagnostics
         inputDelay          AT %B3 : Byte;   // Hardware interrupt / Input delay
         behavior            AT %B4 : Byte;   // Behavior when a counting limit is exceeded / edge selection
         behaviorDQ          AT %B5 : Byte;   // Hardware interrupt / set output DQ
         highCountingLimit   AT %B6 : UDInt;   // High counting limit
         startValue          AT %B10 : UDInt;   // Start value
         comparisonValue     AT %B14 : UDInt;   // Comparison value
      END_STRUCT;

   END_TYPE

   TYPE DI32HFCountFeedback : STRUCT
         stsDI0   AT %X0.0 : Bool;   // Status DI0
         stsDI1   AT %X0.1 : Bool;   // Status DI1
         stsDI2   AT %X0.2 : Bool;   // Status DI2
         stsDI3   AT %X0.3 : Bool;   // Status DI3
         stsDI4   AT %X0.4 : Bool;   // Status DI4
         stsDI5   AT %X0.5 : Bool;   // Status DI5
         stsDI6   AT %X0.6 : Bool;   // Status DI6
         stsDI7   AT %X0.7 : Bool;   // Status DI7
         stsDI8   AT %X1.0 : Bool;   // Status DI8
         stsDI9   AT %X1.1 : Bool;   // Status DI9
         stsDI10  AT %X1.2 : Bool;   // Status DI10
         stsDI11  AT %X1.3 : Bool;   // Status DI11
         stsDI12  AT %X1.4 : Bool;   // Status DI12
         stsDI13  AT %X1.5 : Bool;   // Status DI13
         stsDI14  AT %X1.6 : Bool;   // Status DI14
         stsDI15  AT %X1.7 : Bool;   // Status DI15
         stsDI16  AT %X2.0 : Bool;   // Status DI16
         stsDI17  AT %X2.1 : Bool;   // Status DI17
         stsDI18  AT %X2.2 : Bool;   // Status DI18
         stsDI19  AT %X2.3 : Bool;   // Status DI19
         stsDI20  AT %X2.4 : Bool;   // Status DI20
         stsDI21  AT %X2.5 : Bool;   // Status DI21
         stsDI22  AT %X2.6 : Bool;   // Status DI22
         stsDI23  AT %X2.7 : Bool;   // Status DI23
         stsDI24  AT %X3.0 : Bool;   // Status DI24
         stsDI25  AT %X3.1 : Bool;   // Status DI25
         stsDI26  AT %X3.2 : Bool;   // Status DI26
         stsDI27  AT %X3.3 : Bool;   // Status DI27
         stsDI28  AT %X3.4 : Bool;   // Status DI28
         stsDI29  AT %X3.5 : Bool;   // Status DI29
         stsDI30  AT %X3.6 : Bool;   // Status DI30
         stsDI31  AT %X3.7 : Bool;   // Status DI31
         qI0      AT %X4.0 : Bool;   // Quality information channel 0
         qI1      AT %X4.1 : Bool;   // Quality information channel 1
         qI2      AT %X4.2 : Bool;   // Quality information channel 2
         qI3      AT %X4.3 : Bool;   // Quality information channel 3
         qI4      AT %X4.4 : Bool;   // Quality information channel 4
         qI5      AT %X4.5 : Bool;   // Quality information channel 5
         qI6      AT %X4.6 : Bool;   // Quality information channel 6
         qI7      AT %X4.7 : Bool;   // Quality information channel 7
         qI8      AT %X5.0 : Bool;   // Quality information channel 8
         qI9      AT %X5.1 : Bool;   // Quality information channel 9
         qI10     AT %X5.2 : Bool;   // Quality information channel 10
         qI11     AT %X5.3 : Bool;   // Quality information channel 11
         qI12     AT %X5.4 : Bool;   // Quality information channel 12
         qI13     AT %X5.5 : Bool;   // Quality information channel 13
         qI14     AT %X5.6 : Bool;   // Quality information channel 14
         qI15     AT %X5.7 : Bool;   // Quality information channel 15
         qI16     AT %X6.0 : Bool;   // Quality information channel 16
         qI17     AT %X6.1 : Bool;   // Quality information channel 17
         qI18     AT %X6.2 : Bool;   // Quality information channel 18
         qI19     AT %X6.3 : Bool;   // Quality information channel 19
         qI20     AT %X6.4 : Bool;   // Quality information channel 20
         qI21     AT %X6.5 : Bool;   // Quality information channel 21
         qI22     AT %X6.6 : Bool;   // Quality information channel 22
         qI23     AT %X6.7 : Bool;   // Quality information channel 23
         qI24     AT %X7.0 : Bool;   // Quality information channel 24
         qI25     AT %X7.1 : Bool;   // Quality information channel 25
         qI26     AT %X7.2 : Bool;   // Quality information channel 26
         qI27     AT %X7.3 : Bool;   // Quality information channel 27
         qI28     AT %X7.4 : Bool;   // Quality information channel 28
         qI29     AT %X7.5 : Bool;   // Quality information channel 29
         qI30     AT %X7.6 : Bool;   // Quality information channel 30
         qI31     AT %X7.7 : Bool;   // Quality information channel 31
         channel  AT %B8   : Array[0..1] of DI32HFCountFeedbackCh;   // Counter channel 0 to 1
      END_STRUCT;

   END_TYPE

   TYPE DI32HFCountControl : STRUCT
         channel  AT %B0 : Array[0..1] of DI32HFCountControlCh;   // Channel 0 to 1
      END_STRUCT;

   END_TYPE

   TYPE DI16HFDataRecDICh : STRUCT
         majMinVer          AT %B0 : Byte := BYTE#16;   // Major / minor version
         channelParamLength AT %B1 : Byte := BYTE#2;   // Length of parameter data per channel
         enableDiagnostics  AT %B2 : Byte;   // Enable diagnostics
         inputDelay         AT %B3 : Byte;   // Hardware interrupt / Input delay
      END_STRUCT;

   END_TYPE

   TYPE DI16HFDataRecCountCh : STRUCT
         majMinVer           AT %B0 : Byte := BYTE#17;   // Major / minor version
         channelParamLength  AT %B1 : Byte := BYTE#16;   // Length of parameter data per channel
         enableDiagnostics   AT %B2 : Byte;   // Enable diagnostics
         inputDelay          AT %B3 : Byte;   // Hardware interrupt / Input delay
         behavior            AT %B4 : Byte;   // Behavior when a counting limit is exceeded / edge selection
         behaviorDQ          AT %B5 : Byte;   // Hardware interrupt / set output DQ
         highCountingLimit   AT %B6 : UDInt;   // High counting limit
         startValue          AT %B10 : UDInt;   // Start value
         comparisonValue     AT %B14 : UDInt;   // Comparison value
      END_STRUCT;

   END_TYPE

   TYPE DI16HFCountFeedback : STRUCT
         stsDI0   AT %X0.0 : Bool;   // Status DI0
         stsDI1   AT %X0.1 : Bool;   // Status DI1
         stsDI2   AT %X0.2 : Bool;   // Status DI2
         stsDI3   AT %X0.3 : Bool;   // Status DI3
         stsDI4   AT %X0.4 : Bool;   // Status DI4
         stsDI5   AT %X0.5 : Bool;   // Status DI5
         stsDI6   AT %X0.6 : Bool;   // Status DI6
         stsDI7   AT %X0.7 : Bool;   // Status DI7
         stsDI8   AT %X1.0 : Bool;   // Status DI8
         stsDI9   AT %X1.1 : Bool;   // Status DI9
         stsDI10  AT %X1.2 : Bool;   // Status DI10
         stsDI11  AT %X1.3 : Bool;   // Status DI11
         stsDI12  AT %X1.4 : Bool;   // Status DI12
         stsDI13  AT %X1.5 : Bool;   // Status DI13
         stsDI14  AT %X1.6 : Bool;   // Status DI14
         stsDI15  AT %X1.7 : Bool;   // Status DI15
         qI0      AT %X2.0 : Bool;   // Quality information channel 0
         qI1      AT %X2.1 : Bool;   // Quality information channel 1
         qI2      AT %X2.2 : Bool;   // Quality information channel 2
         qI3      AT %X2.3 : Bool;   // Quality information channel 3
         qI4      AT %X2.4 : Bool;   // Quality information channel 4
         qI5      AT %X2.5 : Bool;   // Quality information channel 5
         qI6      AT %X2.6 : Bool;   // Quality information channel 6
         qI7      AT %X2.7 : Bool;   // Quality information channel 7
         qI8      AT %X3.0 : Bool;   // Quality information channel 8
         qI9      AT %X3.1 : Bool;   // Quality information channel 9
         qI10     AT %X3.2 : Bool;   // Quality information channel 10
         qI11     AT %X3.3 : Bool;   // Quality information channel 11
         qI12     AT %X3.4 : Bool;   // Quality information channel 12
         qI13     AT %X3.5 : Bool;   // Quality information channel 13
         qI14     AT %X3.6 : Bool;   // Quality information channel 14
         qI15     AT %X3.7 : Bool;   // Quality information channel 15
         channel  AT %B4   : Array[0..1] of DI16HFCountFeedbackCh;   // Counter channel 0 to 1
      END_STRUCT;

   END_TYPE

   TYPE AI8HFDataRec0Ch : STRUCT
         majMinVer                 AT %B0 : Byte := BYTE#16;   // Major / minor version
         channelParamLength        AT %B1 : Byte := BYTE#26;   // Length of the parameter data = 26
         measType                  AT %B2 : Byte;   // Measurement 
         measRange                 AT %B3 : Byte;   // Measuring range
         resb4                     AT %B4 : Byte;   // Reserved
         frequSuppressSmooth       AT %B5 : Byte;   // Interference frequency suppression / Smoothing
         opModeCurrLimit           AT %B6 : Byte;   // Operating mode / Current limit for wire break diagnostics
         hwInterruptLimits         AT %B7 : Byte;   // Hardware interrupt, high/low limit 1/2
         enableDiagnostic          AT %B8 : Byte;   // Enable Diagnostic
         resb9                     AT %B9 : Byte;   // Reserved
         resw10                    AT %B10 : Word;   // Reserved
         hwInterruptHighLimit1     AT %B12 : Word;   // Hardware interrupt high limit 1
         hwInterruptLowLimit1      AT %B14 : Word;   // Hardware interrupt low limit 1
         hwInterruptHighLimit2     AT %B16 : Word;   // Hardware interrupt high limit 2
         hwInterruptLowLimit2      AT %B18 : Word;   // Hardware interrupt low limit 2
         measRangeAdjustHighLimit  AT %B20 : Word;   // Measuring range adjustment high limit
         measRangeAdjustLowLimit   AT %B22 : Word;   // Measuring range adjustment low limit
         resdw24                   AT %B24 : DWord;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE DI16HFCountControl : STRUCT
         channel  AT %B0 : Array[0..1] of DI16HFCountControlCh;   // Channel 0 to 1
      END_STRUCT;

   END_TYPE

   TYPE AQDataRec64Ch : STRUCT
         majMinVer           AT %B0 : Byte := BYTE#16;   // Major / minor version
         channelParamLength  AT %B1 : Byte := BYTE#6;   // Length of the parameter data = 6
         outputType          AT %B2 : Byte;   // Output 
         outputRange         AT %B3 : Byte;   // Output range
         enableDiagnostic    AT %B4 : Byte;   // Enable Diagnostic
         reactStop           AT %B5 : Byte;   // Reaction to CPU STOP
         substValue          AT %B6 : Word;   // Substitute value (for channel)
      END_STRUCT;

   END_TYPE

   TYPE AISTDataRec192Ch : STRUCT
         resolution     AT %B0 : Byte :=  BYTE#0;   // Resolution
         tempUnit       AT %B1 : Byte :=  BYTE#0;   // Temperature unit
         extRefJuncTemp AT %B2 : Word;   // External reference junction temperature
      END_STRUCT;

   END_TYPE

   TYPE AISTDataRec0Ch : STRUCT
         majMinVer              AT %B0 : Byte := BYTE#16;   // Major / minor version
         channelParamLength     AT %B1 : Byte := BYTE#26;   // Length of the parameter data = 26
         measType               AT %B2 : Byte;   // Measurement 
         measRange              AT %B3 : Byte;   // Measuring range
         tempCoefficient        AT %B4 : Byte;   // Temperature coefficient for measuring range
         frequSuppressSmooth    AT %B5 : Byte;   // Interference frequency suppression / Smoothing
         referJunctionTempUnit  AT %B6 : Byte;   // Reference junction / Temperature unit
         hwInterruptLimits      AT %B7 : Byte;   // Hardware interrupt, high/low limit 1/2
         enableDiagnostic       AT %B8 : Byte;   // Enable Diagnostic
         enableDiagnosticMode   AT %B9 : Byte;   // Enable Diagnostic; Common mode error
         fixRefTemp             AT %B10 : Word;   // Fixed reference temperature
         hwInterruptHighLimit1  AT %B12 : Word;   // Hardware interrupt high limit 1
         hwInterruptLowLimit1   AT %B14 : Word;   // Hardware interrupt low limit 1
         hwInterruptHighLimit2  AT %B16 : Word;   // Hardware interrupt high limit 2
         hwInterruptLowLimit2   AT %B18 : Word;   // Hardware interrupt low limit 2
         resdw20                AT %B20 : DWord;   // Reserved
         resdw24                AT %B24 : DWord;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE AI8URRTDTCHFDataRec235 : STRUCT
         majMinVer           AT %B0 : Byte := BYTE#16;   // Major / minor version
         channelParamLength  AT %B1 : Byte := BYTE#8;   // Length of the parameter data = 8
         channel             AT %B2 : Array[0..8] of AI8URRTDTCHFDataRec235Ch;
      END_STRUCT;

   END_TYPE

   TYPE AI8URRTDTCHFDataRec192Ch : STRUCT
         resolution       AT %B0 : Byte :=  BYTE#0;   // Resolution
         tempUnit         AT %B1 : Byte :=  BYTE#0;   // Temperature unit
         extRefJuncTemp   AT %B2 : Word;   // External reference junction temperature
      END_STRUCT;

   END_TYPE

   TYPE AI8URRTDTCHFDataRec0Ch : STRUCT
         majMinVer               AT %B0 : Byte := BYTE#16;   // Major / minor version
         channelParamLength      AT %B1 : Byte := BYTE#26;   // Length of the parameter data = 26
         measType                AT %B2 : Byte;   // Measurement 
         measRange               AT %B3 : Byte;   // Measuring range
         tempCoefficient         AT %B4 : Byte;   // Temperature coefficient for measuring range
         frequSuppressSmooth     AT %B5 : Byte;   // Interference frequency suppression / Smoothing
         referJunctionTempUnit   AT %B6 : Byte;   // Reference junction / Temperature unit
         hwInterruptLimits       AT %B7 : Byte;   // Hardware interrupt, high/low limit 1/2
         enableDiagnostic        AT %B8 : Byte;   // Enable Diagnostic
         enableDiagnosticMode    AT %B9 : Byte;   // Enable Diagnostic; Common mode error
         fixRefTemp              AT %B10 : Word;   // Fixed reference temperature
         hwInterruptHighLimit1   AT %B12 : Word;   // Hardware interrupt high limit 1
         hwInterruptLowLimit1    AT %B14 : Word;   // Hardware interrupt low limit 1
         hwInterruptHighLimit2   AT %B16 : Word;   // Hardware interrupt high limit 2
         hwInterruptLowLimit2    AT %B18 : Word;   // Hardware interrupt low limit 2
         measRangeCenter         AT %B20 : Word;   // Measuring range center
         resw22                  AT %B22 : Word;   // Reserved
         resdw24                 AT %B24 : DWord;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE AI8STDataRec8 : STRUCT
         majMinVer           AT %B0 : Byte := BYTE#16;   // Major / minor version
         channelParamLength  AT %B1 : Byte := BYTE#26;   // Length of the parameter data = 26
         measType            AT %B2 : Byte;   // Measurement 
         measRange           AT %B3 : Byte;   // Measuring range
         tempCoefficient     AT %B4 : Byte;   // Temperature coefficient for measuring range
         frequSuppressSmooth AT %B5 : Byte;   // Interference frequency suppression / Smoothing
         resw6               AT %B6 : Word;   // Reserved
         enableDiagnostic    AT %B8 : Byte;   // Enable Diagnostic
         resb9               AT %B9 : Byte;   // Reserved
         resdw10             AT %B10 : DWord;   // Reserved
         resdw14             AT %B14 : DWord;   // Reserved
         resdw18             AT %B18 : DWord;   // Reserved
         resdw22             AT %B22 : DWord;   // Reserved
         resdw26             AT %B26 : Word;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE AI8HSDataRec0Ch : STRUCT
         majMinVer              AT %B0 : Byte := BYTE#16;   // Major / minor version
         channelParamLength     AT %B1 : Byte := BYTE#26;   // Length of the parameter data = 26
         measType               AT %B2 : Byte;   // Measurement 
         measRange              AT %B3 : Byte;   // Measuring range
         resb4                  AT %B4 : Byte;   // Reserved
         smooth                 AT %B5 : Byte;   // Smoothing
         currLimit              AT %B6 : Byte;   // Current limit for wire break diagnostics
         hwInterruptLimits      AT %B7 : Byte;   // Hardware interrupt, high/low limit 1/2
         enableDiagnostic       AT %B8 : Byte;   // Enable Diagnostic
         resb9                  AT %B9 : Byte;   // Reserved
         resw10                 AT %B10 : Word;   // Reserved
         hwInterruptHighLimit1  AT %B12 : Word;   // Hardware interrupt high limit 1
         hwInterruptLowLimit1   AT %B14 : Word;   // Hardware interrupt low limit 1
         hwInterruptHighLimit2  AT %B16 : Word;   // Hardware interrupt high limit 2
         hwInterruptLowLimit2   AT %B18 : Word;   // Hardware interrupt low limit 2
         resdw20                AT %B20 : DWord;   // Reserved
         resdw24                AT %B24 : DWord;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE AI8HFDataRec0ScaleCh : STRUCT
         majMinVer                AT %B0 : Byte := BYTE#16;   // Major / minor version
         channelParamLength       AT %B1 : Byte := BYTE#38;   // Length of the parameter data = 26
         measType                 AT %B2 : Byte;   // Measurement 
         measRange                AT %B3 : Byte;   // Measuring range
         resb4                    AT %B4 : Byte;   // Reserved
         frequSuppressSmooth      AT %B5 : Byte;   // Interference frequency suppression / Smoothing
         opModeCurrLimit          AT %B6 : Byte;   // Operating mode / Current limit for wire break diagnostics
         hwInterruptLimits        AT %B7 : Byte;   // Hardware interrupt, high/low limit 1/2
         enableDiagnostic         AT %B8 : Byte;   // Enable Diagnostic
         resb9                    AT %B9 : Byte;   // Reserved
         resw10                   AT %B10 : Word;   // Reserved
         hwInterruptHighLimit1    AT %B12 : DWord;   // Hardware interrupt high limit 1
         hwInterruptLowLimit1     AT %B16 : DWord;   // Hardware interrupt low limit 1
         hwInterruptHighLimit2    AT %B20 : DWord;   // Hardware interrupt high limit 2
         hwInterruptLowLimit2     AT %B24 : DWord;   // Hardware interrupt low limit 2
         measRangeAdjustHighLimit AT %B28 : Word;   // Measuring range adjustment high limit
         measRangeAdjustLowLimit  AT %B30 : Word;   // Measuring range adjustment low limit
         scaledHighRangeLimit     AT %B32 : DWord;   // Scaled high measuring range limit
         scaledLowRangeLimit      AT %B36 : DWord;   // Scaled low measuring range limit
      END_STRUCT;

   END_TYPE

   TYPE TMTimerDIDQ16DataRec : STRUCT
         majMinVer           AT %B0 : Byte := BYTE#1;   // Major / minor version
         channelParamLength  AT %B1 : Byte := BYTE#36;   // Length of the parameter data = 36
         reserved0           AT %B2 : Word;   // Reserved
         pwmPeriod           AT %B4 : Byte;   // Reserved/ PWM period for the digital outputs
         enableDiagnostics   AT %B5 : Byte;   // enable diagnostics / Reaction to CPU STOP
         reserved1           AT %B6 : Word;   // Reserved
         operatingModeCh0    AT %B8 : Byte;   // Operating mode DI0 / DQ0
         inputDelayCh0       AT %B9 : Byte;   // Reserved/ Input delay / Filter frequency DI0 or Reservedif DQ
         operatingModeCh1    AT %B10 : Byte;   // Operating mode DI1 / DQ1
         inputDelayCh1       AT %B11 : Byte;   // Reserved/ Input delay / Filter frequency DI1 or Reservedif DQ
         operatingModeCh2    AT %B12 : Byte;   // Operating mode DI2 / DQ2
         inputDelayCh2       AT %B13 : Byte;   // Reserved/ Input delay / Filter frequency DI2 or Reservedif DQ
         operatingModeCh3    AT %B14 : Byte;   // Operating mode DI3 / DQ3
         inputDelayCh3       AT %B15 : Byte;   // Reserved/ Input delay / Filter frequency DI3 or Reservedif DQ
         operatingModeCh4    AT %B16 : Byte;   // Operating mode DI4 / DQ4
         inputDelayCh4       AT %B17 : Byte;   // Reserved/ Input delay / Filter frequency DI4 or Reservedif DQ
         operatingModeCh5    AT %B18 : Byte;   // Operating mode DI5 / DQ5
         inputDelayCh5       AT %B19 : Byte;   // Reserved/ Input delay / Filter frequency DI5 or Reservedif DQ
         operatingModeCh6    AT %B20 : Byte;   // Operating mode DI6 / DQ6
         inputDelayCh6       AT %B21 : Byte;   // Reserved/ Input delay / Filter frequency DI6 or Reservedif DQ
         operatingModeCh7    AT %B22 : Byte;   // Operating mode DI7 / DQ7
         inputDelayCh7       AT %B23 : Byte;   // Reserved/ Input delay / Filter frequency DI7 or Reservedif DQ
         operatingModeDQ8    AT %B24 : Byte;   // Operating mode DQ8
         reserved2           AT %B25 : Byte;   // Reserved
         operatingModeDQ9    AT %B26 : Byte;   // Operating mode DQ9
         reserved3           AT %B27 : Byte;   // Reserved
         operatingModeDQ10   AT %B28 : Byte;   // Operating mode DQ10
         reserved4           AT %B29 : Byte;   // Reserved
         operatingModeDQ11   AT %B30 : Byte;   // Operating mode DQ11
         reserved5           AT %B31 : Byte;   // Reserved
         operatingModeDQ12   AT %B32 : Byte;   // Operating mode DQ12
         reserved6           AT %B33 : Byte;   // Reserved
         operatingModeDQ13   AT %B34 : Byte;   // Operating mode DQ13
         reserved7           AT %B35 : Byte;   // Reserved
         operatingModeDQ14   AT %B36 : Byte;   // Operating mode DQ14
         reserved8           AT %B37 : Byte;   // Reserved
         operatingModeDQ15   AT %B38 : Byte;   // Operating mode DQ15
         reserved9           AT %B39 : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE TMTimerDIDQ16Feedback : STRUCT
         stsDI0           AT %X0.0 : Bool;   // Status DI0
         stsDI1           AT %X0.1 : Bool;   // Status DI1
         stsDI2           AT %X0.2 : Bool;   // Status DI2
         stsDI3           AT %X0.3 : Bool;   // Status DI3
         stsDI4           AT %X0.4 : Bool;   // Status DI4
         stsDI5           AT %X0.5 : Bool;   // Status DI5
         stsDI6           AT %X0.6 : Bool;   // Status DI6
         stsDI7           AT %X0.7 : Bool;   // Status DI7
         qIDI0            AT %X1.0 : Bool;   // Quality information DI0
         qIDI1            AT %X1.1 : Bool;   // Quality information DI1
         qIDI2            AT %X1.2 : Bool;   // Quality information DI2
         qIDI3            AT %X1.3 : Bool;   // Quality information DI3
         qIDI4            AT %X1.4 : Bool;   // Quality information DI4
         qIDI5            AT %X1.5 : Bool;   // Quality information DI5
         qIDI6            AT %X1.6 : Bool;   // Quality information DI6
         qIDI7            AT %X1.7 : Bool;   // Quality information DI7
         qIDQ0            AT %X2.0 : Bool;   // Quality information DQ0
         qIDQ1            AT %X2.1 : Bool;   // Quality information DQ1
         qIDQ2            AT %X2.2 : Bool;   // Quality information DQ2
         qIDQ3            AT %X2.3 : Bool;   // Quality information DQ3
         qIDQ4            AT %X2.4 : Bool;   // Quality information DQ4
         qIDQ5            AT %X2.5 : Bool;   // Quality information DQ5
         qIDQ6            AT %X2.6 : Bool;   // Quality information DQ6
         qIDQ7            AT %X2.7 : Bool;   // Quality information DQ7
         qIDQ8            AT %X3.0 : Bool;   // Quality information DQ8
         qIDQ9            AT %X3.1 : Bool;   // Quality information DQ9
         qIDQ10           AT %X3.2 : Bool;   // Quality information DQ10
         qIDQ11           AT %X3.3 : Bool;   // Quality information DQ11
         qIDQ12           AT %X3.4 : Bool;   // Quality information DQ12
         qIDQ13           AT %X3.5 : Bool;   // Quality information DQ13
         qIDQ14           AT %X3.6 : Bool;   // Quality information DQ14
         qIDQ15           AT %X3.7 : Bool;   // Quality information DQ15
         tecInDI0         AT %B4   : DWord;   // Value depends on operating mode
         tecInDI1         AT %B8   : DWord;   // Value depends on operating mode
         tecInDI2         AT %B12  : DWord;   // Value depends on operating mode
         tecInDI3         AT %B16  : DWord;   // Value depends on operating mode
         tecInDI4         AT %B20  : DWord;   // Value depends on operating mode
         tecInDI5         AT %B24  : DWord;   // Value depends on operating mode
         tecInDI6         AT %B28  : DWord;   // Value depends on operating mode
         tecInDI7         AT %B32  : DWord;   // Value depends on operating mode
         lecEn0           AT %B36  : Byte;   // Lost edge counter; DI / DQ active as Timer DI / DQ
         lecEn2           AT %B37  : Byte;   // Lost edge counter; DI / DQ active as Timer DI / DQ
         lecEn4           AT %B38  : Byte;   // Lost edge counter; DI / DQ active as Timer DI / DQ
         lecEn6           AT %B39  : Byte;   // Lost edge counter; DI / DQ active as Timer DI / DQ
         enDQ8            AT %X40.0 : Bool;   // DQ8 active as Timer DQ
         enDQ9            AT %X40.1 : Bool;   // DQ9 active as Timer DQ
         enDQ10           AT %X40.2 : Bool;   // DQ10 active as Timer DQ
         enDQ11           AT %X40.3 : Bool;   // DQ11 active as Timer DQ
         enDQ12           AT %X40.4 : Bool;   // DQ12 active as Timer DQ
         enDQ13           AT %X40.5 : Bool;   // DQ13 active as Timer DQ
         enDQ14           AT %X40.6 : Bool;   // DQ14 active as Timer DQ
         enDQ15           AT %X40.7 : Bool;   // DQ15 active as Timer DQ
         layoutProperty   AT %B41   : Byte;   // Module-specific Value
         zsw              AT %B42   : Word;   // This Value is controlled by the TIO instruction TIO_SYNC
      END_STRUCT;

   END_TYPE

END_NAMESPACE
