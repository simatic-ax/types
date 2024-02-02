NAMESPACE Simatic.Ax.Types.NoOffset
   TYPE DI16HFCountControlCh : STRUCT
         loadValue  : DWord;   // Load value counter
         controlByte  : Byte;   // Control byte counter
         reserved0  : Byte;   // Reserved
         reserved1  : Byte;   // Reserved
         reserved2  : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE DI32HFCountFeedbackCh : STRUCT
         counterValue  : DWord;   // Current counter value for the Respective channel
         stsDQ  : Bool;   // Status DQ
         stsGate  : Bool;   // Status of the internal gate for the Respective channel
         reserved0  : Bool;   // Reserved
         reserved1  : Bool;   // Reserved
         stsSWGATE  : Bool;   // Status in the control interface
         reserved2  : Bool;   // Reserved
         ldStsSlot  : Bool;   // The load request for SLOT (LD_SLOT) has been detected and executed (toggling)
         ldError  : Bool;   // Error occured for the respective channel
         reserved4  : Byte;   // Reserved
         reserved5  : Byte;   // Reserved
         reserved6  : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE DI32HFCountControlCh : STRUCT
         loadValue  : DWord;   // Load value counter
         controlByte  : Byte;   // Control byte counter
         reserved0  : Byte;   // Reserved
         reserved1  : Byte;   // Reserved
         reserved2  : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE AI8URRTDTCHFDataRec235Ch : STRUCT
         scalMeasRangeClip  : Byte;   // Scalable measuring range enabled / Clipping
         resolution  : Byte :=  BYTE#0;   // Resolution
         measRangeCenter  : Word;   // Measuring range center
         overflow  : Word := WORD#0;   // Overflow
         underflow  : Word;   // Underflow
      END_STRUCT;

   END_TYPE

   TYPE DI16HFCountFeedbackCh : STRUCT
         counterValue  : DWord;   // Current counter value for the Respective channel
         stsDQ  : Bool;   // Status DQ
         stsGate  : Bool;   // Status of the internal gate for the Respective channel
         reserved0  : Bool;   // Reserved
         reserved1  : Bool;   // Reserved
         reserved2  : Bool;   // Reserved
         reserved3  : Bool;   // Reserved
         ldStsSlot  : Bool;   // The load request for SLOT (LD_SLOT) has been detected and executed (toggling)
         ldError  : Bool;   // Error occured for the Respective channel
         reserved4  : Byte;   // Reserved
         reserved5  : Byte;   // Reserved
         reserved6  : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE TMTimerDIDQ16Control : STRUCT
         setDQ0  : Bool;   // Set DQ0 in the DQ operating mode Timer DQ
         setDQ1  : Bool;   // Set DQ1 in the DQ operating mode Timer DQ
         setDQ2  : Bool;   // Set DQ2 in the DQ operating mode Timer DQ
         setDQ3  : Bool;   // Set DQ3 in the DQ operating mode Timer DQ
         setDQ4  : Bool;   // Set DQ4 in the DQ operating mode Timer DQ
         setDQ5  : Bool;   // Set DQ5 in the DQ operating mode Timer DQ
         setDQ6  : Bool;   // Set DQ6 in the DQ operating mode Timer DQ
         setDQ7  : Bool;   // Set DQ7 in the DQ operating mode Timer DQ
         setDQ8  : Bool;   // Set DQ8 in the DQ operating mode Timer DQ
         setDQ9  : Bool;   // Set DQ9 in the DQ operating mode Timer DQ
         setDQ10  : Bool;   // Set DQ10 in the DQ operating mode Timer DQ
         setDQ11  : Bool;   // Set DQ11 in the DQ operating mode Timer DQ
         setDQ12  : Bool;   // Set DQ12 in the DQ operating mode Timer DQ
         setDQ13  : Bool;   // Set DQ13 in the DQ operating mode Timer DQ
         setDQ14  : Bool;   // Set DQ14 in the DQ operating mode Timer DQ
         setDQ15  : Bool;   // Set DQ15 in the DQ operating mode Timer DQ
         setEnDIDQ0  : Bool;   // Override hardware enable for DI0 or DQ0
         setEnDIDQ1  : Bool;   // Override hardware enable for DI1 or DQ1
         setEnDIDQ2  : Bool;   // Override hardware enable for DI2 or DQ2
         setEnDIDQ3  : Bool;   // Override hardware enable for DI3 or DQ3
         setEnDIDQ4  : Bool;   // Override hardware enable for DI4 or DQ4
         setEnDIDQ5  : Bool;   // Override hardware enable for DI5 or DQ5
         setEnDIDQ6  : Bool;   // Override hardware enable for DI6 or DQ6
         setEnDIDQ7  : Bool;   // Override hardware enable for DI7 or DQ7
         setEnDQ8  : Bool;   // Override hardware enable for DQ8
         setEnDQ9  : Bool;   // Override hardware enable for DQ9
         setEnDQ10  : Bool;   // Override hardware enable for DQ10
         setEnDQ11  : Bool;   // Override hardware enable for DQ11
         setEnDQ12  : Bool;   // Override hardware enable for DQ12
         setEnDQ13  : Bool;   // Override hardware enable for DQ13
         setEnDQ14  : Bool;   // Override hardware enable for DQ14
         setEnDQ15  : Bool;   // Override hardware enable for DQ15
         tecOutDQ0  : DWord;   // Value depends on DQ operating mode
         tecOutDQ1  : DWord;   // Value depends on DQ operating mode
         tecOutDQ2  : DWord;   // Value depends on DQ operating mode
         tecOutDQ3  : DWord;   // Value depends on DQ operating mode
         tecOutDQ4  : DWord;   // Value depends on DQ operating mode
         tecOutDQ5  : DWord;   // Value depends on DQ operating mode
         tecOutDQ6  : DWord;   // Value depends on DQ operating mode
         tecOutDQ7  : DWord;   // Value depends on DQ operating mode
         tecOutDQ8  : DWord;   // Value depends on DQ operating mode
         tecOutDQ9  : DWord;   // Value depends on DQ operating mode
         tecOutDQ10  : DWord;   // Value depends on DQ operating mode
         tecOutDQ11  : DWord;   // Value depends on DQ operating mode
         tecOutDQ12  : DWord;   // Value depends on DQ operating mode
         tecOutDQ13  : DWord;   // Value depends on DQ operating mode
         tecOutDQ14  : DWord;   // Value depends on DQ operating mode
         tecOutDQ15  : DWord;   // Value depends on DQ operating mode
         selDI0  : Byte;   // This Value is supplied by the TIO instruction TIO_DI
         selDI2  : Byte;   // This Value is supplied by the TIO instruction TIO_DI
         selDI4  : Byte;   // This Value is supplied by the TIO instruction TIO_DI
         selDI6  : Byte;   // This Value is supplied by the TIO instruction TIO_DI
         stw  : Word;   // This Value is controlled by the TIO instruction TIO_SYNC
      END_STRUCT;

   END_TYPE

   TYPE DI32HFDataRecDICh : STRUCT
         majMinVer  : Byte := BYTE#16;   // Major / minor version
         channelParamLength  : Byte := BYTE#2;   // Length of parameter data per channel
         enableDiagnostics  : Byte;   // Enable diagnostics
         inputDelay  : Byte;   // Hardware interrupt / Input delay
      END_STRUCT;

   END_TYPE

   TYPE DI32HFDataRecCountCh : STRUCT
         majMinVer  : Byte := BYTE#17;   // Major / minor version
         channelParamLength  : Byte := BYTE#16;   // Length of parameter data per channel
         enableDiagnostics  : Byte;   // Enable diagnostics
         inputDelay  : Byte;   // Hardware interrupt / Input delay
         behavior  : Byte;   // Behavior when a counting limit is exceeded / edge selection
         behaviorDQ  : Byte;   // Hardware interrupt / set output DQ
         highCountingLimit  : UDInt;   // High counting limit
         startValue  : UDInt;   // Start value
         comparisonValue  : UDInt;   // Comparison value
      END_STRUCT;

   END_TYPE

   TYPE DI32HFCountFeedback : STRUCT
         stsDI0  : Bool;   // Status DI0
         stsDI1  : Bool;   // Status DI1
         stsDI2  : Bool;   // Status DI2
         stsDI3  : Bool;   // Status DI3
         stsDI4  : Bool;   // Status DI4
         stsDI5  : Bool;   // Status DI5
         stsDI6  : Bool;   // Status DI6
         stsDI7  : Bool;   // Status DI7
         stsDI8  : Bool;   // Status DI8
         stsDI9  : Bool;   // Status DI9
         stsDI10  : Bool;   // Status DI10
         stsDI11  : Bool;   // Status DI11
         stsDI12  : Bool;   // Status DI12
         stsDI13  : Bool;   // Status DI13
         stsDI14  : Bool;   // Status DI14
         stsDI15  : Bool;   // Status DI15
         stsDI16  : Bool;   // Status DI16
         stsDI17  : Bool;   // Status DI17
         stsDI18  : Bool;   // Status DI18
         stsDI19  : Bool;   // Status DI19
         stsDI20  : Bool;   // Status DI20
         stsDI21  : Bool;   // Status DI21
         stsDI22  : Bool;   // Status DI22
         stsDI23  : Bool;   // Status DI23
         stsDI24  : Bool;   // Status DI24
         stsDI25  : Bool;   // Status DI25
         stsDI26  : Bool;   // Status DI26
         stsDI27  : Bool;   // Status DI27
         stsDI28  : Bool;   // Status DI28
         stsDI29  : Bool;   // Status DI29
         stsDI30  : Bool;   // Status DI30
         stsDI31  : Bool;   // Status DI31
         qI0  : Bool;   // Quality information channel 0
         qI1  : Bool;   // Quality information channel 1
         qI2  : Bool;   // Quality information channel 2
         qI3  : Bool;   // Quality information channel 3
         qI4  : Bool;   // Quality information channel 4
         qI5  : Bool;   // Quality information channel 5
         qI6  : Bool;   // Quality information channel 6
         qI7  : Bool;   // Quality information channel 7
         qI8  : Bool;   // Quality information channel 8
         qI9  : Bool;   // Quality information channel 9
         qI10  : Bool;   // Quality information channel 10
         qI11  : Bool;   // Quality information channel 11
         qI12  : Bool;   // Quality information channel 12
         qI13  : Bool;   // Quality information channel 13
         qI14  : Bool;   // Quality information channel 14
         qI15  : Bool;   // Quality information channel 15
         qI16  : Bool;   // Quality information channel 16
         qI17  : Bool;   // Quality information channel 17
         qI18  : Bool;   // Quality information channel 18
         qI19  : Bool;   // Quality information channel 19
         qI20  : Bool;   // Quality information channel 20
         qI21  : Bool;   // Quality information channel 21
         qI22  : Bool;   // Quality information channel 22
         qI23  : Bool;   // Quality information channel 23
         qI24  : Bool;   // Quality information channel 24
         qI25  : Bool;   // Quality information channel 25
         qI26  : Bool;   // Quality information channel 26
         qI27  : Bool;   // Quality information channel 27
         qI28  : Bool;   // Quality information channel 28
         qI29  : Bool;   // Quality information channel 29
         qI30  : Bool;   // Quality information channel 30
         qI31  : Bool;   // Quality information channel 31
         channel  : Array[0..1] of DI32HFCountFeedbackCh;   // Counter channel 0 to 1
      END_STRUCT;

   END_TYPE

   TYPE DI32HFCountControl : STRUCT
         channel  : Array[0..1] of DI32HFCountControlCh;   // Channel 0 to 1
      END_STRUCT;

   END_TYPE

   TYPE DI16HFDataRecDICh : STRUCT
         majMinVer  : Byte := BYTE#16;   // Major / minor version
         channelParamLength  : Byte := BYTE#2;   // Length of parameter data per channel
         enableDiagnostics  : Byte;   // Enable diagnostics
         inputDelay  : Byte;   // Hardware interrupt / Input delay
      END_STRUCT;

   END_TYPE

   TYPE DI16HFDataRecCountCh : STRUCT
         majMinVer  : Byte := BYTE#17;   // Major / minor version
         channelParamLength  : Byte := BYTE#16;   // Length of parameter data per channel
         enableDiagnostics  : Byte;   // Enable diagnostics
         inputDelay  : Byte;   // Hardware interrupt / Input delay
         behavior  : Byte;   // Behavior when a counting limit is exceeded / edge selection
         behaviorDQ  : Byte;   // Hardware interrupt / set output DQ
         highCountingLimit  : UDInt;   // High counting limit
         startValue  : UDInt;   // Start value
         comparisonValue  : UDInt;   // Comparison value
      END_STRUCT;

   END_TYPE

   TYPE DI16HFCountFeedback : STRUCT
         stsDI0  : Bool;   // Status DI0
         stsDI1  : Bool;   // Status DI1
         stsDI2  : Bool;   // Status DI2
         stsDI3  : Bool;   // Status DI3
         stsDI4  : Bool;   // Status DI4
         stsDI5  : Bool;   // Status DI5
         stsDI6  : Bool;   // Status DI6
         stsDI7  : Bool;   // Status DI7
         stsDI8  : Bool;   // Status DI8
         stsDI9  : Bool;   // Status DI9
         stsDI10  : Bool;   // Status DI10
         stsDI11  : Bool;   // Status DI11
         stsDI12  : Bool;   // Status DI12
         stsDI13  : Bool;   // Status DI13
         stsDI14  : Bool;   // Status DI14
         stsDI15  : Bool;   // Status DI15
         qI0  : Bool;   // Quality information channel 0
         qI1  : Bool;   // Quality information channel 1
         qI2  : Bool;   // Quality information channel 2
         qI3  : Bool;   // Quality information channel 3
         qI4  : Bool;   // Quality information channel 4
         qI5  : Bool;   // Quality information channel 5
         qI6  : Bool;   // Quality information channel 6
         qI7  : Bool;   // Quality information channel 7
         qI8  : Bool;   // Quality information channel 8
         qI9  : Bool;   // Quality information channel 9
         qI10  : Bool;   // Quality information channel 10
         qI11  : Bool;   // Quality information channel 11
         qI12  : Bool;   // Quality information channel 12
         qI13  : Bool;   // Quality information channel 13
         qI14  : Bool;   // Quality information channel 14
         qI15  : Bool;   // Quality information channel 15
         channel  : Array[0..1] of DI16HFCountFeedbackCh;   // Counter channel 0 to 1
      END_STRUCT;

   END_TYPE

   TYPE AI8HFDataRec0Ch : STRUCT
         majMinVer  : Byte := BYTE#16;   // Major / minor version
         channelParamLength  : Byte := BYTE#26;   // Length of the parameter data = 26
         measType  : Byte;   // Measurement 
         measRange  : Byte;   // Measuring range
         resb4  : Byte;   // Reserved
         frequSuppressSmooth  : Byte;   // Interference frequency suppression / Smoothing
         opModeCurrLimit  : Byte;   // Operating mode / Current limit for wire break diagnostics
         hwInterruptLimits  : Byte;   // Hardware interrupt, high/low limit 1/2
         enableDiagnostic  : Byte;   // Enable Diagnostic
         resb9  : Byte;   // Reserved
         resw10  : Word;   // Reserved
         hwInterruptHighLimit1  : Word;   // Hardware interrupt high limit 1
         hwInterruptLowLimit1  : Word;   // Hardware interrupt low limit 1
         hwInterruptHighLimit2  : Word;   // Hardware interrupt high limit 2
         hwInterruptLowLimit2  : Word;   // Hardware interrupt low limit 2
         measRangeAdjustHighLimit  : Word;   // Measuring range adjustment high limit
         measRangeAdjustLowLimit  : Word;   // Measuring range adjustment low limit
         resdw24  : DWord;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE DI16HFCountControl : STRUCT
         channel  : Array[0..1] of DI16HFCountControlCh;   // Channel 0 to 1
      END_STRUCT;

   END_TYPE

   TYPE AQDataRec64Ch : STRUCT
         majMinVer  : Byte := BYTE#16;   // Major / minor version
         channelParamLength  : Byte := BYTE#6;   // Length of the parameter data = 6
         outputType  : Byte;   // Output 
         outputRange  : Byte;   // Output range
         enableDiagnostic  : Byte;   // Enable Diagnostic
         reactStop  : Byte;   // Reaction to CPU STOP
         substValue  : Word;   // Substitute value (for channel)
      END_STRUCT;

   END_TYPE

   TYPE AISTDataRec192Ch : STRUCT
         resolution  : Byte :=  BYTE#0;   // Resolution
         tempUnit  : Byte :=  BYTE#0;   // Temperature unit
         extRefJuncTemp  : Word;   // External reference junction temperature
      END_STRUCT;

   END_TYPE

   TYPE AISTDataRec0Ch : STRUCT
         majMinVer  : Byte := BYTE#16;   // Major / minor version
         channelParamLength  : Byte := BYTE#26;   // Length of the parameter data = 26
         measType  : Byte;   // Measurement 
         measRange  : Byte;   // Measuring range
         tempCoefficient  : Byte;   // Temperature coefficient for measuring range
         frequSuppressSmooth  : Byte;   // Interference frequency suppression / Smoothing
         referJunctionTempUnit  : Byte;   // Reference junction / Temperature unit
         hwInterruptLimits  : Byte;   // Hardware interrupt, high/low limit 1/2
         enableDiagnostic  : Byte;   // Enable Diagnostic
         enableDiagnosticMode  : Byte;   // Enable Diagnostic; Common mode error
         fixRefTemp  : Word;   // Fixed reference temperature
         hwInterruptHighLimit1  : Word;   // Hardware interrupt high limit 1
         hwInterruptLowLimit1  : Word;   // Hardware interrupt low limit 1
         hwInterruptHighLimit2  : Word;   // Hardware interrupt high limit 2
         hwInterruptLowLimit2  : Word;   // Hardware interrupt low limit 2
         resdw20  : DWord;   // Reserved
         resdw24  : DWord;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE AI8URRTDTCHFDataRec235 : STRUCT
         majMinVer  : Byte := BYTE#16;   // Major / minor version
         channelParamLength  : Byte := BYTE#8;   // Length of the parameter data = 8
         channel  : Array[0..8] of AI8URRTDTCHFDataRec235Ch;
      END_STRUCT;

   END_TYPE

   TYPE AI8URRTDTCHFDataRec192Ch : STRUCT
         resolution  : Byte :=  BYTE#0;   // Resolution
         tempUnit  : Byte :=  BYTE#0;   // Temperature unit
         extRefJuncTemp  : Word;   // External reference junction temperature
      END_STRUCT;

   END_TYPE

   TYPE AI8URRTDTCHFDataRec0Ch : STRUCT
         majMinVer  : Byte := BYTE#16;   // Major / minor version
         channelParamLength  : Byte := BYTE#26;   // Length of the parameter data = 26
         measType  : Byte;   // Measurement 
         measRange  : Byte;   // Measuring range
         tempCoefficient  : Byte;   // Temperature coefficient for measuring range
         frequSuppressSmooth  : Byte;   // Interference frequency suppression / Smoothing
         referJunctionTempUnit  : Byte;   // Reference junction / Temperature unit
         hwInterruptLimits  : Byte;   // Hardware interrupt, high/low limit 1/2
         enableDiagnostic  : Byte;   // Enable Diagnostic
         enableDiagnosticMode  : Byte;   // Enable Diagnostic; Common mode error
         fixRefTemp  : Word;   // Fixed reference temperature
         hwInterruptHighLimit1  : Word;   // Hardware interrupt high limit 1
         hwInterruptLowLimit1  : Word;   // Hardware interrupt low limit 1
         hwInterruptHighLimit2  : Word;   // Hardware interrupt high limit 2
         hwInterruptLowLimit2  : Word;   // Hardware interrupt low limit 2
         measRangeCenter  : Word;   // Measuring range center
         resw22  : Word;   // Reserved
         resdw24  : DWord;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE AI8STDataRec8 : STRUCT
         majMinVer  : Byte := BYTE#16;   // Major / minor version
         channelParamLength  : Byte := BYTE#26;   // Length of the parameter data = 26
         measType  : Byte;   // Measurement 
         measRange  : Byte;   // Measuring range
         tempCoefficient  : Byte;   // Temperature coefficient for measuring range
         frequSuppressSmooth  : Byte;   // Interference frequency suppression / Smoothing
         resw6  : Word;   // Reserved
         enableDiagnostic  : Byte;   // Enable Diagnostic
         resb9  : Byte;   // Reserved
         resdw10  : DWord;   // Reserved
         resdw14  : DWord;   // Reserved
         resdw18  : DWord;   // Reserved
         resdw22  : DWord;   // Reserved
         resdw26  : Word;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE AI8HSDataRec0Ch : STRUCT
         majMinVer  : Byte := BYTE#16;   // Major / minor version
         channelParamLength  : Byte := BYTE#26;   // Length of the parameter data = 26
         measType  : Byte;   // Measurement 
         measRange  : Byte;   // Measuring range
         resb4  : Byte;   // Reserved
         smooth  : Byte;   // Smoothing
         currLimit  : Byte;   // Current limit for wire break diagnostics
         hwInterruptLimits  : Byte;   // Hardware interrupt, high/low limit 1/2
         enableDiagnostic  : Byte;   // Enable Diagnostic
         resb9  : Byte;   // Reserved
         resw10  : Word;   // Reserved
         hwInterruptHighLimit1  : Word;   // Hardware interrupt high limit 1
         hwInterruptLowLimit1  : Word;   // Hardware interrupt low limit 1
         hwInterruptHighLimit2  : Word;   // Hardware interrupt high limit 2
         hwInterruptLowLimit2  : Word;   // Hardware interrupt low limit 2
         resdw20  : DWord;   // Reserved
         resdw24  : DWord;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE AI8HFDataRec0ScaleCh : STRUCT
         majMinVer  : Byte := BYTE#16;   // Major / minor version
         channelParamLength  : Byte := BYTE#38;   // Length of the parameter data = 26
         measType  : Byte;   // Measurement 
         measRange  : Byte;   // Measuring range
         resb4  : Byte;   // Reserved
         frequSuppressSmooth  : Byte;   // Interference frequency suppression / Smoothing
         opModeCurrLimit  : Byte;   // Operating mode / Current limit for wire break diagnostics
         hwInterruptLimits  : Byte;   // Hardware interrupt, high/low limit 1/2
         enableDiagnostic  : Byte;   // Enable Diagnostic
         resb9  : Byte;   // Reserved
         resw10  : Word;   // Reserved
         hwInterruptHighLimit1  : DWord;   // Hardware interrupt high limit 1
         hwInterruptLowLimit1  : DWord;   // Hardware interrupt low limit 1
         hwInterruptHighLimit2  : DWord;   // Hardware interrupt high limit 2
         hwInterruptLowLimit2  : DWord;   // Hardware interrupt low limit 2
         measRangeAdjustHighLimit  : Word;   // Measuring range adjustment high limit
         measRangeAdjustLowLimit  : Word;   // Measuring range adjustment low limit
         scaledHighRangeLimit  : DWord;   // Scaled high measuring range limit
         scaledLowRangeLimit  : DWord;   // Scaled low measuring range limit
      END_STRUCT;

   END_TYPE

   TYPE TMTimerDIDQ16DataRec : STRUCT
         majMinVer  : Byte := BYTE#1;   // Major / minor version
         channelParamLength  : Byte := BYTE#36;   // Length of the parameter data = 36
         reserved0  : Word;   // Reserved
         pwmPeriod  : Byte;   // Reserved/ PWM period for the digital outputs
         enableDiagnostics  : Byte;   // enable diagnostics / Reaction to CPU STOP
         reserved1  : Word;   // Reserved
         operatingModeCh0  : Byte;   // Operating mode DI0 / DQ0
         inputDelayCh0  : Byte;   // Reserved/ Input delay / Filter frequency DI0 or Reservedif DQ
         operatingModeCh1  : Byte;   // Operating mode DI1 / DQ1
         inputDelayCh1  : Byte;   // Reserved/ Input delay / Filter frequency DI1 or Reservedif DQ
         operatingModeCh2  : Byte;   // Operating mode DI2 / DQ2
         inputDelayCh2  : Byte;   // Reserved/ Input delay / Filter frequency DI2 or Reservedif DQ
         operatingModeCh3  : Byte;   // Operating mode DI3 / DQ3
         inputDelayCh3  : Byte;   // Reserved/ Input delay / Filter frequency DI3 or Reservedif DQ
         operatingModeCh4  : Byte;   // Operating mode DI4 / DQ4
         inputDelayCh4  : Byte;   // Reserved/ Input delay / Filter frequency DI4 or Reservedif DQ
         operatingModeCh5  : Byte;   // Operating mode DI5 / DQ5
         inputDelayCh5  : Byte;   // Reserved/ Input delay / Filter frequency DI5 or Reservedif DQ
         operatingModeCh6  : Byte;   // Operating mode DI6 / DQ6
         inputDelayCh6  : Byte;   // Reserved/ Input delay / Filter frequency DI6 or Reservedif DQ
         operatingModeCh7  : Byte;   // Operating mode DI7 / DQ7
         inputDelayCh7  : Byte;   // Reserved/ Input delay / Filter frequency DI7 or Reservedif DQ
         operatingModeDQ8  : Byte;   // Operating mode DQ8
         reserved2  : Byte;   // Reserved
         operatingModeDQ9  : Byte;   // Operating mode DQ9
         reserved3  : Byte;   // Reserved
         operatingModeDQ10  : Byte;   // Operating mode DQ10
         reserved4  : Byte;   // Reserved
         operatingModeDQ11  : Byte;   // Operating mode DQ11
         reserved5  : Byte;   // Reserved
         operatingModeDQ12  : Byte;   // Operating mode DQ12
         reserved6  : Byte;   // Reserved
         operatingModeDQ13  : Byte;   // Operating mode DQ13
         reserved7  : Byte;   // Reserved
         operatingModeDQ14  : Byte;   // Operating mode DQ14
         reserved8  : Byte;   // Reserved
         operatingModeDQ15  : Byte;   // Operating mode DQ15
         reserved9  : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE TMTimerDIDQ16Feedback : STRUCT
         stsDI0  : Bool;   // Status DI0
         stsDI1  : Bool;   // Status DI1
         stsDI2  : Bool;   // Status DI2
         stsDI3  : Bool;   // Status DI3
         stsDI4  : Bool;   // Status DI4
         stsDI5  : Bool;   // Status DI5
         stsDI6  : Bool;   // Status DI6
         stsDI7  : Bool;   // Status DI7
         qIDI0  : Bool;   // Quality information DI0
         qIDI1  : Bool;   // Quality information DI1
         qIDI2  : Bool;   // Quality information DI2
         qIDI3  : Bool;   // Quality information DI3
         qIDI4  : Bool;   // Quality information DI4
         qIDI5  : Bool;   // Quality information DI5
         qIDI6  : Bool;   // Quality information DI6
         qIDI7  : Bool;   // Quality information DI7
         qIDQ0  : Bool;   // Quality information DQ0
         qIDQ1  : Bool;   // Quality information DQ1
         qIDQ2  : Bool;   // Quality information DQ2
         qIDQ3  : Bool;   // Quality information DQ3
         qIDQ4  : Bool;   // Quality information DQ4
         qIDQ5  : Bool;   // Quality information DQ5
         qIDQ6  : Bool;   // Quality information DQ6
         qIDQ7  : Bool;   // Quality information DQ7
         qIDQ8  : Bool;   // Quality information DQ8
         qIDQ9  : Bool;   // Quality information DQ9
         qIDQ10  : Bool;   // Quality information DQ10
         qIDQ11  : Bool;   // Quality information DQ11
         qIDQ12  : Bool;   // Quality information DQ12
         qIDQ13  : Bool;   // Quality information DQ13
         qIDQ14  : Bool;   // Quality information DQ14
         qIDQ15  : Bool;   // Quality information DQ15
         tecInDI0  : DWord;   // Value depends on operating mode
         tecInDI1  : DWord;   // Value depends on operating mode
         tecInDI2  : DWord;   // Value depends on operating mode
         tecInDI3  : DWord;   // Value depends on operating mode
         tecInDI4  : DWord;   // Value depends on operating mode
         tecInDI5  : DWord;   // Value depends on operating mode
         tecInDI6  : DWord;   // Value depends on operating mode
         tecInDI7  : DWord;   // Value depends on operating mode
         lecEn0  : Byte;   // Lost edge counter; DI / DQ active as Timer DI / DQ
         lecEn2  : Byte;   // Lost edge counter; DI / DQ active as Timer DI / DQ
         lecEn4  : Byte;   // Lost edge counter; DI / DQ active as Timer DI / DQ
         lecEn6  : Byte;   // Lost edge counter; DI / DQ active as Timer DI / DQ
         enDQ8  : Bool;   // DQ8 active as Timer DQ
         enDQ9  : Bool;   // DQ9 active as Timer DQ
         enDQ10  : Bool;   // DQ10 active as Timer DQ
         enDQ11  : Bool;   // DQ11 active as Timer DQ
         enDQ12  : Bool;   // DQ12 active as Timer DQ
         enDQ13  : Bool;   // DQ13 active as Timer DQ
         enDQ14  : Bool;   // DQ14 active as Timer DQ
         enDQ15  : Bool;   // DQ15 active as Timer DQ
         layoutProperty  : Byte;   // Module-specific Value
         zsw  : Word;   // This Value is controlled by the TIO instruction TIO_SYNC
      END_STRUCT;

   END_TYPE

END_NAMESPACE
