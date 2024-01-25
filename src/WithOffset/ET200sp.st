NAMESPACE Siemens.Tiax.Types.WithOffset
   TYPE PNIOTimeStamp : STRUCT
        status        AT %B0   : UInt;   // Status synchronization
        secondsHigh   AT %B2   : UInt;   // Seconds high
        secondsLow    AT %B4   : UDInt;  // Seconds low
        nanoseconds   AT %B8   : UDInt;  // Nanoseconds
      END_STRUCT;

   END_TYPE

   TYPE EM480VSTDataRecParam : STRUCT
        measValueID          AT %B0   : Word;   // Measured value ID
        monitoring           AT %B2   : Byte;   // Monitoring
        hysteresis           AT %B3   : Byte;   // Hysteresis for limit monitoring
        limitMonitored       AT %B4   : Real;   // Limit to be monitored
        delayTime            AT %B8   : Byte;   // Delay time for limit detection = 0 ... 10 s
        resb                 AT %B9   : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EM480VSTDataRecCh     : STRUCT
        enableDiagnostic      AT %B0   : Byte;   // Enable Diagnostic
        overCurrTolerance     AT %B1   : Byte;   // Overcurrent tolerance 10 .. 100 [0.1 A]
        overCurrToleranceTime AT %B2   : Word;   // Overcurrent tolerance time
        currTransPrimCurr     AT %B4   : DWord;  // Current transformer Primary current (A)
        setEnable             AT %B8   : Byte;   // Reverse current direction / Operating hours counter / Current transformer secondary current /  Operating hours counter gate
        lowLimitMeasCurr      AT %B9   : Byte;   // Low limit for measuring current
        secondVolt            AT %B10   : Word;   // Voltage transformer secondary voltage
        primVolt              AT %B12   : DWord;  // Voltage transformer primary voltage
        resb16                AT %B16   : Byte;   // Reserved
        resb17                AT %B17   : Byte;   // Reserved
        resb18                AT %B18   : Byte;   // Reserved
        resb19                AT %B19   : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EM480VRCHFDataRecCh   : STRUCT
        enableDiagnostic      AT %B0   : Byte;   // Enable Diagnostic
        enableDetect          AT %B1   : Byte;   // EnableDetect
        nomValueCurr          AT %B2   : DWord;  // Nominal value current [A]
        toleranceFactOverCurr AT %B6   : Word;   // Tolerance factor overcurrent in relation to nominal value current [0.1%]
        overCurrToleranceTime AT %B8   : Word;   // Overcurrent tolerance time
        lowLimitCurrMeas      AT %B10   : Word;   // Low limit current measurement in relation to nominal value current [0.1%]
        currTransSecVolt      AT %B12   : Word;   // Current transformer secondary voltage [0.1mV]
        currTransPrimCurr     AT %B14   : Word;   // Current transformer primary rated current [A]
        enableOptions         AT %B16   : Byte;   // Reverse current direction / Operating hours counter / Current transformer secondary current /  Operating hours counter gate
        resb17                AT %B17   : Byte;   // Reserved
        nomValueVolt          AT %B18   : DWord;  // Nominal value voltage [V]
        toleranceFactVolt     AT %B22   : Word;   // Tolerance factor over-/undervoltage in relation to nominal value voltage [0.1%]
        transPrimVolt         AT %B24   : DWord;  // Voltage transformer primary voltage
        transSecondVolt       AT %B28   : Word;   // Voltage transformer secondary voltage
        resw30                AT %B30   : Word;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EM480VCTHFDataRecCh   : STRUCT
        enableDiagnostic      AT %B0   : Byte;   // Enable Diagnostic
        enableDetect          AT %B1   : Byte;   // EnableDetect
        nomValueCurr          AT %B2   : DWord;  // Nominal value current [A]
        toleranceFactOverCurr AT %B6   : Word;   // Tolerance factor overcurrent in relation to nominal value current [0.1%]
        overCurrToleranceTime AT %B8   : Word;   // Overcurrent tolerance time
        lowLimitCurrMeas      AT %B10   : Word;   // Low limit current measurement in relation to nominal value current [0.1%]
        currTransPrimCurr     AT %B12   : DWord;  // Current transformer Primary current (A)
        enableOptions         AT %B16   : Byte;   // Reverse current direction / Operating hours counter / Current transformer secondary current /  Operating hours counter gate
        resb17                AT %B17   : Byte;   // Reserved
        nomValueVolt          AT %B18   : DWord;  // Nominal value voltage [V]
        toleranceFactVolt     AT %B22   : Word;   // Tolerance factor over-/undervoltage in relation to nominal value voltage [0.1%]
        transPrimVolt         AT %B24   : DWord;  // Voltage transformer primary voltage
        transSecondVolt       AT %B28   : Word;   // Voltage transformer secondary voltage
        resw30                AT %B30   : Word;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE AI2xUIHFDataRecChV2Scale : STRUCT
        measType                 AT %B0   : Byte;   // Measurement type
        measRange                AT %B1   : Byte;   // Measuring range
        resb2                    AT %B2   : Byte;   // Reserved
        frequSuppressSmooth      AT %B3   : Byte;   // Interference frequency suppression / Smoothing
        resb4                    AT %B4   : Byte;   // Reserved
        hwInterruptLimits        AT %B5   : Byte;   // Hardware interrupt, high/low limit 1/2
        enableDiagnostic         AT %B6   : Byte;   // Enable Diagnostic
        measRangeAdjust          AT %B7   : Byte;   // Measuring range adjustment (0=Locked; 1=Enabled)
        resw8                    AT %B8   : Word;   // Reserved
        hwInterruptHighLimit1    AT %B10   : DWord;  // Hardware interrupt high limit 1
        hwInterruptLowLimit1     AT %B14   : DWord;  // Hardware interrupt low limit 1
        hwInterruptHighLimit2    AT %B18   : DWord;  // Hardware interrupt high limit 2
        hwInterruptLowLimit2     AT %B22   : DWord;  // Hardware interrupt low limit 2
        measRangeAdjustHighLimit AT %B26   : Word;   // Measuring range adjustment high limit
        measRangeAdjustLowLimit  AT %B28   : Word;   // Measuring range adjustment low limit
        scaledHighNomRangeLimit  AT %B30   : DWord;  // Scaled high nominal range limit
        scaledLowNomRangeLimit   AT %B34   : DWord;  // Scaled low nominal range limit
      END_STRUCT;

   END_TYPE

   TYPE AIxRTDTCHFDataRecCh   : STRUCT
        measType              AT %B0   : Byte;   // Measurement type
        measRange             AT %B1   : Byte;   // Measuring range
        tempCoefficient       AT %B2   : Byte;   // Temperature coefficient for measuring range
        frequSuppressSmooth   AT %B3   : Byte;   // Interference frequency suppression / Smoothing
        referJunctionTempUnit AT %B4   : Byte;   // Reference junction / Temperature unit
        hwInterruptLimits     AT %B5   : Byte;   // Hardware interrupt, high/low limit 1/2
        enableDiagnostic      AT %B6   : Byte;   // Enable Diagnostic
        scalMeasRange         AT %B7   : Byte;   // Scalable measuring range
        resw8                 AT %B8   : Word;   // Reserved
        hwInterruptHighLimit1 AT %B10   : Word;   // Hardware interrupt high limit 1
        hwInterruptLowLimit1  AT %B12   : Word;   // Hardware interrupt low limit 1
        hwInterruptHighLimit2 AT %B14   : Word;   // Hardware interrupt high limit 2
        hwInterruptLowLimit2  AT %B16   : Word;   // Hardware interrupt low limit 2
        conductorResist       AT %B18   : Word;   // Conductor resistance, 0 to 50000 milliohm
        measRangeCenter       AT %B20   : Word;   // Measuring range center
      END_STRUCT;

   END_TYPE

   TYPE AIxSTDataRecCh      : STRUCT
        measType            AT %B0   : Byte;   // Measurement type
        measRange           AT %B1   : Byte;   // Measuring range
        resb2               AT %B2   : Byte;   // Reserved
        frequSuppressSmooth AT %B3   : Byte;   // Interference frequency suppression / Smoothing
        resb4               AT %B4   : Byte;   // Reserved
        resb5               AT %B5   : Byte;   // Reserved
        enableDiagnostic    AT %B6   : Byte;   // Enable Diagnostic
        resb7               AT %B7   : Byte;   // Reserved
        resw8               AT %B8   : Word;   // Reserved
        resw10              AT %B10   : Word;   // Reserved
        resw12              AT %B12   : Word;   // Reserved
        resw14              AT %B14   : Word;   // Reserved
        resw16              AT %B16   : Word;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE AI2xUIHSDataRecCh     : STRUCT
        measType              AT %B0   : Byte;   // Measurement type
        measRange             AT %B1   : Byte;   // Measuring range
        resb2                 AT %B2   : Byte;   // Reserved
        smoothing             AT %B3   : Byte;   // Smoothing
        resb4                 AT %B4   : Byte;   // Reserved
        hwInterruptLimits     AT %B5   : Byte;   // Hardware interrupt, high/low limit 1/2
        enableDiagnostic      AT %B6   : Byte;   // Enable Diagnostic
        resb7                 AT %B7   : Byte;   // Reserved
        resw8                 AT %B8   : Word;   // Reserved
        hwInterruptHighLimit1 AT %B10   : Word;   // Hardware interrupt high limit 1
        hwInterruptLowLimit1  AT %B12   : Word;   // Hardware interrupt low limit 1
        hwInterruptHighLimit2 AT %B14   : Word;   // Hardware interrupt high limit 2
        hwInterruptLowLimit2  AT %B16   : Word;   // Hardware interrupt low limit 2
        resw18                AT %B18   : Word;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE AI2xUIHFDataRecChV2      : STRUCT
        measType                 AT %B0   : Byte;   // Measurement type
        measRange                AT %B1   : Byte;   // Measuring range
        resb2                    AT %B2   : Byte;   // Reserved
        frequSuppressSmooth      AT %B3   : Byte;   // Interference frequency suppression / Smoothing
        resb4                    AT %B4   : Byte;   // Reserved
        hwInterruptLimits        AT %B5   : Byte;   // Hardware interrupt, high/low limit 1/2
        enableDiagnostic         AT %B6   : Byte;   // Enable Diagnostic
        measRangeAdjust          AT %B7   : Byte;   // Measuring range adjustment (0=Locked; 1=Enabled)
        resw8                    AT %B8   : Word;   // Reserved
        hwInterruptHighLimit1    AT %B10   : Word;   // Hardware interrupt high limit 1
        hwInterruptLowLimit1     AT %B12   : Word;   // Hardware interrupt low limit 1
        hwInterruptHighLimit2    AT %B14   : Word;   // Hardware interrupt high limit 2
        hwInterruptLowLimit2     AT %B16   : Word;   // Hardware interrupt low limit 2
        measRangeAdjustHighLimit AT %B18   : Word;   // Measuring range adjustment high limit
        measRangeAdjustLowLimit  AT %B20   : Word;   // Measuring range adjustment low limit
      END_STRUCT;

   END_TYPE

   TYPE AI2xUIHFDataRecChV1   : STRUCT
        measType              AT %B0   : Byte;   // Measurement type
        measRange             AT %B1   : Byte;   // Measuring range
        resb2                 AT %B2   : Byte;   // Reserved
        frequSuppressSmooth   AT %B3   : Byte;   // Interference frequency suppression / Smoothing
        resb4                 AT %B4   : Byte;   // Reserved
        hwInterruptLimits     AT %B5   : Byte;   // Hardware interrupt, high/low limit 1/2
        enableDiagnostic      AT %B6   : Byte;   // Enable Diagnostic
        resb7                 AT %B7   : Byte;   // Reserved
        resw8                 AT %B8   : Word;   // Reserved
        hwInterruptHighLimit1 AT %B10   : Word;   // Hardware interrupt high limit 1
        hwInterruptLowLimit1  AT %B12   : Word;   // Hardware interrupt low limit 1
        hwInterruptHighLimit2 AT %B14   : Word;   // Hardware interrupt high limit 2
        hwInterruptLowLimit2  AT %B16   : Word;   // Hardware interrupt low limit 2
      END_STRUCT;

   END_TYPE

   TYPE AI4xIHARTDataRec140Ch : STRUCT
        channelNum            AT %B0   : Byte;   // Channel number 0..3
        varMark               AT %B1   : Byte;   // Variable marking
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRecCh         : STRUCT
        enableDiagnostic      AT %B0   : Byte;   // Enable Diagnostic
        overCurrTolerance     AT %B1   : Byte;   // Overcurrent tolerance 10 .. 100 [0.1 A]
        overCurrToleranceTime AT %B2   : Word;   // Overcurrent tolerance time
        currTransPrimCurr     AT %B4   : Word;   // Current transformer Primary current (A)
        revCurrDirCurrTrans   AT %B6   : Byte;   // Reverse current direction / Current transformer secondary current
        resb7                 AT %B7   : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE AQxSTDataRecCh   : STRUCT
        outputType       AT %B0   : Byte;   // Output type
        outputRange      AT %B1   : Byte;   // Output range
        enableDiagnostic AT %B2   : Byte;   // Enable Diagnostic
        reactStop        AT %B3   : Byte;   // Reaction to CPU STOP
        substValue       AT %B4   : Word;   // Substitute value (for channel)
      END_STRUCT;

   END_TYPE

   TYPE TMPulseControlCh : STRUCT
        outputValue      AT %B0   : UDInt;  // The output value depends on the mode setting
        slot             AT %B4   : UDInt;  // The parameter SLOT depends on the LD_SLOT value
        defSlot          AT %B8   : Byte;   // To specify meaning and update mode of SLOT
        swEnable         AT %X9.0   : Bool;   // Activate the output sequence
        tmCtrlDQ         AT %X9.1   : Bool;   // Outputs are controlled directly by programm (0) or by module (1)
        reserved0        AT %X9.2   : Bool;   // Reserved
        setDQA           AT %X9.3   : Bool;   // Set the output A
        setDQB           AT %X9.4   : Bool;   // Set the output B
        dither           AT %X9.5   : Bool;   // Activates the dithering function
        reserved1        AT %X9.6   : Bool;   // Reserved
        reserved2        AT %X9.7   : Bool;   // Reserved
        resError         AT %X10.0   : Bool;   // Resets the error flags in the feedback interface
        reserved3        AT %X10.1   : Bool;   // Reserved
        reserved4        AT %X10.2   : Bool;   // Reserved
        reserved5        AT %X10.3   : Bool;   // Reserved
        reserved6        AT %X10.4   : Bool;   // Reserved
        reserved7        AT %X10.5   : Bool;   // Reserved
        reserved8        AT %X10.6   : Bool;   // Reserved
        reserved9        AT %X10.7   : Bool;   // Reserved
        reserved10       AT %B11   : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRecParam : STRUCT
        measValueID          AT %B0   : Word;   // Measured value ID
        monitoring           AT %B2   : Byte;   // Monitoring
        hysteresis           AT %B3   : Byte;   // Hysteresis for limit monitoring
        limitMonitored       AT %B4   : Real;   // Limit to be monitored
        delayTime            AT %B8   : Byte;   // Delay time for limit detection = 0 ... 10 s
        resb                 AT %B9   : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE DI8HSDataRecDICh : STRUCT
        modeInputDelay   AT %B0   : Byte;   // Mode / Hardware interrupt / Input delay
        pulseStretch     AT %B1   : Byte;   // Pulse stretching
      END_STRUCT;

   END_TYPE

   TYPE TMPulseControlMotorCh : STRUCT
        outputValue           AT %B0     : DInt;   // The output value depends on the mode setting
        slot                  AT %B4     : UDInt;  // The parameter SLOT depends on the LD_SLOT value
        defSlot               AT %B8     : Byte;   // To specify meaning and update mode of SLOT
        swEnable              AT %X9.0   : Bool;   // Activate the output sequence
        tmCtrlDQ              AT %X9.1   : Bool;   // Outputs are controlled directly by programm (0) or by module (1)
        reserved0             AT %X9.2   : Bool;   // Reserved
        setDQA                AT %X9.3   : Bool;   // Set the output A
        setDQB                AT %X9.4   : Bool;   // Set the output B
        dither                AT %X9.5   : Bool;   // Activates the dithering function
        reserved1             AT %X9.6   : Bool;   // Reserved
        reserved2             AT %X9.7   : Bool;   // Reserved
        resError              AT %X10.0  : Bool;   // Resets the error flags in the feedback interface
        reserved3             AT %X10.1  : Bool;   // Reserved
        reserved4             AT %X10.2  : Bool;   // Reserved
        reserved5             AT %X10.3  : Bool;   // Reserved
        reserved6             AT %X10.4  : Bool;   // Reserved
        reserved7             AT %X10.5  : Bool;   // Reserved
        reserved8             AT %X10.6  : Bool;   // Reserved
        reserved9             AT %X10.7  : Bool;   // Reserved
        reserved10            AT %B11    : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE DI8HSDataRecOVSCh : STRUCT
        modeInputDelay    AT %B0  : Byte;   // Mode / Input delay
        reserved0         AT %B1  : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE TMPulseDataRecHead : STRUCT
        majMinVer          AT %B0  : Byte    := BYTE#1;   // Major / minor version
        channelParamLength AT %B1  : Byte    := BYTE#52;  // Length of parameter data per channel
        reserved0          AT %B2  : Word;                // Reserved
      END_STRUCT;

   END_TYPE

   TYPE MotorStarterEntry : STRUCT
        operatingHours    AT %B0  : DInt;   // Operating hours - device
        objectNumber      AT %B4  : Int;    // Object Number
      END_STRUCT;

   END_TYPE

   TYPE DI8HSDataRecCountCh : STRUCT
        counterInputs0      AT %B0  : Byte;   // Mode / Reaction / Edge selection / Count direction / Input delay
        counterInputs1      AT %B1  : Byte;   // Set output / Setting function of the DI
        reserved0           AT %B2  : Byte;   // Reserved
        reserved1           AT %B3  : Byte;   // Reserved
        compareValue1       AT %B4  : DInt;   // Comparison value 1
        compareValue0       AT %B8  : DInt;   // Comparison value 0
        startValue          AT %B12  : DInt;   // Start value
        countHighLimit      AT %B16  : DInt;   // Count high limit
        countLowLimit       AT %B20  : DInt;   // Count low limit
        reserved2           AT %B24  : Byte;   // Reserved
        reserved3           AT %B25  : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE TMPulseFeedbackCh : STRUCT
        errPwr            AT %X0.0  : Bool;   // 24V DC present, but is not in the correct range
        err24V            AT %X0.1  : Bool;   // Short-circuit/overload, in the 24V DC sensor supply output
        errLd             AT %X0.2  : Bool;   // Error while loading a parameter value using single-update mode
        errPulse          AT %X0.3  : Bool;   // Pulse duration reduced to smaller than the minimum allowed value during operation
        errDQA            AT %X0.4  : Bool;   // Short-circuit/overload on the digital output DQn.A detected
        errDQB            AT %X0.5  : Bool;   // Short-circuit/overload on the digital output DQn.B or attempt to set both DQn.A and DQn.B high
        errOutVal         AT %X0.6  : Bool;   // The value in OUTPUT_VALUE is not valid
        errSlotVal        AT %X0.7  : Bool;   // The value in SLOT is not valid where MODE_SLOT = 1 (permanent update)
        reserved0         AT %X1.0  : Bool;   // Reserved
        reserved1         AT %X1.1  : Bool;   // Reserved
        stsLdSlot         AT %X1.2  : Bool;   // Toggle acknowledge bit for each action of the SLOT-mode
        reserved2         AT %X1.3  : Bool;   // Reserved
        stsReady          AT %X1.4  : Bool;   // Module is parameterized correctly, running, and delivering valid data
        stsSwEnable       AT %X1.5  : Bool;   // Current state of the software enable
        reserved3         AT %X1.6  : Bool;   // Reserved
        reserved4         AT %X1.7  : Bool;   // Reserved
        stsEnable         AT %X2.0  : Bool;   // Output sequence is active
        stsDQA            AT %X2.1  : Bool;   // State of digital output DQn.A
        stsDQB            AT %X2.2  : Bool;   // State of digital output DQn.B
        stsDI             AT %X2.3  : Bool;   // DIn.0: State of digital input
        stsDither         AT %X2.4  : Bool;   // Dithering state
        reserved5         AT %X2.5  : Bool;   // Reserved
        reserved6         AT %X2.6  : Bool;   // Reserved
        reserved7         AT %X2.7  : Bool;   // Reserved
        seqCnt            AT %B3    : Byte;   // Counts completed output sequences (Bit 0)
        measuredCurrent   AT %B4    : Int;    // S7 analog value (0 to 32,767)
        qlmnLlm           AT %X6.0  : Bool;   // The low limit of the manipulated value has been reached
        qlmnHlm           AT %X6.1  : Bool;   // The high limit of the manipulated value has been reached
        reserved8         AT %X6.2  : Bool;   // Reserved
        reserved9         AT %X6.3  : Bool;   // Reserved
        reserved10        AT %X6.4  : Bool;   // Reserved
        reserved11        AT %X6.5  : Bool;   // Reserved
        reserved12        AT %X6.6  : Bool;   // Reserved
        reserved13        AT %X6.7  : Bool;   // Reserved
        reserved14        AT %B7    : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE DQ4HSDataRecCh : STRUCT
        settingsMode   AT %B0  : Byte;   // Substitute values / Reaction / operating mode
        reserved0      AT %B1  : Byte;   // Reserved
        setValue1      AT %B2  : Word;   // Depends on operating mode
        setValue2      AT %B4  : Word;   // Depends on operating mode
        setValue3      AT %B6  : Word;   // Depends on operating mode
      END_STRUCT;

   END_TYPE

   TYPE TMPulseControlFrequCh : STRUCT
        outputValue           AT %B0  : Real;   // Frequency in Hz
        slot                  AT %B4  : UDInt;  // The parameter SLOT depends on the LD_SLOT value
        defSlot               AT %B8  : Byte;   // To specify meaning and update mode of SLOT
        swEnable              AT %X9.0 : Bool;   // Activate the output sequence
        tmCtrlDQ              AT %X9.1 : Bool;   // Outputs are controlled directly by programm (0) or by module (1)
        reserved0             AT %X9.2 : Bool;   // Reserved
        setDQA                AT %X9.3 : Bool;   // Set the output A
        setDQB                AT %X9.4 : Bool;   // Set the output B
        dither                AT %X9.5 : Bool;   // Activates the dithering function
        reserved1             AT %X9.6 : Bool;   // Reserved
        reserved2             AT %X9.7 : Bool;   // Reserved
        resError              AT %X10.0 : Bool;   // Resets the error flags in the feedback interface
        reserved3             AT %X10.1 : Bool;   // Reserved
        reserved4             AT %X10.2 : Bool;   // Reserved
        reserved5             AT %X10.3 : Bool;   // Reserved
        reserved6             AT %X10.4 : Bool;   // Reserved
        reserved7             AT %X10.5 : Bool;   // Reserved
        reserved8             AT %X10.6 : Bool;   // Reserved
        reserved9             AT %X10.7 : Bool;   // Reserved
        reserved10            AT %B11  : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE AI4xIHARTDataRecCh  : STRUCT
        measType            AT %B0  : Byte;               // Measurement type
        measRange           AT %B1  : Byte;               // Measuring range
        resb2               AT %B2  : Byte;               // Reserved
        frequSuppressSmooth AT %B3  : Byte;               // Interference frequency suppression / Smoothing
        wireBreakThreshold  AT %B4  : Byte;               // Wire break threshold
        resb5               AT %B5  : Byte;               // Reserved
        enableDiagnostic    AT %B6  : Byte;               // Enable Diagnostic
        enableDiagHart      AT %B7  : Byte;               // Enable Diagnostic; HART diagnostics
        numHartPreamble     AT %B8  : Byte    := BYTE#5;  // Number of HART preamble bytes (default = 5)
        numHartRepetitions  AT %B9  : Byte    := BYTE#5;  // Number of HART repetitions (default = 5)
      END_STRUCT;

   END_TYPE

   TYPE OVSCh           : STRUCT
        subcycles1To8   AT %B0  : Byte;   // Subcycles 1 to 8
        subcycles9To16  AT %B1  : Byte;   // Subcycles 9 to 16
        subcycles17To24 AT %B2  : Byte;   // Subcycles 17 to 24
        subcycles25To32 AT %B3  : Byte;   // Subcycles 25 to 32
      END_STRUCT;

   END_TYPE

   TYPE TMPulseDataRecCh : STRUCT
        behavior0        AT %B0  : Byte;   // Current control / Dithering / High-speed output / operating mode
        behavior1        AT %B1  : Byte;   // PID loop calculation / reserved / Diagnostic interrupt / Reaction to CPU STOP
        behavior2        AT %B2  : Byte;   // Reserved / Input delay / Function DI
        behavior3        AT %B3  : Byte;   // Reserved / Output format / Diagnostics DQB / Diagnostics DQA / Substitute value DQB / Substitute value DQA
        minPulseDuration AT %B4  : DWord;  // Minimum pulse duration
        periodDuration   AT %B8  : DWord;  // Period duration
        onDelay          AT %B12  : DWord;  // On-delay: 0 μs to 85,000,000 μs
        value            AT %B16  : DWord;  // Value
        ditherAmplitude  AT %B20  : DWord;  // Dither amplitude (per mil)
        ditherPeriod     AT %B24  : DWord;  // Dither period
        refValueCurrent  AT %B28  : UInt;   // PWM mode only: Reference value current (mA)
        deadBandWidth    AT %B30  : UInt;   // PWM mode only: Dead band width (μA)
        highLimit        AT %B32  : UInt;   // PWM mode only: High limit - S7-analog value relative to the reference value
        lowLimit         AT %B34  : UInt;   // PWM mode only: Low limit - S7-analog value relative to the reference value
        gain             AT %B36  : Real;   // PWM mode only: Gain
        ti               AT %B40  : Real;   // PWM mode only: Integration time (s)
        td               AT %B44  : Real;   // PWM mode only: Derivative action time (s)
        tmLag            AT %B48  : Real;   // PWM mode only: Time lag of the derivative action (s)
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRecParam : STRUCT
        measValueID      AT %B0  : Word;   // Measured value ID
        monitoring       AT %B2  : Byte;   // Monitoring
        hysteresis       AT %B3  : Byte;   // Hysteresis for limit monitoring
        limitMonitored   AT %B4  : Real;   // Limit to be monitored
        delayTime        AT %B8  : Byte;   // Delay time for limit detection = 0 ... 10 s
        resb             AT %B9  : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE RealValueAndPNIOTimeStamp : STRUCT
        value                     AT %B0 : Real;           // value
        pnIOTimeStamp             AT %B4 : PNIOTimeStamp;  // Time stamp
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRecParam : STRUCT
        measValueID      AT %B0  : Word;   // Measured value ID
        monitoring       AT %B2  : Byte;   // Monitoring
        hysteresis       AT %B3  : Byte;   // Hysteresis for limit monitoring
        limitMonitored   AT %B4  : Real;   // Limit to be monitored
        delayTime        AT %B8  : Byte;   // Delay time for limit detection = 0 ... 10 s
        resb             AT %B9  : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EMCTHFDataRecCh       : STRUCT
        enableDiagnostic      AT %B0  : Byte;   // Enable Diagnostic
        enableDetect          AT %B1  : Byte;   // EnableDetect
        nomValueCurr          AT %B2  : DWord;  // Nominal value current [A]
        toleranceFactOverCurr AT %B6  : Word;   // Tolerance factor overcurrent in relation to nominal value current [0.1%]
        overCurrToleranceTime AT %B8  : Word;   // Overcurrent tolerance time
        lowLimitCurrMeas      AT %B10  : Word;   // Low limit current measurement in relation to nominal value current [0.1%]
        currTransPrimCurr     AT %B12  : DWord;  // Current transformer primary current [A]
        enableOptions         AT %B16  : Byte;   // Reverse current direction / Operating hours counter / Current transformer secondary current /  Operating hours counter gate
        resb17                AT %B17  : Byte;   // Reserved
        nomValueVolt          AT %B18  : DWord;  // Nominal value voltage [V]
        toleranceFactVolt     AT %B22  : Word;   // Tolerance factor over-/undervoltage in relation to nominal value voltage [0.1%]
        transPrimVolt         AT %B24  : DWord;  // Voltage transformer primary voltage
        transSecondVolt       AT %B28  : Word;   // Voltage transformer secondary voltage
        resw30                AT %B30  : Word;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EMRCHFDataRecCh       : STRUCT
        enableDiagnostic      AT %B0  : Byte;   // Enable Diagnostic
        enableDetect          AT %B1  : Byte;   // EnableDetect
        nomValueCurr          AT %B2  : DWord;  // Nominal value current [A]
        toleranceFactOverCurr AT %B6  : Word;   // Tolerance factor overcurrent in relation to nominal value current [0.1%]
        overCurrToleranceTime AT %B8  : Word;   // Overcurrent tolerance time
        lowLimitCurrMeas      AT %B10  : Word;   // Low limit current measurement in relation to nominal value current [0.1%]
        currTransSecVolt      AT %B12  : Word;   // Current transformer secondary voltage [0.1 mV]
        currTransPrimCurr     AT %B14  : Word;   // Current transformer primary rated current
        enableOptions         AT %B16  : Byte;   // Reverse current direction / Operating hours counter / Current transformer secondary current /  Operating hours counter gate
        resb17                AT %B17  : Byte;   // Reserved
        nomValueVolt          AT %B18  : DWord;  // Nominal value voltage [V]
        toleranceFactVolt     AT %B22  : Word;   // Tolerance factor over-/undervoltage in relation to nominal value voltage [0.1%]
        transPrimVolt         AT %B24  : DWord;  // Voltage transformer primary voltage
        transSecondVolt       AT %B28  : Word;   // Voltage transformer secondary voltage
        resw30                AT %B30  : Word;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EMHFMeasValRecBlock   : STRUCT
        measValueIDRec        AT %B0  : Word;   // ID of the measured value for measured value recording
        recInterval           AT %B2  : Word;   // Recording interval for measured value recording
        modeMeasValRec        AT %B4  : Byte;   // Mode for measured value recording; 0:once / 1:Circular buffer 
        measValRecBlock       AT %B5  : Byte;   // MV recorder block n; 0:no HW interrupt / 1:HW interrupt when DS17x is full
        startTrigIDmeasValRec AT %B6  : Byte;   // Start trigger ID measured value recording
        stopTrigIDmeasValRec  AT %B7  : Byte;   // Stop trigger ID measured value recording
      END_STRUCT;

   END_TYPE

   TYPE EMRCSTDataRecCh       : STRUCT
        enableDiagnostic      AT %B0  : Byte;   // Enable Diagnostic
        resb1                 AT %B1  : Byte;   // Reserved
        nomValueCurr          AT %B2  : DWord;  // Nominal value current [A]
        toleranceFactOverCurr AT %B6  : Word;   // Tolerance factor overcurrent in relation to nominal value current [0.1%]
        overCurrToleranceTime AT %B8  : Word;   // Overcurrent tolerance time
        lowLimitCurrMeas      AT %B10  : Word;   // Low limit current measurement in relation to nominal value current [0.1%]
        currTransSecVolt      AT %B12  : Word;   // Current transformer secondary voltage [0.1 mV]
        currTransPrimCurr     AT %B14  : Word;   // Current transformer primary rated current
        enableOptions         AT %B16  : Byte;   // Reverse current direction / Operating hours counter / Current transformer secondary current /  Operating hours counter gate
        resb17                AT %B17  : Byte;   // Reserved
        nomValueVolt          AT %B18  : DWord;  // Nominal value voltage [V]
        toleranceFactVolt     AT %B22  : Word;   // Tolerance factor over-/undervoltage in relation to nominal value voltage [0.1%]
        transPrimVolt         AT %B24  : DWord;  // Voltage transformer primary voltage
        transSecondVolt       AT %B28  : Word;   // Voltage transformer secondary voltage
        resw30                AT %B30  : Word;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EMCTSTDataRecCh       : STRUCT
        enableDiagnostic      AT %B0 : Byte;   // Enable Diagnostic
        resb1                 AT %B1 : Byte;   // Reserved
        nomValueCurr          AT %B2 : DWord;  // Nominal value current [A]
        toleranceFactOverCurr AT %B6 : Word;   // Tolerance factor overcurrent in relation to nominal value current [0.1%]
        overCurrToleranceTime AT %B8 : Word;   // Overcurrent tolerance time
        lowLimitCurrMeas      AT %B10 : Word;   // Low limit current measurement in relation to nominal value current [0.1%]
        currTransPrimCurr     AT %B12 : DWord;  // Current transformer primary current [A]
        enableOptions         AT %B16 : Byte;   // Reverse current direction / Operating hours counter / Current transformer secondary current /  Operating hours counter gate
        resb17                AT %B17 : Byte;   // Reserved
        nomValueVolt          AT %B18 : DWord;  // Nominal value voltage [V]
        toleranceFactVolt     AT %B22 : Word;   // Tolerance factor over-/undervoltage in relation to nominal value voltage [0.1%]
        transPrimVolt         AT %B24 : DWord;  // Voltage transformer primary voltage
        transSecondVolt       AT %B28 : Word;   // Voltage transformer secondary voltage
        resw30                AT %B30 : Word;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec169    : STRUCT
        version           AT %B0   : Byte;           // Version
        resb1             AT %B1   : Byte;           // Reserved
        nextIndex         AT %B2   : Byte;           // Next index
        overflow          AT %B3   : Byte;           // Overflow
        switchOffTime1    AT %B4   : PNIOTimeStamp;  // 1: Switch-off time
        switchOnTime1     AT %B16   : PNIOTimeStamp;  // 1: Switch-on time
        switchOffTime2    AT %B28   : PNIOTimeStamp;  // 2: Switch-off time
        switchOnTime2     AT %B40   : PNIOTimeStamp;  // 2: Switch-on time
        switchOffTime3    AT %B52   : PNIOTimeStamp;  // 3: Switch-off time
        switchOnTime3     AT %B64   : PNIOTimeStamp;  // 3: Switch-on time
        switchOffTime4    AT %B76   : PNIOTimeStamp;  // 4: Switch-off time
        switchOnTime4     AT %B88   : PNIOTimeStamp;  // 4: Switch-on time
        switchOffTime5    AT %B100   : PNIOTimeStamp;  // 5: Switch-off time
        switchOnTime5     AT %B112   : PNIOTimeStamp;  // 5: Switch-on time
        switchOffTime6    AT %B124   : PNIOTimeStamp;  // 6: Switch-off time
        switchOnTime6     AT %B136   : PNIOTimeStamp;  // 6: Switch-on time
        switchOffTime7    AT %B148   : PNIOTimeStamp;  // 7: Switch-off time
        switchOnTime7     AT %B160   : PNIOTimeStamp;  // 7: Switch-on time
        switchOffTime8    AT %B172   : PNIOTimeStamp;  // 8: Switch-off time
        switchOnTime8     AT %B184   : PNIOTimeStamp;  // 8: Switch-on time
        switchOffTime9    AT %B196   : PNIOTimeStamp;  // 9: Switch-off time
        switchOnTime9     AT %B208   : PNIOTimeStamp;  // 9: Switch-on time
        currentModuleTime AT %B220   : PNIOTimeStamp;  // Current module time
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec163    : STRUCT
        version           AT %B0   : Byte;                  // Version
        resb1             AT %B1   : Byte;                  // Reserved
        tHDaNCurrL1       AT %B2   : Real;                  // Total harmonic distortion (THD+N) current L1
        currL1            AT %B6   : Real;                  // Current L1
        harmCurrL1        AT %B10  : Array[1..40] of Real;  // Harmonics 1-40: Current L1
        tHDaNCurrL2       AT %B170 : Real;                  // Total harmonic distortion (THD+N) current L2
        currL2            AT %B174 : Real;                  // Current L2
        harmCurrL2        AT %B180 : Array[1..40] of Real;  // Harmonics 1-40: Current L2
        tHDaNCurrL3       AT %B340 : Real;                  // Total harmonic distortion (THD+N) current L3
        currL3            AT %B344 : Real;                  // Current L3
        harmCurrL3        AT %B348 : Array[1..40] of Real;  // Harmonics 1-40: Current L3
        currentModuleTime AT %B508 : PNIOTimeStamp;         // Current module time
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec161    : STRUCT
        version           AT %B0   : Byte;                  // Version
        resb1             AT %B1   : Byte;                  // Reserved
        tHDaNVoltL1       AT %B2   : Real;                  // Total harmonic distortion (THD+N) voltage L1
        voltL1N           AT %B6   : Real;                  // Voltage L1-N
        harmVoltL1        AT %B10  : Array[1..40] of Real;  // Harmonics 1-40: Voltage L1
        tHDaNVoltL2       AT %B170 : Real;                  // Total harmonic distortion (THD+N) voltage L2
        voltL2N           AT %B174 : Real;                  // Voltage L2-N
        harmVoltL2        AT %B180 : Array[1..40] of Real;  // Harmonics 1-40: Voltage L2
        tHDaNVoltL3       AT %B340 : Real;                  // Total harmonic distortion (THD+N) voltage L3
        voltL3N           AT %B344 : Real;                  // Voltage L3-N
        harmVoltL3        AT %B348 : Array[1..40] of Real;  // Harmonics 1-40: Voltage L3
        currentModuleTime AT %B508 : PNIOTimeStamp;         // Current module time
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec148V0          : STRUCT
        version                   AT %B0   : Byte;   // Version
        resb1                     AT %B1   : Byte;   // Reserved
        qualifierL2               AT %B2   : Word;   // Qualifier L2
        voltL2N                   AT %B4   : Real;   // Voltage L2-N
        currentL2                 AT %B8   : Real;   // Current L2
        apparentPowerL2           AT %B12  : Real;   // Apparent power L2
        activePowerL2             AT %B16  : Real;   // Active power L2
        reactivePowerQtotL2       AT %B20  : Real;   // Reactive power Qtot L2
        powerFactorL2             AT %B24  : Real;   // Power factor λ L2
        phaseAngleL2              AT %B28  : Real;   // Phase angle L2
        apparentEnergyLongL2      AT %B32  : LReal;  // Apparent energy L2
        totalActiveEnergyLongL2   AT %B40  : LReal;  // Active energy (total) L2
        totalReactiveEnergyLongL2 AT %B48  : LReal;  // Reactive energy (total) L2
        maxVoltL2N                AT %B56  : Real;   // Max. voltage L2-N
        maxCurrentL2              AT %B60  : Real;   // Max. current L2
        maxApparentPowerL2        AT %B64  : Real;   // Max. apparent power L2
        maxActivePowerL2          AT %B68  : Real;   // Max. active power L2
        maxReactivePowerQtotL2    AT %B72  : Real;   // Max. reactive power Qtot L2
        maxPowerFactorL2          AT %B76  : Real;   // Max. power factor λ L2
        minVoltL2N                AT %B80  : Real;   // Min. voltage L2-N
        minCurrentL2              AT %B84  : Real;   // Min. current L2
        minApparentPowerL2        AT %B88  : Real;   // Min. apparent power L2
        minActivePowerL2          AT %B92  : Real;   // Min. active power L2
        minReactivePowerQtotL2    AT %B96  : Real;   // Min. reactive power L2
        minPowerFactorL2          AT %B100 : Real;   // Min. power factor λ L2
      END_STRUCT;

   END_TYPE

   TYPE DQ4HSPWM       : STRUCT
        outputValueCh0 AT %B0  : Word;   // Output value channel 0 with pulse width modulation
        outputValueCh1 AT %B2  : Word;   // Output value channel 1 with pulse width modulation
        outputValueCh2 AT %B4  : Word;   // Output value channel 2 with pulse width modulation
        outputValueCh3 AT %B6  : Word;   // Output value channel 3 with pulse width modulation
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec148V0          : STRUCT
        version                   AT %B0   : Byte;   // Version
        resb1                     AT %B1   : Byte;   // Reserved
        qualifierL2               AT %B2   : Word;   // Qualifier L2
        voltL2N                   AT %B4   : Real;   // Voltage L2-N
        currentL2                 AT %B8   : Real;   // Current L2
        apparentPowerL2           AT %B12  : Real;   // Apparent power L2
        activePowerL2             AT %B16  : Real;   // Active power L2
        reactivePowerQtotL2       AT %B20  : Real;   // Reactive power Qtot L2
        powerFactorL2             AT %B24  : Real;   // Power factor λ L2
        phaseAngleL2              AT %B28  : Real;   // Phase angle L2
        apparentEnergyLongL2      AT %B32  : LReal;  // Apparent energy L2
        totalActiveEnergyLongL2   AT %B40  : LReal;  // Active energy (total) L2
        totalReactiveEnergyLongL2 AT %B48  : LReal;  // Reactive energy (total) L2
        maxVoltL2N                AT %B56  : Real;   // Max. voltage L2-N
        maxCurrentL2              AT %B60  : Real;   // Max. current L2
        maxApparentPowerL2        AT %B64  : Real;   // Max. apparent power L2
        maxActivePowerL2          AT %B68  : Real;   // Max. active power L2
        maxReactivePowerQtotL2    AT %B72  : Real;   // Max. reactive power Qtot L2
        maxPowerFactorL2          AT %B76  : Real;   // Max. power factor λ L2
        minVoltL2N                AT %B80  : Real;   // Min. voltage L2-N
        minCurrentL2              AT %B84  : Real;   // Min. current L2
        minApparentPowerL2        AT %B88  : Real;   // Min. apparent power L2
        minActivePowerL2          AT %B92  : Real;   // Min. active power L2
        minReactivePowerQtotL2    AT %B96  : Real;   // Min. reactive power L2
        minPowerFactorL2          AT %B100 : Real;   // Min. power factor λ L2
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec129   : STRUCT
        majMinVer        AT %B0 : Byte    := BYTE#0;                 // Major / minor version
        lengthParamBlock AT %B1 : Byte    := BYTE#10;                // Length of parameter block = 10
        numParamBlocks   AT %B2 : Byte    := BYTE#16;                // Number of parameter blocks
        resb3            AT %B3 : Byte;                              // Reserved
        paramBlock       AT %B4 : Array[1..16] of EMSTDataRecParam;  // Parameter blocks
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec149V0          : STRUCT
        version                   AT %B0   : Byte;   // Version
        resb1                     AT %B1   : Byte;   // Reserved
        qualifierL3               AT %B2   : Word;   // Qualifier L3
        voltL3N                   AT %B4   : Real;   // Voltage L3-N
        currentL3                 AT %B8   : Real;   // Current L3
        apparentPowerL3           AT %B12  : Real;   // Apparent power L3
        activePowerL3             AT %B16  : Real;   // Active power L3
        reactivePowerQtotL3       AT %B20  : Real;   // Reactive power Qtot L3
        powerFactorL3             AT %B24  : Real;   // Power factor λ L3
        phaseAngleL3              AT %B28  : Real;   // Phase angle L3
        apparentEnergyLongL3      AT %B32  : LReal;  // Apparent energy L3
        totalActiveEnergyLongL3   AT %B40  : LReal;  // Active energy (total) L3
        totalReactiveEnergyLongL3 AT %B48  : LReal;  // Reactive energy (total) L3
        maxVoltL3N                AT %B56  : Real;   // Max. voltage L3-N
        maxCurrentL3              AT %B60  : Real;   // Max. current L3
        maxApparentPowerL3        AT %B64  : Real;   // Max. apparent power L3
        maxActivePowerL3          AT %B68  : Real;   // Max. active power L3
        maxReactivePowerQtotL3    AT %B72  : Real;   // Max. reactive power Qtot L3
        maxPowerFactorL3          AT %B76  : Real;   // Max. power factor λ L3
        minVoltL3N                AT %B80  : Real;   // Min. voltage L3-N
        minCurrentL3              AT %B84  : Real;   // Min. current L3
        minApparentPowerL3        AT %B88  : Real;   // Min. apparent power L3
        minActivePowerL3          AT %B92  : Real;   // Min. active power L3
        minReactivePowerQtotL3    AT %B96  : Real;   // Min. reactive power L3
        minPowerFactorL3          AT %B100 : Real;   // Min. power factor λ L3
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec147V1          : STRUCT
        version                   AT %B0   : Byte    := BYTE#1;  // Version
        resb1                     AT %B1   : Byte;               // Reserved
        qualifierL1               AT %B2   : Word;               // Qualifier L1
        voltL1N                   AT %B4   : Real;               // Voltage L1-N
        currentL1                 AT %B8   : Real;               // Current L1
        apparentPowerL1           AT %B12  : Real;               // Apparent power L1
        activePowerL1             AT %B16  : Real;               // Active power L1
        reactivePowerQtotL1       AT %B20  : Real;               // Reactive power Qtot L1
        powerFactorL1             AT %B24  : Real;               // Power factor λ L1
        phaseAngleL1              AT %B28  : Real;               // Phase angle L1
        apparentEnergyLongL1      AT %B32  : LReal;              // Apparent energy L1
        totalActiveEnergyLongL1   AT %B40  : LReal;              // Active energy (total) L1
        totalReactiveEnergyLongL1 AT %B48  : LReal;              // Reactive energy (total) L1
        maxVoltL1N                AT %B56  : Real;               // Max. voltage L1-N
        maxCurrentL1              AT %B60  : Real;               // Max. current L1
        maxApparentPowerL1        AT %B64  : Real;               // Max. apparent power L1
        maxActivePowerL1          AT %B68  : Real;               // Max. active power L1
        maxReactivePowerQtotL1    AT %B72  : Real;               // Max. reactive power Qtot L1
        maxPowerFactorL1          AT %B76  : Real;               // Max. power factor λ L1
        minVoltL1N                AT %B80  : Real;               // Min. voltage L1-N
        minCurrentL1              AT %B84  : Real;               // Min. current L1
        minApparentPowerL1        AT %B88  : Real;               // Min. apparent power L1
        minActivePowerL1          AT %B92  : Real;               // Min. active power L1
        minReactivePowerQtotL1    AT %B96  : Real;               // Min. reactive power Qtot L1
        minPowerFactorL1          AT %B100 : Real;               // Min. power factor λ L1
        reactivePowerQnL1         AT %B104 : Real;               // Reactive power Qn L1
        resDW108                  AT %B108 : DWord;              // Reserved
        resDW112                  AT %B112 : Real;               // Reserved
        resDW116                  AT %B116 : Real;               // Reserved
        resDW120                  AT %B120 : Real;               // Reserved
        resDW124                  AT %B124 : Real;               // Reserved
        resDW128                  AT %B128 : Real;               // Reserved
        resDW132                  AT %B132 : Real;               // Reserved
        fundReactivePowerL1       AT %B136 : Real;               // Fundamental reactive power L1
        resDW140                  AT %B140 : DWord;              // Reserved
        fundActiveFactorL1        AT %B144 : Real;               // Fundamental cos φ active factor L1
        resDW148                  AT %B148 : DWord;              // Reserved
        resDW152                  AT %B152 : DWord;              // Reserved
        resDW156                  AT %B156 : DWord;              // Reserved
        resDW160                  AT %B160 : DWord;              // Reserved
        resDW164                  AT %B164 : DWord;              // Reserved
        resDW168                  AT %B168 : DWord;              // Reserved
        resDW172                  AT %B172 : DWord;              // Reserved
        resDW176                  AT %B176 : DWord;              // Reserved
        resDW180                  AT %B180 : DWord;              // Reserved
        resDW184                  AT %B184 : DWord;              // Reserved
        resDW188                  AT %B188 : DWord;              // Reserved
        resDW192                  AT %B192 : DWord;              // Reserved
        resDW196                  AT %B196 : DWord;              // Reserved
        resDW200                  AT %B200 : DWord;              // Reserved
        resDW204                  AT %B204 : DWord;              // Reserved
        resDW208                  AT %B208 : DWord;              // Reserved
        resDW212                  AT %B212 : DWord;              // Reserved
        resDW216                  AT %B216 : DWord;              // Reserved
        resDW220                  AT %B220 : DWord;              // Reserved
        resDW224                  AT %B224 : DWord;              // Reserved
        resDW228                  AT %B228 : DWord;              // Reserved
        resDW232                  AT %B232 : DWord;              // Reserved
        resDW236                  AT %B236 : DWord;              // Reserved
        resDW240                  AT %B240 : DWord;              // Reserved
        resDW244                  AT %B244 : DWord;              // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec160             : STRUCT
        version                    AT %B0  : Byte;           // Version
        resb1                      AT %B1  : Byte;           // Reserved
        neutralCurrIn              AT %B2  : Real;           // Neutral current IN
        neutralCurrCyc10to12       AT %B6  : Real;           // Neutral current 10/12 cycles
        totalCurrIn                AT %B10  : Real;           // Total current IL1+IL2+IL3-IN
        fundReactivePowerL1L2L3    AT %B14  : Real;           // Fundamental reactive power L1 L2 L3
        maxFundReactivePowerL1L2L3 AT %B18  : Real;           // Max. fundamental reactive power L1 L2 L3
        minFundReactivePowerL1L2L3 AT %B22  : Real;           // Min. fundamental reactive power L1 L2 L3
        powerFactorL1L2L3          AT %B26  : Real;           // Power factor λ L1L2L3
        fundReactivePowerL1        AT %B30  : Real;           // Fundamental reactive power L1
        fundReactivePowerL2        AT %B34  : Real;           // Fundamental reactive power L2
        fundReactivePowerL3        AT %B38  : Real;           // Fundamental reactive power L3
        fundActiveFactorL1         AT %B42  : Real;           // Fundamental cos φ active factor L1
        fundActiveFactorL2         AT %B46  : Real;           // Fundamental cos φ active factor L2
        fundActiveFactorL3         AT %B50  : Real;           // Fundamental cos φ active factor L3
        tHDaNVoltL1                AT %B54  : Real;           // Total harmonic distortion (THD+N) voltage L1
        tHDaNVoltL2                AT %B58  : Real;           // Total harmonic distortion (THD+N) voltage L2
        tHDaNVoltL3                AT %B62  : Real;           // Total harmonic distortion (THD+N) voltage L3
        tHDaNCurrL1                AT %B66  : Real;           // Total harmonic distortion (THD+N) current L1
        tHDaNCurrL2                AT %B70  : Real;           // Total harmonic distortion (THD+N) current L2
        tHDaNCurrL3                AT %B74  : Real;           // Total harmonic distortion (THD+N) current L3
        maxTHDaNVoltL1             AT %B78  : Real;           // Max. total harmonic distortion (THD+N) voltage L1
        maxTHDaNVoltL2             AT %B82  : Real;           // Max. total harmonic distortion (THD+N) voltage L2
        maxTHDaNVoltL3             AT %B86  : Real;           // Max. total harmonic distortion (THD+N) voltage L3
        maxTHDaNCurrL1             AT %B90  : Real;           // Max. total harmonic distortion (THD+N) current L1
        maxTHDaNCurrL2             AT %B94  : Real;           // Max. total harmonic distortion (THD+N) current L2
        maxTHDaNCurrL3             AT %B98  : Real;           // Max. total harmonic distortion (THD+N) current L3
        minTHDaNVoltL1             AT %B102  : Real;           // Min. total harmonic distortion (THD+N) voltage L1
        minTHDaNVoltL2             AT %B106  : Real;           // Min. total harmonic distortion (THD+N) voltage L2
        minTHDaNVoltL3             AT %B110  : Real;           // Min. total harmonic distortion (THD+N) voltage L3
        minTHDaNCurrL1             AT %B114  : Real;           // Min. total harmonic distortion (THD+N) current L1
        minTHDaNCurrL2             AT %B118  : Real;           // Min. total harmonic distortion (THD+N) current L2
        minTHDaNCurrL3             AT %B122  : Real;           // Min. total harmonic distortion (THD+N) current L3
        voltDipValueL1             AT %B126  : Real;           // Voltage dip - value L1
        voltDipDurationL1          AT %B130  : Real;           // Voltage dip - duration L1
        voltDipValueL2             AT %B134  : Real;           // Voltage dip - value L2
        voltDipDurationL2          AT %B138  : Real;           // Voltage dip - duration L2
        voltDipValueL3             AT %B142  : Real;           // Voltage dip - value L3
        voltDipDurationL3          AT %B146  : Real;           // Voltage dip - duration L3
        voltIncValueL1             AT %B150  : Real;           // Voltage increase - value L1
        voltIncDurationL1          AT %B154  : Real;           // Voltage increase - duration L1
        voltIncValueL2             AT %B158  : Real;           // Voltage increase - value L2
        voltIncDurationL2          AT %B162  : Real;           // Voltage increase - duration L2
        voltIncValueL3             AT %B166  : Real;           // Voltage increase - value L3
        voltIncDurationL3          AT %B170  : Real;           // Voltage increase - duration L3
        voltPeakValueL1            AT %B174  : Real;           // Voltage peak value L1
        voltPeakValueL2            AT %B178  : Real;           // Voltage peak value L2
        voltPeakValueL3            AT %B182  : Real;           // Voltage peak value L3
        currPeakValueL1            AT %B186  : Real;           // Current peak value L1
        currPeakValueL2            AT %B190  : Real;           // Current peak value L2
        currPeakValueL3            AT %B194  : Real;           // Current peak value L3
        overCurrValueL1            AT %B198  : Real;           // Overcurrent value L1
        overCurrValueL2            AT %B202  : Real;           // Overcurrent value L2
        overCurrValueL3            AT %B206  : Real;           // Overcurrent value L3
        amplUnbalanceVolt          AT %B210  : Real;           // Amplitude unbalance voltage U2
        amplUnbalanceCurrent       AT %B214  : Real;           // Amplitude unbalance current Iasym
        powerQualityAnalysis       AT %B218  : UDInt;          // Power quality analysis - Qualifier
        currentModuleTime          AT %B222  : PNIOTimeStamp;  // Current module time
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec174    : STRUCT
        version           AT %B0  : Byte;                   // Version
        statusBits        AT %B1  : Byte;                   // Status bits; 80h: Rec. ended; 40h: Rec. in progress; 00h: Evaluating data not useful
        numMeasValues     AT %B2  : UInt;                   // Number of measured values 0...200
        stopIndex         AT %B4  : UInt;                   // Stop index 0...199
        overflow          AT %B6  : Byte;                   // Overflow 0...255
        recStatus         AT %B7  : Byte;                   // Recorder status; 0: Initial status; 3: Rec. parameterized; 4: Rec. in progress; 5: Rec. ended; 6: Reco. stopped
        currentModuleTime AT %B8  : PNIOTimeStamp;          // Current module time
        measValueID       AT %B20  : Array[1..200] of Real;  // ID measured value
      END_STRUCT;

   END_TYPE

   TYPE DI8HSCountControlCh : STRUCT
        loadValue           AT %B0 : DWord;  // Load value
        controlByte         AT %B4 : Byte;   // Control byte counter
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec173    : STRUCT
        version           AT %B0  : Byte;                   // Version
        statusBits        AT %B1  : Byte;                   // Status bits; 80h: Rec. ended; 40h: Rec. in progress; 00h: Evaluating data not useful
        numMeasValues     AT %B2  : UInt;                   // Number of measured values 0...200
        stopIndex         AT %B4  : UInt;                   // Stop index 0...199
        overflow          AT %B6  : Byte;                   // Overflow 0...255
        recStatus         AT %B7  : Byte;                   // Recorder status; 0: Initial status; 3: Rec. parameterized; 4: Rec. in progress; 5: Rec. ended; 6: Reco. stopped
        currentModuleTime AT %B8  : PNIOTimeStamp;          // Current module time
        measValueID       AT %B20 : Array[1..200] of Real;  // ID measured value
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec147V0          : STRUCT
        version                   AT %B0   : Byte;   // Version
        resb1                     AT %B1   : Byte;   // Reserved
        qualifierL1               AT %B2   : Word;   // Qualifier L1
        voltL1N                   AT %B4   : Real;   // Voltage L1-N
        currentL1                 AT %B8   : Real;   // Current L1
        apparentPowerL1           AT %B12  : Real;   // Apparent power L1
        activePowerL1             AT %B16  : Real;   // Active power L1
        reactivePowerQtotL1       AT %B20  : Real;   // Reactive power Qtot L1
        powerFactorL1             AT %B24  : Real;   // Power factor λ L1
        phaseAngleL1              AT %B28  : Real;   // Phase angle L1
        apparentEnergyLongL1      AT %B32  : LReal;  // Apparent energy L1
        totalActiveEnergyLongL1   AT %B40  : LReal;  // Active energy (total) L1
        totalReactiveEnergyLongL1 AT %B48  : LReal;  // Reactive energy (total) L1
        maxVoltL1N                AT %B56  : Real;   // Max. voltage L1-N
        maxCurrentL1              AT %B60  : Real;   // Max. current L1
        maxApparentPowerL1        AT %B64  : Real;   // Max. apparent power L1
        maxActivePowerL1          AT %B68  : Real;   // Max. active power L1
        maxReactivePowerQtotL1    AT %B72  : Real;   // Max. reactive power Qtot L1
        maxPowerFactorL1          AT %B76  : Real;   // Max. power factor λ L1
        minVoltL1N                AT %B80  : Real;   // Min. voltage L1-N
        minCurrentL1              AT %B84  : Real;   // Min. current L1
        minApparentPowerL1        AT %B88  : Real;   // Min. apparent power L1
        minActivePowerL1          AT %B92  : Real;   // Min. active power L1
        minReactivePowerQtotL1    AT %B96  : Real;   // Min. reactive power Qtot L1
        minPowerFactorL1          AT %B100 : Real;   // Min. power factor λ L1
      END_STRUCT;

   END_TYPE

   TYPE DI8HSCountFeedbackCh : STRUCT
        counterValue         AT %B0 : DWord;  // Current counter value for the Respective channel
        stsDQ                AT %X4.0 : Bool;   // Status DQ
        stsGate              AT %X4.1 : Bool;   // Status of the internal gate for the Respective channel
        reserved0            AT %X4.2 : Bool;   // Reserved
        reserved1            AT %X4.3 : Bool;   // Reserved
        reserved2            AT %X4.4 : Bool;   // Reserved
        reserved3            AT %X4.5 : Bool;   // Reserved
        ldStsSlot            AT %X4.6 : Bool;   // The load request for SLOT (LD_SLOT) has been detected and executed (toggling)
        ldError              AT %X4.7 : Bool;   // Error occured for the Respective channel
        eventUFlow           AT %X5.0 : Bool;   // Saved state, shows that there was a counter value underflow
        eventOFlow           AT %X5.1 : Bool;   // Saved state, shows that there was a counter value overflow
        eventCmp0            AT %X5.2 : Bool;   // Saved state, shows that a comparison event with comparison value 0 occured
        eventCmp1            AT %X5.3 : Bool;   // Saved state, shows that a comparison event with comparison value 1 occured
        resEventUFlowAck     AT %X5.4 : Bool;   // Reset of event eventUFlow is active
        resEventOFlowAck     AT %X5.5 : Bool;   // Reset of event eventOFlow is active
        resEventCmp0Ack      AT %X5.6 : Bool;   // Reset of event eventCmp0 is active
        resEventCmp1Ack      AT %X5.7 : Bool;   // Reset of event eventCmp1 is active
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec129   : STRUCT
        majMinVer        AT %B0 : Byte    := BYTE#0;                 // Major / minor version
        lengthParamBlock AT %B1 : Byte    := BYTE#10;                // Length of parameter block = 10
        numParamBlocks   AT %B2 : Byte    := BYTE#16;                // Number of parameter blocks
        resb3            AT %B3 : Byte;                              // Reserved
        paramBlock       AT %B4 : Array[1..16] of EMHFDataRecParam;  // Parameter blocks
      END_STRUCT;

   END_TYPE

   TYPE DI8HSDataRecDI          : STRUCT
        majMinVer               AT %B0 : Byte    := BYTE#64;               // Major / minor version
        numParamStruct          AT %B1 : Byte    := BYTE#2;                // Number of parameter structures = 2
        numModuleParamBlocks    AT %B2 : Byte    := BYTE#1;                // Number of module parameter blocks = 1
        lengthModuleParamBlock  AT %B3 : Byte    := BYTE#2;                // Length of module parameter block = 2
        operatingMode           AT %B4 : Byte    := BYTE#0;                // Operating mode
        enableDiagnostics       AT %B5 : Byte;                             // Enable diagnostics
        numChannelParamBlocks   AT %B6 : Byte    := BYTE#8;                // Number of channel parameter blocks = 8
        lengthChannelParamBlock AT %B7 : Byte    := BYTE#2;                // Length of channel parameter block = 2
        channel                 AT %B8 : Array[0..7] of DI8HSDataRecDICh;  // Channel 0 to 7
      END_STRUCT;

   END_TYPE

   TYPE DI8HSDataRecOVS         : STRUCT
        majMinVer               AT %B0 : Byte    := BYTE#64;                // Major / minor version
        numParamStruct          AT %B1 : Byte    := BYTE#2;                 // Number of parameter structures = 2
        numModuleParamBlocks    AT %B2 : Byte    := BYTE#1;                 // Number of module parameter blocks = 1
        lengthModuleParamBlock  AT %B3 : Byte    := BYTE#2;                 // Length of module parameter block = 2
        operatingMode           AT %B4 : Byte;                              // Sampling rate / Operating mode
        enableDiagnostics       AT %B5 : Byte;                              // Enable diagnostics
        numChannelParamBlocks   AT %B6 : Byte    := BYTE#8;                 // Number of channel parameter blocks = 8
        lengthChannelParamBlock AT %B7 : Byte    := BYTE#2;                 // Length of channel parameter block = 2
        channel                 AT %B8 : Array[0..7] of DI8HSDataRecOVSCh;  // Channel 0 to 7
      END_STRUCT;

   END_TYPE

   TYPE DI8HSCountFeedbackState : STRUCT
        stsDI0                  AT %X0.0: Bool;   // Status DI0
        stsDI1                  AT %X0.1: Bool;   // Status DI1
        stsDI2                  AT %X0.2: Bool;   // Status DI2
        stsDI3                  AT %X0.3: Bool;   // Status DI3
        stsDI4                  AT %X0.4: Bool;   // Status DI4
        stsDI5                  AT %X0.5: Bool;   // Status DI5
        stsDI6                  AT %X0.6: Bool;   // Status DI6
        stsDI7                  AT %X0.7: Bool;   // Status DI7
      END_STRUCT;

   END_TYPE

   TYPE DI8HSDataRecCount       : STRUCT
        majMinVer               AT %B0 : Byte    := BYTE#64;                  // Major / minor version
        numParamStruct          AT %B1 : Byte    := BYTE#2;                   // Number of parameter structures = 2
        numModuleParamBlocks    AT %B2 : Byte    := BYTE#1;                   // Number of module parameter blocks = 1
        lengthModuleParamBlock  AT %B3 : Byte    := BYTE#2;                   // Length of module parameter block = 2
        operatingMode           AT %B4 : Byte    := BYTE#1;                   // Operating mode
        enableDiagnostics       AT %B5 : Byte;                                // Enable diagnostics
        numChannelParamBlocks   AT %B6 : Byte    := BYTE#4;                   // Number of channel parameter blocks = 4
        lengthChannelParamBlock AT %B7 : Byte    := BYTE#26;                  // Length of channel parameter block = 26
        channel                 AT %B8 : Array[0..3] of DI8HSDataRecCountCh;  // Channel 0 to 3
      END_STRUCT;

   END_TYPE

   TYPE EMCTHFDataRec128            : STRUCT
        majMinVer                   AT %B0  : Byte    := BYTE#97;              // Major / minor version
        numParamStruct              AT %B1  : Byte    := BYTE#2;               // Number of parameter structures = 2
        numModuleParamBlocks        AT %B2  : Byte    := BYTE#1;               // Number of module parameter blocks = 1
        lengthModuleParamBlock      AT %B3  : Byte    := BYTE#26;              // Length of module parameter block = 26
        connectTypePhases           AT %B4  : Byte;                            // Connection type of the phases
        measRangePower              AT %B5  : Byte;                            // Voltage measuring range of the power supply system
        energyGateCountLineFrequ    AT %B6  : Byte;                            // Energy meters gate switch / End value / Line frequency of the power supply system
        resb07                      AT %B7  : Byte;                            // Reserved
        minMaxValueCalcGateDiagVolt AT %B8  : Byte;                            // Min/Max value calc. / Min/Max value calc. gate / Diagnostics load voltage
        idUserDataVariant           AT %B9  : Byte;                            // ID of the user data variant
        transPrimCurrent            AT %B10  : DWord;                           // Current transformer primary current
        currTransSecCurr            AT %B14  : Byte;                            // Current transformer secondary current; 00=1A, 01=5A 
        resb15                      AT %B15  : Byte;                            // Reserved
        voltDipLimit                AT %B16  : Word;                            // Voltage dip limit in relation to nominal value voltage [0.1%]
        voltSwellLimit              AT %B18  : Word;                            // Voltage swell limit in relation to nominal value voltage [0.1%]
        thresOverCurr               AT %B20  : Word;                            // Threshold overcurrent in relation to nominal value current [0.1%]
        numCycForAnalysis           AT %B22  : Word;                            // Number of cycles for analysis of voltage increase and dip
        resb24                      AT %B24  : Byte;                            // Reserved
        resb25                      AT %B25  : Byte;                            // Reserved
        resb26                      AT %B26  : Byte;                            // Reserved
        resb27                      AT %B27  : Byte;                            // Reserved
        resb28                      AT %B28  : Byte;                            // Reserved
        resb29                      AT %B29  : Byte;                            // Reserved
        numChannelParamBlocks       AT %B30  : Byte    := BYTE#3;               // Number of channel parameter blocks = 3
        lengthChannelParamBlock     AT %B31  : Byte    := BYTE#32;              // Length of channel parameter block = 32
        channel                     AT %B32  : Array[0..2] of EMCTHFDataRecCh;  // Channels
      END_STRUCT;

   END_TYPE

   TYPE DQ4HSDataRec            : STRUCT
        majMinVer               AT %B0 : Byte    := BYTE#64;             // Major / minor version
        numParamStruct          AT %B1 : Byte    := BYTE#2;              // Number of parameter structures = 2
        numModuleParamBlocks    AT %B2 : Byte    := BYTE#1;              // Number of module parameter blocks = 1
        lengthModuleParamBlock  AT %B3 : Byte    := BYTE#2;              // Length of module parameter block = 2
        operatingMode           AT %B4 : Byte    := BYTE#0;              // Operating mode
        enableDiagnostics       AT %B5 : Byte;                           // Enable diagnostics
        numChannelParamBlocks   AT %B6 : Byte    := BYTE#4;              // Number of channel parameter blocks = 4
        lengthChannelParamBlock AT %B7 : Byte    := BYTE#8;              // Length of channel parameter block = 8
        channel                 AT %B8 : Array[0..3] of DQ4HSDataRecCh;  // Channel 0 to 3
      END_STRUCT;

   END_TYPE

   TYPE EMRCSTDataRec128            : STRUCT
        majMinVer                   AT %B0 : Byte    := BYTE#105;             // Major / minor version
        numParamStruct              AT %B1 : Byte    := BYTE#2;               // Number of parameter structures = 2
        numModuleParamBlocks        AT %B2 : Byte    := BYTE#1;               // Number of module parameter blocks = 1
        lengthModuleParamBlock      AT %B3 : Byte    := BYTE#26;              // Length of module parameter block = 26
        connectTypePhases           AT %B4 : Byte;                            // Connection type of the phases
        measRangePower              AT %B5 : Byte;                            // Voltage measuring range of the power supply system
        energyGateCountLineFrequ    AT %B6 : Byte;                            // Energy meters gate switch / End value / Line frequency of the power supply system
        resb07                      AT %B7 : Byte;                            // Reserved
        minMaxValueCalcGateDiagVolt AT %B8 : Byte;                            // Min/Max value calc. / Min/Max value calc. gate / Diagnostics load voltage
        idUserDataVariant           AT %B9 : Byte;                            // ID of the user data variant
        currTransSecVolt            AT %B10 : Word;                            // Current transformer secondary voltage
        currTransPrimCurr           AT %B12 : Word;                            // Current transformer primary rated current
        currTransLineCond           AT %B14 : Byte;                            // Current transformer for line
        resb15                      AT %B15 : Byte;                            // Reserved
        resw16                      AT %B16 : Word;                            // Reserved
        resw18                      AT %B18 : Word;                            // Reserved
        resw20                      AT %B20 : Word;                            // Reserved
        resw22                      AT %B22 : Word;                            // Reserved
        resb24                      AT %B24 : Byte;                            // Reserved
        resb25                      AT %B25 : Byte;                            // Reserved
        resb26                      AT %B26 : Byte;                            // Reserved
        resb27                      AT %B27 : Byte;                            // Reserved
        resb28                      AT %B28 : Byte;                            // Reserved
        resb29                      AT %B29 : Byte;                            // Reserved
        numChannelParamBlocks       AT %B30 : Byte    := BYTE#3;               // Number of channel parameter blocks = 3
        lengthChannelParamBlock     AT %B31 : Byte    := BYTE#32;              // Length of channel parameter block = 32
        channel                     AT %B32 : Array[0..2] of EMRCSTDataRecCh;  // Channels
      END_STRUCT;

   END_TYPE

   TYPE EMCTSTDataRec128            : STRUCT
        majMinVer                   AT %B0  : Byte    := BYTE#97;              // Major / minor version
        numParamStruct              AT %B1  : Byte    := BYTE#2;               // Number of parameter structures = 2
        numModuleParamBlocks        AT %B2  : Byte    := BYTE#1;               // Number of module parameter blocks = 1
        lengthModuleParamBlock      AT %B3  : Byte    := BYTE#26;              // Length of module parameter block = 26
        connectTypePhases           AT %B4  : Byte    := BYTE#0;               // Connection type of the phases
        measRangePower              AT %B5  : Byte;                            // Voltage measuring range of the power supply system
        energyGateCountLineFrequ    AT %B6  : Byte;                            // Energy meters gate switch / End value / Line frequency of the power supply system
        resb07                      AT %B7  : Byte;                            // Reserved
        minMaxValueCalcGateDiagVolt AT %B8  : Byte;                            // Min/Max value calc. / Min/Max value calc. gate / Diagnostics load voltage
        idUserDataVariant           AT %B9  : Byte;                            // ID of the user data variant
        transPrimCurrent            AT %B10  : DWord;                           // Current transformer primary current
        resb14                      AT %B14  : Byte;                            // Reserved
        resb15                      AT %B15  : Byte;                            // Reserved
        resw16                      AT %B16  : Word;                            // Reserved
        resw18                      AT %B18  : Word;                            // Reserved
        resw20                      AT %B20  : Word;                            // Reserved
        resw22                      AT %B22  : Word;                            // Reserved
        resb24                      AT %B24  : Byte;                            // Reserved
        resb25                      AT %B25  : Byte;                            // Reserved
        resb26                      AT %B26  : Byte;                            // Reserved
        resb27                      AT %B27  : Byte;                            // Reserved
        resb28                      AT %B28  : Byte;                            // Reserved
        resb29                      AT %B29  : Byte;                            // Reserved
        numChannelParamBlocks       AT %B30  : Byte    := BYTE#3;               // Number of channel parameter blocks = 3
        lengthChannelParamBlock     AT %B31  : Byte    := BYTE#32;              // Length of channel parameter block = 32
        channel                     AT %B32  : Array[0..2] of EMCTSTDataRecCh;  // Channels
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec170 : STRUCT
        version        AT %B0 : Byte;                   // Version
        resb1          AT %B1 : Byte;                   // Reserved
        numIDs         AT %B2 : UInt    := UINT#599;    // Number of IDs
        measValueID    AT %B4 : Array[1..599] of UInt;  // ID measured value
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec143           : STRUCT
        version                  AT %B0  : Byte    := BYTE#1;  // Version
        resb1                    AT %B1  : Byte;               // Reserved
        controlStatusByte1L1     AT %B2  : Byte;               // Status / control byte 1 - L1
        controlStatusByte2L1     AT %B3  : Byte;               // Status / control byte 2 - L1
        controlStatusByte1L2     AT %B4  : Byte;               // Status / control byte 1 - L2
        controlStatusByte2L2     AT %B5  : Byte;               // Status / control byte 2 - L2
        controlStatusByte1L3     AT %B6  : Byte;               // Status / control byte 1 - L3
        controlStatusByte2L3     AT %B7  : Byte;               // Status / control byte 2 - L3
        activeEnergyInLongL1     AT %B8  : LReal;              // Active energy inflow (initial value) L1
        activeEnergyOutLongL1    AT %B16  : LReal;              // Active energy outflow (initial value) L1
        reactiveEnergyInLongL1   AT %B24  : LReal;              // Reactive energy inflow (initial value) L1
        reactiveEnergyOutLongL1  AT %B32  : LReal;              // Reactive energy outflow (initial value) L1
        apparentEnergyLongL1     AT %B40  : LReal;              // Apparent energy (initial value) L1
        activeEnergyInLongL2     AT %B48  : LReal;              // Active energy inflow (initial value) L2
        activeEnergyOutLongL2    AT %B56  : LReal;              // Active energy outflow (initial value) L2
        reactiveEnergyInLongL2   AT %B64  : LReal;              // Reactive energy inflow (initial value) L2
        reactiveEnergyOutLongL2  AT %B72  : LReal;              // Reactive energy outflow (initial value) L2
        apparentEnergyLongL2     AT %B80  : LReal;              // Apparent energy (initial value) L2
        activeEnergyInLongL3     AT %B88  : LReal;              // Active energy inflow (initial value) L3
        activeEnergyOutLongL3    AT %B96  : LReal;              // Active energy outflow (initial value) L3
        reactiveEnergyInLongL3   AT %B104  : LReal;              // Reactive energy inflow (initial value) L3
        reactiveEnergyOutLongL3  AT %B112  : LReal;              // Reactive energy outflow (initial value) L3
        apparentEnergyLongL3     AT %B120  : LReal;              // Apparent energy (initial value) L3
        ovCntActiveEnergyInL1    AT %B128  : UInt;               // Overflow counter active energy inflow L1
        ovCntActiveEnergyOutL1   AT %B130  : UInt;               // Overflow counter active energy outflow L1
        ovCntReactiveEnergyInL1  AT %B132  : UInt;               // Overflow counter reactive energy inflow L1
        ovCntReactiveEnergyOutL1 AT %B134  : UInt;               // Overflow counter reactive energy outflow L1
        ovCntApparentEnergyL1    AT %B136  : UInt;               // Overflow counter apparent energy L1
        ovCntActiveEnergyInL2    AT %B138  : UInt;               // Overflow counter active energy inflow L2
        ovCntActiveEnergyOutL2   AT %B140  : UInt;               // Overflow counter active energy outflow L2
        ovCntReactiveEnergyInL2  AT %B142  : UInt;               // Overflow counter reactive energy inflow L2
        ovCntReactiveEnergyOutL2 AT %B144  : UInt;               // Overflow counter reactive energy outflow L2
        ovCntApparentEnergyL2    AT %B146  : UInt;               // Overflow counter apparent energy L2
        ovCntActiveEnergyInL3    AT %B148  : UInt;               // Overflow counter active energy inflow L3
        ovCntActiveEnergyOutL3   AT %B150  : UInt;               // Overflow counter active energy outflow L3
        ovCntReactiveEnergyInL3  AT %B152  : UInt;               // Overflow counter reactive energy inflow L3
        ovCntReactiveEnergyOutL3 AT %B154  : UInt;               // Overflow counter reactive energy outflow L3
        ovCntApparentEnergyL3    AT %B156  : UInt;               // Overflow counter apparent energy L3
        operHoursCntL1           AT %B158  : Real;               // Operating hours counter L1 (initial value)
        operHoursCntL2           AT %B162  : Real;               // Operating hours counter L2 (initial value)
        operHoursCntL3           AT %B166  : Real;               // Operating hours counter L3 (initial value)
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec149V0          : STRUCT
        version                   AT %B0 : Byte;   // Version
        resb1                     AT %B1 : Byte;   // Reserved
        qualifierL3               AT %B2 : Word;   // Qualifier L3
        voltL3N                   AT %B4 : Real;   // Voltage L3-N
        currentL3                 AT %B8 : Real;   // Current L3
        apparentPowerL3           AT %B12 : Real;   // Apparent power L3
        activePowerL3             AT %B16 : Real;   // Active power L3
        reactivePowerQtotL3       AT %B20 : Real;   // Reactive power Qtot L3
        powerFactorL3             AT %B24 : Real;   // Power factor λ L3
        phaseAngleL3              AT %B28 : Real;   // Phase angle L3
        apparentEnergyLongL3      AT %B32 : LReal;  // Apparent energy L3
        totalActiveEnergyLongL3   AT %B40 : LReal;  // Active energy (total) L3
        totalReactiveEnergyLongL3 AT %B48 : LReal;  // Reactive energy (total) L3
        maxVoltL3N                AT %B56 : Real;   // Max. voltage L3-N
        maxCurrentL3              AT %B60 : Real;   // Max. current L3
        maxApparentPowerL3        AT %B64 : Real;   // Max. apparent power L3
        maxActivePowerL3          AT %B68 : Real;   // Max. active power L3
        maxReactivePowerQtotL3    AT %B72 : Real;   // Max. reactive power Qtot L3
        maxPowerFactorL3          AT %B76 : Real;   // Max. power factor λ L3
        minVoltL3N                AT %B80 : Real;   // Min. voltage L3-N
        minCurrentL3              AT %B84 : Real;   // Min. current L3
        minApparentPowerL3        AT %B88 : Real;   // Min. apparent power L3
        minActivePowerL3          AT %B92 : Real;   // Min. active power L3
        minReactivePowerQtotL3    AT %B96 : Real;   // Min. reactive power L3
        minPowerFactorL3          AT %B100 : Real;   // Min. power factor λ L3
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec149V1          : STRUCT
        version                   AT %B0  : Byte    := BYTE#1;  // Version
        resb1                     AT %B1  : Byte;               // Reserved
        qualifierL3               AT %B2  : Word;               // Qualifier L3
        voltL3N                   AT %B4  : Real;               // Voltage L3-N
        currentL3                 AT %B8  : Real;               // Current L3
        apparentPowerL3           AT %B12  : Real;               // Apparent power L3
        activePowerL3             AT %B16  : Real;               // Active power L3
        reactivePowerL3           AT %B20  : Real;               // Reactive power Qtot L3
        powerFactorL3             AT %B24  : Real;               // Power factor λ L3
        phaseAngleL3              AT %B28  : Real;               // Phase angle L3
        apparentEnergyLongL3      AT %B32  : LReal;              // Apparent energy L3
        totalActiveEnergyLongL3   AT %B40  : LReal;              // Active energy (total) L3
        totalReactiveEnergyLongL3 AT %B48  : LReal;              // Reactive energy (total) L3
        maxVoltL3N                AT %B56  : Real;               // Max. voltage L3-N
        maxCurrentL3              AT %B60  : Real;               // Max. current L3
        maxApparentPowerL3        AT %B64  : Real;               // Max. apparent power L3
        maxActivePowerL3          AT %B68  : Real;               // Max. active power L3
        maxReactivePowerQtotL3    AT %B72  : Real;               // Max. reactive power Qtot L3
        maxPowerFactorL3          AT %B76  : Real;               // Max. power factor λ L3
        minVoltL3N                AT %B80  : Real;               // Min. voltage L3-N
        minCurrentL3              AT %B84  : Real;               // Min. current L3
        minApparentPowerL3        AT %B88  : Real;               // Min. apparent power L3
        minActivePowerL3          AT %B92  : Real;               // Min. active power L3
        minReactivePowerQtotL3    AT %B96  : Real;               // Min. reactive power Qtot L3
        minPowerFactorL3          AT %B100  : Real;               // Min. power factor λ L3
        reactivePowerQnL3         AT %B104  : Real;               // Reactive power Qn L3
        resDW108                  AT %B108  : DWord;              // Reserved
        resDW112                  AT %B112  : Real;               // Reserved
        resDW116                  AT %B116  : Real;               // Reserved
        resDW120                  AT %B120  : Real;               // Reserved
        resDW124                  AT %B124  : Real;               // Reserved
        resDW128                  AT %B128  : Real;               // Reserved
        resDW132                  AT %B132  : Real;               // Reserved
        fundReactivePowerL3       AT %B136  : Real;               // Fundamental reactive power L3
        resDW140                  AT %B140  : DWord;              // Reserved
        fundActiveFactorL3        AT %B144  : Real;               // Fundamental cos φ active factor L3
        resDW148                  AT %B148  : DWord;              // Reserved
        resDW152                  AT %B152  : DWord;              // Reserved
        resDW156                  AT %B156  : DWord;              // Reserved
        resDW160                  AT %B160  : DWord;              // Reserved
        resDW164                  AT %B164  : DWord;              // Reserved
        resDW168                  AT %B168  : DWord;              // Reserved
        resDW172                  AT %B172  : DWord;              // Reserved
        resDW176                  AT %B176  : DWord;              // Reserved
        resDW180                  AT %B180  : DWord;              // Reserved
        resDW184                  AT %B184  : DWord;              // Reserved
        resDW188                  AT %B188  : DWord;              // Reserved
        resDW192                  AT %B192  : DWord;              // Reserved
        resDW196                  AT %B196  : DWord;              // Reserved
        resDW200                  AT %B200  : DWord;              // Reserved
        resDW204                  AT %B204  : DWord;              // Reserved
        resDW208                  AT %B208  : DWord;              // Reserved
        resDW212                  AT %B212  : DWord;              // Reserved
        resDW216                  AT %B216  : DWord;              // Reserved
        resDW220                  AT %B220  : DWord;              // Reserved
        resDW224                  AT %B224  : DWord;              // Reserved
        resDW228                  AT %B228  : DWord;              // Reserved
        resDW232                  AT %B232  : DWord;              // Reserved
        resDW236                  AT %B236  : DWord;              // Reserved
        resDW240                  AT %B240  : DWord;              // Reserved
        resDW244                  AT %B244  : DWord;              // Reserved
      END_STRUCT;

   END_TYPE

   TYPE DQ4HSOVS : STRUCT
        channel  AT %B0 : Array[0..3] of OVSCh;  // Output values channel 0..3 with oversampling
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec142V3              : STRUCT
        version                       AT %B0  : Byte    := BYTE#3;  // Version
        resb1                         AT %B1  : Byte;               // Reserved
        voltL1N                       AT %B2  : Real;               // Voltage L1-N
        voltL2N                       AT %B6  : Real;               // Voltage L2-N
        voltL3N                       AT %B10  : Real;               // Voltage L3-N
        voltL1L2                      AT %B14  : Real;               // Voltage L1-L2
        voltL2L3                      AT %B18  : Real;               // Voltage L2-L3
        voltL3L1                      AT %B22  : Real;               // Voltage L3-L1
        currentL1                     AT %B26  : Real;               // Current L1
        currentL2                     AT %B30  : Real;               // Current L2
        currentL3                     AT %B34  : Real;               // Current L3
        powerFactorL1                 AT %B38  : Real;               // Power factor λ L1
        powerFactorL2                 AT %B42  : Real;               // Power factor λ L2
        powerFactorL3                 AT %B46  : Real;               // Power factor λ L3
        powerFactorL1L2L3             AT %B50  : Real;               // Power factor L1 L2 L3
        frequencyL1L2L3               AT %B54  : Real;               // Frequency L1 L2 L3
        amplUnbalanceVolt             AT %B58  : Real;               // Amplitude unbalance voltage U2
        amplUnbalanceCurrent          AT %B62  : Real;               // Amplitude unbalance current Iasym
        apparentPowerL1               AT %B66  : Real;               // Apparent power L1
        apparentPowerL2               AT %B70  : Real;               // Apparent power L2
        apparentPowerL3               AT %B74  : Real;               // Apparent power L3
        apparentPowerL1L2L3           AT %B78  : Real;               // Apparent power L1 L2 L3
        reactivePowerQtotL1           AT %B82  : Real;               // Reactive power Qtot L1
        reactivePowerQtotL2           AT %B86  : Real;               // Reactive power Qtot L2
        reactivePowerQtotL3           AT %B90  : Real;               // Reactive power Qtot L3
        reactivePowerQtotL1L2L3       AT %B94  : Real;               // Reactive power Qtot L1 L2 L3
        activePowerL1                 AT %B98  : Real;               // Active power L1
        activePowerL2                 AT %B102  : Real;               // Active power L2
        activePowerL3                 AT %B106  : Real;               // Active power L3
        activePowerL1L2L3             AT %B110  : Real;               // Active power L1 L2 L3
        phaseAngleL1                  AT %B114  : Real;               // Phase angle L1
        phaseAngleL2                  AT %B118  : Real;               // Phase angle L2
        phaseAngleL3                  AT %B122  : Real;               // Phase angle L3
        apparentEnergyL1L2L3          AT %B126  : Real;               // Apparent energy L1 L2 L3
        totalReactiveEnergyL1L2L3     AT %B130  : Real;               // Total reactive energy L1 L2 L3
        totalActiveEnergyL1L2L3       AT %B134  : Real;               // Total active energy L1 L2 L3
        reactiveEnergyInL1L2L3        AT %B138  : Real;               // Reactive energy inflow L1 L2 L3
        reactiveEnergyOutL1L2L3       AT %B142  : Real;               // Reactive energy outflow L1 L2 L3
        activeEnergyInL1L2L3          AT %B146  : Real;               // Active energy inflow L1 L2 L3
        activeEnergyOutL1L2L3         AT %B150  : Real;               // Active energy outflow L1 L2 L3
        apparentEnergyLongL1L2L3      AT %B154  : LReal;              // Apparent energy L1 L2 L3
        totalReactiveEnergyLongL1L2L3 AT %B162  : LReal;              // Total reactive energy L1 L2 L3
        totalActiveEnergyLongL1L2L3   AT %B170  : LReal;              // Total active energy L1 L2 L3
        reactiveEnergyInLongL1L2L3    AT %B178  : LReal;              // Reactive energy inflow L1 L2 L3
        reactiveEnergyOutLongL1L2L3   AT %B186  : LReal;              // Reactive energy outflow L1 L2 L3
        activeEnergyInLongL1L2L3      AT %B194  : LReal;              // Active energy inflow L1 L2 L3
        activeEnergyOutLongL1L2L3     AT %B202  : LReal;              // Active energy outflow L1 L2 L3
        neutralCurrentIn              AT %B210  : Real;               // Neutral current IN
        reservedDW214                 AT %B214  : DWord;              // Reserved
        reactivePowerQnL1             AT %B218  : Real;               // Reactive power Qn L1
        reactivePowerQnL2             AT %B222  : Real;               // Reactive power Qn L2
        reactivePowerQnL3             AT %B226  : Real;               // Reactive power Qn L3
        reactivePowerQnL1L2L3         AT %B230  : Real;               // Reactive power Qn L1 L2 L3
        averageVoltLN                 AT %B234  : Real;               // Average voltage load L-N (Utot)
        averageVoltLL                 AT %B238  : Real;               // Average voltage L-L
        averageCurrL1L2L3             AT %B242  : Real;               // Average current L1L2L3 (Itot)
        meanPowerFactorL1L2L3         AT %B246  : Real;               // Mean power factor λ L1L2L3
        reservedDW250                 AT %B250  : DWord;              // Reserved
        reservedDW254                 AT %B254  : DWord;              // Reserved
        reservedDW258                 AT %B258  : DWord;              // Reserved
        reservedDW262                 AT %B262  : DWord;              // Reserved
        reservedDW266                 AT %B266  : DWord;              // Reserved
        reservedDW270                 AT %B270  : DWord;              // Reserved
        reservedDW274                 AT %B274  : DWord;              // Reserved
        reservedDW278                 AT %B278  : DWord;              // Reserved
        reservedDW282                 AT %B282  : DWord;              // Reserved
        fundReactivePowerL1           AT %B286  : Real;               // Fundamental reactive power L1
        fundReactivePowerL2           AT %B290  : Real;               // Fundamental reactive power L2
        fundReactivePowerL3           AT %B294  : Real;               // Fundamental reactive power L3
        reservedDW298                 AT %B298  : DWord;              // Reserved
        reservedDW302                 AT %B302  : DWord;              // Reserved
        reservedDW306                 AT %B306  : DWord;              // Reserved
        fundActiveFactorL1            AT %B310  : Real;               // Fundamental cos φ active factor L1
        fundActiveFactorL2            AT %B314  : Real;               // Fundamental cos φ active factor L2
        fundActiveFactorL3            AT %B318  : Real;               // Fundamental cos φ active factor L3
        reservedDW322                 AT %B322  : DWord;              // Reserved
        reservedDW326                 AT %B326  : DWord;              // Reserved
        reservedDW330                 AT %B330  : DWord;              // Reserved
        reservedDW334                 AT %B334  : DWord;              // Reserved
        reservedDW338                 AT %B338  : DWord;              // Reserved
        reservedDW342                 AT %B342  : DWord;              // Reserved
        currentModuleTime             AT %B346  : PNIOTimeStamp;      // Current module time
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec144             : STRUCT
        version                    AT %B0  : Byte;   // Version
        resb1                      AT %B1  : Byte;   // Reserved
        maxVoltL1N                 AT %B2  : Real;   // Max. voltage L1-N
        maxVoltL2N                 AT %B6  : Real;   // Max. voltage L2-N
        maxVoltL3N                 AT %B10  : Real;   // Max. voltage L3-N
        maxVoltL1L2                AT %B14  : Real;   // Max. voltage L1-L2
        maxVoltL2L3                AT %B18  : Real;   // Max. voltage L2-L3
        maxVoltL3L1                AT %B22  : Real;   // Max. voltage L3-L1
        maxCurrentL1               AT %B26  : Real;   // Max. current L1
        maxCurrentL2               AT %B30  : Real;   // Max. current L2
        maxCurrentL3               AT %B34  : Real;   // Max. current L3
        maxApparentPowerL1         AT %B38  : Real;   // Max. apparent power L1
        maxApparentPowerL2         AT %B42  : Real;   // Max. apparent power L2
        maxApparentPowerL3         AT %B46  : Real;   // Max. apparent power L3
        maxActivePowerL1           AT %B50  : Real;   // Max. active power L1
        maxActivePowerL2           AT %B54  : Real;   // Max. active power L2
        maxActivePowerL3           AT %B58  : Real;   // Max. active power L3
        maxReactivePowerQtotL1     AT %B62  : Real;   // Max. reactive power Qtot L1
        maxReactivePowerQtotL2     AT %B66  : Real;   // Max. reactive power Qtot L2
        maxReactivePowerQtotL3     AT %B70  : Real;   // Max. reactive power Qtot L3
        maxPowerFactorL1           AT %B74  : Real;   // Max. power factor λ L1
        maxPowerFactorL2           AT %B78  : Real;   // Max. power factor λ L2
        maxPowerFactorL3           AT %B82  : Real;   // Max. power factor λ L3
        maxFrequency               AT %B86  : Real;   // Max. frequency
        maxApparentPowerL1L2L3     AT %B90  : Real;   // Max. apparent power L1 L2 L3
        maxActivePowerL1L2L3       AT %B94  : Real;   // Max. active power L1 L2 L3
        maxReactivePowerQtotL1L2L3 AT %B98  : Real;   // Max. reactive power Qtot L1 L2 L3
        maxPowerFactorL1L2L3       AT %B102  : Real;   // Max. power factor λ L1L2L3
        maxReactivePowerQnL1       AT %B106  : Real;   // Max. reactive power Qn L1
        maxReactivePowerQnL2       AT %B110  : Real;   // Max. reactive power Qn L2
        maxReactivePowerQnL3       AT %B114  : Real;   // Max. reactive power Qn L3
        resDW118                   AT %B118  : DWord;  // Reserved
        resDW122                   AT %B122  : DWord;  // Reserved
        resDW126                   AT %B126  : DWord;  // Reserved
        resDW130                   AT %B130  : DWord;  // Reserved
        resDW134                   AT %B134  : DWord;  // Reserved
        resDW138                   AT %B138  : DWord;  // Reserved
        resDW142                   AT %B142  : DWord;  // Reserved
        resDW146                   AT %B146  : DWord;  // Reserved
        resDW150                   AT %B150  : DWord;  // Reserved
        resDW154                   AT %B154  : DWord;  // Reserved
        resDW158                   AT %B158  : DWord;  // Reserved
        resDW162                   AT %B162  : DWord;  // Reserved
        resDW166                   AT %B166  : DWord;  // Reserved
        resDW170                   AT %B170  : DWord;  // Reserved
        resDW174                   AT %B174  : DWord;  // Reserved
        resDW178                   AT %B178  : DWord;  // Reserved
        resDW182                   AT %B182  : DWord;  // Reserved
        resDW186                   AT %B186  : DWord;  // Reserved
        resDW190                   AT %B190  : DWord;  // Reserved
        resDW194                   AT %B194  : DWord;  // Reserved
        resDW198                   AT %B198  : DWord;  // Reserved
        resDW202                   AT %B202  : DWord;  // Reserved
        resDW206                   AT %B206  : DWord;  // Reserved
        resDW210                   AT %B210  : DWord;  // Reserved
        resDW214                   AT %B214  : DWord;  // Reserved
        resDW218                   AT %B218  : DWord;  // Reserved
        resDW222                   AT %B222  : DWord;  // Reserved
        maxNeutralCurr             AT %B226  : Real;   // Max. neutral current
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec144             : STRUCT
        version                    AT %B0   : Byte    := BYTE#2;  // Version
        resb1                      AT %B1   : Byte;               // Reserved
        maxVoltL1N                 AT %B2   : Real;               // Max. voltage L1-N
        maxVoltL2N                 AT %B6   : Real;               // Max. voltage L2-N
        maxVoltL3N                 AT %B10  : Real;               // Max. voltage L3-N
        maxVoltL1L2                AT %B14  : Real;               // Max. voltage L1-L2
        maxVoltL2L3                AT %B18  : Real;               // Max. voltage L2-L3
        maxVoltL3L1                AT %B22  : Real;               // Max. voltage L3-L1
        maxCurrentL1               AT %B26  : Real;               // Max. current L1
        maxCurrentL2               AT %B30  : Real;               // Max. current L2
        maxCurrentL3               AT %B34  : Real;               // Max. current L3
        maxApparentPowerL1         AT %B38  : Real;               // Max. apparent power L1
        maxApparentPowerL2         AT %B42  : Real;               // Max. apparent power L2
        maxApparentPowerL3         AT %B46  : Real;               // Max. apparent power L3
        maxActivePowerL1           AT %B50  : Real;               // Max. active power L1
        maxActivePowerL2           AT %B54  : Real;               // Max. active power L2
        maxActivePowerL3           AT %B58  : Real;               // Max. active power L3
        maxReactivePowerQtotL1     AT %B62  : Real;               // Max. reactive power Qtot L1
        maxReactivePowerQtotL2     AT %B66  : Real;               // Max. reactive power Qtot L2
        maxReactivePowerQtotL3     AT %B70  : Real;               // Max. reactive power Qtot L3
        maxPowerFactorL1           AT %B74  : Real;               // Max. power factor λ L1
        maxPowerFactorL2           AT %B78  : Real;               // Max. power factor λ L2
        maxPowerFactorL3           AT %B82  : Real;               // Max. power factor λ L3
        maxFrequency               AT %B86  : Real;               // Max. frequency
        maxApparentPowerL1L2L3     AT %B90  : Real;               // Max. apparent power L1 L2 L3
        maxActivePowerL1L2L3       AT %B94  : Real;               // Max. active power L1 L2 L3
        maxReactivePowerQtotL1L2L3 AT %B98  : Real;               // Max. reactive power Qtot L1 L2 L3
        maxPowerFactorL1L2L3       AT %B102 : Real;               // Max. power factor λ L1L2L3
        maxReactivePowerQnL1       AT %B106 : Real;               // Max. reactive power Qn L1
        maxReactivePowerQnL2       AT %B110 : Real;               // Max. reactive power Qn L2
        maxReactivePowerQnL3       AT %B114 : Real;               // Max. reactive power Qn L3
        maxMeanVoltLN              AT %B118 : Real;               // Max. mean voltage L-N
        maxMeanVoltLL              AT %B122 : Real;               // Max. mean voltage L-L
        maxMeanCurrL1L2L3          AT %B126 : Real;               // Max. mean current L1L2L3
        maxFundVoltL1              AT %B130 : Real;               // Max. fundamental voltage L1
        maxFundVoltL2              AT %B134 : Real;               // Max. fundamental voltage L2
        maxFundVoltL3              AT %B138 : Real;               // Max. fundamental voltage L3
        maxFundCurrL1              AT %B142 : Real;               // Max. fundamental current L1
        maxFundCurrL2              AT %B146 : Real;               // Max. fundamental current L2
        maxFundCurrL3              AT %B150 : Real;               // Max. fundamental current L3
        maxFundApparentPowerL1     AT %B154 : Real;               // Max. fundamental apparent power L1
        maxFundApparentPowerL2     AT %B158 : Real;               // Max. fundamental apparent power L2
        maxFundApparentPowerL3     AT %B162 : Real;               // Max. fundamental apparent power L3
        maxFundReactivePowerL1     AT %B166 : Real;               // Max. fundamental reactive power L1
        maxFundReactivePowerL2     AT %B170 : Real;               // Max. fundamental reactive power L2
        maxFundReactivePowerL3     AT %B174 : Real;               // Max. fundamental reactive power L3
        maxFundActivePowerL1       AT %B178 : Real;               // Max. fundamental active power L1
        maxFundActivePowerL2       AT %B182 : Real;               // Max. fundamental active power L2
        maxFundActivePowerL3       AT %B186 : Real;               // Max. fundamental active power L3
        maxFundActiveFactorL1      AT %B190 : Real;               // Max. fundamental cos φ active factor L1
        maxFundActiveFactorL2      AT %B194 : Real;               // Max. fundamental cos φ active factor L2
        maxFundActiveFactorL3      AT %B198 : Real;               // Max. fundamental cos φ active factor L3
        maxTHDaNVoltL1             AT %B202 : Real;               // Max. total harmonic distortion (THD+N) voltage L1
        maxTHDaNVoltL2             AT %B206 : Real;               // Max. total harmonic distortion (THD+N) voltage L2
        maxTHDaNVoltL3             AT %B210 : Real;               // Max. total harmonic distortion (THD+N) voltage L3
        maxTHDaNCurrL1             AT %B214 : Real;               // Max. total harmonic distortion (THD+N) current L1
        maxTHDaNCurrL2             AT %B218 : Real;               // Max. total harmonic distortion (THD+N) current L2
        maxTHDaNCurrL3             AT %B222 : Real;               // Max. total harmonic distortion (THD+N) current L3
        maxNeutralCurr             AT %B226 : Real;               // Max. neutral current
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec145           : STRUCT
        version                  AT %B0   : Byte    := BYTE#2;  // Version
        resb1                    AT %B1   : Byte;               // Reserved
        minVoltL1N               AT %B2   : Real;               // Min. voltage L1-N
        minVoltL2N               AT %B6   : Real;               // Min. voltage L2-N
        minVoltL3N               AT %B10  : Real;               // Min. voltage L3-N
        minVoltL1L2              AT %B14  : Real;               // Min. voltage L1-L2
        minVoltL2L3              AT %B18  : Real;               // Min. voltage L2-L3
        minVoltL3L1              AT %B22  : Real;               // Min. voltage L3-L1
        minCurrentL1             AT %B26  : Real;               // Min. current L1
        minCurrentL2             AT %B30  : Real;               // Min. current L2
        minCurrentL3             AT %B34  : Real;               // Min. current L3
        minApparentPowerL1       AT %B38  : Real;               // Min. apparent power L1
        minApparentPowerL2       AT %B42  : Real;               // Min. apparent power L2
        minApparentPowerL3       AT %B46  : Real;               // Min. apparent power L3
        minActivePowerL1         AT %B50  : Real;               // Min. active power L1
        minActivePowerL2         AT %B54  : Real;               // Min. active power L2
        minActivePowerL3         AT %B58  : Real;               // Min. active power L3
        minReactivePowerQtotL1   AT %B62  : Real;               // Min. reactive power Qtot L1
        minReactivePowerQtotL2   AT %B66  : Real;               // Min. reactive power Qtot L2
        minReactivePowerQtotL3   AT %B70  : Real;               // Min. reactive power Qtot L3
        minPowerFactorL1         AT %B74  : Real;               // Min. power factor λ L1
        minPowerFactorL2         AT %B78  : Real;               // Min. power factor λ L2
        minPowerFactorL3         AT %B82  : Real;               // Min. power factor λ L3
        minFrequency             AT %B86  : Real;               // Min. frequency
        minApparentPowerL1L2L3   AT %B90  : Real;               // Min. apparent power L1 L2 L3
        minActivePowerL1L2L3     AT %B94  : Real;               // Min. active power L1 L2 L3
        minReactivePowerQnL1L2L3 AT %B98  : Real;               // Min. reactive power Qn L1 L2 L3
        minPowerFactorL1L2L3     AT %B102 : Real;               // Min. power factor λ L1 L2 L3
        minReactivePowerQnL1     AT %B106 : Real;               // Min. reactive power Qn L1
        minReactivePowerQnL2     AT %B110 : Real;               // Min. reactive power Qn L2
        minReactivePowerQnL3     AT %B114 : Real;               // Min. reactive power Qn L3
        minMeanVoltLN            AT %B118 : Real;               // Min. mean voltage L-N
        minMeanVoltLL            AT %B122 : Real;               // Min. mean voltage L-L
        minMeanCurrL1L2L3        AT %B126 : Real;               // Min. mean current L1 L2 L3
        minFundVoltL1            AT %B130 : Real;               // Min. fundamental voltage L1
        minFundVoltL2            AT %B134 : Real;               // Min. fundamental voltage L2
        minFundVoltL3            AT %B138 : Real;               // Min. fundamental voltage L3
        minFundCurrL1            AT %B142 : Real;               // Min. fundamental current L1
        minFundCurrL2            AT %B146 : Real;               // Min. fundamental current L2
        minFundCurrL3            AT %B150 : Real;               // Min. fundamental current L3
        minFundApparentPowerL1   AT %B154 : Real;               // Min. fundamental apparent power L1
        minFundApparentPowerL2   AT %B158 : Real;               // Min. fundamental apparent power L2
        minFundApparentPowerL3   AT %B162 : Real;               // Min. fundamental apparent power L3
        minFundReactivePowerL1   AT %B166 : Real;               // Min. fundamental reactive power L1
        minFundReactivePowerL2   AT %B170 : Real;               // Min. fundamental reactive power L2
        minFundReactivePowerL3   AT %B174 : Real;               // Min. fundamental reactive power L3
        minFundActivePowerL1     AT %B178 : Real;               // Min. fundamental active power L1
        minFundActivePowerL2     AT %B182 : Real;               // Min. fundamental active power L2
        minFundActivePowerL3     AT %B186 : Real;               // Min. fundamental active power L3
        minFundActiveFactorL1    AT %B190 : Real;               // Min. fundamental cos φ active factor L1
        minFundActiveFactorL2    AT %B194 : Real;               // Min. fundamental cos φ active factor L2
        minFundActiveFactorL3    AT %B198 : Real;               // Min. fundamental cos φ active factor L3
        minTHDaNVoltL1           AT %B202 : Real;               // Min. total harmonic distortion (THD+N) voltage L1
        minTHDaNVoltL2           AT %B206 : Real;               // Min. total harmonic distortion (THD+N) voltage L2
        minTHDaNVoltL3           AT %B210 : Real;               // Min. total harmonic distortion (THD+N) voltage L3
        minTHDaNCurrL1           AT %B214 : Real;               // Min. total harmonic distortion (THD+N) current L1
        minTHDaNCurrL2           AT %B218 : Real;               // Min. total harmonic distortion (THD+N) current L2
        minTHDaNCurrL3           AT %B222 : Real;               // Min. total harmonic distortion (THD+N) current L3
        minNeutralCurr           AT %B226 : Real;               // Min. neutral current
      END_STRUCT;

   END_TYPE

   TYPE TMTimerDIDQ10Feedback : STRUCT
        stsDI0                AT %X0.0  : Bool;   // Status DI0
        stsDI1                AT %X0.1  : Bool;   // Status DI1
        stsDI2                AT %X0.2  : Bool;   // Status DI2
        stsDI3                AT %X0.3  : Bool;   // Status DI3
        reserved0             AT %X0.4  : Bool;   // Reserved
        reserved1             AT %X0.5  : Bool;   // Reserved
        reserved2             AT %X0.6  : Bool;   // Reserved
        reserved3             AT %X0.7  : Bool;   // Reserved
        qIDI0                 AT %X1.0  : Bool;   // Quality information DI0
        qIDI1                 AT %X1.1  : Bool;   // Quality information DI1
        qIDI2                 AT %X1.2  : Bool;   // Quality information DI2
        qIDI3                 AT %X1.3  : Bool;   // Quality information DI3
        reserved4             AT %X1.4  : Bool;   // Reserved
        reserved5             AT %X1.5  : Bool;   // Reserved
        reserved6             AT %X1.6  : Bool;   // Reserved
        reserved7             AT %X1.7  : Bool;   // Reserved
        qIDQ0                 AT %X2.0  : Bool;   // Quality information DQ0
        qIDQ1                 AT %X2.1  : Bool;   // Quality information DQ1
        qIDQ2                 AT %X2.2  : Bool;   // Quality information DQ2
        qIDQ3                 AT %X2.3  : Bool;   // Quality information DQ3
        qIDQ4                 AT %X2.4  : Bool;   // Quality information DQ4
        qIDQ5                 AT %X2.5  : Bool;   // Quality information DQ5
        reserved8             AT %X2.6  : Bool;   // Reserved
        reserved9             AT %X2.7  : Bool;   // Reserved
        reserved10            AT %B3  : Byte;   // Reserved
        tecInDI0              AT %B4  : DWord;  // Value depends on operating mode
        tecInDI1              AT %B8  : DWord;  // Value depends on operating mode
        tecInDI2              AT %B12  : DWord;  // Value depends on operating mode
        tecInDI3              AT %B16  : DWord;  // Value depends on operating mode
        lecEn0                AT %B20  : Byte;   // Lost edge counter; DI / DQ active as Timer DI / DQ
        lecEn2                AT %B21  : Byte;   // Lost edge counter; DI / DQ active as Timer DI / DQ
        enDQ0                 AT %X22.0 : Bool;   // DQ0 active as Timer DQ
        enDQ1                 AT %X22.1 : Bool;   // DQ1 active as Timer DQ
        enDQ2                 AT %X22.2 : Bool;   // DQ2 active as Timer DQ
        enDQ3                 AT %X22.3 : Bool;   // DQ3 active as Timer DQ
        enDQ4                 AT %X22.4 : Bool;   // DQ4 active as Timer DQ
        enDQ5                 AT %X22.5 : Bool;   // DQ5 active as Timer DQ
        reserved11            AT %X22.6 : Bool;   // Reserved
        reserved12            AT %X22.7 : Bool;   // Reserved
        layoutProperty        AT %B23  : Byte;   // Module-specific Value
        zsw                   AT %B24  : Word;   // This Value is controlled by the TIO instruction TIO_SYNC
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec142V3              : STRUCT
        version                       AT %B0   : Byte    := BYTE#3;  // Version
        resb1                         AT %B1   : Byte;               // Reserved
        voltL1N                       AT %B2   : Real;               // Voltage L1-N
        voltL2N                       AT %B6   : Real;               // Voltage L2-N
        voltL3N                       AT %B10  : Real;               // Voltage L3-N
        voltL1L2                      AT %B14  : Real;               // Voltage L1-L2
        voltL2L3                      AT %B18  : Real;               // Voltage L2-L3
        voltL3L1                      AT %B22  : Real;               // Voltage L3-L1
        currentL1                     AT %B26  : Real;               // Current L1
        currentL2                     AT %B30  : Real;               // Current L2
        currentL3                     AT %B34  : Real;               // Current L3
        powerFactorL1                 AT %B38  : Real;               // Power factor λ L1
        powerFactorL2                 AT %B42  : Real;               // Power factor λ L2
        powerFactorL3                 AT %B46  : Real;               // Power factor λ L3
        powerFactorL1L2L3             AT %B50  : Real;               // Power factor λ L1 L2 L3
        frequencyL1L2L3               AT %B54  : Real;               // Frequency L1 L2 L3
        amplUnbalanceVolt             AT %B58  : Real;               // Amplitude unbalance voltage U2
        amplUnbalanceCurrent          AT %B62  : Real;               // Amplitude unbalance current Iasym
        apparentPowerL1               AT %B66  : Real;               // Apparent power L1
        apparentPowerL2               AT %B70  : Real;               // Apparent power L2
        apparentPowerL3               AT %B74  : Real;               // Apparent power L3
        apparentPowerL1L2L3           AT %B78  : Real;               // Apparent power L1 L2 L3
        reactivePowerQtotL1           AT %B82  : Real;               // Reactive power Qtot L1
        reactivePowerQtotL2           AT %B86  : Real;               // Reactive power Qtot L2
        reactivePowerQtotL3           AT %B90  : Real;               // Reactive power Qtot L3
        reactivePowerQtotL1L2L3       AT %B94  : Real;               // Reactive power Qtot L1 L2 L3
        activePowerL1                 AT %B98  : Real;               // Active power L1
        activePowerL2                 AT %B102 : Real;               // Active power L2
        activePowerL3                 AT %B106 : Real;               // Active power L3
        activePowerL1L2L3             AT %B110 : Real;               // Active power L1 L2 L3
        phaseAngleL1                  AT %B114 : Real;               // Phase angle L1
        phaseAngleL2                  AT %B118 : Real;               // Phase angle L2
        phaseAngleL3                  AT %B122 : Real;               // Phase angle L3
        apparentEnergyL1L2L3          AT %B126 : Real;               // Apparent energy L1 L2 L3
        totalReactiveEnergyL1L2L3     AT %B130 : Real;               // Total reactive energy L1 L2 L3
        totalActiveEnergyL1L2L3       AT %B134 : Real;               // Total active energy L1 L2 L3
        reactiveEnergyInL1L2L3        AT %B138 : Real;               // Reactive energy inflow L1 L2 L3
        reactiveEnergyOutL1L2L3       AT %B142 : Real;               // Reactive energy outflow L1 L2 L3
        activeEnergyInL1L2L3          AT %B146 : Real;               // Active energy inflow L1 L2 L3
        activeEnergyOutL1L2L3         AT %B150 : Real;               // Active energy outflow L1 L2 L3
        apparentEnergyLongL1L2L3      AT %B154 : LReal;              // Apparent energy L1 L2 L3
        totalReactiveEnergyLongL1L2L3 AT %B162 : LReal;              // Total reactive energy L1 L2 L3
        totalActiveEnergyLongL1L2L3   AT %B170 : LReal;              // Total active energy L1 L2 L3
        reactiveEnergyInLongL1L2L3    AT %B178 : LReal;              // Reactive energy inflow L1 L2 L3
        reactiveEnergyOutLongL1L2L3   AT %B186 : LReal;              // Reactive energy outflow L1 L2 L3
        activeEnergyInLongL1L2L3      AT %B194 : LReal;              // Active energy inflow L1 L2 L3
        activeEnergyOutLongL1L2L3     AT %B202 : LReal;              // Active energy outflow L1 L2 L3
        neutralCurrentIn              AT %B210 : Real;               // Neutral current IN
        neutralCurrentCyc10to12       AT %B214 : Real;               // Neutral current 10/12 cycle
        reactivePowerQnL1             AT %B220 : Real;               // Reactive power Qn L1
        reactivePowerQnL2             AT %B224 : Real;               // Reactive power Qn L2
        reactivePowerQnL3             AT %B228 : Real;               // Reactive power Qn L3
        reactivePowerQnL1L2L3         AT %B232 : Real;               // Reactive power Qn L1 L2 L3
        averageVoltLN                 AT %B236 : Real;               // Average voltage L-N (Utot)
        averageVoltLL                 AT %B240 : Real;               // Average voltage L-L
        averageCurrL1L2L3             AT %B244 : Real;               // Average current L1L2L3 (Itot)
        meanPowerFactorL1L2L3         AT %B248 : Real;               // Mean power factor λ L1L2L3
        fundVoltL1                    AT %B252 : Real;               // Fundamental voltage L1
        fundVoltL2                    AT %B256 : Real;               // Fundamental voltage L2
        fundVoltL3                    AT %B260 : Real;               // Fundamental voltage L3
        fundCurrL1                    AT %B264 : Real;               // Fundamental current L1
        fundCurrL2                    AT %B268 : Real;               // Fundamental current L2
        fundCurrL3                    AT %B272 : Real;               // Fundamental current L3
        fundApparentPowerL1           AT %B276 : Real;               // Fundamental apparent power L1
        fundApparentPowerL2           AT %B280 : Real;               // Fundamental apparent power L2
        fundApparentPowerL3           AT %B284 : Real;               // Fundamental apparent power L3
        fundReactivePowerL1           AT %B288 : Real;               // Fundamental reactive power L1
        fundReactivePowerL2           AT %B292 : Real;               // Fundamental reactive power L2
        fundReactivePowerL3           AT %B296 : Real;               // Fundamental reactive power L3
        fundActivePowerL1             AT %B300 : Real;               // Fundamental active power L1
        fundActivePowerL2             AT %B304 : Real;               // Fundamental active power L2
        fundActivePowerL3             AT %B308 : Real;               // Fundamental active power L3
        fundActiveFactorL1            AT %B312 : Real;               // Fundamental cos φ active factor L1
        fundActiveFactorL2            AT %B316 : Real;               // Fundamental cos φ active factor L2
        fundActiveFactorL3            AT %B320 : Real;               // Fundamental cos φ active factor L3
        tHDaNVoltL1                   AT %B324 : Real;               // Total harmonic distortion (THD+N) voltage L1
        tHDaNVoltL2                   AT %B328 : Real;               // Total harmonic distortion (THD+N) voltage L2
        tHDaNVoltL3                   AT %B332 : Real;               // Total harmonic distortion (THD+N) voltage L3
        tHDaNCurrL1                   AT %B336 : Real;               // Total harmonic distortion (THD+N) current L1
        tHDaNCurrL2                   AT %B340 : Real;               // Total harmonic distortion (THD+N) current L2
        tHDaNCurrL3                   AT %B344 : Real;               // Total harmonic distortion (THD+N) current L3
        currentModuleTime             AT %B348 : PNIOTimeStamp;      // Current module time
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec145           : STRUCT
        version                  AT %B0   : Byte    := BYTE#1;  // Version
        resb1                    AT %B1   : Byte;               // Reserved
        minVoltL1N               AT %B2   : Real;               // Min. voltage L1-N
        minVoltL2N               AT %B6   : Real;               // Min. voltage L2-N
        minVoltL3N               AT %B10  : Real;               // Min. voltage L3-N
        minVoltL1L2              AT %B14  : Real;               // Min. voltage L1-L2
        minVoltL2L3              AT %B18  : Real;               // Min. voltage L2-L3
        minVoltL3L1              AT %B22  : Real;               // Min. voltage L3-L1
        minCurrentL1             AT %B26  : Real;               // Min. current L1
        minCurrentL2             AT %B30  : Real;               // Min. current L2
        minCurrentL3             AT %B34  : Real;               // Min. current L3
        minApparentPowerL1       AT %B38  : Real;               // Min. apparent power L1
        minApparentPowerL2       AT %B42  : Real;               // Min. apparent power L2
        minApparentPowerL3       AT %B46  : Real;               // Min. apparent power L3
        minActivePowerL1         AT %B50  : Real;               // Min. active power L1
        minActivePowerL2         AT %B54  : Real;               // Min. active power L2
        minActivePowerL3         AT %B58  : Real;               // Min. active power L3
        minReactivePowerQtotL1   AT %B62  : Real;               // Min. reactive power Qtot L1
        minReactivePowerQtotL2   AT %B66  : Real;               // Min. reactive power Qtot L2
        minReactivePowerQtotL3   AT %B70  : Real;               // Min. reactive power Qtot L3
        minPowerFactorL1         AT %B74  : Real;               // Min. power factor λ L1
        minPowerFactorL2         AT %B78  : Real;               // Min. power factor λ L2
        minPowerFactorL3         AT %B82  : Real;               // Min. power factor λ L3
        minFrequency             AT %B86  : Real;               // Min. frequency
        minApparentPowerL1L2L3   AT %B90  : Real;               // Min. apparent power L1 L2 L3
        minActivePowerL1L2L3     AT %B94  : Real;               // Min. active power L1 L2 L3
        minReactivePowerQnL1L2L3 AT %B98  : Real;               // Min. reactive power Qn L1 L2 L3
        minPowerFactorL1L2L3     AT %B102 : Real;               // Min. power factor λ L1 L2 L3
        minReactivePowerQnL1     AT %B106 : Real;               // Min. reactive power Qn L1
        minReactivePowerQnL2     AT %B110 : Real;               // Min. reactive power Qn L2
        minReactivePowerQnL3     AT %B114 : Real;               // Min. reactive power Qn L3
        resDW118                 AT %B118 : DWord;              // Reserved
        resDW122                 AT %B122 : DWord;              // Reserved
        resDW126                 AT %B126 : DWord;              // Reserved
        resDW130                 AT %B130 : DWord;              // Reserved
        resDW134                 AT %B134 : DWord;              // Reserved
        resDW138                 AT %B138 : DWord;              // Reserved
        resDW142                 AT %B142 : DWord;              // Reserved
        resDW146                 AT %B146 : DWord;              // Reserved
        resDW150                 AT %B150 : DWord;              // Reserved
        resDW154                 AT %B154 : DWord;              // Reserved
        resDW158                 AT %B158 : DWord;              // Reserved
        resDW162                 AT %B162 : DWord;              // Reserved
        resDW166                 AT %B166 : DWord;              // Reserved
        resDW170                 AT %B170 : DWord;              // Reserved
        resDW174                 AT %B174 : DWord;              // Reserved
        resDW178                 AT %B178 : DWord;              // Reserved
        resDW182                 AT %B182 : DWord;              // Reserved
        resDW186                 AT %B186 : DWord;              // Reserved
        resDW190                 AT %B190 : DWord;              // Reserved
        resDW194                 AT %B194 : DWord;              // Reserved
        resDW198                 AT %B198 : DWord;              // Reserved
        resDW202                 AT %B202 : DWord;              // Reserved
        resDW206                 AT %B206 : DWord;              // Reserved
        resDW210                 AT %B210 : DWord;              // Reserved
        resDW214                 AT %B214 : DWord;              // Reserved
        resDW218                 AT %B218 : DWord;              // Reserved
        resDW222                 AT %B222 : DWord;              // Reserved
        minNeutralCurr           AT %B226 : Real;               // Min. neutral current
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec147V0          : STRUCT
        version                   AT %B0   : Byte;   // Version
        resb1                     AT %B1   : Byte;   // Reserved
        qualifierL1               AT %B2   : Word;   // Qualifier L1
        voltL1N                   AT %B4   : Real;   // Voltage L1-N
        currentL1                 AT %B8   : Real;   // Current L1
        apparentPowerL1           AT %B12  : Real;   // Apparent power L1
        activePowerL1             AT %B16  : Real;   // Active power L1
        reactivePowerQtotL1       AT %B20  : Real;   // Reactive power Qtot L1
        powerFactorL1             AT %B24  : Real;   // Power factor λ L1
        phaseAngleL1              AT %B28  : Real;   // Phase angle L1
        apparentEnergyLongL1      AT %B32  : LReal;  // Apparent energy L1
        totalActiveEnergyLongL1   AT %B40  : LReal;  // Active energy (total) L1
        totalReactiveEnergyLongL1 AT %B48  : LReal;  // Reactive energy (total) L1
        maxVoltL1N                AT %B56  : Real;   // Max. voltage L1-N
        maxCurrentL1              AT %B60  : Real;   // Max. current L1
        maxApparentPowerL1        AT %B64  : Real;   // Max. apparent power L1
        maxActivePowerL1          AT %B68  : Real;   // Max. active power L1
        maxReactivePowerQtotL1    AT %B72  : Real;   // Max. reactive power Qtot L1
        maxPowerFactorL1          AT %B76  : Real;   // Max. power factor λ L1
        minVoltL1N                AT %B80  : Real;   // Min. voltage L1-N
        minCurrentL1              AT %B84  : Real;   // Min. current L1
        minApparentPowerL1        AT %B88  : Real;   // Min. apparent power L1
        minActivePowerL1          AT %B92  : Real;   // Min. active power L1
        minReactivePowerQtotL1    AT %B96  : Real;   // Min. reactive power Qtot L1
        minPowerFactorL1          AT %B100 : Real;   // Min. power factor λ L1
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec147V1          : STRUCT
        version                   AT %B0   : Byte    := BYTE#1;  // Version
        resb1                     AT %B1   : Byte;               // Reserved
        qualifierL1               AT %B2   : Word;               // Qualifier L1
        voltL1N                   AT %B4   : Real;               // Voltage L1-N
        currentL1                 AT %B8   : Real;               // Current L1
        apparentPowerL1           AT %B12  : Real;               // Apparent power L1
        activePowerL1             AT %B16  : Real;               // Active power L1
        reactivePowerQtotL1       AT %B20  : Real;               // Reactive power Qtot L1
        powerFactorL1             AT %B24  : Real;               // Power factor λ L1
        phaseAngleL1              AT %B28  : Real;               // Phase angle L1
        apparentEnergyLongL1      AT %B32  : LReal;              // Apparent energy L1
        totalActiveEnergyLongL1   AT %B40  : LReal;              // Active energy (total) L1
        totalReactiveEnergyLongL1 AT %B48  : LReal;              // Reactive energy (total) L1
        maxVoltL1N                AT %B56  : Real;               // Max. voltage L1-N
        maxCurrentL1              AT %B60  : Real;               // Max. current L1
        maxApparentPowerL1        AT %B64  : Real;               // Max. apparent power L1
        maxActivePowerL1          AT %B68  : Real;               // Max. active power L1
        maxReactivePowerQtotL1    AT %B72  : Real;               // Max. reactive power Qtot L1
        maxPowerFactorL1          AT %B76  : Real;               // Max. power factor λ L1
        minVoltL1N                AT %B80  : Real;               // Min. voltage L1-N
        minCurrentL1              AT %B84  : Real;               // Min. current L1
        minApparentPowerL1        AT %B88  : Real;               // Min. apparent power L1
        minActivePowerL1          AT %B92  : Real;               // Min. active power L1
        minReactivePowerQtotL1    AT %B96  : Real;               // Min. reactive power Qtot L1
        minPowerFactorL1          AT %B100 : Real;               // Min. power factor λ L1
        reactivePowerQnL1         AT %B104 : Real;               // Reactive power Qn L1
        voltL1Cycles10to12        AT %B108 : Real;               // Voltage L1 10-12 cycles
        currL1Cycles10to12        AT %B112 : Real;               // Current L1 10-12 cycles
        maxReactivePowerQnL1      AT %B116 : Real;               // Max. reactive power Qn L1
        minReactivePowerQnL1      AT %B120 : Real;               // Min. reactive power Qn L1
        fundVoltL1                AT %B124 : Real;               // Fundamental voltage L1
        fundCurrL1                AT %B128 : Real;               // Fundamental current L1
        fundApparentPowerL1       AT %B132 : Real;               // Fundamental apparent power L1
        fundReactivePowerL1       AT %B136 : Real;               // Fundamental reactive power L1
        fundActivePowerL1         AT %B140 : Real;               // Fundamental active power L1
        fundActiveFactorL1        AT %B144 : Real;               // Fundamental cos φ active factor L1
        maxFundVoltL1             AT %B148 : Real;               // Max. fundamental voltage L1
        maxFundCurrL1             AT %B152 : Real;               // Max. fundamental current L1
        maxFundApparentPowerL1    AT %B156 : Real;               // Max. fundamental apparent power L1
        maxFundReactivePowerL1    AT %B160 : Real;               // Max. fundamental reactive power L1
        maxFundActivePowerL1      AT %B164 : Real;               // Max. fundamental active power L1
        maxFundActiveFactorL1     AT %B168 : Real;               // Max. fundamental cos φ active factor L1
        minFundVoltL1             AT %B172 : Real;               // Min. fundamental voltage L1
        minFundCurrL1             AT %B176 : Real;               // Min. fundamental current L1
        minFundApparentPowerL1    AT %B180 : Real;               // Min. fundamental apparent power L1
        minFundReactivePowerL1    AT %B184 : Real;               // Min. fundamental reactive power L1
        minFundActivePowerL1      AT %B188 : Real;               // Min. fundamental active power L1
        minFundActiveFactorL1     AT %B192 : Real;               // Min. fundamental cos φ active factor L1
        tHDaNVoltL1               AT %B196 : Real;               // Total harmonic distortion (THD+N) voltage L1
        tHDaNCurrL1               AT %B200 : Real;               // Total harmonic distortion (THD+N) current L1
        maxTHDaNVoltL1            AT %B204 : Real;               // Max. total harmonic distortion (THD+N) voltage L1
        maxTHDaNCurrL1            AT %B208 : Real;               // Max. total harmonic distortion (THD+N) current L1
        minTHDaNVoltL1            AT %B212 : Real;               // Min. total harmonic distortion (THD+N) voltage L1
        minTHDaNCurrL1            AT %B216 : Real;               // Min. total harmonic distortion (THD+N) current L1
        voltDipValueL1            AT %B220 : Real;               // Voltage dip - value L1
        voltDipDurationL1         AT %B224 : Real;               // Voltage dip - duration L1
        voltSwellValueL1          AT %B228 : Real;               // Voltage swell - value L1
        voltSwellDurationL1       AT %B232 : Real;               // Voltage swell - duration L1
        voltPeakValueL1           AT %B236 : Real;               // Voltage peak value L1
        currPeakValueL1           AT %B240 : Real;               // Current peak value L1
        overCurrValueL1           AT %B244 : Real;               // Overcurrent value L1
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec142V2              : STRUCT
        version                       AT %B0  : Byte    := BYTE#2;  // Version
        resb1                         AT %B1  : Byte;               // Reserved
        voltL1N                       AT %B2  : Real;               // Voltage L1-N
        voltL2N                       AT %B6  : Real;               // Voltage L2-N
        voltL3N                       AT %B10  : Real;               // Voltage L3-N
        voltL1L2                      AT %B14  : Real;               // Voltage L1-L2
        voltL2L3                      AT %B18  : Real;               // Voltage L2-L3
        voltL3L1                      AT %B22  : Real;               // Voltage L3-L1
        currentL1                     AT %B26  : Real;               // Current L1
        currentL2                     AT %B30  : Real;               // Current L2
        currentL3                     AT %B34  : Real;               // Current L3
        powerFactorL1                 AT %B38  : Real;               // Power factor λ L1
        powerFactorL2                 AT %B42  : Real;               // Power factor λ L2
        powerFactorL3                 AT %B46  : Real;               // Power factor λ L3
        powerFactorL1L2L3             AT %B50  : Real;               // Power factor λ L1 L2 L3
        frequencyL1L2L3               AT %B54  : Real;               // Frequency L1 L2 L3
        amplUnbalanceVolt             AT %B58  : Real;               // Amplitude unbalance voltage U2
        amplUnbalanceCurrent          AT %B62  : Real;               // Amplitude unbalance current Iasym
        apparentPowerL1               AT %B66  : Real;               // Apparent power L1
        apparentPowerL2               AT %B70  : Real;               // Apparent power L2
        apparentPowerL3               AT %B74  : Real;               // Apparent power L3
        apparentPowerL1L2L3           AT %B78  : Real;               // Apparent power L1 L2 L3
        reactivePowerQtotL1           AT %B82  : Real;               // Reactive power Qtot L1
        reactivePowerQtotL2           AT %B86  : Real;               // Reactive power Qtot L2
        reactivePowerQtotL3           AT %B90  : Real;               // Reactive power Qtot L3
        reactivePowerQtotL1L2L3       AT %B94  : Real;               // Reactive power Qtot L1 L2 L3
        activePowerL1                 AT %B98  : Real;               // Active power L1
        activePowerL2                 AT %B102  : Real;               // Active power L2
        activePowerL3                 AT %B106  : Real;               // Active power L3
        activePowerL1L2L3             AT %B110  : Real;               // Active power L1 L2 L3
        phaseAngleL1                  AT %B114  : Real;               // Phase angle L1
        phaseAngleL2                  AT %B118  : Real;               // Phase angle L2
        phaseAngleL3                  AT %B122  : Real;               // Phase angle L3
        apparentEnergyL1L2L3          AT %B126  : Real;               // Apparent energy L1 L2 L3
        totalReactiveEnergyL1L2L3     AT %B130  : Real;               // Total reactive energy L1 L2 L3
        totalActiveEnergyL1L2L3       AT %B134  : Real;               // Total active energy L1 L2 L3
        reactiveEnergyInL1L2L3        AT %B138  : Real;               // Reactive energy inflow L1 L2 L3
        reactiveEnergyOutL1L2L3       AT %B142  : Real;               // Reactive energy outflow L1 L2 L3
        activeEnergyInL1L2L3          AT %B146  : Real;               // Active energy inflow L1 L2 L3
        activeEnergyOutL1L2L3         AT %B150  : Real;               // Active energy outflow L1 L2 L3
        apparentEnergyLongL1L2L3      AT %B154  : LReal;              // Apparent energy L1 L2 L3
        totalReactiveEnergyLongL1L2L3 AT %B162  : LReal;              // Total reactive energy L1 L2 L3
        totalActiveEnergyLongL1L2L3   AT %B170  : LReal;              // Total active energy L1 L2 L3
        reactiveEnergyInLongL1L2L3    AT %B178  : LReal;              // Reactive energy inflow L1 L2 L3
        reactiveEnergyOutLongL1L2L3   AT %B186  : LReal;              // Reactive energy outflow L1 L2 L3
        activeEnergyInLongL1L2L3      AT %B194  : LReal;              // Active energy inflow L1 L2 L3
        activeEnergyOutLongL1L2L3     AT %B202  : LReal;              // Active energy outflow L1 L2 L3
        neutralCurrentIn              AT %B210  : Real;               // Neutral current IN
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec148V1          : STRUCT
        version                   AT %B0   : Byte    := BYTE#1;  // Version
        resb1                     AT %B1   : Byte;               // Reserved
        qualifierL2               AT %B2   : Word;               // Qualifier L2
        voltL2N                   AT %B4   : Real;               // Voltage L2-N
        currentL2                 AT %B8   : Real;               // Current L2
        apparentPowerL2           AT %B12  : Real;               // Apparent power L2
        activePowerL2             AT %B16  : Real;               // Active power L2
        reactivePowerQtotL2       AT %B20  : Real;               // Reactive power Qtot L2
        powerFactorL2             AT %B24  : Real;               // Power factor λ L2
        phaseAngleL2              AT %B28  : Real;               // Phase angle L2
        apparentEnergyLongL2      AT %B32  : LReal;              // Apparent energy L2
        totalActiveEnergyLongL2   AT %B40  : LReal;              // Active energy (total) L2
        totalReactiveEnergyLongL2 AT %B48  : LReal;              // Reactive energy (total) L2
        maxVoltL2N                AT %B56  : Real;               // Max. voltage L2-N
        maxCurrentL2              AT %B60  : Real;               // Max. current L2
        maxApparentPowerL2        AT %B64  : Real;               // Max. apparent power L2
        maxActivePowerL2          AT %B68  : Real;               // Max. active power L2
        maxReactivePowerQtotL2    AT %B72  : Real;               // Max. reactive power Qtot L2
        maxPowerFactorL2          AT %B76  : Real;               // Max. power factor λ L2
        minVoltL2N                AT %B80  : Real;               // Min. voltage L2-N
        minCurrentL2              AT %B84  : Real;               // Min. current L2
        minApparentPowerL2        AT %B88  : Real;               // Min. apparent power L2
        minActivePowerL2          AT %B92  : Real;               // Min. active power L2
        minReactivePowerQtotL2    AT %B96  : Real;               // Min. reactive power Qtot L2
        minPowerFactorL2          AT %B100 : Real;               // Min. power factor λ L2
        reactivePowerQnL2         AT %B104 : Real;               // Reactive power Qn L2
        voltL2Cycles10to12        AT %B108 : Real;               // Voltage L2 10-12 cycles
        currL2Cycles10to12        AT %B112 : Real;               // Current L2 10-12 cycles
        maxReactivePowerQnL2      AT %B116 : Real;               // Max. reactive power Qn L2
        minReactivePowerQnL2      AT %B120 : Real;               // Min. reactive power Qn L2
        fundVoltL2                AT %B124 : Real;               // Fundamental voltage L2
        fundCurrL2                AT %B128 : Real;               // Fundamental current L2
        fundApparentPowerL2       AT %B132 : Real;               // Fundamental apparent power L2
        fundReactivePowerL2       AT %B136 : Real;               // Fundamental reactive power L2
        fundActivePowerL2         AT %B140 : Real;               // Fundamental active power L2
        fundActiveFactorL2        AT %B144 : Real;               // Fundamental cos φ active factor L2
        maxFundVoltL2             AT %B148 : Real;               // Max. fundamental voltage L2
        maxFundCurrL2             AT %B152 : Real;               // Max. fundamental current L2
        maxFundApparentPowerL2    AT %B156 : Real;               // Max. fundamental apparent power L2
        maxFundReactivePowerL2    AT %B160 : Real;               // Max. fundamental reactive power L2
        maxFundActivePowerL2      AT %B164 : Real;               // Max. fundamental active power L2
        maxFundActiveFactorL2     AT %B168 : Real;               // Max. fundamental cos φ active factor L2
        minFundVoltL2             AT %B172 : Real;               // Min. fundamental voltage L2
        minFundCurrL2             AT %B176 : Real;               // Min. fundamental current L2
        minFundApparentPowerL2    AT %B180 : Real;               // Min. fundamental apparent power L2
        minFundReactivePowerL2    AT %B184 : Real;               // Min. fundamental reactive power L2
        minFundActivePowerL2      AT %B188 : Real;               // Min. fundamental active power L2
        minFundActiveFactorL2     AT %B192 : Real;               // Min. fundamental cos φ active factor L2
        tHDaNVoltL2               AT %B196 : Real;               // Total harmonic distortion (THD+N) voltage L2
        tHDaNCurrL2               AT %B200 : Real;               // Total harmonic distortion (THD+N) current L2
        maxTHDaNVoltL2            AT %B204 : Real;               // Max. total harmonic distortion (THD+N) voltage L2
        maxTHDaNCurrL2            AT %B208 : Real;               // Max. total harmonic distortion (THD+N) current L2
        minTHDaNVoltL2            AT %B212 : Real;               // Min. total harmonic distortion (THD+N) voltage L2
        minTHDaNCurrL2            AT %B216 : Real;               // Min. total harmonic distortion (THD+N) current L2
        voltDipValueL2            AT %B220 : Real;               // Voltage dip - value L2
        voltDipDurationL2         AT %B224 : Real;               // Voltage dip - duration L2
        voltSwellValueL2          AT %B228 : Real;               // Voltage swell - value L2
        voltSwellDurationL2       AT %B232 : Real;               // Voltage swell - duration L2
        voltPeakValueL2           AT %B236 : Real;               // Voltage peak value L2
        currPeakValueL2           AT %B240 : Real;               // Current peak value L2
        overCurrValueL2           AT %B244 : Real;               // Overcurrent value L2
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec142V2              : STRUCT
        version                       AT %B0    : Byte    := BYTE#2;  // Version
        resb1                         AT %B1    : Byte;               // Reserved
        voltL1N                       AT %B2    : Real;               // Voltage L1-N
        voltL2N                       AT %B6    : Real;               // Voltage L2-N
        voltL3N                       AT %B10   : Real;               // Voltage L3-N
        voltL1L2                      AT %B14   : Real;               // Voltage L1-L2
        voltL2L3                      AT %B18   : Real;               // Voltage L2-L3
        voltL3L1                      AT %B22   : Real;               // Voltage L3-L1
        currentL1                     AT %B26   : Real;               // Current L1
        currentL2                     AT %B30   : Real;               // Current L2
        currentL3                     AT %B34   : Real;               // Current L3
        powerFactorL1                 AT %B38   : Real;               // Power factor λ L1
        powerFactorL2                 AT %B42   : Real;               // Power factor λ L2
        powerFactorL3                 AT %B46   : Real;               // Power factor λ L3
        powerFactorL1L2L3             AT %B50   : Real;               // Power factor L1 L2 L3
        frequencyL1L2L3               AT %B54   : Real;               // Frequency L1 L2 L3
        amplUnbalanceVolt             AT %B58   : Real;               // Amplitude unbalance voltage U2
        amplUnbalanceCurrent          AT %B62   : Real;               // Amplitude unbalance current Iasym
        apparentPowerL1               AT %B66   : Real;               // Apparent power L1
        apparentPowerL2               AT %B70   : Real;               // Apparent power L2
        apparentPowerL3               AT %B74   : Real;               // Apparent power L3
        apparentPowerL1L2L3           AT %B78   : Real;               // Apparent power L1 L2 L3
        reactivePowerQtotL1           AT %B82   : Real;               // Reactive power Qtot L1
        reactivePowerQtotL2           AT %B86   : Real;               // Reactive power Qtot L2
        reactivePowerQtotL3           AT %B90   : Real;               // Reactive power Qtot L3
        reactivePowerQtotL1L2L3       AT %B94   : Real;               // Reactive power Qtot L1 L2 L3
        activePowerL1                 AT %B98   : Real;               // Active power L1
        activePowerL2                 AT %B102  : Real;               // Active power L2
        activePowerL3                 AT %B106  : Real;               // Active power L3
        activePowerL1L2L3             AT %B110  : Real;               // Active power L1 L2 L3
        phaseAngleL1                  AT %B114  : Real;               // Phase angle L1
        phaseAngleL2                  AT %B118  : Real;               // Phase angle L2
        phaseAngleL3                  AT %B122  : Real;               // Phase angle L3
        apparentEnergyL1L2L3          AT %B126  : Real;               // Apparent energy L1 L2 L3
        totalReactiveEnergyL1L2L3     AT %B130  : Real;               // Total reactive energy L1 L2 L3
        totalActiveEnergyL1L2L3       AT %B134  : Real;               // Total active energy L1 L2 L3
        reactiveEnergyInL1L2L3        AT %B138  : Real;               // Reactive energy inflow L1 L2 L3
        reactiveEnergyOutL1L2L3       AT %B142  : Real;               // Reactive energy outflow L1 L2 L3
        activeEnergyInL1L2L3          AT %B146  : Real;               // Active energy inflow L1 L2 L3
        activeEnergyOutL1L2L3         AT %B150  : Real;               // Active energy outflow L1 L2 L3
        apparentEnergyLongL1L2L3      AT %B154 : LReal;              // Apparent energy L1 L2 L3
        totalReactiveEnergyLongL1L2L3 AT %B162 : LReal;              // Total reactive energy L1 L2 L3
        totalActiveEnergyLongL1L2L3   AT %B170 : LReal;              // Total active energy L1 L2 L3
        reactiveEnergyInLongL1L2L3    AT %B178 : LReal;              // Reactive energy inflow L1 L2 L3
        reactiveEnergyOutLongL1L2L3   AT %B186 : LReal;              // Reactive energy outflow L1 L2 L3
        activeEnergyInLongL1L2L3      AT %B194 : LReal;              // Active energy inflow L1 L2 L3
        activeEnergyOutLongL1L2L3     AT %B202 : LReal;              // Active energy outflow L1 L2 L3
        neutralCurrentIn              AT %B210 : Real;               // Neutral current IN
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec154             : STRUCT
        version                    AT %B0  : Byte    := BYTE#2;          // Version
        resb1                      AT %B1  : Byte;                       // Reserved
        maxVoltL1N                 AT %B2  : RealValueAndPNIOTimeStamp;  // Max. voltage L1-N
        maxVoltL2N                 AT %B18  : RealValueAndPNIOTimeStamp;  // Max. voltage L2-N
        maxVoltL3N                 AT %B34  : RealValueAndPNIOTimeStamp;  // Max. voltage L3-N
        maxVoltL1L2                AT %B50  : RealValueAndPNIOTimeStamp;  // Max. voltage L1-L2
        maxVoltL2L3                AT %B66  : RealValueAndPNIOTimeStamp;  // Max. voltage L2-L3
        maxVoltL3L1                AT %B82  : RealValueAndPNIOTimeStamp;  // Max. voltage L3-L1
        maxCurrentL1               AT %B98  : RealValueAndPNIOTimeStamp;  // Max. current L1
        maxCurrentL2               AT %B114  : RealValueAndPNIOTimeStamp;  // Max. current L2
        maxCurrentL3               AT %B130  : RealValueAndPNIOTimeStamp;  // Max. current L3
        maxApparentPowerL1         AT %B146  : RealValueAndPNIOTimeStamp;  // Max. apparent power L1
        maxApparentPowerL2         AT %B162  : RealValueAndPNIOTimeStamp;  // Max. apparent power L2
        maxApparentPowerL3         AT %B178  : RealValueAndPNIOTimeStamp;  // Max. apparent power L3
        maxActivePowerL1           AT %B194  : RealValueAndPNIOTimeStamp;  // Max. active power L1
        maxActivePowerL2           AT %B210  : RealValueAndPNIOTimeStamp;  // Max. active power L2
        maxActivePowerL3           AT %B226  : RealValueAndPNIOTimeStamp;  // Max. active power L3
        maxReactivePowerQtotL1     AT %B242  : RealValueAndPNIOTimeStamp;  // Max. reactive power Qtot L1
        maxReactivePowerQtotL2     AT %B258  : RealValueAndPNIOTimeStamp;  // Max. reactive power Qtot L2
        maxReactivePowerQtotL3     AT %B274  : RealValueAndPNIOTimeStamp;  // Max. reactive power Qtot L3
        maxPowerFactorL1           AT %B290  : RealValueAndPNIOTimeStamp;  // Max. power factor λ L1
        maxPowerFactorL2           AT %B306  : RealValueAndPNIOTimeStamp;  // Max. power factor λ L2
        maxPowerFactorL3           AT %B322  : RealValueAndPNIOTimeStamp;  // Max. power factor λ L3
        maxFrequency               AT %B338  : RealValueAndPNIOTimeStamp;  // Max. frequency
        maxApparentPowerL1L2L3     AT %B354  : RealValueAndPNIOTimeStamp;  // Max. apparent power L1 L2 L3
        maxActivePowerL1L2L3       AT %B370  : RealValueAndPNIOTimeStamp;  // Max. active power L1 L2 L3
        maxReactivePowerQtotL1L2L3 AT %B386  : RealValueAndPNIOTimeStamp;  // Max. reactive power Qtot L1 L2 L3
        maxPowerFactorL1L2L3       AT %B402  : RealValueAndPNIOTimeStamp;  // Max. power factor λ L1L2L3
        maxReactivePowerQnL1       AT %B418  : RealValueAndPNIOTimeStamp;  // Max. reactive power Qn L1
        maxReactivePowerQnL2       AT %B434  : RealValueAndPNIOTimeStamp;  // Max. reactive power Qn L2
        maxReactivePowerQnL3       AT %B450  : RealValueAndPNIOTimeStamp;  // Max. reactive power Qn L3
        maxMeanVoltLN              AT %B466  : RealValueAndPNIOTimeStamp;  // Max. mean voltage L-N
        maxMeanVoltLL              AT %B482  : RealValueAndPNIOTimeStamp;  // Max. mean voltage L-L
        maxSumMeanCurrL1L2L3       AT %B498  : RealValueAndPNIOTimeStamp;  // Max. sum mean value current L1L2L3
        maxFundVoltL1              AT %B514  : RealValueAndPNIOTimeStamp;  // Max. fundamental voltage L1
        maxFundVoltL2              AT %B530  : RealValueAndPNIOTimeStamp;  // Max. fundamental voltage L2
        maxFundVoltL3              AT %B546  : RealValueAndPNIOTimeStamp;  // Max. fundamental voltage L3
        maxFundCurrL1              AT %B562  : RealValueAndPNIOTimeStamp;  // Max. fundamental current L1
        maxFundCurrL2              AT %B578  : RealValueAndPNIOTimeStamp;  // Max. fundamental current L2
        maxFundCurrL3              AT %B594  : RealValueAndPNIOTimeStamp;  // Max. fundamental current L3
        maxFundApparentPowerL1     AT %B610  : RealValueAndPNIOTimeStamp;  // Max. fundamental apparent power L1
        maxFundApparentPowerL2     AT %B626  : RealValueAndPNIOTimeStamp;  // Max. fundamental apparent power L2
        maxFundApparentPowerL3     AT %B642  : RealValueAndPNIOTimeStamp;  // Max. fundamental apparent power L3
        maxFundReactivePowerL1     AT %B658  : RealValueAndPNIOTimeStamp;  // Max. fundamental reactive power L1
        maxFundReactivePowerL2     AT %B674  : RealValueAndPNIOTimeStamp;  // Max. fundamental reactive power L2
        maxFundReactivePowerL3     AT %B690  : RealValueAndPNIOTimeStamp;  // Max. fundamental reactive power L3
        maxFundActivePowerL1       AT %B706  : RealValueAndPNIOTimeStamp;  // Max. fundamental active power L1
        maxFundActivePowerL2       AT %B722  : RealValueAndPNIOTimeStamp;  // Max. fundamental active power L2
        maxFundActivePowerL3       AT %B738  : RealValueAndPNIOTimeStamp;  // Max. fundamental active power L3
        maxFundActiveFactorL1      AT %B754  : RealValueAndPNIOTimeStamp;  // Max. fundamental cos φ active factor L1
        maxFundActiveFactorL2      AT %B770  : RealValueAndPNIOTimeStamp;  // Max. fundamental cos φ active factor L2
        maxFundActiveFactorL3      AT %B786  : RealValueAndPNIOTimeStamp;  // Max. fundamental cos φ active factor L3
        maxTHDaNVoltL1             AT %B802  : RealValueAndPNIOTimeStamp;  // Max. total harmonic distortion (THD+N) voltage L1
        maxTHDaNVoltL2             AT %B818  : RealValueAndPNIOTimeStamp;  // Max. total harmonic distortion (THD+N) voltage L2
        maxTHDaNVoltL3             AT %B834  : RealValueAndPNIOTimeStamp;  // Max. total harmonic distortion (THD+N) voltage L3
        maxTHDaNCurrL1             AT %B850  : RealValueAndPNIOTimeStamp;  // Max. total harmonic distortion (THD+N) current L1
        maxTHDaNCurrL2             AT %B866  : RealValueAndPNIOTimeStamp;  // Max. total harmonic distortion (THD+N) current L2
        maxTHDaNCurrL3             AT %B882  : RealValueAndPNIOTimeStamp;  // Max. total harmonic distortion (THD+N) current L3
        maxNeutralCurr             AT %B898  : RealValueAndPNIOTimeStamp;  // Max. neutral current
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec143           : STRUCT
        version                  AT %B0 : Byte    := BYTE#1;  // Version
        resb1                    AT %B1 : Byte;               // Reserved
        controlStatusByte1L1     AT %B2 : Byte;               // Status / control byte 1 - L1
        controlStatusByte2L1     AT %B3 : Byte;               // Status / control byte 2 - L1
        controlStatusByte1L2     AT %B4 : Byte;               // Status / control byte 1 - L2
        controlStatusByte2L2     AT %B5 : Byte;               // Status / control byte 2 - L2
        controlStatusByte1L3     AT %B6 : Byte;               // Status / control byte 1 - L3
        controlStatusByte2L3     AT %B7 : Byte;               // Status / control byte 2 - L3
        activeEnergyInLongL1     AT %B8 : LReal;              // Active energy inflow (initial value) L1
        activeEnergyOutLongL1    AT %B16 : LReal;              // Active energy outflow (initial value) L1
        reactiveEnergyInLongL1   AT %B24 : LReal;              // Reactive energy inflow (initial value) L1
        reactiveEnergyOutLongL1  AT %B32 : LReal;              // Reactive energy outflow (initial value) L1
        apparentEnergyLongL1     AT %B40 : LReal;              // Apparent energy (initial value) L1
        activeEnergyInLongL2     AT %B48 : LReal;              // Active energy inflow (initial value) L2
        activeEnergyOutLongL2    AT %B56 : LReal;              // Active energy outflow (initial value) L2
        reactiveEnergyInLongL2   AT %B64 : LReal;              // Reactive energy inflow (initial value) L2
        reactiveEnergyOutLongL2  AT %B72 : LReal;              // Reactive energy outflow (initial value) L2
        apparentEnergyLongL2     AT %B80 : LReal;              // Apparent energy (initial value) L2
        activeEnergyInLongL3     AT %B88 : LReal;              // Active energy inflow (initial value) L3
        activeEnergyOutLongL3    AT %B96 : LReal;              // Active energy outflow (initial value) L3
        reactiveEnergyInLongL3   AT %B104 : LReal;              // Reactive energy inflow (initial value) L3
        reactiveEnergyOutLongL3  AT %B112 : LReal;              // Reactive energy outflow (initial value) L3
        apparentEnergyLongL3     AT %B120 : LReal;              // Apparent energy (initial value) L3
        ovCntActiveEnergyInL1    AT %B128 : UInt;               // Overflow counter active energy inflow L1
        ovCntActiveEnergyOutL1   AT %B132 : UInt;               // Overflow counter active energy outflow L1
        ovCntReactiveEnergyInL1  AT %B136 : UInt;               // Overflow counter reactive energy inflow L1
        ovCntReactiveEnergyOutL1 AT %B140 : UInt;               // Overflow counter reactive energy outflow L1
        ovCntApparentEnergyL1    AT %B144 : UInt;               // Overflow counter apparent energy L1
        ovCntActiveEnergyInL2    AT %B148 : UInt;               // Overflow counter active energy inflow L2
        ovCntActiveEnergyOutL2   AT %B152 : UInt;               // Overflow counter active energy outflow L2
        ovCntReactiveEnergyInL2  AT %B156 : UInt;               // Overflow counter reactive energy inflow L2
        ovCntReactiveEnergyOutL2 AT %B160 : UInt;               // Overflow counter reactive energy outflow L2
        ovCntApparentEnergyL2    AT %B164 : UInt;               // Overflow counter apparent energy L2
        ovCntActiveEnergyInL3    AT %B168 : UInt;               // Overflow counter active energy inflow L3
        ovCntActiveEnergyOutL3   AT %B172 : UInt;               // Overflow counter active energy outflow L3
        ovCntReactiveEnergyInL3  AT %B176 : UInt;               // Overflow counter reactive energy inflow L3
        ovCntReactiveEnergyOutL3 AT %B180 : UInt;               // Overflow counter reactive energy outflow L3
        ovCntApparentEnergyL3    AT %B184 : UInt;               // Overflow counter apparent energy L3
        operHoursCntL1           AT %B188 : Real;               // Operating hours counter L1 (initial value)
        operHoursCntL2           AT %B192 : Real;               // Operating hours counter L2 (initial value)
        operHoursCntL3           AT %B196 : Real;               // Operating hours counter L3 (initial value)
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec135 : STRUCT
        majMinVer      AT %B0 : Byte    := BYTE#0;      // Major / minor version
        dataRecordNum  AT %B1 : Byte    := BYTE#151;    // Data record number for data record mapping = 151
        numMeasValues  AT %B2 : Byte    := BYTE#150;    // Number of measured values for data record mapping
        resb3          AT %B3 : Byte;                   // Reserved
        measValueID    AT %B4 : Array[1..150] of Word;  // ID of measured value for data record mapping
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec149V1          : STRUCT
        version                   AT %B0   : Byte    := BYTE#1;  // Version
        resb1                     AT %B1   : Byte;               // Reserved
        qualifierL3               AT %B2   : Word;               // Qualifier L3
        voltL3N                   AT %B4   : Real;               // Voltage L3-N
        currentL3                 AT %B8   : Real;               // Current L3
        apparentPowerL3           AT %B12  : Real;               // Apparent power L3
        activePowerL3             AT %B16  : Real;               // Active power L3
        reactivePowerQtotL3       AT %B20  : Real;               // Reactive power Qtot L3
        powerFactorL3             AT %B24  : Real;               // Power factor λ L3
        phaseAngleL3              AT %B28  : Real;               // Phase angle L3
        apparentEnergyLongL3      AT %B32  : LReal;              // Apparent energy L3
        totalActiveEnergyLongL3   AT %B40  : LReal;              // Active energy (total) L3
        totalReactiveEnergyLongL3 AT %B48  : LReal;              // Reactive energy (total) L3
        maxVoltL3N                AT %B56  : Real;               // Max. voltage L3-N
        maxCurrentL3              AT %B60  : Real;               // Max. current L3
        maxApparentPowerL3        AT %B64  : Real;               // Max. apparent power L3
        maxActivePowerL3          AT %B68  : Real;               // Max. active power L3
        maxReactivePowerQtotL3    AT %B72  : Real;               // Max. reactive power Qtot L3
        maxPowerFactorL3          AT %B76  : Real;               // Max. power factor λ L3
        minVoltL3N                AT %B80  : Real;               // Min. voltage L3-N
        minCurrentL3              AT %B84  : Real;               // Min. current L3
        minApparentPowerL3        AT %B88  : Real;               // Min. apparent power L3
        minActivePowerL3          AT %B92  : Real;               // Min. active power L3
        minReactivePowerQtotL3    AT %B96  : Real;               // Min. reactive power Qtot L3
        minPowerFactorL3          AT %B100 : Real;               // Min. power factor λ L3
        reactivePowerQnL3         AT %B104 : Real;               // Reactive power Qn L3
        voltL3Cycles10to12        AT %B108 : Real;               // Voltage L3 10-12 cycles
        currL3Cycles10to12        AT %B112 : Real;               // Current L3 10-12 cycles
        maxReactivePowerQnL3      AT %B116 : Real;               // Max. reactive power Qn L3
        minReactivePowerQnL3      AT %B120 : Real;               // Min. reactive power Qn L3
        fundVoltL3                AT %B124 : Real;               // Fundamental voltage L3
        fundCurrL3                AT %B128 : Real;               // Fundamental current L3
        fundApparentPowerL3       AT %B132 : Real;               // Fundamental apparent power L3
        fundReactivePowerL3       AT %B136 : Real;               // Fundamental reactive power L3
        fundActivePowerL3         AT %B140 : Real;               // Fundamental active power L3
        fundActiveFactorL3        AT %B144 : Real;               // Fundamental cos φ active factor L3
        maxFundVoltL3             AT %B148 : Real;               // Max. fundamental voltage L3
        maxFundCurrL3             AT %B152 : Real;               // Max. fundamental current L3
        maxFundApparentPowerL3    AT %B156 : Real;               // Max. fundamental apparent power L3
        maxFundReactivePowerL3    AT %B160 : Real;               // Max. fundamental reactive power L3
        maxFundActivePowerL3      AT %B164 : Real;               // Max. fundamental active power L3
        maxFundActiveFactorL3     AT %B168 : Real;               // Max. fundamental cos φ active factor L3
        minFundVoltL3             AT %B172 : Real;               // Min. fundamental voltage L3
        minFundCurrL3             AT %B176 : Real;               // Min. fundamental current L3
        minFundApparentPowerL3    AT %B180 : Real;               // Min. fundamental apparent power L3
        minFundReactivePowerL3    AT %B184 : Real;               // Min. fundamental reactive power L3
        minFundActivePowerL3      AT %B188 : Real;               // Min. fundamental active power L3
        minFundActiveFactorL3     AT %B192 : Real;               // Min. fundamental cos φ active factor L3
        tHDaNVoltL3               AT %B196 : Real;               // Total harmonic distortion (THD+N) voltage L3
        tHDaNCurrL3               AT %B200 : Real;               // Total harmonic distortion (THD+N) current L3
        maxTHDaNVoltL3            AT %B204 : Real;               // Max. total harmonic distortion (THD+N) voltage L3
        maxTHDaNCurrL3            AT %B208 : Real;               // Max. total harmonic distortion (THD+N) current L3
        minTHDaNVoltL3            AT %B212 : Real;               // Min. total harmonic distortion (THD+N) voltage L3
        minTHDaNCurrL3            AT %B216 : Real;               // Min. total harmonic distortion (THD+N) current L3
        voltDipValueL3            AT %B220 : Real;               // Voltage dip - value L3
        voltDipDurationL3         AT %B224 : Real;               // Voltage dip - duration L3
        voltSwellValueL3          AT %B228 : Real;               // Voltage swell - value L3
        voltSwellDurationL3       AT %B232 : Real;               // Voltage swell - duration L3
        voltPeakValueL3           AT %B236 : Real;               // Voltage peak value L3
        currPeakValueL3           AT %B240 : Real;               // Current peak value L3
        overCurrValueL3           AT %B244 : Real;               // Overcurrent value L3
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec150V1     : STRUCT
        version              AT %B0 : Byte    := BYTE#1;  // Version
        resb1                AT %B1 : Byte;               // Reserved
        operHoursCntL1L2L3   AT %B2 : Real;               // Operating hours counter L1 L2 L3
        operHoursCntL1       AT %B6 : Real;               // Operating hours counter L1
        operHoursCntL2       AT %B10 : Real;               // Operating hours counter L2
        operHoursCntL3       AT %B14 : Real;               // Operating hours counter L3
        statusLimViolGW1to16 AT %B18 : Word;               // Status limit violation GW 1...16
        statusEnergyCntOv    AT %B22 : Word;               // Status of energy counter overflows
        cntLimViolGw1        AT %B26 : UDInt;              // Counter limit violation GW 1
        cntLimViolGw2        AT %B30 : UDInt;              // Counter limit violation GW 2
        cntLimViolGw3        AT %B34 : UDInt;              // Counter limit violation GW 3
        cntLimViolGw4        AT %B38 : UDInt;              // Counter limit violation GW 4
        cntLimViolGw5        AT %B42 : UDInt;              // Counter limit violation GW 5
        cntLimViolGw6        AT %B46 : UDInt;              // Counter limit violation GW 6
        cntLimViolGw7        AT %B50 : UDInt;              // Counter limit violation GW 7
        cntLimViolGw8        AT %B54 : UDInt;              // Counter limit violation GW 8
        cntLimViolGw9        AT %B58 : UDInt;              // Counter limit violation GW 9
        cntLimViolGw10       AT %B62 : UDInt;              // Counter limit violation GW 10
        cntLimViolGw11       AT %B66 : UDInt;              // Counter limit violation GW 11
        cntLimViolGw12       AT %B70 : UDInt;              // Counter limit violation GW 12
        cntLimViolGw13       AT %B74 : UDInt;              // Counter limit violation GW 13
        cntLimViolGw14       AT %B78 : UDInt;              // Counter limit violation GW 14
        cntLimViolGw15       AT %B82 : UDInt;              // Counter limit violation GW 15
        cntLimViolGw16       AT %B86 : UDInt;              // Counter limit violation GW 16
        qualifierL1L2L3      AT %B90 : Word;               // Qualifier L1 L2 L3
        powerQualityAnalysis AT %B92 : UDInt;              // Power quality analysis - Qualifier
        currentModuleTime    AT %B96 : PNIOTimeStamp;      // Current module time
      END_STRUCT;

   END_TYPE

   TYPE TMTimerDIDQ10DataRec : STRUCT
        majMinVer            AT %B0 : Byte    := BYTE#1;   // Major / minor version
        channelParamLength   AT %B1 : Byte    := BYTE#36;  // Length of the parameter data = 36
        reserved0            AT %B2 : Word;                // Reserved
        pwmPeriod            AT %B4 : Byte;                // Reserved/ PWM period for the digital outputs
        enableDiagnostics    AT %B5 : Byte;                // Enable diagnostics / Reaction to CPU STOP
        reserved1            AT %B6 : Word;                // Reserved
        operatingModeDI0     AT %B8 : Byte;                // Reserved / invert input signal / operating mode DI0
        inputDelayDI0        AT %B9 : Byte;                // Reserved / Input delay / Filter frequency DI0
        operatingModeDI1     AT %B10 : Byte;                // Reserved / invert input signal / operating mode DI1
        inputDelayDI1        AT %B11 : Byte;                // Reserved / Input delay / Filter frequency DI1
        operatingModeDI2     AT %B12 : Byte;                // Reserved / invert input signal / HW enable with DI3 / operating mode DI2
        inputDelayDI2        AT %B13 : Byte;                // Reserved / Input delay / Filter frequency DI2
        operatingModeDI3     AT %B14 : Byte;                // Reserved / invert input signal / operating mode DI1
        inputDelayDI3        AT %B15 : Byte;                // Reserved / Input delay DI3
        operatingModeDQ0     AT %B16 : Byte;                // High-speed output / Substitute value / invert input signal / HW enable / operating mode DQ0
        reserved2            AT %B17 : Byte;                // Reserved
        operatingModeDQ1     AT %B18 : Byte;                // High-speed output / Substitute value / invert input signal / HW enable / operating mode DQ1
        reserved3            AT %B19 : Byte;                // Reserved
        operatingModeDQ2     AT %B20 : Byte;                // High-speed output / Substitute value / invert input signal / HW enable / operating mode DQ2
        reserved4            AT %B21 : Byte;                // Reserved
        operatingModeDQ3     AT %B22 : Byte;                // High-speed output / Substitute value / invert input signal / Reserved / operating mode DQ3
        reserved5            AT %B23 : Byte;                // Reserved
        operatingModeDQ4     AT %B24 : Byte;                // High-speed output / Substitute value / invert input signal / Reserved / operating mode DQ4
        reserved6            AT %B25 : Byte;                // Reserved
        operatingModeDQ5     AT %B26 : Byte;                // High-speed output / Substitute value / invert input signal / Reserved / operating mode DQ5
        reserved7            AT %B27 : Byte;                // Reserved
        reserved8            AT %B28 : DWord;               // Reserved
        reserved9            AT %B32 : DWord;               // Reserved
        reserved10           AT %B36 : DWord;               // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec130     : STRUCT
        majMinVer          AT %B0 : Byte    := BYTE#0;     // Major / minor version
        numUserDataVariant AT %B1 : Byte    := BYTE#1;     // Number of user data variant = 1
        numMeasValues      AT %B2 : Byte;                  // Number of measured values for payload mapping
        resb3              AT %B3 : Byte;                  // Reserved
        measValue          AT %B4 : Array[1..64] of Word;  // ID of measured value for payload mapping
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec148V1          : STRUCT
        version                   AT %B0   : Byte    := BYTE#1;  // Version
        resb1                     AT %B1   : Byte;               // Reserved
        qualifierL2               AT %B2   : Word;               // Qualifier L2
        voltL2N                   AT %B4   : Real;               // Voltage L2-N
        currentL2                 AT %B8   : Real;               // Current L2
        apparentPowerL2           AT %B12  : Real;               // Apparent power L2
        activePowerL2             AT %B16  : Real;               // Active power L2
        reactivePowerQtotL2       AT %B20  : Real;               // Reactive power Qtot L2
        powerFactorL2             AT %B24  : Real;               // Power factor λ L2
        phaseAngleL2              AT %B28  : Real;               // Phase angle L2
        apparentEnergyLongL2      AT %B32  : LReal;              // Apparent energy L2
        totalActiveEnergyLongL2   AT %B40  : LReal;              // Active energy (total) L2
        totalReactiveEnergyLongL2 AT %B48  : LReal;              // Reactive energy (total) L2
        maxVoltL2N                AT %B56  : Real;               // Max. voltage L2-N
        maxCurrentL2              AT %B60  : Real;               // Max. current L2
        maxApparentPowerL2        AT %B64  : Real;               // Max. apparent power L2
        maxActivePowerL2          AT %B68  : Real;               // Max. active power L2
        maxReactivePowerQtotL2    AT %B72  : Real;               // Max. reactive power Qtot L2
        maxPowerFactorL2          AT %B76  : Real;               // Max. power factor λ L2
        minVoltL2N                AT %B80  : Real;               // Min. voltage L2-N
        minCurrentL2              AT %B84  : Real;               // Min. current L2
        minApparentPowerL2        AT %B88  : Real;               // Min. apparent power L2
        minActivePowerL2          AT %B92  : Real;               // Min. active power L2
        minReactivePowerQtotL2    AT %B96  : Real;               // Min. reactive power Qtot L2
        minPowerFactorL2          AT %B100 : Real;               // Min. power factor λ L2
        reactivePowerQnL2         AT %B104 : Real;               // Reactive power Qn L2
        resDW108                  AT %B108 : DWord;              // Reserved
        resDW112                  AT %B112 : Real;               // Reserved
        resDW116                  AT %B116 : Real;               // Reserved
        resDW120                  AT %B120 : Real;               // Reserved
        resDW124                  AT %B124 : Real;               // Reserved
        resDW128                  AT %B128 : Real;               // Reserved
        resDW132                  AT %B132 : Real;               // Reserved
        fundReactivePowerL2       AT %B136 : Real;               // Fundamental reactive power L2
        resDW140                  AT %B140 : DWord;              // Reserved
        fundActiveFactorL2        AT %B144 : Real;               // Fundamental cos φ active factor L2
        resDW148                  AT %B148 : DWord;              // Reserved
        resDW152                  AT %B152 : DWord;              // Reserved
        resDW156                  AT %B156 : DWord;              // Reserved
        resDW160                  AT %B160 : DWord;              // Reserved
        resDW164                  AT %B164 : DWord;              // Reserved
        resDW168                  AT %B168 : DWord;              // Reserved
        resDW172                  AT %B172 : DWord;              // Reserved
        resDW176                  AT %B176 : DWord;              // Reserved
        resDW180                  AT %B180 : DWord;              // Reserved
        resDW184                  AT %B184 : DWord;              // Reserved
        resDW188                  AT %B188 : DWord;              // Reserved
        resDW192                  AT %B192 : DWord;              // Reserved
        resDW196                  AT %B196 : DWord;              // Reserved
        resDW200                  AT %B200 : DWord;              // Reserved
        resDW204                  AT %B204 : DWord;              // Reserved
        resDW208                  AT %B208 : DWord;              // Reserved
        resDW212                  AT %B212 : DWord;              // Reserved
        resDW216                  AT %B216 : DWord;              // Reserved
        resDW220                  AT %B220 : DWord;              // Reserved
        resDW224                  AT %B224 : DWord;              // Reserved
        resDW228                  AT %B228 : DWord;              // Reserved
        resDW232                  AT %B232 : DWord;              // Reserved
        resDW236                  AT %B236 : DWord;              // Reserved
        resDW240                  AT %B240 : DWord;              // Reserved
        resDW244                  AT %B244 : DWord;              // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec130a131 : STRUCT
        majMinVer          AT %B0 : Byte    := BYTE#0;     // Major / minor version
        numPayloadVariant  AT %B1 : Byte;                  // Number of payload variant 1 or 2
        numMeasValues      AT %B2 : Byte    := BYTE#64;    // Number of measured values for payload mapping
        resb3              AT %B3 : Byte;                  // Reserved
        measValue          AT %B4 : Array[1..64] of Word;  // ID of measured value for payload mapping
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec155           : STRUCT
        version                  AT %B0 : Byte    := BYTE#2;          // Version
        resb1                    AT %B1 : Byte;                       // Reserved
        minVoltL1N               AT %B2 : RealValueAndPNIOTimeStamp;  // Min. voltage L1-N
        minVoltL2N               AT %B18 : RealValueAndPNIOTimeStamp;  // Min. voltage L2-N
        minVoltL3N               AT %B34 : RealValueAndPNIOTimeStamp;  // Min. voltage L3-N
        minVoltL1L2              AT %B50 : RealValueAndPNIOTimeStamp;  // Min. voltage L1-L2
        minVoltL2L3              AT %B66 : RealValueAndPNIOTimeStamp;  // Min. voltage L2-L3
        minVoltL3L1              AT %B82 : RealValueAndPNIOTimeStamp;  // Min. voltage L3-L1
        minCurrentL1             AT %B98 : RealValueAndPNIOTimeStamp;  // Min. current L1
        minCurrentL2             AT %B114 : RealValueAndPNIOTimeStamp;  // Min. current L2
        minCurrentL3             AT %B130 : RealValueAndPNIOTimeStamp;  // Min. current L3
        minApparentPowerL1       AT %B146 : RealValueAndPNIOTimeStamp;  // Min. apparent power L1
        minApparentPowerL2       AT %B162 : RealValueAndPNIOTimeStamp;  // Min. apparent power L2
        minApparentPowerL3       AT %B178 : RealValueAndPNIOTimeStamp;  // Min. apparent power L3
        minActivePowerL1         AT %B194 : RealValueAndPNIOTimeStamp;  // Min. active power L1
        minActivePowerL2         AT %B210 : RealValueAndPNIOTimeStamp;  // Min. active power L2
        minActivePowerL3         AT %B226 : RealValueAndPNIOTimeStamp;  // Min. active power L3
        minReactivePowerQtotL1   AT %B242 : RealValueAndPNIOTimeStamp;  // Min. reactive power Qtot L1
        minReactivePowerQtotL2   AT %B258 : RealValueAndPNIOTimeStamp;  // Min. reactive power Qtot L2
        minReactivePowerQtotL3   AT %B274 : RealValueAndPNIOTimeStamp;  // Min. reactive power Qtot L3
        minPowerFactorL1         AT %B290 : RealValueAndPNIOTimeStamp;  // Min. power factor λ L1
        minPowerFactorL2         AT %B306 : RealValueAndPNIOTimeStamp;  // Min. power factor λ L2
        minPowerFactorL3         AT %B322 : RealValueAndPNIOTimeStamp;  // Min. power factor λ L3
        minFrequency             AT %B338 : RealValueAndPNIOTimeStamp;  // Min. frequency
        minlApparentPowerL1L2L3  AT %B354 : RealValueAndPNIOTimeStamp;  // Min. apparent power L1 L2 L3
        minActivePowerL1L2L3     AT %B370 : RealValueAndPNIOTimeStamp;  // Min. active power L1 L2 L3
        minReactivePowerQnL1L2L3 AT %B386 : RealValueAndPNIOTimeStamp;  // Min. reactive power Qn L1 L2 L3
        minPowerFactorL1L2L3     AT %B402 : RealValueAndPNIOTimeStamp;  // Min. power factor λ L1 L2 L3
        minReactivePowerQnL1     AT %B418 : RealValueAndPNIOTimeStamp;  // Min. reactive power Qn L1
        minReactivePowerQnL2     AT %B434 : RealValueAndPNIOTimeStamp;  // Min. reactive power Qn L2
        minReactivePowerQnL3     AT %B450 : RealValueAndPNIOTimeStamp;  // Min. reactive power Qn L3
        minMeanVoltLN            AT %B466 : RealValueAndPNIOTimeStamp;  // Min. mean voltage L-N
        minMeanVoltLL            AT %B482 : RealValueAndPNIOTimeStamp;  // Min. mean voltage L-L
        minMeanCurrL1L2L3        AT %B498 : RealValueAndPNIOTimeStamp;  // Min. mean current L1 L2 L3
        minFundVoltL1            AT %B514 : RealValueAndPNIOTimeStamp;  // Min. fundamental voltage L1
        minFundVoltL2            AT %B530 : RealValueAndPNIOTimeStamp;  // Min. fundamental voltage L2
        minFundVoltL3            AT %B546 : RealValueAndPNIOTimeStamp;  // Min. fundamental voltage L3
        minFundCurrL1            AT %B562 : RealValueAndPNIOTimeStamp;  // Min. fundamental current L1
        minFundCurrL2            AT %B578 : RealValueAndPNIOTimeStamp;  // Min. fundamental current L2
        minFundCurrL3            AT %B594 : RealValueAndPNIOTimeStamp;  // Min. fundamental current L3
        minFundApparentPowerL1   AT %B610 : RealValueAndPNIOTimeStamp;  // Min. fundamental apparent power L1
        minFundApparentPowerL2   AT %B626 : RealValueAndPNIOTimeStamp;  // Min. fundamental apparent power L2
        minFundApparentPowerL3   AT %B642 : RealValueAndPNIOTimeStamp;  // Min. fundamental apparent power L3
        minFundReactivePowerL1   AT %B658 : RealValueAndPNIOTimeStamp;  // Min. fundamental reactive power L1
        minFundReactivePowerL2   AT %B674 : RealValueAndPNIOTimeStamp;  // Min. fundamental reactive power L2
        minFundReactivePowerL3   AT %B690 : RealValueAndPNIOTimeStamp;  // Min. fundamental reactive power L3
        minFundActivePowerL1     AT %B706 : RealValueAndPNIOTimeStamp;  // Min. fundamental active power L1
        minFundActivePowerL2     AT %B722 : RealValueAndPNIOTimeStamp;  // Min. fundamental active power L2
        minFundActivePowerL3     AT %B738 : RealValueAndPNIOTimeStamp;  // Min. fundamental active power L3
        minFundActiveFactorL1    AT %B754 : RealValueAndPNIOTimeStamp;  // Min. fundamental cos φ active factor L1
        minFundActiveFactorL2    AT %B770 : RealValueAndPNIOTimeStamp;  // Min. fundamental cos φ active factor L2
        minFundActiveFactorL3    AT %B786 : RealValueAndPNIOTimeStamp;  // Min. fundamental cos φ active factor L3
        minTHDaNVoltL1           AT %B802 : RealValueAndPNIOTimeStamp;  // Min. total harmonic distortion (THD+N) voltage L1
        minTHDaNVoltL2           AT %B818 : RealValueAndPNIOTimeStamp;  // Min. total harmonic distortion (THD+N) voltage L2
        minTHDaNVoltL3           AT %B834 : RealValueAndPNIOTimeStamp;  // Min. total harmonic distortion (THD+N) voltage L3
        minTHDaNCurrL1           AT %B850 : RealValueAndPNIOTimeStamp;  // Min. total harmonic distortion (THD+N) current L1
        minTHDaNCurrL2           AT %B866 : RealValueAndPNIOTimeStamp;  // Min. total harmonic distortion (THD+N) current L2
        minTHDaNCurrL3           AT %B882 : RealValueAndPNIOTimeStamp;  // Min. total harmonic distortion (THD+N) current L3
        minNeutralCurr           AT %B898 : RealValueAndPNIOTimeStamp;  // Min. neutral current
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec155           : STRUCT
        version                  AT %B0   : Byte    := BYTE#2;          // Version
        resb1                    AT %B1   : Byte;                       // Reserved
        minVoltL1N               AT %B2   : RealValueAndPNIOTimeStamp;  // Min. voltage L1-N
        minVoltL2N               AT %B18  : RealValueAndPNIOTimeStamp;  // Min. voltage L2-N
        minVoltL3N               AT %B34  : RealValueAndPNIOTimeStamp;  // Min. voltage L3-N
        minVoltL1L2              AT %B50  : RealValueAndPNIOTimeStamp;  // Min. voltage L1-L2
        minVoltL2L3              AT %B66  : RealValueAndPNIOTimeStamp;  // Min. voltage L2-L3
        minVoltL3L1              AT %B82  : RealValueAndPNIOTimeStamp;  // Min. voltage L3-L1
        minCurrentL1             AT %B98  : RealValueAndPNIOTimeStamp;  // Min. current L1
        minCurrentL2             AT %B114 : RealValueAndPNIOTimeStamp;  // Min. current L2
        minCurrentL3             AT %B130 : RealValueAndPNIOTimeStamp;  // Min. current L3
        minApparentPowerL1       AT %B146 : RealValueAndPNIOTimeStamp;  // Min. apparent power L1
        minApparentPowerL2       AT %B162 : RealValueAndPNIOTimeStamp;  // Min. apparent power L2
        minApparentPowerL3       AT %B178 : RealValueAndPNIOTimeStamp;  // Min. apparent power L3
        minActivePowerL1         AT %B194 : RealValueAndPNIOTimeStamp;  // Min. active power L1
        minActivePowerL2         AT %B210 : RealValueAndPNIOTimeStamp;  // Min. active power L2
        minActivePowerL3         AT %B226 : RealValueAndPNIOTimeStamp;  // Min. active power L3
        minReactivePowerQtotL1   AT %B242 : RealValueAndPNIOTimeStamp;  // Min. reactive power Qtot L1
        minReactivePowerQtotL2   AT %B258 : RealValueAndPNIOTimeStamp;  // Min. reactive power Qtot L2
        minReactivePowerQtotL3   AT %B274 : RealValueAndPNIOTimeStamp;  // Min. reactive power Qtot L3
        minPowerFactorL1         AT %B290 : RealValueAndPNIOTimeStamp;  // Min. power factor λ L1
        minPowerFactorL2         AT %B306 : RealValueAndPNIOTimeStamp;  // Min. power factor λ L2
        minPowerFactorL3         AT %B322 : RealValueAndPNIOTimeStamp;  // Min. power factor λ L3
        minFrequency             AT %B338 : RealValueAndPNIOTimeStamp;  // Min. frequency
        minlApparentPowerL1L2L3  AT %B354 : RealValueAndPNIOTimeStamp;  // Min. apparent power L1 L2 L3
        minActivePowerL1L2L3     AT %B370 : RealValueAndPNIOTimeStamp;  // Min. active power L1 L2 L3
        minReactivePowerQnL1L2L3 AT %B386 : RealValueAndPNIOTimeStamp;  // Min. reactive power Qn L1 L2 L3
        minPowerFactorL1L2L3     AT %B402 : RealValueAndPNIOTimeStamp;  // Min. power factor λ L1 L2 L3
        minReactivePowerQnL1     AT %B418 : RealValueAndPNIOTimeStamp;  // Min. reactive power Qn L1
        minReactivePowerQnL2     AT %B434 : RealValueAndPNIOTimeStamp;  // Min. reactive power Qn L2
        minReactivePowerQnL3     AT %B450 : RealValueAndPNIOTimeStamp;  // Min. reactive power Qn L3
        resByteArray466          AT %B466 : Array[0..15] of Byte;       // Reserved
        resByteArray482          AT %B482 : Array[0..15] of Byte;       // Reserved
        resByteArray498          AT %B498 : Array[0..15] of Byte;       // Reserved
        resByteArray514          AT %B514 : Array[0..15] of Byte;       // Reserved
        resByteArray530          AT %B530 : Array[0..15] of Byte;       // Reserved
        resByteArray546          AT %B546 : Array[0..15] of Byte;       // Reserved
        resByteArray562          AT %B562 : Array[0..15] of Byte;       // Reserved
        resByteArray578          AT %B578 : Array[0..15] of Byte;       // Reserved
        resByteArray594          AT %B594 : Array[0..15] of Byte;       // Reserved
        resByteArray610          AT %B610 : Array[0..15] of Byte;       // Reserved
        resByteArray626          AT %B626 : Array[0..15] of Byte;       // Reserved
        resByteArray642          AT %B642 : Array[0..15] of Byte;       // Reserved
        resByteArray658          AT %B658 : Array[0..15] of Byte;       // Reserved
        resByteArray674          AT %B674 : Array[0..15] of Byte;       // Reserved
        resByteArray690          AT %B690 : Array[0..15] of Byte;       // Reserved
        resByteArray706          AT %B706 : Array[0..15] of Byte;       // Reserved
        resByteArray722          AT %B722 : Array[0..15] of Byte;       // Reserved
        resByteArray738          AT %B738 : Array[0..15] of Byte;       // Reserved
        resByteArray754          AT %B754 : Array[0..15] of Byte;       // Reserved
        resByteArray770          AT %B770 : Array[0..15] of Byte;       // Reserved
        resByteArray786          AT %B786 : Array[0..15] of Byte;       // Reserved
        resByteArray802          AT %B802 : Array[0..15] of Byte;       // Reserved
        resByteArray818          AT %B818 : Array[0..15] of Byte;       // Reserved
        resByteArray834          AT %B834 : Array[0..15] of Byte;       // Reserved
        resByteArray850          AT %B850 : Array[0..15] of Byte;       // Reserved
        resByteArray866          AT %B866 : Array[0..15] of Byte;       // Reserved
        resByteArray882          AT %B882 : Array[0..15] of Byte;       // Reserved
        minNeutralCurr           AT %B898 : RealValueAndPNIOTimeStamp;  // Min. neutral current
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec134    : STRUCT
        lowHighVer        AT %B0 : Byte    := BYTE#0;                   // Version low / high 
        numDataRecord     AT %B1 : Byte    := BYTE#173;                 // Data record number for recorded measured values
        numMeasValues     AT %B2 : Byte;                                // Number of activated measured values recordings
        resb3             AT %B3 : Byte;                                // Reserved
        measValueRecBlock AT %B4 : Array[1..2] of EMHFMeasValRecBlock;  // ID of measured value for payload mapping
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec154             : STRUCT
        version                    AT %B0   : Byte    := BYTE#2;          // Version
        resb1                      AT %B1   : Byte;                       // Reserved
        maxVoltL1N                 AT %B2   : RealValueAndPNIOTimeStamp;  // Max. voltage L1-N
        maxVoltL2N                 AT %B18  : RealValueAndPNIOTimeStamp;  // Max. voltage L2-N
        maxVoltL3N                 AT %B34  : RealValueAndPNIOTimeStamp;  // Max. voltage L3-N
        maxVoltL1L2                AT %B50  : RealValueAndPNIOTimeStamp;  // Max. voltage L1-L2
        maxVoltL2L3                AT %B66  : RealValueAndPNIOTimeStamp;  // Max. voltage L2-L3
        maxVoltL3L1                AT %B82  : RealValueAndPNIOTimeStamp;  // Max. voltage L3-L1
        maxCurrentL1               AT %B98  : RealValueAndPNIOTimeStamp;  // Max. current L1
        maxCurrentL2               AT %B114 : RealValueAndPNIOTimeStamp;  // Max. current L2
        maxCurrentL3               AT %B130 : RealValueAndPNIOTimeStamp;  // Max. current L3
        maxApparentPowerL1         AT %B146 : RealValueAndPNIOTimeStamp;  // Max. apparent power L1
        maxApparentPowerL2         AT %B162 : RealValueAndPNIOTimeStamp;  // Max. apparent power L2
        maxApparentPowerL3         AT %B178 : RealValueAndPNIOTimeStamp;  // Max. apparent power L3
        maxActivePowerL1           AT %B194 : RealValueAndPNIOTimeStamp;  // Max. active power L1
        maxActivePowerL2           AT %B210 : RealValueAndPNIOTimeStamp;  // Max. active power L2
        maxActivePowerL3           AT %B226 : RealValueAndPNIOTimeStamp;  // Max. active power L3
        maxReactivePowerQtotL1     AT %B242 : RealValueAndPNIOTimeStamp;  // Max. reactive power Qtot L1
        maxReactivePowerQtotL2     AT %B258 : RealValueAndPNIOTimeStamp;  // Max. reactive power Qtot L2
        maxReactivePowerQtotL3     AT %B274 : RealValueAndPNIOTimeStamp;  // Max. reactive power Qtot L3
        maxPowerFactorL1           AT %B290 : RealValueAndPNIOTimeStamp;  // Max. power factor λ L1
        maxPowerFactorL2           AT %B306 : RealValueAndPNIOTimeStamp;  // Max. power factor λ L2
        maxPowerFactorL3           AT %B322 : RealValueAndPNIOTimeStamp;  // Max. power factor λ L3
        maxFrequency               AT %B338 : RealValueAndPNIOTimeStamp;  // Max. frequency
        maxApparentPowerL1L2L3     AT %B354 : RealValueAndPNIOTimeStamp;  // Max. apparent power L1 L2 L3
        maxActivePowerL1L2L3       AT %B370 : RealValueAndPNIOTimeStamp;  // Max. active power L1 L2 L3
        maxReactivePowerQtotL1L2L3 AT %B386 : RealValueAndPNIOTimeStamp;  // Max. reactive power Qtot L1 L2 L3
        maxPowerFactorL1L2L3       AT %B402 : RealValueAndPNIOTimeStamp;  // Max. power factor λ L1L2L3
        maxReactivePowerQnL1       AT %B418 : RealValueAndPNIOTimeStamp;  // Max. reactive power Qn L1
        maxReactivePowerQnL2       AT %B434 : RealValueAndPNIOTimeStamp;  // Max. reactive power Qn L2
        maxReactivePowerQnL3       AT %B450 : RealValueAndPNIOTimeStamp;  // Max. reactive power Qn L3
        resByteArray466            AT %B466 : Array[0..15] of Byte;       // Reserved
        resByteArray482            AT %B482 : Array[0..15] of Byte;       // Reserved
        resByteArray498            AT %B498 : Array[0..15] of Byte;       // Reserved
        resByteArray514            AT %B514 : Array[0..15] of Byte;       // Reserved
        resByteArray530            AT %B530 : Array[0..15] of Byte;       // Reserved
        resByteArray546            AT %B546 : Array[0..15] of Byte;       // Reserved
        resByteArray562            AT %B562 : Array[0..15] of Byte;       // Reserved
        resByteArray578            AT %B578 : Array[0..15] of Byte;       // Reserved
        resByteArray594            AT %B594 : Array[0..15] of Byte;       // Reserved
        resByteArray610            AT %B610 : Array[0..15] of Byte;       // Reserved
        resByteArray626            AT %B626 : Array[0..15] of Byte;       // Reserved
        resByteArray642            AT %B642 : Array[0..15] of Byte;       // Reserved
        resByteArray658            AT %B658 : Array[0..15] of Byte;       // Reserved
        resByteArray674            AT %B674 : Array[0..15] of Byte;       // Reserved
        resByteArray690            AT %B690 : Array[0..15] of Byte;       // Reserved
        resByteArray706            AT %B706 : Array[0..15] of Byte;       // Reserved
        resByteArray722            AT %B722 : Array[0..15] of Byte;       // Reserved
        resByteArray738            AT %B738 : Array[0..15] of Byte;       // Reserved
        resByteArray754            AT %B754 : Array[0..15] of Byte;       // Reserved
        resByteArray770            AT %B770 : Array[0..15] of Byte;       // Reserved
        resByteArray786            AT %B786 : Array[0..15] of Byte;       // Reserved
        resByteArray802            AT %B802 : Array[0..15] of Byte;       // Reserved
        resByteArray818            AT %B818 : Array[0..15] of Byte;       // Reserved
        resByteArray834            AT %B834 : Array[0..15] of Byte;       // Reserved
        resByteArray850            AT %B850 : Array[0..15] of Byte;       // Reserved
        resByteArray866            AT %B866 : Array[0..15] of Byte;       // Reserved
        resByteArray882            AT %B882 : Array[0..15] of Byte;       // Reserved
        maxNeutralCurr             AT %B898 : RealValueAndPNIOTimeStamp;  // Max. neutral current
      END_STRUCT;

   END_TYPE

   TYPE TMTimerDIDQ10Control : STRUCT
        setDQ0               AT %X0.0 : Bool;   // Set DQ0 in the DQ operating mode Timer DQ
        setDQ1               AT %X0.1 : Bool;   // Set DQ1 in the DQ operating mode Timer DQ
        setDQ2               AT %X0.2 : Bool;   // Set DQ2 in the DQ operating mode Timer DQ
        setDQ3               AT %X0.3 : Bool;   // Set DQ3 in the DQ operating mode Timer DQ
        setDQ4               AT %X0.4 : Bool;   // Set DQ4 in the DQ operating mode Timer DQ
        setDQ5               AT %X0.5 : Bool;   // Set DQ5 in the DQ operating mode Timer DQ
        reserved0            AT %X0.6 : Bool;   // Reserved
        reserved1            AT %X0.7 : Bool;   // Reserved
        setEnDI0             AT %X1.0 : Bool;   // Override hardware enable for DI0
        setEnDI1             AT %X1.1 : Bool;   // Override hardware enable for DI1
        setEnDI2             AT %X1.2 : Bool;   // Override hardware enable for DI2
        setEnDI3             AT %X1.3 : Bool;   // Override hardware enable for DI3
        setEnDQ0             AT %X1.4 : Bool;   // Override hardware enable for DQ0
        setEnDQ1             AT %X1.5 : Bool;   // Override hardware enable for DQ1
        setEnDQ2             AT %X1.6 : Bool;   // Override hardware enable for DQ2
        setEnDQ3             AT %X1.7 : Bool;   // Override hardware enable for DQ3
        setEnDQ4             AT %X2.0 : Bool;   // Override hardware enable for DQ4
        setEnDQ5             AT %X2.1 : Bool;   // Override hardware enable for DQ5
        reserved2            AT %X2.2 : Bool;   // Reserved
        reserved3            AT %X2.3 : Bool;   // Reserved
        reserved4            AT %X2.4 : Bool;   // Reserved
        reserved5            AT %X2.5 : Bool;   // Reserved
        reserved6            AT %X2.6 : Bool;   // Reserved
        reserved7            AT %X2.7 : Bool;   // Reserved
        reserved8            AT %B3 : Byte;   // Reserved
        tecOutDQ0            AT %B4 : DWord;  // Value depends on DQ operating mode
        tecOutDQ1            AT %B8 : DWord;  // Value depends on DQ operating mode
        tecOutDQ2            AT %B12 : DWord;  // Value depends on DQ operating mode
        tecOutDQ3            AT %B16 : DWord;  // Value depends on DQ operating mode
        tecOutDQ4            AT %B20 : DWord;  // Value depends on DQ operating mode
        tecOutDQ5            AT %B24 : DWord;  // Value depends on DQ operating mode
        selDI0               AT %B28 : Byte;   // This Value is supplied by the TIO instruction TIO_DI
        selDI2               AT %B29 : Byte;   // This Value is supplied by the TIO instruction TIO_DI
        stw                  AT %B30 : Word;   // This Value is controlled by the TIO instruction TIO_SYNC
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec151Real : STRUCT
        version            AT %B0 : Byte;                   // Version
        numMeasValues      AT %B1 : Byte    := BYTE#150;    // Number of measured values for data record mapping
        measValue          AT %B2 : Array[1..150] of Real;  // ID of measured value for user data mapping
      END_STRUCT;

   END_TYPE

   TYPE DI8HSOVS : STRUCT
        channel  AT %B0 : Array[0..7] of OVSCh;  // Output values channel 0..7 with oversampling
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec150V1     : STRUCT
        version              AT %B0 : Byte    := BYTE#1;  // Version
        resb1                AT %B1 : Byte;               // Reserved
        operHoursCntL1L2L3   AT %B2 : Real;               // Operating hours counter L1 L2 L3
        operHoursCntL1       AT %B6 : Real;               // Operating hours counter L1
        operHoursCntL2       AT %B10 : Real;               // Operating hours counter L2
        operHoursCntL3       AT %B14 : Real;               // Operating hours counter L3
        statusLimViolGW1to16 AT %B18 : Word;               // Status limit violation GW 1...16
        statusEnergyCntOv    AT %B20 : Word;               // Status of energy counter overflows
        cntLimViolGw1        AT %B22 : UDInt;              // Counter limit violation GW 1
        cntLimViolGw2        AT %B26 : UDInt;              // Counter limit violation GW 2
        cntLimViolGw3        AT %B30 : UDInt;              // Counter limit violation GW 3
        cntLimViolGw4        AT %B34 : UDInt;              // Counter limit violation GW 4
        cntLimViolGw5        AT %B38 : UDInt;              // Counter limit violation GW 5
        cntLimViolGw6        AT %B42 : UDInt;              // Counter limit violation GW 6
        cntLimViolGw7        AT %B46 : UDInt;              // Counter limit violation GW 7
        cntLimViolGw8        AT %B50 : UDInt;              // Counter limit violation GW 8
        cntLimViolGw9        AT %B54 : UDInt;              // Counter limit violation GW 9
        cntLimViolGw10       AT %B58 : UDInt;              // Counter limit violation GW 10
        cntLimViolGw11       AT %B62 : UDInt;              // Counter limit violation GW 11
        cntLimViolGw12       AT %B66 : UDInt;              // Counter limit violation GW 12
        cntLimViolGw13       AT %B70 : UDInt;              // Counter limit violation GW 13
        cntLimViolGw14       AT %B74 : UDInt;              // Counter limit violation GW 14
        cntLimViolGw15       AT %B78 : UDInt;              // Counter limit violation GW 15
        cntLimViolGw16       AT %B82 : UDInt;              // Counter limit violation GW 16
        qualifierL1L2L3      AT %B86 : Word;               // Qualifier L1 L2 L3
        resUDINT88           AT %B88 : UDInt;              // Reserved
        currentModuleTime    AT %B92 : PNIOTimeStamp;      // Current module time
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec135 : STRUCT
        majMinVer      AT %B0 : Byte    := BYTE#0;      // Major / minor version
        dataRecordNum  AT %B1 : Byte    := BYTE#151;    // Data record number for data record mapping = 151
        numMeasValues  AT %B2 : Byte    := BYTE#150;    // Number of measured values for data record mapping
        resb3          AT %B3 : Byte;                   // Reserved
        measValueID    AT %B4 : Array[1..150] of Word;  // ID of measured value for data record mapping
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec151Real : STRUCT
        version            AT %B0 : Byte;                   // Version
        numMeasValues      AT %B1 : Byte    := BYTE#150;    // Number of measured values
        measValue          AT %B2 : Array[1..150] of Real;  // ID of measured value
      END_STRUCT;

   END_TYPE

   TYPE MotorStarterOut  : STRUCT
        motorCw          AT %X0.0 : Bool;   // Motor CW
        motorCcw         AT %X0.1 : Bool;   // Motor CCW (Reversing starters only)
        res02            AT %X0.2 : Bool;   // Reserved
        tripReset        AT %X0.3 : Bool;   // Trip RESET
        emergencyStart   AT %X0.4 : Bool;   // Emergency start
        res05            AT %X0.5 : Bool;   // Reserved
        res06            AT %X0.6 : Bool;   // Reserved
        coldStart        AT %X0.7 : Bool;   // Cold start
        res10            AT %X1.0 : Bool;   // Reserved
        res11            AT %X1.1 : Bool;   // Reserved
        res12            AT %X1.2 : Bool;   // Reserved
        res13            AT %X1.3 : Bool;   // Reserved
        res14            AT %X1.4 : Bool;   // Reserved
        res15            AT %X1.5 : Bool;   // Reserved
        res16            AT %X1.6 : Bool;   // Reserved
        disableQuickStop AT %X1.7 : Bool;   // Disable quick stop
      END_STRUCT;

   END_TYPE

   TYPE TMPulseControlFrequ : STRUCT
        channel             AT %B0 : Array[0..1] of TMPulseControlFrequCh;
      END_STRUCT;

   END_TYPE

   TYPE EEatIndustryProfileE2 : STRUCT
        totalActivePower      AT %B0 : Real;   // Total active power L1 L2 L3
        totalActiveEnergyIn   AT %B4 : Real;   // Total active energy inflow L1 L2 L3
        totalActiveEnergyOut  AT %B8 : Real;   // Total active energy outflow L1 L2 L3
      END_STRUCT;

   END_TYPE

   TYPE EEatIndustryProfileE3      : STRUCT
        activePowerL1              : Real;   // Active power L1
        activePowerL2              : Real;   // Active power L2
        activePowerL3              : Real;   // Active power L3
        reactivePowerQtotL1        : Real;   // Reactive power Qtot L1
        reactivePowerQtotL2        : Real;   // Reactive power Qtot L2
        reactivePowerQtotL3        : Real;   // Reactive power Qtot L2
        totalActiveEnergyInLong    : LReal;  // Total active energy inflow L1 L2 L3
        totalActiveEnergyOutLong   : LReal;  // Total active energy outflow L1 L2 L3
        totalReactiveEnergyInLong  : LReal;  // Total reactive energy inflow L1 L2 L3
        totalReactiveEnergyOutLong : LReal;  // Total reactive energy outflow L1 L2 L3
        voltL1N                    : Real;   // Voltage UL1-N
        voltL2N                    : Real;   // Voltage UL2-N
        voltL3N                    : Real;   // Voltage UL3-N
        voltL1L2                   : Real;   // Voltage UL1-L2
        voltL2L3                   : Real;   // Voltage UL2-L3
        voltL3L1                   : Real;   // Voltage UL3-L1
        currentL1                  : Real;   // Current L1
        currentL2                  : Real;   // Current L2
        currentL3                  : Real;   // Current L3
        powerFactorL1              : Real;   // Power factor L1
        powerFactorL2              : Real;   // Power factor L2
        powerFactorL3              : Real;   // Power factor L3
      END_STRUCT;

   END_TYPE

   TYPE EM480VSTDataRec145    : STRUCT
        version               AT %B0  : Byte;   // Version
        resb1                 AT %B1  : Byte;   // Reserved
        minVoltL1N            AT %B2  : Real;   // Min. voltage UL1-N
        minVoltL2N            AT %B6  : Real;   // Min. voltage UL2-N
        minVoltL3N            AT %B10  : Real;   // Min. voltage UL3-N
        minVoltL1L2           AT %B14  : Real;   // Min. voltage UL1-L2
        minVoltL2L3           AT %B18  : Real;   // Min. voltage UL2-L3
        minVoltL3L1           AT %B22  : Real;   // Min. voltage UL3-L1
        minCurrentL1          AT %B26  : Real;   // Min. current L1
        minCurrentL2          AT %B30  : Real;   // Min. current L2
        minCurrentL3          AT %B34  : Real;   // Min. current L3
        minApparentPowerL1    AT %B38  : Real;   // Min. apparent power L1
        minApparentPowerL2    AT %B42  : Real;   // Min. apparent power L2
        minApparentPowerL3    AT %B46  : Real;   // Min. apparent power L3
        minActivePowerL1      AT %B50  : Real;   // Min. active power L1
        minActivePowerL2      AT %B54  : Real;   // Min. active power L2
        minActivePowerL3      AT %B58  : Real;   // Min. active power L3
        minReactivePowerL1    AT %B62  : Real;   // Min. reactive power L1
        minReactivePowerL2    AT %B66  : Real;   // Min. reactive power L2
        minReactivePowerL3    AT %B70  : Real;   // Min. reactive power L3
        minPowerFactorL1      AT %B74  : Real;   // Min. power factor L1
        minPowerFactorL2      AT %B78  : Real;   // Min. power factor L2
        minPowerFactorL3      AT %B82  : Real;   // Min. power factor L3
        minFrequency          AT %B86  : Real;   // Min. frequency
        minTotalApparentPower AT %B90  : Real;   // Min. total apparent power
        minTotalActivePower   AT %B94  : Real;   // Min. total active power
        minTotalReactivePower AT %B98  : Real;   // Min. total reactive power
        minTotalPowerFactor   AT %B102  : Real;   // Min. total power factor
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec144V1      : STRUCT
        version                   AT %B0  : Byte;   // Version
        resb1                     AT %B1  : Byte;   // Reserved
        maxVoltL1N                AT %B2  : Real;   // Max. voltage UL1-N
        maxVoltL2N                AT %B6  : Real;   // Max. voltage UL2-N
        maxVoltL3N                AT %B10  : Real;   // Max. voltage UL3-N
        maxVoltL1L2               AT %B14  : Real;   // Max. voltage UL1-L2
        maxVoltL2L3               AT %B18  : Real;   // Max. voltage UL2-L3
        maxVoltL3L1               AT %B22  : Real;   // Max. voltage UL3-L1
        maxCurrentL1              AT %B26  : Real;   // Max. current L1
        maxCurrentL2              AT %B30  : Real;   // Max. current L2
        maxCurrentL3              AT %B34  : Real;   // Max. current L3
        maxApparentPowerL1        AT %B38  : Real;   // Max. apparent power L1
        maxApparentPowerL2        AT %B42  : Real;   // Max. apparent power L2
        maxApparentPowerL3        AT %B46  : Real;   // Max. apparent power L3
        maxActivePowerL1          AT %B50  : Real;   // Max. active power L1
        maxActivePowerL2          AT %B54  : Real;   // Max. active power L2
        maxActivePowerL3          AT %B58  : Real;   // Max. active power L3
        maxReactivePowerQtotL1    AT %B62  : Real;   // Max. reactive power Qtot L1
        maxReactivePowerQtotL2    AT %B66  : Real;   // Max. reactive power Qtot L2
        maxReactivePowerQtotL3    AT %B70  : Real;   // Max. reactive power Qtot L3
        maxPowerFactorL1          AT %B74  : Real;   // Max. power factor L1
        maxPowerFactorL2          AT %B78  : Real;   // Max. power factor L2
        maxPowerFactorL3          AT %B82  : Real;   // Max. power factor L3
        maxFrequency              AT %B86  : Real;   // Max. frequency
        maxTotalApparentPower     AT %B90  : Real;   // Max. apparent power L1 L2 L3
        maxTotalActivePower       AT %B94  : Real;   // Max. active power L1 L2 L3
        maxTotalReactivePowerQtot AT %B98  : Real;   // Max. reactive power Qtot L1 L2 L3
        maxTotalPowerFactor       AT %B102  : Real;   // Max. power factor λ L1L2L3
        maxReactivePowerQnL1      AT %B106  : Real;   // Max. reactive power Qn L1
        maxReactivePowerQnL2      AT %B110  : Real;   // Max. reactive power Qn L2
        maxReactivePowerQnL3      AT %B114  : Real;   // Max. reactive power Qn L3
        maxMeanVoltLN             AT %B118  : Real;   // Max. mean voltage L-N
        maxMeanVoltLL             AT %B122  : Real;   // Max. mean voltage L-L
        maxSumMeanCurr            AT %B126  : Real;   // Max. sum mean value current
        maxFundVoltL1             AT %B130  : Real;   // Max. fundamental voltage L1
        maxFundVoltL2             AT %B134  : Real;   // Max. fundamental voltage L2
        maxFundVoltL3             AT %B138  : Real;   // Max. fundamental voltage L3
        maxFundCurrL1             AT %B142  : Real;   // Max. fundamental current L1
        maxFundCurrL2             AT %B146  : Real;   // Max. fundamental current L2
        maxFundCurrL3             AT %B150  : Real;   // Max. fundamental current L3
        maxFundApparentPowerL1    AT %B154  : Real;   // Max. fundamental apparent power L1
        maxFundApparentPowerL2    AT %B158  : Real;   // Max. fundamental apparent power L2
        maxFundApparentPowerL3    AT %B162  : Real;   // Max. fundamental apparent power L3
        maxFundReactivePowerL1    AT %B166  : Real;   // Max. fundamental reactive power L1
        maxFundReactivePowerL2    AT %B170  : Real;   // Max. fundamental reactive power L2
        maxFundReactivePowerL3    AT %B174  : Real;   // Max. fundamental reactive power L3
        maxFundActivePowerL1      AT %B178  : Real;   // Max. fundamental active power L1
        maxFundActivePowerL2      AT %B182  : Real;   // Max. fundamental active power L2
        maxFundActivePowerL3      AT %B186  : Real;   // Max. fundamental active power L3
        maxFundActiveFactorL1     AT %B190  : Real;   // Max. fundamental cos φ active factor L1
        maxFundActiveFactorL2     AT %B194  : Real;   // Max. fundamental cos φ active factor L2
        maxFundActiveFactorL3     AT %B198  : Real;   // Max. fundamental cos φ active factor L3
        maxTHDaNVoltL1            AT %B202  : Real;   // Max. THD+N voltage L1
        maxTHDaNVoltL2            AT %B206  : Real;   // Max. THD+N voltage L2
        maxTHDaNVoltL3            AT %B210  : Real;   // Max. THD+N voltage L3
        maxTHDaNCurrL1            AT %B214  : Real;   // Max. THD+N current L1
        maxTHDaNCurrL2            AT %B218  : Real;   // Max. THD+N current L2
        maxTHDaNCurrL3            AT %B222  : Real;   // Max. THD+N current L3
      END_STRUCT;

   END_TYPE

   TYPE EM480VSTDataRec144    : STRUCT
        version               AT %B0  : Byte;   // Version
        resb1                 AT %B1  : Byte;   // Reserved
        maxVoltL1N            AT %B2  : Real;   // Max. voltage UL1-N
        maxVoltL2N            AT %B6  : Real;   // Max. voltage UL2-N
        maxVoltL3N            AT %B10  : Real;   // Max. voltage UL3-N
        maxVoltL1L2           AT %B14  : Real;   // Max. voltage UL1-L2
        maxVoltL2L3           AT %B18  : Real;   // Max. voltage UL2-L3
        maxVoltL3L1           AT %B22  : Real;   // Max. voltage UL3-L1
        maxCurrentL1          AT %B26  : Real;   // Max. current L1
        maxCurrentL2          AT %B30  : Real;   // Max. current L2
        maxCurrentL3          AT %B34  : Real;   // Max. current L3
        maxApparentPowerL1    AT %B38  : Real;   // Max. apparent power L1
        maxApparentPowerL2    AT %B42  : Real;   // Max. apparent power L2
        maxApparentPowerL3    AT %B46  : Real;   // Max. apparent power L3
        maxActivePowerL1      AT %B50  : Real;   // Max. active power L1
        maxActivePowerL2      AT %B54  : Real;   // Max. active power L2
        maxActivePowerL3      AT %B58  : Real;   // Max. active power L3
        maxReactivePowerL1    AT %B62  : Real;   // Max. reactive power L1
        maxReactivePowerL2    AT %B66  : Real;   // Max. reactive power L2
        maxReactivePowerL3    AT %B70  : Real;   // Max. reactive power L3
        maxPowerFactorL1      AT %B74  : Real;   // Max. power factor L1
        maxPowerFactorL2      AT %B78  : Real;   // Max. power factor L2
        maxPowerFactorL3      AT %B82  : Real;   // Max. power factor L3
        maxFrequency          AT %B86  : Real;   // Max. frequency
        maxTotalApparentPower AT %B90  : Real;   // Max. total apparent power
        maxTotalActivePower   AT %B94  : Real;   // Max. total active power
        maxTotalReactivePower AT %B98  : Real;   // Max. total reactive power
        maxTotalPowerFactor   AT %B102  : Real;   // Max. total power factor
      END_STRUCT;

   END_TYPE

   TYPE EM480VSTDataRec143       : STRUCT
        version                  AT %B0    : Byte    := BYTE#1;  // Version
        resb1                    AT %B1    : Byte;               // Reserved
        controlStatusByte1L1     AT %B2    : Byte;               // Status / control byte 1 - L1
        controlStatusByte2L1     AT %B3    : Byte;               // Status / control byte 2 - L1
        controlStatusByte1L2     AT %B4    : Byte;               // Status / control byte 1 - L2
        controlStatusByte2L2     AT %B5    : Byte;               // Status / control byte 2 - L2
        controlStatusByte1L3     AT %B6    : Byte;               // Status / control byte 1 - L3
        controlStatusByte2L3     AT %B7    : Byte;               // Status / control byte 2 - L3
        activeEnergyInL1         AT %B8    : LReal;              // Active energy inflow (initial value) L1
        activeEnergyOutL1        AT %B16   : LReal;              // Active energy outflow (initial value) L1
        reactiveEnergyInL1       AT %B24   : LReal;              // Reactive energy inflow (initial value) L1
        reactiveEnergyOutL1      AT %B32   : LReal;              // Reactive energy outflow (initial value) L1
        apparentEnergyL1         AT %B40   : LReal;              // Apparent energy (initial value) L1
        activeEnergyInL2         AT %B48   : LReal;              // Active energy inflow (initial value) L2
        activeEnergyOutL2        AT %B56   : LReal;              // Active energy outflow (initial value) L2
        reactiveEnergyInL2       AT %B64   : LReal;              // Reactive energy inflow (initial value) L2
        reactiveEnergyOutL2      AT %B72   : LReal;              // Reactive energy outflow (initial value) L2
        apparentEnergyL2         AT %B80   : LReal;              // Apparent energy (initial value) L2
        activeEnergyInL3         AT %B88   : LReal;              // Active energy inflow (initial value) L3
        activeEnergyOutL3        AT %B96   : LReal;              // Active energy outflow (initial value) L3
        reactiveEnergyInL3       AT %B104   : LReal;              // Reactive energy inflow (initial value) L3
        reactiveEnergyOutL3      AT %B112   : LReal;              // Reactive energy outflow (initial value) L3
        apparentEnergyL3         AT %B120   : LReal;              // Apparent energy (initial value) L3
        ovCntActiveEnergyInL1    AT %B128   : UInt;               // Overflow counter active energy inflow L1
        ovCntActiveEnergyOutL1   AT %B132   : UInt;               // Overflow counter active energy outflow L1
        ovCntReactiveEnergyInL1  AT %B136   : UInt;               // Overflow counter reactive energy inflow L1
        ovCntReactiveEnergyOutL1 AT %B140   : UInt;               // Overflow counter reactive energy outflow L1
        ovCntApparentEnergyL1    AT %B144   : UInt;               // Overflow counter apparent energy L1
        ovCntActiveEnergyInL2    AT %B148   : UInt;               // Overflow counter active energy inflow L2
        ovCntActiveEnergyOutL2   AT %B152   : UInt;               // Overflow counter active energy outflow L2
        ovCntReactiveEnergyInL2  AT %B156   : UInt;               // Overflow counter reactive energy inflow L2
        ovCntReactiveEnergyOutL2 AT %B160   : UInt;               // Overflow counter reactive energy outflow L2
        ovCntApparentEnergyL2    AT %B164   : UInt;               // Overflow counter apparent energy L2
        ovCntActiveEnergyInL3    AT %B168   : UInt;               // Overflow counter active energy inflow L3
        ovCntActiveEnergyOutL3   AT %B172   : UInt;               // Overflow counter active energy outflow L3
        ovCntReactiveEnergyInL3  AT %B176   : UInt;               // Overflow counter reactive energy inflow L3
        ovCntReactiveEnergyOutL3 AT %B180   : UInt;               // Overflow counter reactive energy outflow L3
        ovCntApparentEnergyL3    AT %B184   : UInt;               // Overflow counter apparent energy L3
        operHoursCntL1           AT %B188   : Real;               // Operating hours counter L1 (initial value)
        operHoursCntL2           AT %B192   : Real;               // Operating hours counter L2 (initial value)
        operHoursCntL3           AT %B196   : Real;               // Operating hours counter L2 (initial value)
      END_STRUCT;

   END_TYPE

   TYPE EM480VSTDataRec142         : STRUCT
        version                    AT %B0   : Byte    := BYTE#1;  // Version
        resb1                      AT %B1   : Byte;               // Reserved
        voltL1N                    AT %B2   : Real;               // Voltage UL1-N
        voltL2N                    AT %B6   : Real;               // Voltage UL2-N
        voltL3N                    AT %B10  : Real;               // Voltage UL3-N
        voltL1L2                   AT %B14  : Real;               // Voltage UL1-L2
        voltL2L3                   AT %B18  : Real;               // Voltage UL2-L3
        voltL3L1                   AT %B22  : Real;               // Voltage UL3-L1
        currentL1                  AT %B26  : Real;               // Current L1
        currentL2                  AT %B30  : Real;               // Current L2
        currentL3                  AT %B34  : Real;               // Current L3
        powerFactorL1              AT %B38  : Real;               // Power factor L1
        powerFactorL2              AT %B42  : Real;               // Power factor L2
        powerFactorL3              AT %B46  : Real;               // Power factor L3
        totalPowerFactor           AT %B50  : Real;               // Total power factor L1 L2 L3
        frequency                  AT %B54  : Real;               // Frequency
        amplUnbalanceVolt          AT %B58  : Real;               // Amplitude unbalance for voltage
        amplUnbalanceCurrent       AT %B62  : Real;               // Amplitude unbalance for current
        apparentPowerL1            AT %B66  : Real;               // Apparent power L1
        apparentPowerL2            AT %B70  : Real;               // Apparent power L2
        apparentPowerL3            AT %B74  : Real;               // Apparent power L3
        totalApparentPower         AT %B78  : Real;               // Total apparent power L1 L2 L3
        reactivePowerL1            AT %B82  : Real;               // Reactive power L1
        reactivePowerL2            AT %B86  : Real;               // Reactive power L2
        reactivePowerL3            AT %B90  : Real;               // Reactive power L2
        totalReactivePower         AT %B94  : Real;               // Total reactive power L1 L2 L3
        activePowerL1              AT %B98  : Real;               // Active power L1
        activePowerL2              AT %B102  : Real;               // Active power L2
        activePowerL3              AT %B106  : Real;               // Active power L3
        totalActivePower           AT %B110  : Real;               // Total active power L1 L2 L3
        phaseAngleL1               AT %B114  : Real;               //  Phase angle L1
        phaseAngleL2               AT %B118  : Real;               //  Phase angle L2
        phaseAngleL3               AT %B122  : Real;               //  Phase angle L3
        totalApparentEnergy        AT %B126  : Real;               // Total apparent energy L1 L2 L3
        totalReactiveEnergy        AT %B130  : Real;               // Total reactive energy L1 L2 L3
        totalActiveEnergy          AT %B134  : Real;               // Total active energy L1 L2 L3
        totalReactiveEnergyIn      AT %B138  : Real;               // Total reactive energy inflow L1 L2 L3
        totalReactiveEnergyOut     AT %B142  : Real;               // Total reactive energy outflow L1 L2 L3
        totalActiveEnergyIn        AT %B146  : Real;               // Total active energy inflow L1 L2 L3
        totalActiveEnergyOut       AT %B150  : Real;               // Total active energy outflow L1 L2 L3
        totalApparentEnergyLong    AT %B154  : LReal;              // Total apparent energy L1 L2 L3
        totalReactiveEnergyLong    AT %B162  : LReal;              // Total reactive energy L1 L2 L3
        totalActiveEnergyLong      AT %B170  : LReal;              // Total active energy L1 L2 L3
        totalReactiveEnergyInLong  AT %B178  : LReal;              // Total reactive energy inflow L1 L2 L3
        totalReactiveEnergyOutLong AT %B186  : LReal;              // Total reactive energy outflow L1 L2 L3
        totalActiveEnergyInLong    AT %B194  : LReal;              // Total active energy inflow L1 L2 L3
        totalActiveEnergyOutLong   AT %B202  : LReal;              // Total active energy outflow L1 L2 L3
        neutralCurrent             AT %B210  : Real;               // Neutral current
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec142V3       : STRUCT
        version                    AT %B0    : Byte    := BYTE#3;  // Version
        resb1                      AT %B1    : Byte;               // Reserved
        voltL1N                    AT %B2    : Real;               // Voltage UL1-N
        voltL2N                    AT %B6    : Real;               // Voltage UL2-N
        voltL3N                    AT %B10   : Real;               // Voltage UL3-N
        voltL1L2                   AT %B14   : Real;               // Voltage UL1-L2
        voltL2L3                   AT %B18   : Real;               // Voltage UL2-L3
        voltL3L1                   AT %B22   : Real;               // Voltage UL3-L1
        currentL1                  AT %B26   : Real;               // Current L1
        currentL2                  AT %B30   : Real;               // Current L2
        currentL3                  AT %B34   : Real;               // Current L3
        powerFactorL1              AT %B38   : Real;               // Power factor L1
        powerFactorL2              AT %B42   : Real;               // Power factor L2
        powerFactorL3              AT %B46   : Real;               // Power factor L3
        totalPowerFactor           AT %B50   : Real;               // Total power factor L1 L2 L3
        frequency                  AT %B54   : Real;               // Frequency
        amplUnbalanceVolt          AT %B58   : Real;               // Amplitude unbalance for voltage
        amplUnbalanceCurrent       AT %B62   : Real;               // Amplitude unbalance for current
        apparentPowerL1            AT %B66   : Real;               // Apparent power L1
        apparentPowerL2            AT %B70   : Real;               // Apparent power L2
        apparentPowerL3            AT %B74   : Real;               // Apparent power L3
        totalApparentPower         AT %B78   : Real;               // Total apparent power L1 L2 L3
        reactivePowerQtotL1        AT %B82   : Real;               // Reactive power Qtot L1
        reactivePowerQtotL2        AT %B86   : Real;               // Reactive power Qtot L2
        reactivePowerQtotL3        AT %B90   : Real;               // Reactive power Qtot L2
        totalReactivePowerQtot     AT %B94   : Real;               // Total reactive power Qtot L1 L2 L3
        activePowerL1              AT %B98   : Real;               // Active power L1
        activePowerL2              AT %B102  : Real;               // Active power L2
        activePowerL3              AT %B106  : Real;               // Active power L3
        totalActivePower           AT %B110  : Real;               // Total active power L1 L2 L3
        phaseAngleL1               AT %B114  : Real;               //  Phase angle L1
        phaseAngleL2               AT %B118  : Real;               //  Phase angle L2
        phaseAngleL3               AT %B122  : Real;               //  Phase angle L3
        totalApparentEnergy        AT %B126  : Real;               // Total apparent energy L1 L2 L3
        totalReactiveEnergy        AT %B130  : Real;               // Total reactive energy L1 L2 L3
        totalActiveEnergy          AT %B134  : Real;               // Total active energy L1 L2 L3
        totalReactiveEnergyIn      AT %B138  : Real;               // Total reactive energy inflow L1 L2 L3
        totalReactiveEnergyOut     AT %B142  : Real;               // Total reactive energy outflow L1 L2 L3
        totalActiveEnergyIn        AT %B146  : Real;               // Total active energy inflow L1 L2 L3
        totalActiveEnergyOut       AT %B150  : Real;               // Total active energy outflow L1 L2 L3
        totalApparentEnergyLong    AT %B154  : LReal;              // Total apparent energy L1 L2 L3
        totalReactiveEnergyLong    AT %B162  : LReal;              // Total reactive energy L1 L2 L3
        totalActiveEnergyLong      AT %B170  : LReal;              // Total active energy L1 L2 L3
        totalReactiveEnergyInLong  AT %B178  : LReal;              // Total reactive energy inflow L1 L2 L3
        totalReactiveEnergyOutLong AT %B186  : LReal;              // Total reactive energy outflow L1 L2 L3
        totalActiveEnergyInLong    AT %B194  : LReal;              // Total active energy inflow L1 L2 L3
        totalActiveEnergyOutLong   AT %B202  : LReal;              // Total active energy outflow L1 L2 L3
        neutralCurrent             AT %B210  : Real;               // Neutral current
        neutralCurrentCyc10to12    AT %B214  : Real;               // Neutral current 10/12 cycle
        reactivePowerQnL1          AT %B218  : Real;               // Reactive power Qn L1
        reactivePowerQnL2          AT %B222  : Real;               // Reactive power Qn L2
        reactivePowerQnL3          AT %B226  : Real;               // Reactive power Qn L3
        totalReactivePowerQn       AT %B230  : Real;               // Total reactive power Qn L1 L2 L3
        averageVoltLN              AT %B234  : Real;               // Average voltage L-N (Usum)
        averageVoltLL              AT %B238  : Real;               // Average voltage L-L
        totalAverageCurr           AT %B242  : Real;               // Average current L1L2L3 (Isum)
        totalMeanPowerFactor       AT %B246  : Real;               // Mean power factor λ L1L2L3
        fundVoltL1                 AT %B250  : Real;               // Fundamental voltage L1
        fundVoltL2                 AT %B254  : Real;               // Fundamental voltage L2
        fundVoltL3                 AT %B258  : Real;               // Fundamental voltage L3
        fundCurrL1                 AT %B262  : Real;               // Fundamental current L1
        fundCurrL2                 AT %B266  : Real;               // Fundamental current L2
        fundCurrL3                 AT %B270  : Real;               // Fundamental current L3
        fundApparentPowerL1        AT %B274  : Real;               // Fundamental apparent power L1
        fundApparentPowerL2        AT %B278  : Real;               // Fundamental apparent power L2
        fundApparentPowerL3        AT %B282  : Real;               // Fundamental apparent power L3
        fundReactivePowerL1        AT %B286  : Real;               // Fundamental reactive power L1
        fundReactivePowerL2        AT %B290  : Real;               // Fundamental reactive power L2
        fundReactivePowerL3        AT %B294  : Real;               // Fundamental reactive power L3
        fundActivePowerL1          AT %B298  : Real;               // Fundamental active power L1
        fundActivePowerL2          AT %B302  : Real;               // Fundamental active power L2
        fundActivePowerL3          AT %B306  : Real;               // Fundamental active power L3
        fundActiveFactorL1         AT %B310  : Real;               // Fundamental cos φ active factor L1
        fundActiveFactorL2         AT %B314  : Real;               // Fundamental cos φ active factor L2
        fundActiveFactorL3         AT %B318  : Real;               // Fundamental cos φ active factor L3
        harmDistTHDaNVoltL1        AT %B322  : Real;               // Harmonic distortion (THD+N) voltage L1
        harmDistTHDaNVoltL2        AT %B326  : Real;               // Harmonic distortion (THD+N) voltage L2
        harmDistTHDaNVoltL3        AT %B330  : Real;               // Harmonic distortion (THD+N) voltage L3
        harmDistTHDaNCurrL1        AT %B334  : Real;               // Harmonic distortion (THD+N) current L1
        harmDistTHDaNCurrL2        AT %B338  : Real;               // Harmonic distortion (THD+N) current L2
        harmDistTHDaNCurrL3        AT %B342  : Real;               // Harmonic distortion (THD+N) current L3
        currentModuleTime          AT %B346  : PNIOTimeStamp;      // Current module time
      END_STRUCT;

   END_TYPE

   TYPE EM400VSTDataRec143  : STRUCT
        version             AT %B0   : Byte;   // Version
        resb1               AT %B1   : Byte;   // Reserved
        controlByte1L1      AT %B2   : Byte;   // Control byte 1 - L1
        controlByte2L1      AT %B3   : Byte;   // Control byte 2 - L1
        controlByte1L2      AT %B4   : Byte;   // Control byte 1 - L2
        controlByte2L2      AT %B5   : Byte;   // Control byte 2 - L2
        controlByte1L3      AT %B6   : Byte;   // Control byte 1 - L3
        controlByte2L3      AT %B7   : Byte;   // Control byte 2 - L3
        activeEnergyInL1    AT %B8   : LReal;  // Active energy inflow (initial value) L1
        activeEnergyOutL1   AT %B16  : LReal;  // Active energy outflow (initial value) L1
        reactiveEnergyInL1  AT %B24  : LReal;  // Reactive energy inflow (initial value) L1
        reactiveEnergyOutL1 AT %B32  : LReal;  // Reactive energy outflow (initial value) L1
        apparentEnergyL1    AT %B40  : LReal;  // Apparent energy (initial value) L1
        activeEnergyInL2    AT %B48  : LReal;  // Active energy inflow (initial value) L2
        activeEnergyOutL2   AT %B56  : LReal;  // Active energy outflow (initial value) L2
        reactiveEnergyInL2  AT %B64  : LReal;  // Reactive energy inflow (initial value) L2
        reactiveEnergyOutL2 AT %B72  : LReal;  // Reactive energy outflow (initial value) L2
        apparentEnergyL2    AT %B80  : LReal;  // Apparent energy (initial value) L2
        activeEnergyInL3    AT %B88  : LReal;  // Active energy inflow (initial value) L3
        activeEnergyOutL3   AT %B96  : LReal;  // Active energy outflow (initial value) L3
        reactiveEnergyInL3  AT %B104  : LReal;  // Reactive energy inflow (initial value) L3
        reactiveEnergyOutL3 AT %B112  : LReal;  // Reactive energy outflow (initial value) L3
        apparentEnergyL3    AT %B120  : LReal;  // Apparent energy (initial value) L3
      END_STRUCT;

   END_TYPE

   TYPE EM480VSTDataRec150   : STRUCT
        version              AT %B0 : Byte    := BYTE#1;  // Version
        resb1                AT %B1 : Byte;               // Reserved
        operHoursCntTotal    AT %B2 : Real;               // Operating hours counter L1 L2 L3
        operHoursCntL1       AT %B6 : Real;               // Operating hours counter L1
        operHoursCntL2       AT %B10 : Real;               // Operating hours counter L2
        operHoursCntL3       AT %B14 : Real;               // Operating hours counter L3
        statusLimViolGW1to16 AT %B18 : Word;               // Status limit violation GW 1...16
        statusEnergyCntOv    AT %B20 : Word;               // Status of energy counter overflows
        cntLimViolGw1        AT %B22 : UDInt;              // Counter limit violation GW 1
        cntLimViolGw2        AT %B26 : UDInt;              // Counter limit violation GW 2
        cntLimViolGw3        AT %B30 : UDInt;              // Counter limit violation GW 3
        cntLimViolGw4        AT %B34 : UDInt;              // Counter limit violation GW 4
        cntLimViolGw5        AT %B38 : UDInt;              // Counter limit violation GW 5
        cntLimViolGw6        AT %B42 : UDInt;              // Counter limit violation GW 6
        cntLimViolGw7        AT %B46 : UDInt;              // Counter limit violation GW 7
        cntLimViolGw8        AT %B50 : UDInt;              // Counter limit violation GW 8
        cntLimViolGw9        AT %B54 : UDInt;              // Counter limit violation GW 9
        cntLimViolGw10       AT %B58 : UDInt;              // Counter limit violation GW 10
        cntLimViolGw11       AT %B62 : UDInt;              // Counter limit violation GW 11
        cntLimViolGw12       AT %B66 : UDInt;              // Counter limit violation GW 12
        cntLimViolGw13       AT %B70 : UDInt;              // Counter limit violation GW 13
        cntLimViolGw14       AT %B74 : UDInt;              // Counter limit violation GW 14
        cntLimViolGw15       AT %B78 : UDInt;              // Counter limit violation GW 15
        cntLimViolGw16       AT %B82 : UDInt;              // Counter limit violation GW 16
        qualifierL1L2L3      AT %B86 : Word;               // Qualifier L1 L2 L3
      END_STRUCT;

   END_TYPE

   TYPE EM480VSTDataRec149 : STRUCT
        version            AT %B0 : Byte    := BYTE#1;  // Version
        resb1              AT %B1 : Byte;               // Reserved
        qualifierL3        AT %B2 : Word;               // Qualifier L3
        voltL3N            AT %B4 : Real;               // Voltage UL3-N
        currentL3          AT %B8 : Real;               // Current L3
        apparentPowerL3    AT %B12 : Real;               // Apparent power L3
        activePowerL3      AT %B16 : Real;               // Active power L3
        reactivePowerL3    AT %B20 : Real;               // Reactive power L3
        powerFactorL3      AT %B24 : Real;               // Power factor L3
        phaseAngleL3       AT %B28 : Real;               // Phase angle L3
        apparentEnergyL3   AT %B32 : LReal;              // Apparent energy L3
        activeEnergyL3     AT %B40 : LReal;              // Active energy (total) L3
        reactiveEnergyL3   AT %B48 : LReal;              // Reactive energy (total) L3
        maxVoltL3N         AT %B56 : Real;               // Max. voltage UL3-N
        maxCurrentL3       AT %B60 : Real;               // Max. current L3
        maxApparentPowerL3 AT %B64 : Real;               // Max. apparent power L3
        maxActivePowerL3   AT %B68 : Real;               // Max. active power L3
        maxReactivePowerL3 AT %B72 : Real;               // Max. reactive power L3
        maxPowerFactorL3   AT %B76 : Real;               // Max. power factor L3
        minVoltL3N         AT %B80 : Real;               // Min. voltage UL3-N
        minCurrentL3       AT %B84 : Real;               // Min. current L3
        minApparentPowerL3 AT %B88 : Real;               // Min. apparent power L3
        minActivePowerL3   AT %B92 : Real;               // Min. active power L3
        minReactivePowerL3 AT %B96 : Real;               // Min. reactive power L3
        minPowerFactorL3   AT %B100 : Real;               // Min. power factor L3
      END_STRUCT;

   END_TYPE

   TYPE EM480VSTDataRec148 : STRUCT
        version            AT %B0  : Byte    := BYTE#1;  // Version
        resb1              AT %B1  : Byte;               // Reserved
        qualifierL2        AT %B2  : Word;               // Qualifier L2
        voltL2N            AT %B4  : Real;               // Voltage UL2-N
        currentL2          AT %B8  : Real;               // Current L2
        apparentPowerL2    AT %B12 : Real;               // Apparent power L2
        activePowerL2      AT %B16 : Real;               // Active power L2
        reactivePowerL2    AT %B20 : Real;               // Reactive power L2
        powerFactorL2      AT %B24 : Real;               // Power factor L2
        phaseAngleL2       AT %B28 : Real;               // Phase angle L2
        apparentEnergyL2   AT %B32 : LReal;              // Apparent energy L2
        activeEnergyL2     AT %B40 : LReal;              // Active energy (total) L2
        reactiveEnergyL2   AT %B48 : LReal;              // Reactive energy (total) L2
        maxVoltL2N         AT %B56 : Real;               // Max. voltage UL2-N
        maxCurrentL2       AT %B60 : Real;               // Max. current L2
        maxApparentPowerL2 AT %B64 : Real;               // Max. apparent power L2
        maxActivePowerL2   AT %B68 : Real;               // Max. active power L2
        maxReactivePowerL2 AT %B72 : Real;               // Max. reactive power L2
        maxPowerFactorL2   AT %B76 : Real;               // Max. power factor L2
        minVoltL2N         AT %B80 : Real;               // Min. voltage UL2-N
        minCurrentL2       AT %B84 : Real;               // Min. current L2
        minApparentPowerL2 AT %B88 : Real;               // Min. apparent power L2
        minActivePowerL2   AT %B92 : Real;               // Min. active power L2
        minReactivePowerL2 AT %B96 : Real;               // Min. reactive power L2
        minPowerFactorL2   AT %B100 : Real;               // Min. power factor L2
      END_STRUCT;

   END_TYPE

   TYPE EM480VSTDataRec147    : STRUCT
        version               AT %B0  : Byte    := BYTE#1;  // Version
        resb1                 AT %B1  : Byte;               // Reserved
        qualifierL1           AT %B2  : Word;               // Qualifier L1
        voltL1N               AT %B4  : Real;               // Voltage UL1-N
        currentL1             AT %B8  : Real;               // Current L1
        apparentPowerL1       AT %B12 : Real;               // Apparent power L1
        activePowerL1         AT %B16 : Real;               // Active power L1
        reactivePowerL1       AT %B20 : Real;               // Reactive power L1
        powerFactorL1         AT %B24 : Real;               // Power factor L1
        phaseAngleL1          AT %B28 : Real;               // Phase angle L1
        apparentEnergyL1      AT %B32 : LReal;              // Apparent energy L1
        totalActiveEnergyL1   AT %B40 : LReal;              // Active energy (total) L1
        totalReactiveEnergyL1 AT %B48 : LReal;              // Reactive energy (total) L1
        maxVoltL1N            AT %B56 : Real;               // Max. voltage UL1-N
        maxCurrentL1          AT %B60 : Real;               // Max. current L1
        maxApparentPowerL1    AT %B64 : Real;               // Max. apparent power L1
        maxActivePowerL1      AT %B68 : Real;               // Max. active power L1
        maxReactivePowerL1    AT %B72 : Real;               // Max. reactive power L1
        maxPowerFactorL1      AT %B76 : Real;               // Max. power factor L1
        minVoltL1N            AT %B80 : Real;               // Min. voltage UL1-N
        minCurrentL1          AT %B84 : Real;               // Min. current L1
        minApparentPowerL1    AT %B88 : Real;               // Min. apparent power L1
        minActivePowerL1      AT %B92 : Real;               // Min. active power L1
        minReactivePowerL1    AT %B96 : Real;               // Min. reactive power L1
        minPowerFactorL1      AT %B100: Real;               // Min. power factor L1
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec170 : STRUCT
        version            AT %B0 : Byte;                   // Version
        resb1              AT %B1 : Byte;                   // Reserved
        numIDs             AT %B2 : UInt;                   // Number of IDs
        measValueID        AT %B4 : Array[1..580] of UInt;  // ID measured value
      END_STRUCT;

   END_TYPE

   TYPE EM400VSTDataRec128       : STRUCT
        majMinVer                AT %B0 : Byte    := BYTE#65;            // Major / minor version
        numParamStruct           AT %B1 : Byte    := BYTE#2;             // Number of parameter structures = 2
        numModuleParamBlocks     AT %B2 : Byte    := BYTE#1;             // Number of module parameter blocks = 1
        lengthModuleParamBlock   AT %B3 : Byte    := BYTE#8;             // Length of module parameter block = 8
        connectTypePhases        AT %B4 : Byte    := BYTE#0;             // Connection type of the phases
        measRangePower           AT %B5 : Byte;                          // Voltage measuring range of the power supply system
        energyCountGateLineFrequ AT %B6 : Byte;                          // Energy counter gate / Line frequency of the power supply system
        lineVoltTolerance        AT %B7 : Byte;                          // Line voltage tolerance
        diagLineVolt             AT %B8 : Byte;                          // Diagnostics line voltage
        lowLimitCurrMeas         AT %B9 : Byte;                          // Low limit for current measurement [mA]
        resb10                   AT %B10 : Byte;                          // Reserved
        idUserDataVariant        AT %B11 : Byte;                          // ID of the user data variant
        numChannelParamBlocks    AT %B12 : Byte    := BYTE#3;             // Number of channel parameter blocks = 3
        lengthChannelParamBlock  AT %B13 : Byte    := BYTE#8;             // Length of channel parameter block = 8
        channel                  AT %B14 : Array[0..2] of EMSTDataRecCh;
      END_STRUCT;

   END_TYPE

   TYPE EEatIndustryProfileE1 : STRUCT
        totalActivePower      AT %B0 : Real;   // Total active power L1 L2 L3
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec128           : STRUCT
        majMinVer                AT %B0  : Byte    := BYTE#64;            // Major / minor version
        numParamStruct           AT %B1  : Byte    := BYTE#2;             // Number of parameter structures = 2
        numModuleParamBlocks     AT %B2  : Byte    := BYTE#1;             // Number of module parameter blocks = 1
        lengthModuleParamBlock   AT %B3  : Byte    := BYTE#8;             // Length of module parameter block = 8
        connectTypePhases        AT %B4  : Byte    := BYTE#0;             // Connection type of the phases
        measRangePower           AT %B5  : Byte;                          // Voltage measuring range of the power supply system
        energyCountGateLineFrequ AT %B6  : Byte;                          // Energy counter gate / Line frequency of the power supply system
        lineVoltTolerance        AT %B7  : Byte;                          // Line voltage tolerance
        diagLineVolt             AT %B8  : Byte;                          // Diagnostics line voltage
        lowLimitCurrMeas         AT %B9  : Byte;                          // Low limit for current measurement [mA]
        resb10                   AT %B10 : Byte;                          // Reserved
        idUserDataVariant        AT %B11 : Byte;                          // ID of the user data variant
        numChannelParamBlocks    AT %B12 : Byte    := BYTE#3;             // Number of channel parameter blocks = 3
        lengthChannelParamBlock  AT %B13 : Byte    := BYTE#8;             // Length of channel parameter block = 8
        channel                  AT %B14 : Array[0..2] of EMSTDataRecCh;
      END_STRUCT;

   END_TYPE

   TYPE EEatIndustryProfileE0 : STRUCT
        currentL1             AT %B0 : Real;   // Current L1
        currentL2             AT %B4 : Real;   // Current L2
        currentL3             AT %B8 : Real;   // Current L3
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec147V0      : STRUCT
        version                   AT %B0   : Byte;   // Version
        resb1                     AT %B1   : Byte;   // Reserved
        qualifierL1               AT %B2   : Word;   // Qualifier L1
        voltL1N                   AT %B4   : Real;   // Voltage UL1-N
        currentL1                 AT %B8   : Real;   // Current L1
        apparentPowerL1           AT %B12  : Real;   // Apparent power L1
        activePowerL1             AT %B16  : Real;   // Active power L1
        reactivePowerQtotL1       AT %B20  : Real;   // Reactive power Qtot L1
        powerFactorL1             AT %B24  : Real;   // Power factor L1
        phaseAngleL1              AT %B28  : Real;   // Phase angle L1
        apparentEnergyLongL1      AT %B32  : LReal;  // Apparent energy L1
        totalActiveEnergyLongL1   AT %B40  : LReal;  // Active energy (total) L1
        totalReactiveEnergyLongL1 AT %B48  : LReal;  // Reactive energy (total) L1
        maxVoltL1N                AT %B56  : Real;   // Max. voltage UL1-N
        maxCurrentL1              AT %B60  : Real;   // Max. current L1
        maxApparentPowerL1        AT %B64  : Real;   // Max. apparent power L1
        maxActivePowerL1          AT %B68  : Real;   // Max. active power L1
        maxReactivePowerQtotL1    AT %B72  : Real;   // Max. reactive power Qtot L1
        maxPowerFactorL1          AT %B76  : Real;   // Max. power factor L1
        minVoltL1N                AT %B80  : Real;   // Min. voltage UL1-N
        minCurrentL1              AT %B84  : Real;   // Min. current L1
        minApparentPowerL1        AT %B88  : Real;   // Min. apparent power L1
        minActivePowerL1          AT %B92  : Real;   // Min. active power L1
        minReactivePowerQtotL1    AT %B96  : Real;   // Min. reactive power Qtot L1
        minPowerFactorL1          AT %B100 : Real;   // Min. power factor L1
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec155      : STRUCT
        version                 AT %B0   : Byte    := BYTE#1;          // Version
        resb1                   AT %B1   : Byte;                       // Reserved
        minVoltL1N              AT %B2   : RealValueAndPNIOTimeStamp;  // Min. voltage UL1-N
        minVoltL2N              AT %B18   : RealValueAndPNIOTimeStamp;  // Min. voltage UL2-N
        minVoltL3N              AT %B34   : RealValueAndPNIOTimeStamp;  // Min. voltage UL3-N
        minVoltL1L2             AT %B50   : RealValueAndPNIOTimeStamp;  // Min. voltage UL1-L2
        minVoltL2L3             AT %B66   : RealValueAndPNIOTimeStamp;  // Min. voltage UL2-L3
        minVoltL3L1             AT %B82   : RealValueAndPNIOTimeStamp;  // Min. voltage UL3-L1
        minCurrentL1            AT %B98   : RealValueAndPNIOTimeStamp;  // Min. current L1
        minCurrentL2            AT %B114   : RealValueAndPNIOTimeStamp;  // Min. current L2
        minCurrentL3            AT %B130   : RealValueAndPNIOTimeStamp;  // Min. current L3
        minApparentPowerL1      AT %B146   : RealValueAndPNIOTimeStamp;  // Min. apparent power L1
        minApparentPowerL2      AT %B162   : RealValueAndPNIOTimeStamp;  // Min. apparent power L2
        minApparentPowerL3      AT %B178   : RealValueAndPNIOTimeStamp;  // Min. apparent power L3
        minActivePowerL1        AT %B194   : RealValueAndPNIOTimeStamp;  // Min. active power L1
        minActivePowerL2        AT %B210   : RealValueAndPNIOTimeStamp;  // Min. active power L2
        minActivePowerL3        AT %B226   : RealValueAndPNIOTimeStamp;  // Min. active power L3
        minReactivePowerQtotL1  AT %B242   : RealValueAndPNIOTimeStamp;  // Min. reactive power Qtot L1
        minReactivePowerQtotL2  AT %B258   : RealValueAndPNIOTimeStamp;  // Min. reactive power Qtot L2
        minReactivePowerQtotL3  AT %B274   : RealValueAndPNIOTimeStamp;  // Min. reactive power Qtot L3
        minPowerFactorL1        AT %B290   : RealValueAndPNIOTimeStamp;  // Min. power factor L1
        minPowerFactorL2        AT %B306   : RealValueAndPNIOTimeStamp;  // Min. power factor L2
        minPowerFactorL3        AT %B322   : RealValueAndPNIOTimeStamp;  // Min. power factor L3
        minFrequency            AT %B338   : RealValueAndPNIOTimeStamp;  // Min. frequency
        minTotalApparentPower   AT %B354   : RealValueAndPNIOTimeStamp;  // Min. apparent power L1 L2 L3
        minTotalActivePower     AT %B370   : RealValueAndPNIOTimeStamp;  // Min. active power L1 L2 L3
        minTotalReactivePowerQn AT %B386   : RealValueAndPNIOTimeStamp;  // Min. reactive power Qn L1 L2 L3
        minTotalPowerFactor     AT %B402   : RealValueAndPNIOTimeStamp;  // Min. power factor λ L1 L2 L3
        minReactivePowerQnL1    AT %B418   : RealValueAndPNIOTimeStamp;  // Min. reactive power Qn L1
        minReactivePowerQnL2    AT %B434   : RealValueAndPNIOTimeStamp;  // Min. reactive power Qn L2
        minReactivePowerQnL3    AT %B450   : RealValueAndPNIOTimeStamp;  // Min. reactive power Qn L3
        minMeanVoltLN           AT %B466   : RealValueAndPNIOTimeStamp;  // Min. mean voltage L-N
        minMeanVoltLL           AT %B482   : RealValueAndPNIOTimeStamp;  // Min. mean voltage L-L
        minTotalMeanCurr        AT %B498   : RealValueAndPNIOTimeStamp;  // Min. mean current L1 L2 L3
        minFundVoltL1           AT %B514   : RealValueAndPNIOTimeStamp;  // Min. fundamental voltage L1
        minFundVoltL2           AT %B530   : RealValueAndPNIOTimeStamp;  // Min. fundamental voltage L2
        minFundVoltL3           AT %B546   : RealValueAndPNIOTimeStamp;  // Min. fundamental voltage L3
        minFundCurrL1           AT %B562   : RealValueAndPNIOTimeStamp;  // Min. fundamental current L1
        minFundCurrL2           AT %B578   : RealValueAndPNIOTimeStamp;  // Min. fundamental current L2
        minFundCurrL3           AT %B594   : RealValueAndPNIOTimeStamp;  // Min. fundamental current L3
        minFundApparentPowerL1  AT %B610   : RealValueAndPNIOTimeStamp;  // Min. fundamental apparent power L1
        minFundApparentPowerL2  AT %B626   : RealValueAndPNIOTimeStamp;  // Min. fundamental apparent power L2
        minFundApparentPowerL3  AT %B642   : RealValueAndPNIOTimeStamp;  // Min. fundamental apparent power L3
        minFundReactivePowerL1  AT %B658   : RealValueAndPNIOTimeStamp;  // Min. fundamental reactive power L1
        minFundReactivePowerL2  AT %B674   : RealValueAndPNIOTimeStamp;  // Min. fundamental reactive power L2
        minFundReactivePowerL3  AT %B690   : RealValueAndPNIOTimeStamp;  // Min. fundamental reactive power L3
        minFundActivePowerL1    AT %B706   : RealValueAndPNIOTimeStamp;  // Min. fundamental active power L1
        minFundActivePowerL2    AT %B722   : RealValueAndPNIOTimeStamp;  // Min. fundamental active power L2
        minFundActivePowerL3    AT %B738   : RealValueAndPNIOTimeStamp;  // Min. fundamental active power L3
        minFundActiveFactorL1   AT %B754   : RealValueAndPNIOTimeStamp;  // Min. fundamental cos φ active factor L1
        minFundActiveFactorL2   AT %B770   : RealValueAndPNIOTimeStamp;  // Min. fundamental cos φ active factor L2
        minFundActiveFactorL3   AT %B786   : RealValueAndPNIOTimeStamp;  // Min. fundamental cos φ active factor L3
        minTHDaNVoltL1          AT %B802   : RealValueAndPNIOTimeStamp;  // Min. THD+N voltage L1
        minTHDaNVoltL2          AT %B818   : RealValueAndPNIOTimeStamp;  // Min. THD+N voltage L2
        minTHDaNVoltL3          AT %B834   : RealValueAndPNIOTimeStamp;  // Min. THD+N voltage L3
        minTHDaNCurrL1          AT %B850   : RealValueAndPNIOTimeStamp;  // Min. THD+N current L1
        minTHDaNCurrL2          AT %B866   : RealValueAndPNIOTimeStamp;  // Min. THD+N current L2
        minTHDaNCurrL3          AT %B882   : RealValueAndPNIOTimeStamp;  // Min. THD+N current L3
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec154        : STRUCT
        version                   AT %B0   : Byte    := BYTE#1;          // Version
        resb1                     AT %B1   : Byte;                       // Reserved
        maxVoltL1N                AT %B2   : RealValueAndPNIOTimeStamp;  // Max. voltage UL1-N
        maxVoltL2N                AT %B18  : RealValueAndPNIOTimeStamp;  // Max. voltage UL2-N
        maxVoltL3N                AT %B34  : RealValueAndPNIOTimeStamp;  // Max. voltage UL3-N
        maxVoltL1L2               AT %B50  : RealValueAndPNIOTimeStamp;  // Max. voltage UL1-L2
        maxVoltL2L3               AT %B66  : RealValueAndPNIOTimeStamp;  // Max. voltage UL2-L3
        maxVoltL3L1               AT %B82  : RealValueAndPNIOTimeStamp;  // Max. voltage UL3-L1
        maxCurrentL1              AT %B98  : RealValueAndPNIOTimeStamp;  // Max. current L1
        maxCurrentL2              AT %B114 : RealValueAndPNIOTimeStamp;  // Max. current L2
        maxCurrentL3              AT %B130 : RealValueAndPNIOTimeStamp;  // Max. current L3
        maxApparentPowerL1        AT %B146 : RealValueAndPNIOTimeStamp;  // Max. apparent power L1
        maxApparentPowerL2        AT %B162 : RealValueAndPNIOTimeStamp;  // Max. apparent power L2
        maxApparentPowerL3        AT %B178 : RealValueAndPNIOTimeStamp;  // Max. apparent power L3
        maxActivePowerL1          AT %B194 : RealValueAndPNIOTimeStamp;  // Max. active power L1
        maxActivePowerL2          AT %B210 : RealValueAndPNIOTimeStamp;  // Max. active power L2
        maxActivePowerL3          AT %B226 : RealValueAndPNIOTimeStamp;  // Max. active power L3
        maxReactivePowerQtotL1    AT %B242 : RealValueAndPNIOTimeStamp;  // Max. reactive power Qtot L1
        maxReactivePowerQtotL2    AT %B258 : RealValueAndPNIOTimeStamp;  // Max. reactive power Qtot L2
        maxReactivePowerQtotL3    AT %B274 : RealValueAndPNIOTimeStamp;  // Max. reactive power Qtot L3
        maxPowerFactorL1          AT %B290 : RealValueAndPNIOTimeStamp;  // Max. power factor L1
        maxPowerFactorL2          AT %B306 : RealValueAndPNIOTimeStamp;  // Max. power factor L2
        maxPowerFactorL3          AT %B322 : RealValueAndPNIOTimeStamp;  // Max. power factor L3
        maxFrequency              AT %B338 : RealValueAndPNIOTimeStamp;  // Max. frequency
        maxTotalApparentPower     AT %B354 : RealValueAndPNIOTimeStamp;  // Max. apparent power L1 L2 L3
        maxTotalActivePower       AT %B370 : RealValueAndPNIOTimeStamp;  // Max. active power L1 L2 L3
        maxTotalReactivePowerQtot AT %B386 : RealValueAndPNIOTimeStamp;  // Max. reactive power Qtot L1 L2 L3
        maxTotalPowerFactor       AT %B402 : RealValueAndPNIOTimeStamp;  // Max. power factor λ L1L2L3
        maxReactivePowerQnL1      AT %B418 : RealValueAndPNIOTimeStamp;  // Max. reactive power Qn L1
        maxReactivePowerQnL2      AT %B434 : RealValueAndPNIOTimeStamp;  // Max. reactive power Qn L2
        maxReactivePowerQnL3      AT %B450 : RealValueAndPNIOTimeStamp;  // Max. reactive power Qn L3
        maxMeanVoltLN             AT %B466 : RealValueAndPNIOTimeStamp;  // Max. mean voltage L-N
        maxMeanVoltLL             AT %B482 : RealValueAndPNIOTimeStamp;  // Max. mean voltage L-L
        maxSumMeanCurr            AT %B498 : RealValueAndPNIOTimeStamp;  // Max. sum mean value current
        maxFundVoltL1             AT %B514 : RealValueAndPNIOTimeStamp;  // Max. fundamental voltage L1
        maxFundVoltL2             AT %B530 : RealValueAndPNIOTimeStamp;  // Max. fundamental voltage L2
        maxFundVoltL3             AT %B546 : RealValueAndPNIOTimeStamp;  // Max. fundamental voltage L3
        maxFundCurrL1             AT %B562 : RealValueAndPNIOTimeStamp;  // Max. fundamental current L1
        maxFundCurrL2             AT %B578 : RealValueAndPNIOTimeStamp;  // Max. fundamental current L2
        maxFundCurrL3             AT %B594 : RealValueAndPNIOTimeStamp;  // Max. fundamental current L3
        maxFundApparentPowerL1    AT %B610 : RealValueAndPNIOTimeStamp;  // Max. fundamental apparent power L1
        maxFundApparentPowerL2    AT %B626 : RealValueAndPNIOTimeStamp;  // Max. fundamental apparent power L2
        maxFundApparentPowerL3    AT %B642 : RealValueAndPNIOTimeStamp;  // Max. fundamental apparent power L3
        maxFundReactivePowerL1    AT %B658 : RealValueAndPNIOTimeStamp;  // Max. fundamental reactive power L1
        maxFundReactivePowerL2    AT %B674 : RealValueAndPNIOTimeStamp;  // Max. fundamental reactive power L2
        maxFundReactivePowerL3    AT %B690 : RealValueAndPNIOTimeStamp;  // Max. fundamental reactive power L3
        maxFundActivePowerL1      AT %B706 : RealValueAndPNIOTimeStamp;  // Max. fundamental active power L1
        maxFundActivePowerL2      AT %B722 : RealValueAndPNIOTimeStamp;  // Max. fundamental active power L2
        maxFundActivePowerL3      AT %B738 : RealValueAndPNIOTimeStamp;  // Max. fundamental active power L3
        maxFundActiveFactorL1     AT %B754 : RealValueAndPNIOTimeStamp;  // Max. fundamental cos φ active factor L1
        maxFundActiveFactorL2     AT %B770 : RealValueAndPNIOTimeStamp;  // Max. fundamental cos φ active factor L2
        maxFundActiveFactorL3     AT %B786 : RealValueAndPNIOTimeStamp;  // Max. fundamental cos φ active factor L3
        maxTHDaNVoltL1            AT %B802 : RealValueAndPNIOTimeStamp;  // Max. THD+N voltage L1
        maxTHDaNVoltL2            AT %B818 : RealValueAndPNIOTimeStamp;  // Max. THD+N voltage L2
        maxTHDaNVoltL3            AT %B834 : RealValueAndPNIOTimeStamp;  // Max. THD+N voltage L3
        maxTHDaNCurrL1            AT %B850 : RealValueAndPNIOTimeStamp;  // Max. THD+N current L1
        maxTHDaNCurrL2            AT %B866 : RealValueAndPNIOTimeStamp;  // Max. THD+N current L2
        maxTHDaNCurrL3            AT %B882 : RealValueAndPNIOTimeStamp;  // Max. THD+N current L3
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec145V1    : STRUCT
        version                 AT %B0   : Byte    := BYTE#1;  // Version
        resb1                   AT %B1   : Byte;               // Reserved
        minVoltL1N              AT %B2   : Real;               // Min. voltage UL1-N
        minVoltL2N              AT %B6   : Real;               // Min. voltage UL2-N
        minVoltL3N              AT %B10   : Real;               // Min. voltage UL3-N
        minVoltL1L2             AT %B14   : Real;               // Min. voltage UL1-L2
        minVoltL2L3             AT %B18   : Real;               // Min. voltage UL2-L3
        minVoltL3L1             AT %B22   : Real;               // Min. voltage UL3-L1
        minCurrentL1            AT %B26   : Real;               // Min. current L1
        minCurrentL2            AT %B30   : Real;               // Min. current L2
        minCurrentL3            AT %B34   : Real;               // Min. current L3
        minApparentPowerL1      AT %B38   : Real;               // Min. apparent power L1
        minApparentPowerL2      AT %B42   : Real;               // Min. apparent power L2
        minApparentPowerL3      AT %B46   : Real;               // Min. apparent power L3
        minActivePowerL1        AT %B50   : Real;               // Min. active power L1
        minActivePowerL2        AT %B54   : Real;               // Min. active power L2
        minActivePowerL3        AT %B58   : Real;               // Min. active power L3
        minReactivePowerQtotL1  AT %B62   : Real;               // Min. reactive power Qtot L1
        minReactivePowerQtotL2  AT %B66   : Real;               // Min. reactive power Qtot L2
        minReactivePowerQtotL3  AT %B70   : Real;               // Min. reactive power Qtot L3
        minPowerFactorL1        AT %B74   : Real;               // Min. power factor L1
        minPowerFactorL2        AT %B78   : Real;               // Min. power factor L2
        minPowerFactorL3        AT %B82   : Real;               // Min. power factor L3
        minFrequency            AT %B86   : Real;               // Min. frequency
        minTotalApparentPower   AT %B90   : Real;               // Min. apparent power L1 L2 L3
        minTotalActivePower     AT %B94   : Real;               // Min. active power L1 L2 L3
        minTotalReactivePowerQn AT %B98   : Real;               // Min. reactive power Qn L1 L2 L3
        minTotalPowerFactor     AT %B102   : Real;               // Min. power factor λ L1 L2 L3
        minReactivePowerQnL1    AT %B106   : Real;               // Min. reactive power Qn L1
        minReactivePowerQnL2    AT %B110   : Real;               // Min. reactive power Qn L2
        minReactivePowerQnL3    AT %B114   : Real;               // Min. reactive power Qn L3
        minMeanVoltLN           AT %B118   : Real;               // Min. mean voltage L-N
        minMeanVoltLL           AT %B122   : Real;               // Min. mean voltage L-L
        minTotalMeanCurr        AT %B126   : Real;               // Min. mean current L1 L2 L3
        minFundVoltL1           AT %B130   : Real;               // Min. fundamental voltage L1
        minFundVoltL2           AT %B134   : Real;               // Min. fundamental voltage L2
        minFundVoltL3           AT %B138   : Real;               // Min. fundamental voltage L3
        minFundCurrL1           AT %B142   : Real;               // Min. fundamental current L1
        minFundCurrL2           AT %B146   : Real;               // Min. fundamental current L2
        minFundCurrL3           AT %B150   : Real;               // Min. fundamental current L3
        minFundApparentPowerL1  AT %B154   : Real;               // Min. fundamental apparent power L1
        minFundApparentPowerL2  AT %B158   : Real;               // Min. fundamental apparent power L2
        minFundApparentPowerL3  AT %B162   : Real;               // Min. fundamental apparent power L3
        minFundReactivePowerL1  AT %B166   : Real;               // Min. fundamental reactive power L1
        minFundReactivePowerL2  AT %B170   : Real;               // Min. fundamental reactive power L2
        minFundReactivePowerL3  AT %B174   : Real;               // Min. fundamental reactive power L3
        minFundActivePowerL1    AT %B178   : Real;               // Min. fundamental active power L1
        minFundActivePowerL2    AT %B182   : Real;               // Min. fundamental active power L2
        minFundActivePowerL3    AT %B186   : Real;               // Min. fundamental active power L3
        minFundActiveFactorL1   AT %B190   : Real;               // Min. fundamental cos φ active factor L1
        minFundActiveFactorL2   AT %B194   : Real;               // Min. fundamental cos φ active factor L2
        minFundActiveFactorL3   AT %B198   : Real;               // Min. fundamental cos φ active factor L3
        minTHDaNVoltL1          AT %B202   : Real;               // Min. THD+N voltage L1
        minTHDaNVoltL2          AT %B206   : Real;               // Min. THD+N voltage L2
        minTHDaNVoltL3          AT %B210   : Real;               // Min. THD+N voltage L3
        minTHDaNCurrL1          AT %B214   : Real;               // Min. THD+N current L1
        minTHDaNCurrL2          AT %B218   : Real;               // Min. THD+N current L2
        minTHDaNCurrL3          AT %B222   : Real;               // Min. THD+N current L3
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec143       : STRUCT
        version                  : Byte    := BYTE#1;  // Version
        resb1                    : Byte;               // Reserved
        controlStatusByte1L1     : Byte;               // Status / control byte 1 - L1
        controlStatusByte2L1     : Byte;               // Status / control byte 2 - L1
        controlStatusByte1L2     : Byte;               // Status / control byte 1 - L2
        controlStatusByte2L2     : Byte;               // Status / control byte 2 - L2
        controlStatusByte1L3     : Byte;               // Status / control byte 1 - L3
        controlStatusByte2L3     : Byte;               // Status / control byte 2 - L3
        activeEnergyInLongL1     : LReal;              // Active energy inflow (initial value) L1
        activeEnergyOutLongL1    : LReal;              // Active energy outflow (initial value) L1
        reactiveEnergyInLongL1   : LReal;              // Reactive energy inflow (initial value) L1
        reactiveEnergyOutLongL1  : LReal;              // Reactive energy outflow (initial value) L1
        apparentEnergyLongL1     : LReal;              // Apparent energy (initial value) L1
        activeEnergyInLongL2     : LReal;              // Active energy inflow (initial value) L2
        activeEnergyOutLongL2    : LReal;              // Active energy outflow (initial value) L2
        reactiveEnergyInLongL2   : LReal;              // Reactive energy inflow (initial value) L2
        reactiveEnergyOutLongL2  : LReal;              // Reactive energy outflow (initial value) L2
        apparentEnergyLongL2     : LReal;              // Apparent energy (initial value) L2
        activeEnergyInLongL3     : LReal;              // Active energy inflow (initial value) L3
        activeEnergyOutLongL3    : LReal;              // Active energy outflow (initial value) L3
        reactiveEnergyInLongL3   : LReal;              // Reactive energy inflow (initial value) L3
        reactiveEnergyOutLongL3  : LReal;              // Reactive energy outflow (initial value) L3
        apparentEnergyLongL3     : LReal;              // Apparent energy (initial value) L3
        ovCntActiveEnergyInL1    : UInt;               // Overflow counter active energy inflow L1
        ovCntActiveEnergyOutL1   : UInt;               // Overflow counter active energy outflow L1
        ovCntReactiveEnergyInL1  : UInt;               // Overflow counter reactive energy inflow L1
        ovCntReactiveEnergyOutL1 : UInt;               // Overflow counter reactive energy outflow L1
        ovCntApparentEnergyL1    : UInt;               // Overflow counter apparent energy L1
        ovCntActiveEnergyInL2    : UInt;               // Overflow counter active energy inflow L2
        ovCntActiveEnergyOutL2   : UInt;               // Overflow counter active energy outflow L2
        ovCntReactiveEnergyInL2  : UInt;               // Overflow counter reactive energy inflow L2
        ovCntReactiveEnergyOutL2 : UInt;               // Overflow counter reactive energy outflow L2
        ovCntApparentEnergyL2    : UInt;               // Overflow counter apparent energy L2
        ovCntActiveEnergyInL3    : UInt;               // Overflow counter active energy inflow L3
        ovCntActiveEnergyOutL3   : UInt;               // Overflow counter active energy outflow L3
        ovCntReactiveEnergyInL3  : UInt;               // Overflow counter reactive energy inflow L3
        ovCntReactiveEnergyOutL3 : UInt;               // Overflow counter reactive energy outflow L3
        ovCntApparentEnergyL3    : UInt;               // Overflow counter apparent energy L3
        operHoursCntL1           : Real;               // Operating hours counter L1 (initial value)
        operHoursCntL2           : Real;               // Operating hours counter L2 (initial value)
        operHoursCntL3           : Real;               // Operating hours counter L2 (initial value)
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec142V2       : STRUCT
        version                    AT %B0   : Byte    := BYTE#2;  // Version
        resb1                      AT %B1   : Byte;               // Reserved
        voltL1N                    AT %B2   : Real;               // Voltage UL1-N
        voltL2N                    AT %B6   : Real;               // Voltage UL2-N
        voltL3N                    AT %B10  : Real;               // Voltage UL3-N
        voltL1L2                   AT %B14  : Real;               // Voltage UL1-L2
        voltL2L3                   AT %B18  : Real;               // Voltage UL2-L3
        voltL3L1                   AT %B22  : Real;               // Voltage UL3-L1
        currentL1                  AT %B26  : Real;               // Current L1
        currentL2                  AT %B30  : Real;               // Current L2
        currentL3                  AT %B34  : Real;               // Current L3
        powerFactorL1              AT %B38  : Real;               // Power factor L1
        powerFactorL2              AT %B42  : Real;               // Power factor L2
        powerFactorL3              AT %B46  : Real;               // Power factor L3
        totalPowerFactor           AT %B50  : Real;               // Total power factor L1 L2 L3
        frequency                  AT %B54  : Real;               // Frequency
        amplUnbalanceVolt          AT %B58  : Real;               // Amplitude unbalance for voltage
        amplUnbalanceCurrent       AT %B62  : Real;               // Amplitude unbalance for current
        apparentPowerL1            AT %B66  : Real;               // Apparent power L1
        apparentPowerL2            AT %B70  : Real;               // Apparent power L2
        apparentPowerL3            AT %B74  : Real;               // Apparent power L3
        totalApparentPower         AT %B78  : Real;               // Total apparent power L1 L2 L3
        reactivePowerQtotL1        AT %B82  : Real;               // Reactive power Qtot L1
        reactivePowerQtotL2        AT %B86  : Real;               // Reactive power Qtot L2
        reactivePowerQtotL3        AT %B90  : Real;               // Reactive power Qtot L2
        totalReactivePowerQtot     AT %B94  : Real;               // Total reactive power Qtot L1 L2 L3
        activePowerL1              AT %B98  : Real;               // Active power L1
        activePowerL2              AT %B102 : Real;               // Active power L2
        activePowerL3              AT %B106 : Real;               // Active power L3
        totalActivePower           AT %B110 : Real;               // Total active power L1 L2 L3
        phaseAngleL1               AT %B114 : Real;               //  Phase angle L1
        phaseAngleL2               AT %B118 : Real;               //  Phase angle L2
        phaseAngleL3               AT %B122 : Real;               //  Phase angle L3
        totalApparentEnergy        AT %B126 : Real;               // Total apparent energy L1 L2 L3
        totalReactiveEnergy        AT %B130 : Real;               // Total reactive energy L1 L2 L3
        totalActiveEnergy          AT %B134 : Real;               // Total active energy L1 L2 L3
        totalReactiveEnergyIn      AT %B138 : Real;               // Total reactive energy inflow L1 L2 L3
        totalReactiveEnergyOut     AT %B142 : Real;               // Total reactive energy outflow L1 L2 L3
        totalActiveEnergyIn        AT %B146 : Real;               // Total active energy inflow L1 L2 L3
        totalActiveEnergyOut       AT %B150 : Real;               // Total active energy outflow L1 L2 L3
        totalApparentEnergyLong    AT %B154 : LReal;              // Total apparent energy L1 L2 L3
        totalReactiveEnergyLong    AT %B162 : LReal;              // Total reactive energy L1 L2 L3
        totalActiveEnergyLong      AT %B170 : LReal;              // Total active energy L1 L2 L3
        totalReactiveEnergyInLong  AT %B178 : LReal;              // Total reactive energy inflow L1 L2 L3
        totalReactiveEnergyOutLong AT %B186 : LReal;              // Total reactive energy outflow L1 L2 L3
        totalActiveEnergyInLong    AT %B194 : LReal;              // Total active energy inflow L1 L2 L3
        totalActiveEnergyOutLong   AT %B202 : LReal;              // Total active energy outflow L1 L2 L3
        neutralCurrent             AT %B210 : Real;               // Neutral current
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec160        : STRUCT
        version                   AT %B0   : Byte;           // Version
        resb1                     AT %B1   : Byte;           // Reserved
        neutralCurrIn             AT %B2   : Real;           // Neutral current IN
        neutralCurrCyc10to12      AT %B6   : Real;           // Neutral current 10/12 cycles
        totalCurrIn               AT %B10  : Real;           // Total current IL1+IL2+IL3-IN
        totalFundReactivePower    AT %B14  : Real;           // Fundamental reactive power L1 L2 L3
        totalMaxFundReactivePower AT %B18  : Real;           // Max. fundamental reactive power L1 L2 L3
        totalMinFundReactivePower AT %B22  : Real;           // Min. fundamental reactive power L1 L2 L3
        totalPowerFactor          AT %B26  : Real;           // Power factor λ L1L2L3
        fundReactivePowerL1       AT %B30  : Real;           // Fundamental reactive power L1
        fundReactivePowerL2       AT %B34  : Real;           // Fundamental reactive power L2
        fundReactivePowerL3       AT %B38  : Real;           // Fundamental reactive power L3
        fundActiveFactorL1        AT %B42  : Real;           // Fundamental cos φ active factor L1
        fundActiveFactorL2        AT %B46  : Real;           // Fundamental cos φ active factor L2
        fundActiveFactorL3        AT %B50  : Real;           // Fundamental cos φ active factor L3
        THDaNVoltL1               AT %B54  : Real;           // THD+N voltage L1
        THDaNVoltL2               AT %B58  : Real;           // THD+N voltage L2
        THDaNVoltL3               AT %B62  : Real;           // THD+N voltage L3
        THDaNCurrL1               AT %B66  : Real;           // THD+N current L1
        THDaNCurrL2               AT %B70  : Real;           // THD+N current L2
        THDaNCurrL3               AT %B74  : Real;           // THD+N current L3
        maxTHDaNVoltL1            AT %B78  : Real;           // Max. THD+N voltage L1
        maxTHDaNVoltL2            AT %B82  : Real;           // Max. THD+N voltage L2
        maxTHDaNVoltL3            AT %B86  : Real;           // Max. THD+N voltage L3
        maxTHDaNCurrL1            AT %B90  : Real;           // Max. THD+N current L1
        maxTHDaNCurrL2            AT %B94  : Real;           // Max. THD+N current L2
        maxTHDaNCurrL3            AT %B98  : Real;           // Max. THD+N current L3
        minTHDaNVoltL1            AT %B102 : Real;           // Min. THD+N voltage L1
        minTHDaNVoltL2            AT %B106 : Real;           // Min. THD+N voltage L2
        minTHDaNVoltL3            AT %B110 : Real;           // Min. THD+N voltage L3
        minTHDaNCurrL1            AT %B114 : Real;           // Min. THD+N current L1
        minTHDaNCurrL2            AT %B118 : Real;           // Min. THD+N current L2
        minTHDaNCurrL3            AT %B122 : Real;           // Min. THD+N current L3
        voltDipValueL1            AT %B126 : Real;           // Voltage dip - value L1
        voltDipDurationL1         AT %B130 : Real;           // Voltage dip - duration L1
        voltDipValueL2            AT %B134 : Real;           // Voltage dip - value L2
        voltDipDurationL2         AT %B138 : Real;           // Voltage dip - duration L2
        voltDipValueL3            AT %B142 : Real;           // Voltage dip - value L3
        voltDipDurationL3         AT %B146 : Real;           // Voltage dip - duration L3
        voltIncValueL1            AT %B150 : Real;           // Voltage increase - value L1
        voltIncDurationL1         AT %B154 : Real;           // Voltage increase - duration L1
        voltIncValueL2            AT %B158 : Real;           // Voltage increase - value L2
        voltIncDurationL2         AT %B162 : Real;           // Voltage increase - duration L2
        voltIncValueL3            AT %B166 : Real;           // Voltage increase - value L3
        voltIncDurationL3         AT %B170 : Real;           // Voltage increase - duration L3
        voltPeakValueL1           AT %B174 : Real;           // Voltage peak value L1
        voltPeakValueL2           AT %B178 : Real;           // Voltage peak value L2
        voltPeakValueL3           AT %B182 : Real;           // Voltage peak value L3
        currPeakValueL1           AT %B186 : Real;           // Current peak value L1
        currPeakValueL2           AT %B190 : Real;           // Current peak value L2
        currPeakValueL3           AT %B194 : Real;           // Current peak value L3
        overCurrValueL1           AT %B198 : Real;           // Overcurrent value L1
        overCurrValueL2           AT %B202 : Real;           // Overcurrent value L2
        overCurrValueL3           AT %B206 : Real;           // Overcurrent value L3
        ampSymVolt                AT %B210 : Real;           // Amplitude symmetry Voltage U2
        ampSymCurr                AT %B214 : Real;           // Amplitude symmetry Current Iunsym
        powerQualityAnalysis      AT %B218 : UDInt;          // Power quality analysis - Qualifier
        currentModuleTime         AT %B222 : PNIOTimeStamp;  // Current module time
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec163 : STRUCT
        version            AT %B0 : Byte;                  // Version
        resb1              AT %B1 : Byte;                  // Reserved
        THDaNCurrL1        AT %B2 : Real;                  // THD+N current L1
        currL1             AT %B6 : Real;                  // Current L1
        harmCurrL1         AT %B10 : Array[1..40] of Real;  // Harmonics 1-40: Current L1
        THDaNCurrL2        AT %B170 : Real;                  // THD+N current L2
        currL2             AT %B174 : Real;                  // Current L2
        harmCurrL2         AT %B178 : Array[1..40] of Real;  // Harmonics 1-40: Current L2
        THDaNCurrL3        AT %B338 : Real;                  // THD+N current L3
        currL3             AT %B342 : Real;                  // Current L3
        harmCurrL3         AT %B346 : Array[1..40] of Real;  // Harmonics 1-40: Current L3
        currentModuleTime  AT %B506 : PNIOTimeStamp;         // Current module time
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec147V1      : STRUCT
        version                   AT %B0   : Byte    := BYTE#1;  // Version
        resb1                     AT %B1   : Byte;               // Reserved
        qualifierL1               AT %B2   : Word;               // Qualifier L1
        voltL1N                   AT %B6   : Real;               // Voltage UL1-N
        currentL1                 AT %B10  : Real;               // Current L1
        apparentPowerL1           AT %B14  : Real;               // Apparent power L1
        activePowerL1             AT %B18  : Real;               // Active power L1
        reactivePowerL1           AT %B22  : Real;               // Reactive power L1
        powerFactorL1             AT %B26  : Real;               // Power factor L1
        phaseAngleL1              AT %B30  : Real;               // Phase angle L1
        apparentEnergyLongL1      AT %B34  : LReal;              // Apparent energy L1
        totalActiveEnergyLongL1   AT %B42  : LReal;              // Active energy (total) L1
        totalReactiveEnergyLongL1 AT %B50  : LReal;              // Reactive energy (total) L1
        maxVoltL1N                AT %B58  : Real;               // Max. voltage UL1-N
        maxCurrentL1              AT %B62  : Real;               // Max. current L1
        maxApparentPowerL1        AT %B66  : Real;               // Max. apparent power L1
        maxActivePowerL1          AT %B70  : Real;               // Max. active power L1
        maxReactivePowerL1        AT %B74  : Real;               // Max. reactive power L1
        maxPowerFactorL1          AT %B78  : Real;               // Max. power factor L1
        minVoltL1N                AT %B82  : Real;               // Min. voltage UL1-N
        minCurrentL1              AT %B86  : Real;               // Min. current L1
        minApparentPowerL1        AT %B90  : Real;               // Min. apparent power L1
        minActivePowerL1          AT %B94  : Real;               // Min. active power L1
        minReactivePowerQtotL1    AT %B98  : Real;               // Min. reactive power Qtot L1
        minPowerFactorL1          AT %B102  : Real;               // Min. power factor L1
        reactivePowerQnL1         AT %B106  : Real;               // Reactive power Qn L1
        voltL1Cycles10to12        AT %B110  : Real;               // Voltage L1 10-12 cycles
        currL1Cycles10to12        AT %B114  : Real;               // Current L1 10-12 cycles
        maxReactivePowerQnL1      AT %B118  : Real;               // Max. reactive power Qn L1
        minReactivePowerQnL1      AT %B122  : Real;               // Min. reactive power Qn L1
        fundVoltL1                AT %B126  : Real;               // Fundamental voltage L1
        fundCurrL1                AT %B130  : Real;               // Fundamental current L1
        fundApparentPowerL1       AT %B134  : Real;               // Fundamental apparent power L1
        fundReactivePowerL1       AT %B138  : Real;               // Fundamental reactive power L1
        fundActivePowerL1         AT %B142  : Real;               // Fundamental active power L1
        fundActiveFactorL1        AT %B146  : Real;               // Fundamental cos φ active factor L1
        maxFundVoltL1             AT %B150  : Real;               // Max. fundamental voltage L1
        maxFundCurrL1             AT %B154  : Real;               // Max. fundamental current L1
        maxFundApparentPowerL1    AT %B158  : Real;               // Max. fundamental apparent power L1
        maxFundReactivePowerL1    AT %B162  : Real;               // Max. fundamental reactive power L1
        maxFundActivePowerL1      AT %B166  : Real;               // Max. fundamental active power L1
        maxFundActiveFactorL1     AT %B170  : Real;               // Max. fundamental cos φ active factor L1
        minFundVoltL1             AT %B174  : Real;               // Min. fundamental voltage L1
        minFundCurrL1             AT %B178  : Real;               // Min. fundamental current L1
        minFundApparentPowerL1    AT %B182  : Real;               // Min. fundamental apparent power L1
        minFundReactivePowerL1    AT %B186  : Real;               // Min. fundamental reactive power L1
        minFundActivePowerL1      AT %B190  : Real;               // Min. fundamental active power L1
        minFundActiveFactorL1     AT %B194  : Real;               // Min. fundamental cos φ active factor L1
        THDaNVoltL1               AT %B198  : Real;               // THD+N voltage L1
        THDaNCurrL1               AT %B202  : Real;               // THD+N current L1
        maxTHDaNVoltL1            AT %B206  : Real;               // Max. THD+N voltage L1
        maxTHDaNCurrL1            AT %B210  : Real;               // Max. THD+N current L1
        minTHDaNVoltL1            AT %B214  : Real;               // Min. THD+N voltage L1
        minTHDaNCurrL1            AT %B218  : Real;               // Min. THD+N current L1
        voltDipValueL1            AT %B222  : Real;               // Voltage dip - value L1
        voltDipDurationL1         AT %B226  : Real;               // Voltage dip - duration L1
        voltSwellValueL1          AT %B230  : Real;               // Voltage swell - value L1
        voltSwellDurationL1       AT %B234  : Real;               // Voltage swell - duration L1
        voltPeakValueL1           AT %B238  : Real;               // Voltage peak value L1
        currPeakValueL1           AT %B242  : Real;               // Current peak value L1
        overCurrValueL1           AT %B246  : Real;               // Overcurrent value L1
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec148V0      : STRUCT
        version                   AT %B0   : Byte;   // Version
        resb1                     AT %B1   : Byte;   // Reserved
        qualifierL2               AT %B2   : Word;   // Qualifier L2
        voltL2N                   AT %B6   : Real;   // Voltage UL2-N
        currentL2                 AT %B10  : Real;   // Current L2
        apparentPowerL2           AT %B14  : Real;   // Apparent power L2
        activePowerL2             AT %B18  : Real;   // Active power L2
        reactivePowerQtotL2       AT %B22  : Real;   // Reactive power Qtot L2
        powerFactorL2             AT %B26  : Real;   // Power factor L2
        phaseAngleL2              AT %B30  : Real;   // Phase angle L2
        apparentEnergyLongL2      AT %B34  : LReal;  // Apparent energy L2
        totalActiveEnergyLongL2   AT %B42  : LReal;  // Active energy (total) L2
        totalReactiveEnergyLongL2 AT %B50  : LReal;  // Reactive energy (total) L2
        maxVoltL2N                AT %B58  : Real;   // Max. voltage UL2-N
        maxCurrentL2              AT %B62  : Real;   // Max. current L2
        maxApparentPowerL2        AT %B66  : Real;   // Max. apparent power L2
        maxActivePowerL2          AT %B70  : Real;   // Max. active power L2
        maxReactivePowerQtotL2    AT %B74  : Real;   // Max. reactive power Qtot L2
        maxPowerFactorL2          AT %B78  : Real;   // Max. power factor L2
        minVoltL2N                AT %B82  : Real;   // Min. voltage UL2-N
        minCurrentL2              AT %B86  : Real;   // Min. current L2
        minApparentPowerL2        AT %B90  : Real;   // Min. apparent power L2
        minActivePowerL2          AT %B94  : Real;   // Min. active power L2
        minReactivePowerQtotL2    AT %B98  : Real;   // Min. reactive power L2
        minPowerFactorL2          AT %B102 : Real;   // Min. power factor L2
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec148V1      : STRUCT
        version                   AT %B0   : Byte    := BYTE#1;  // Version
        resb1                     AT %B1   : Byte;               // Reserved
        qualifierL2               AT %B2   : Word;               // Qualifier L2
        voltL2N                   AT %B6   : Real;               // Voltage UL2-N
        currentL2                 AT %B10  : Real;               // Current L2
        apparentPowerL2           AT %B14  : Real;               // Apparent power L2
        activePowerL2             AT %B18  : Real;               // Active power L2
        reactivePowerL2           AT %B22  : Real;               // Reactive power L2
        powerFactorL2             AT %B26  : Real;               // Power factor L2
        phaseAngleL2              AT %B30  : Real;               // Phase angle L2
        apparentEnergyLongL2      AT %B34  : LReal;              // Apparent energy L2
        totalActiveEnergyLongL2   AT %B42  : LReal;              // Active energy (total) L2
        totalReactiveEnergyLongL2 AT %B50  : LReal;              // Reactive energy (total) L2
        maxVoltL2N                AT %B58  : Real;               // Max. voltage UL2-N
        maxCurrentL2              AT %B62  : Real;               // Max. current L2
        maxApparentPowerL2        AT %B66  : Real;               // Max. apparent power L2
        maxActivePowerL2          AT %B70  : Real;               // Max. active power L2
        maxReactivePowerL2        AT %B74  : Real;               // Max. reactive power L2
        maxPowerFactorL2          AT %B78  : Real;               // Max. power factor L2
        minVoltL2N                AT %B82  : Real;               // Min. voltage UL2-N
        minCurrentL2              AT %B86  : Real;               // Min. current L2
        minApparentPowerL2        AT %B90  : Real;               // Min. apparent power L2
        minActivePowerL2          AT %B94  : Real;               // Min. active power L2
        minReactivePowerQtotL2    AT %B98  : Real;               // Min. reactive power Qtot L2
        minPowerFactorL2          AT %B102 : Real;               // Min. power factor L2
        reactivePowerQnL2         AT %B106 : Real;               // Reactive power Qn L2
        voltL2Cycles10to12        AT %B110 : Real;               // Voltage L2 10-12 cycles
        currL2Cycles10to12        AT %B114 : Real;               // Current L2 10-12 cycles
        maxReactivePowerQnL2      AT %B118 : Real;               // Max. reactive power Qn L2
        minReactivePowerQnL2      AT %B122 : Real;               // Min. reactive power Qn L2
        fundVoltL2                AT %B126 : Real;               // Fundamental voltage L2
        fundCurrL2                AT %B130 : Real;               // Fundamental current L2
        fundApparentPowerL2       AT %B134 : Real;               // Fundamental apparent power L2
        fundReactivePowerL2       AT %B138 : Real;               // Fundamental reactive power L2
        fundActivePowerL2         AT %B142 : Real;               // Fundamental active power L2
        fundActiveFactorL2        AT %B146 : Real;               // Fundamental cos φ active factor L2
        maxFundVoltL2             AT %B150 : Real;               // Max. fundamental voltage L2
        maxFundCurrL2             AT %B154 : Real;               // Max. fundamental current L2
        maxFundApparentPowerL2    AT %B158 : Real;               // Max. fundamental apparent power L2
        maxFundReactivePowerL2    AT %B162 : Real;               // Max. fundamental reactive power L2
        maxFundActivePowerL2      AT %B166 : Real;               // Max. fundamental active power L2
        maxFundActiveFactorL2     AT %B170 : Real;               // Max. fundamental cos φ active factor L2
        minFundVoltL2             AT %B174 : Real;               // Min. fundamental voltage L2
        minFundCurrL2             AT %B178 : Real;               // Min. fundamental current L2
        minFundApparentPowerL2    AT %B182 : Real;               // Min. fundamental apparent power L2
        minFundReactivePowerL2    AT %B186 : Real;               // Min. fundamental reactive power L2
        minFundActivePowerL2      AT %B190 : Real;               // Min. fundamental active power L2
        minFundActiveFactorL2     AT %B194 : Real;               // Min. fundamental cos φ active factor L2
        THDaNVoltL2               AT %B198 : Real;               // THD+N voltage L2
        THDaNCurrL2               AT %B202 : Real;               // THD+N current L2
        maxTHDaNVoltL2            AT %B206 : Real;               // Max. THD+N voltage L2
        maxTHDaNCurrL2            AT %B210 : Real;               // Max. THD+N current L2
        minTHDaNVoltL2            AT %B214 : Real;               // Min. THD+N voltage L2
        minTHDaNCurrL2            AT %B218 : Real;               // Min. THD+N current L2
        voltDipValueL2            AT %B222 : Real;               // Voltage dip - value L2
        voltDipDurationL2         AT %B226 : Real;               // Voltage dip - duration L2
        voltSwellValueL2          AT %B230 : Real;               // Voltage swell - value L2
        voltSwellDurationL2       AT %B234 : Real;               // Voltage swell - duration L2
        voltPeakValueL2           AT %B238 : Real;               // Voltage peak value L2
        currPeakValueL2           AT %B242 : Real;               // Current peak value L2
        overCurrValueL2           AT %B246 : Real;               // Overcurrent value L2
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec149V0      : STRUCT
        version                   AT %B0   : Byte;   // Version
        resb1                     AT %B1   : Byte;   // Reserved
        qualifierL3               AT %B2   : Word;   // Qualifier L3
        voltL3N                   AT %B6   : Real;   // Voltage UL3-N
        currentL3                 AT %B10  : Real;   // Current L3
        apparentPowerL3           AT %B14  : Real;   // Apparent power L3
        activePowerL3             AT %B18  : Real;   // Active power L3
        reactivePowerQtotL3       AT %B22  : Real;   // Reactive power Qtot L3
        powerFactorL3             AT %B26  : Real;   // Power factor L3
        phaseAngleL3              AT %B30  : Real;   // Phase angle L3
        apparentEnergyLongL3      AT %B34  : LReal;  // Apparent energy L3
        totalActiveEnergyLongL3   AT %B42  : LReal;  // Active energy (total) L3
        totalReactiveEnergyLongL3 AT %B50  : LReal;  // Reactive energy (total) L3
        maxVoltL3N                AT %B58  : Real;   // Max. voltage UL3-N
        maxCurrentL3              AT %B62  : Real;   // Max. current L3
        maxApparentPowerL3        AT %B66  : Real;   // Max. apparent power L3
        maxActivePowerL3          AT %B70  : Real;   // Max. active power L3
        maxReactivePowerQtotL3    AT %B74  : Real;   // Max. reactive power Qtot L3
        maxPowerFactorL3          AT %B78  : Real;   // Max. power factor L3
        minVoltL3N                AT %B82  : Real;   // Min. voltage UL3-N
        minCurrentL3              AT %B86  : Real;   // Min. current L3
        minApparentPowerL3        AT %B90  : Real;   // Min. apparent power L3
        minActivePowerL3          AT %B94  : Real;   // Min. active power L3
        minReactivePowerQtotL3    AT %B98  : Real;   // Min. reactive power L3
        minPowerFactorL3          AT %B102 : Real;   // Min. power factor L3
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec149V1      : STRUCT
        version                   AT %B0   : Byte    := BYTE#1;  // Version
        resb1                     AT %B1   : Byte;               // Reserved
        qualifierL3               AT %B2   : Word;               // Qualifier L3
        voltL3N                   AT %B6   : Real;               // Voltage UL3-N
        currentL3                 AT %B10  : Real;               // Current L3
        apparentPowerL3           AT %B14  : Real;               // Apparent power L3
        activePowerL3             AT %B18  : Real;               // Active power L3
        reactivePowerL3           AT %B22  : Real;               // Reactive power L3
        powerFactorL3             AT %B26  : Real;               // Power factor L3
        phaseAngleL3              AT %B30  : Real;               // Phase angle L3
        apparentEnergyLongL3      AT %B34  : LReal;              // Apparent energy L3
        totalActiveEnergyLongL3   AT %B42  : LReal;              // Active energy (total) L3
        totalReactiveEnergyLongL3 AT %B50  : LReal;              // Reactive energy (total) L3
        maxVoltL3N                AT %B58  : Real;               // Max. voltage UL3-N
        maxCurrentL3              AT %B62  : Real;               // Max. current L3
        maxApparentPowerL3        AT %B66  : Real;               // Max. apparent power L3
        maxActivePowerL3          AT %B70  : Real;               // Max. active power L3
        maxReactivePowerL3        AT %B74  : Real;               // Max. reactive power L3
        maxPowerFactorL3          AT %B78  : Real;               // Max. power factor L3
        minVoltL3N                AT %B82  : Real;               // Min. voltage UL3-N
        minCurrentL3              AT %B86  : Real;               // Min. current L3
        minApparentPowerL3        AT %B90  : Real;               // Min. apparent power L3
        minActivePowerL3          AT %B94  : Real;               // Min. active power L3
        minReactivePowerQtotL3    AT %B98  : Real;               // Min. reactive power Qtot L3
        minPowerFactorL3          AT %B102 : Real;               // Min. power factor L3
        reactivePowerQnL3         AT %B106 : Real;               // Reactive power Qn L3
        voltL3Cycles10to12        AT %B110 : Real;               // Voltage L3 10-12 cycles
        currL3Cycles10to12        AT %B114 : Real;               // Current L3 10-12 cycles
        maxReactivePowerQnL3      AT %B118 : Real;               // Max. reactive power Qn L3
        minReactivePowerQnL3      AT %B122 : Real;               // Min. reactive power Qn L3
        fundVoltL3                AT %B126 : Real;               // Fundamental voltage L3
        fundCurrL3                AT %B130 : Real;               // Fundamental current L3
        fundApparentPowerL3       AT %B134 : Real;               // Fundamental apparent power L3
        fundReactivePowerL3       AT %B138 : Real;               // Fundamental reactive power L3
        fundActivePowerL3         AT %B142 : Real;               // Fundamental active power L3
        fundActiveFactorL3        AT %B146 : Real;               // Fundamental cos φ active factor L3
        maxFundVoltL3             AT %B150 : Real;               // Max. fundamental voltage L3
        maxFundCurrL3             AT %B154 : Real;               // Max. fundamental current L3
        maxFundApparentPowerL3    AT %B158 : Real;               // Max. fundamental apparent power L3
        maxFundReactivePowerL3    AT %B162 : Real;               // Max. fundamental reactive power L3
        maxFundActivePowerL3      AT %B166 : Real;               // Max. fundamental active power L3
        maxFundActiveFactorL3     AT %B170 : Real;               // Max. fundamental cos φ active factor L3
        minFundVoltL3             AT %B174 : Real;               // Min. fundamental voltage L3
        minFundCurrL3             AT %B178 : Real;               // Min. fundamental current L3
        minFundApparentPowerL3    AT %B182 : Real;               // Min. fundamental apparent power L3
        minFundReactivePowerL3    AT %B186 : Real;               // Min. fundamental reactive power L3
        minFundActivePowerL3      AT %B190 : Real;               // Min. fundamental active power L3
        minFundActiveFactorL3     AT %B194 : Real;               // Min. fundamental cos φ active factor L3
        THDaNVoltL3               AT %B198 : Real;               // THD+N voltage L3
        THDaNCurrL3               AT %B202 : Real;               // THD+N current L3
        maxTHDaNVoltL3            AT %B206 : Real;               // Max. THD+N voltage L3
        maxTHDaNCurrL3            AT %B210 : Real;               // Max. THD+N current L3
        minTHDaNVoltL3            AT %B214 : Real;               // Min. THD+N voltage L3
        minTHDaNCurrL3            AT %B218 : Real;               // Min. THD+N current L3
        voltDipValueL3            AT %B222 : Real;               // Voltage dip - value L3
        voltDipDurationL3         AT %B226 : Real;               // Voltage dip - duration L3
        voltSwellValueL3          AT %B230 : Real;               // Voltage swell - value L3
        voltSwellDurationL3       AT %B234 : Real;               // Voltage swell - duration L3
        voltPeakValueL3           AT %B238 : Real;               // Voltage peak value L3
        currPeakValueL3           AT %B242 : Real;               // Current peak value L3
        overCurrValueL3           AT %B246 : Real;               // Overcurrent value L3
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec150V1 : STRUCT
        version              : Byte    := BYTE#1;  // Version
        resb1                : Byte;               // Reserved
        operHoursCntTotal    : Real;               // Operating hours counter L1 L2 L3
        operHoursCntL1       : Real;               // Operating hours counter L1
        operHoursCntL2       : Real;               // Operating hours counter L2
        operHoursCntL3       : Real;               // Operating hours counter L3
        statusLimViolGW1to16 : Word;               // Status limit violation GW 1...16
        statusEnergyCntOv    : Word;               // Status of energy counter overflows
        cntLimViolGw1        : UDInt;              // Counter limit violation GW 1
        cntLimViolGw2        : UDInt;              // Counter limit violation GW 2
        cntLimViolGw3        : UDInt;              // Counter limit violation GW 3
        cntLimViolGw4        : UDInt;              // Counter limit violation GW 4
        cntLimViolGw5        : UDInt;              // Counter limit violation GW 5
        cntLimViolGw6        : UDInt;              // Counter limit violation GW 6
        cntLimViolGw7        : UDInt;              // Counter limit violation GW 7
        cntLimViolGw8        : UDInt;              // Counter limit violation GW 8
        cntLimViolGw9        : UDInt;              // Counter limit violation GW 9
        cntLimViolGw10       : UDInt;              // Counter limit violation GW 10
        cntLimViolGw11       : UDInt;              // Counter limit violation GW 11
        cntLimViolGw12       : UDInt;              // Counter limit violation GW 12
        cntLimViolGw13       : UDInt;              // Counter limit violation GW 13
        cntLimViolGw14       : UDInt;              // Counter limit violation GW 14
        cntLimViolGw15       : UDInt;              // Counter limit violation GW 15
        cntLimViolGw16       : UDInt;              // Counter limit violation GW 16
        qualifierL1L2L3      : Word;               // Qualifier L1 L2 L3
        powerQualityAnalysis : UDInt;              // Power quality analysis - Qualifier
        currentModuleTime    : PNIOTimeStamp;      // Current module time
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec151Real : STRUCT
        version                : Byte;                   // Version
        numMeasValues          : Byte;                   // Number of measured values for data record mapping
        measValue              : Array[1..150] of Real;  // ID of measured value for user data mapping
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec161 : STRUCT
        version            : Byte;                  // Version
        resb1              : Byte;                  // Reserved
        THDaNVoltL1        : Real;                  // THD+N voltage L1
        voltL1             : Real;                  // Voltage L1
        harmVoltL1         : Array[1..40] of Real;  // Harmonics 1-40: Voltage L1
        THDaNVoltL2        : Real;                  // THD+N voltage L2
        voltL2             : Real;                  // Voltage L2
        harmVoltL2         : Array[1..40] of Real;  // Harmonics 1-40: Voltage L2
        THDaNVoltL3        : Real;                  // THD+N voltage L3
        voltL3             : Real;                  // Voltage L3
        harmVoltL3         : Array[1..40] of Real;  // Harmonics 1-40: Voltage L3
        currentModuleTime  : PNIOTimeStamp;         // Current module time
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec135 : STRUCT
        majMinVer          : Byte    := BYTE#0;      // Major / minor version
        dataRecordNum      : Byte    := BYTE#151;    // Data record number for data record mapping = 151
        numMeasValues      : Byte    := BYTE#150;    // Number of measured values for data record mapping
        resb3              : Byte;                   // Reserved
        measValueID        : Array[1..150] of Word;  // ID of measured value for user data mapping
      END_STRUCT;

   END_TYPE

   TYPE TMPulseDataRec : STRUCT
        header         : TMPulseDataRecHead;               // Header
        channel        : Array[0..1] of TMPulseDataRecCh;  // Data record for 1 channel configuration; use Array[0..1] for 2 channel configuration
      END_STRUCT;

   END_TYPE

   TYPE EM480VSTDataRec130 : STRUCT
        majMinVer          : Byte    := BYTE#0;     // Major / minor version
        numUserDataVariant : Byte    := BYTE#1;     // Number of user data variant = 1
        numMeasValues      : Byte;                  // Number of measured values for user data mapping
        resb3              : Byte;                  // Reserved
        measValue          : Array[1..64] of Word;  // ID of measured value for user data mapping
      END_STRUCT;

   END_TYPE

   TYPE EM480VSTDataRec128               : STRUCT
        majMinVer                        : Byte    := BYTE#81;                // Major / minor version
        numParamStruct                   : Byte    := BYTE#2;                 // Number of parameter structures = 2
        numModuleParamBlocks             : Byte    := BYTE#1;                 // Number of module parameter blocks = 1
        lengthModuleParamBlock           : Byte    := BYTE#8;                 // Length of module parameter block = 8
        connectTypePhases                : Byte    := BYTE#0;                 // Connection type of the phases
        measRangePower                   : Byte;                              // Voltage measuring range of the power supply system
        energyCountGateScaleValLineFrequ : Byte;                              // Energy counter gate / Full-scale value for energy counter / Line frequency of the power supply system
        lineVoltTolerance                : Byte;                              // Line voltage tolerance
        diagLineVolt                     : Byte;                              // Diagnostics line voltage
        idUserDataVariant                : Byte;                              // ID of the user data variant
        resb10                           : Byte;                              // Reserved
        resb11                           : Byte;                              // Reserved
        numChannelParamBlocks            : Byte    := BYTE#3;                 // Number of channel parameter blocks = 3
        lengthChannelParamBlock          : Byte    := BYTE#20;                // Length of channel parameter block = 20
        channel                          : Array[0..2] of EM480VSTDataRecCh;
      END_STRUCT;

   END_TYPE

   TYPE MotorStarterIAndM2 : STRUCT
        blockType          : Int    := 16#0022;     // Block type
        blockLength        : Int    := 16#0012;     // Block length = 18
        blockVersion       : Int    := 16#0100;     // Block version = 1.0
        imDate             : Array[0..15] of Char;  // Specification of an input date (YYYY-MM-DD HH:MM)
      END_STRUCT;

   END_TYPE

   TYPE MotorStarterIAndM1 : STRUCT
        blockType          : Int    := 16#0021;     // Block type
        blockLength        : Int    := 16#0038;     // Block length = 56
        blockVersion       : Int    := 16#0100;     // Block version = 1.0
        tagFnction         : Array[0..31] of Char;  // Plant identifier
        tagLocation        : Array[0..21] of Char;  // Location designation
      END_STRUCT;

   END_TYPE

   TYPE MotorStarterIAndM0 : STRUCT
        header0            : Int;                   // Reserved for header
        header2            : Int;                   // Reserved for header
        header4            : Int;                   // Reserved for header
        manufacturerID     : Int;                   // 42 = Manufacturer ID SIEMENS
        orderID            : Array[0..19] of Char;  // Order No. (MLFB)
        serialNumber       : Array[0..15] of Char;  // Serial number
        hwRev              : Int;                   // Hardware revision or product version
        swRev              : Array[0..3] of Char;   // Firmware version
        revCounter         : Int;                   // Revision counter
        profileID          : Int;                   // PROFIBUS profile
        profileSpecType    : Int;                   // Contains further information on the profile
        imVersion          : Int;                   // Version of the identification data (0101hex = Version 1.1)
        imSupported        : Int;                   // Information about the available identification data (Index 2 to 4)
      END_STRUCT;

   END_TYPE

   TYPE MotorStarterDS204     : STRUCT
        blockingTime          : Byte    := BYTE#2;   // Blocking time; 1 … 7,5s/0.5 s; [2 … 15]; Default [2]: 1 s.; for not safety starter mwith V1.0 t >= 5 sec [2 … 10]
        warnLimitMotorHeat    : Byte;                // Warning limit - motor heating; 0 … 99 %/1 %; [0 … 99]; [0]: Deactivated
        resw2                 : Int;                 // Reserved
        resw4                 : Int;                 // Reserved
        blockingCurrent       : Byte    := BYTE#16;  // Blocking current; 150 ... 1000 %/50 %; [3 ... 20]; Default [16]: 800 %
        resb7                 : Byte;                // Reserved
        lowerCurrentWarnLimit : Byte    := BYTE#7;   // Lower current warning limit; 18.75 … 100 %/3.125 %; [6 … 32]; [0]: Deactivated; Default [7]: 21.875 %
        upperCurrentWarnLimit : Byte    := BYTE#36;  // Upper current warning limit; 50 … 400 %/3.125 %; [16 … 128]; [0]: Deactivated; Default [36]: 112.5 %
      END_STRUCT;

   END_TYPE

   TYPE MotorStarterDS203              : STRUCT
        res00                          : Bool;                // Reserved
        loadType                       : Bool;                // Load type 0= 3phase; 1=1phase
        exMotorApp                     : Bool;                // EX motor application 0= no; 1= yes (only F-Starter)
        res03                          : Bool;                // Reserved
        turnOffClass0                  : Bool;                // Trip class; [0]: CLASS 10; [3]: CLASS 5 (10a)
        turnOffClass1                  : Bool;                // Trip class; [0]: CLASS 10; [3]: CLASS 5 (10a)
        turnOffClass2                  : Bool;                // Trip class; [0]: CLASS 10; [3]: CLASS 5 (10a)
        turnOffClass3                  : Bool;                // Trip class; [0]: CLASS 10; [3]: CLASS 5 (10a)
        responseOverload0              : Bool;                // Response to overload - TMM; [0]: Trip without restart; [1]: Trip with restart ; [2]: Warn only
        responseOverload1              : Bool;                // Response to overload - TMM; [0]: Trip without restart; [1]: Trip with restart ; [2]: Warn only
        behaviorThermMotorModelRestart : Bool;                // 0]: Retention of the thermal motor; [1]: Deletion of the thermal motor
        responseSafetySwitchOff        : Bool;                // [0]: no warning by safety switch-off; [1]: warning by safety switch-off
        responseCPUStop                : Bool;                // Response to CPU STOP; [0]: Switch substitute value; [1]: Retain last value
        responseResCurrentDetect       : Bool    := TRUE;     // Response to residual current; [0]: Warn ; [1]: Tripping
        responseAsymmetry              : Bool    := TRUE;     // Response to asymmetry; [0]: Warn ; [1]: Tripping
        res17                          : Bool;                // Reserved
        input1Level                    : Bool    := TRUE;     // Input 1 level; [0]: NC contact; [1]: NO contact
        input2Level                    : Bool    := TRUE;     // Input 2 level; [0]: NC contact; [1]: NO contact
        input3Level                    : Bool    := TRUE;     // Input 3 level; [0]: NC contact; [1]: NO contact
        groupFaultDiag                 : Bool;                // Group fault diagnostics; [0]: Enable; [1]: Disable
        input1Signal                   : Bool;                // Input 1 signal; [0]: Non-retentive; [1]: Retentive
        input2Signal                   : Bool;                // Input 2 signal; [0]: Non-retentive; [1]: Retentive
        input3Signal                   : Bool;                // Input 3 signal; [0]: Non-retentive; [1]: Retentive
        groupWarnDiag                  : Bool    := TRUE;     // Group warning diagnostics; [0]: Enable; [1]: Disable
        input1Action                   : Byte    := BYTE#8;   // Input 1 action; [8]: Motor CW
        input2Action                   : Byte    := BYTE#9;   // Input 2 action; [9]: Motor CCW
        input3Action                   : Byte    := BYTE#13;  // Input 3 action; [13]: Cold start; not safety starter!
        ratedOperatCurrent             : Int;                 // Rated operational current Ie; 0.3 … 9 A/10 mA
        lowerCurrentLimit              : Byte;                // Lower current limit; 18.75 … 100 %/3.125 % [6 … 32]; [0]: Deactivated
        upperCurrentLimit              : Byte;                // Upper current limit; 50 … 400 %/3.125 % [16 … 128]; [0]: Deactivated
      END_STRUCT;

   END_TYPE

   TYPE MotorStarterDS95          : STRUCT
        resb0                     : Byte;   // Reserved
        res10                     : Bool;   // Reserved
        res11                     : Bool;   // Reserved
        res12                     : Bool;   // Reserved
        res13                     : Bool;   // Reserved
        res14                     : Bool;   // Reserved
        res15                     : Bool;   // Reserved
        operatHoursResolution     : Bool;   // Operating hours resolution 1 second
        operatHoursSelect         : Bool;   // Operating hours selection 1 operating hour - device
        resw2                     : Int;    // Reserved
        operatHoursDevice         : DWord;  // Device operating hours in seconds
        numStartsCw               : DInt;   // Number of motor CW starts
        numStartsCcw              : DInt;   // Number of motor CCW starts
        numOverloadTrips          : Int;    // Number of motor overload trips
        resw18                    : Int;    // Reserved
        motorCurrentMax           : DInt;   // Motor current Imax; +-0...20.000A; Inc 0.01A
        lastTripCurrent           : DInt;   // Last tripping current Ia; +-0...20.000A; Inc 0.01A
        operatHoursMotor          : DInt;   // Motor operating hours in seconds
        resdw32                   : DWord;  // Reserved
        resdw36                   : DWord;  // Reserved
        resdw40                   : DWord;  // Reserved
        resdw44                   : DWord;  // Reserved
        resw48                    : Word;   // Reserved
        numSwitchElemOverloadTrip : Int;    // Number of switching element overload trips
        numHardSwitchOperatRelay  : Int;    // Number of hard switching operations of the relay
        resdw54                   : DWord;  // Reserved
        resdw58                   : DWord;  // Reserved
        resdw62                   : DWord;  // Reserved
        resdw66                   : DWord;  // Reserved
        resdw70                   : DWord;  // Reserved
        resdw74                   : DWord;  // Reserved
        resdw78                   : DWord;  // Reserved
        resdw82                   : DWord;  // Reserved
        resdw86                   : DWord;  // Reserved
      END_STRUCT;

   END_TYPE

   TYPE MotorStarterDS92          : STRUCT
        ready                     : Bool;   // Ready (automatic)
        motorCw                   : Bool;   // Motor CW
        motorCcw                  : Bool;   // Motor CCW (Reversing starters only)
        switchElementOverload     : Bool;   // Switching element overload
        switchElementDefective    : Bool;   // Switching element defective
        emergencyStartActive      : Bool;   // Emergency start active
        groupFault                : Bool;   // Group fault
        groupWarning              : Bool;   // Group warning
        res10                     : Bool;   // Reserved
        res11                     : Bool;   // Reserved
        res12                     : Bool;   // Reserved
        res13                     : Bool;   // Reserved
        res14                     : Bool;   // Reserved
        res15                     : Bool;   // Reserved
        res16                     : Bool;   // Reserved
        res17                     : Bool;   // Reserved
        res20                     : Bool;   // Reserved
        res21                     : Bool;   // Reserved
        res22                     : Bool;   // Reserved
        thermMotorModelOverload   : Bool;   // Thermal motor model overload
        overloadTripping          : Bool;   // Overload tripping
        res25                     : Bool;   // Reserved
        coolTimeActive            : Bool;   // Cooling time active
        fdiActivated              : Bool;   // Input F-DI activated (safety motor starters only)
        res30                     : Bool;   // Reserved
        res31                     : Bool;   // Reserved
        mechRotInterlockNotReady  : Bool;   // Mechanical rotary interlock is not in the READY position
        res33                     : Bool;   // Reserved
        res34                     : Bool;   // Reserved
        res35                     : Bool;   // Reserved
        res36                     : Bool;   // Reserved
        inputControl              : Bool;   // Input control
        asymmetryDetected         : Bool;   // Asymmetry detected
        asymmetryTripping         : Bool;   // Asymmetry tripping
        upperLimitViolation       : Bool;   // Ie upper limit violation
        lowerLimitViolation       : Bool;   // Ie lower limit violation
        res44                     : Bool;   // Reserved
        residualCurrentDetected   : Bool;   // Residual current detected
        residualCurrentTripping   : Bool;   // Residual current tripping
        trippingMotorBlocking     : Bool;   // Tripping due to motor blocking
        input1                    : Bool;   // Input 1
        input2                    : Bool;   // Input 2
        input3                    : Bool;   // Input 3
        inputLC                   : Bool;   // Input LC
        inputTripping             : Bool;   // Input tripping
        inputTripCw               : Bool;   // Input trip CW
        inputWarning              : Bool;   // Input warning
        inputTripCcw              : Bool;   // Input trip CCW
        res60                     : Bool;   // Reserved
        res61                     : Bool;   // Reserved
        quickStopActive           : Bool;   // Quick stop active
        sensorSupplyOverload      : Bool;   // Sensor supply overload
        res64                     : Bool;   // Reserved
        res65                     : Bool;   // Reserved
        res66                     : Bool;   // Reserved
        electSupplyVoltLow        : Bool;   // Electronics supply voltage too low
        res70                     : Bool;   // Reserved
        cpuMasterStop             : Bool;   // CPU or master STOP
        autoMode                  : Bool;   // Automatic mode
        res73                     : Bool;   // Reserved
        manLocal                  : Bool;   // Manual local (local control)
        res75                     : Bool;   // Reserved
        res76                     : Bool;   // Reserved
        processImageErr           : Bool;   // Process image error
        res80                     : Bool;   // Reserved
        invalParaValue            : Bool;   // Invalid parameter value (during operation / starting)
        noParaChangeInOn          : Bool;   // Parameters cannot be changed in ON state
        res83                     : Bool;   // Reserved
        noExtStartupParaReceiv    : Bool;   // No external startup parameters received
        res85                     : Bool;   // Reserved
        res86                     : Bool;   // Reserved
        res87                     : Bool;   // Reserved
        res90                     : Bool;   // Reserved
        res91                     : Bool;   // Reserved
        faultSelfTest             : Bool;   // F-Starter: Fault self-teset
        res93                     : Bool;   // Reserved
        res94                     : Bool;   // Reserved
        res95                     : Bool;   // Reserved
        res96                     : Bool;   // Reserved
        res97                     : Bool;   // Reserved
        incorrectParaNum          : Word;   // Incorrect parameter number
        resw12                    : Word;   // Reserved
        coldStartActive           : Bool;   // Cold start active
        coldStartTripping         : Bool;   // Cold start tripping
        res142                    : Bool;   // Reserved
        res143                    : Bool;   // Reserved
        res144                    : Bool;   // Reserved
        res145                    : Bool;   // Reserved
        res146                    : Bool;   // Reserved
        res147                    : Bool;   // Reserved
        resb15                    : Byte;   // Reserved
        resw16                    : Word;   // Reserved
        resb18                    : Byte;   // Reserved
        electSupplyVoltHigh       : Bool;   // Electronics supply voltage too high
        readyMotorOn              : Bool;   // Ready for motor ON
        switchElementShortCircuit : Bool;   // Switching element short-circuit
        bypassElementDefect       : Bool;   // Bypass element defective
        res194                    : Bool;   // Reserved
        res195                    : Bool;   // Reserved
        res196                    : Bool;   // Reserved
        res197                    : Bool;   // Reserved
        resb20                    : Byte;   // Reserved
        res210                    : Bool;   // Reserved
        res211                    : Bool;   // Reserved
        currMeasRangeOvershot     : Bool;   // Current measuring range overshot
        res213                    : Bool;   // Reserved
        res214                    : Bool;   // Reserved
        res215                    : Bool;   // Reserved
        res216                    : Bool;   // Reserved
        res217                    : Bool;   // Reserved
        autoMode2                 : Bool;   // Automatic mode (no connection to the mech. rotary interlock)
        res221                    : Bool;   // Reserved
        res222                    : Bool;   // Reserved
        manLocalMode              : Bool;   // Manual local mode (no connection to the mech. rotary interlock)
        res224                    : Bool;   // Reserved
        res225                    : Bool;   // Reserved
        res226                    : Bool;   // Reserved
        res227                    : Bool;   // Reserved
        resb23                    : Byte;   // Reserved
        resw24                    : Word;   // Reserved
        resdw26                   : DWord;  // Reserved
        resw30                    : Word;   // Reserved
        qickStop1Dir              : Bool;   // Quick Stop 1 - direction-independent
        qickStop1Cw               : Bool;   // Quick Stop 1 - clockwise
        qickStop1Ccw              : Bool;   // Quick Stop 1 - counter clockwise
        res323                    : Bool;   // Reserved
        res324                    : Bool;   // Reserved
        res325                    : Bool;   // Reserved
        res326                    : Bool;   // Reserved
        res327                    : Bool;   // Reserved
        resb33                    : Byte;   // Reserved
        endPosCw                  : Bool;   // Input operational trip - end position CW
        endPosCcw                 : Bool;   // Input operational trip - end position CCW
        res342                    : Bool;   // Reserved
        res343                    : Bool;   // Reserved
        res344                    : Bool;   // Reserved
        res345                    : Bool;   // Reserved
        res346                    : Bool;   // Reserved
        res347                    : Bool;   // Reserved
        resb35                    : Byte;   // Reserved
        res360                    : Bool;   // Reserved
        res361                    : Bool;   // Reserved
        res362                    : Bool;   // Reserved
        res363                    : Bool;   // Reserved
        res364                    : Bool;   // Reserved
        res365                    : Bool;   // Reserved
        startPause                : Bool;   // Start_Pause command is pending
        energySaveModeActive      : Bool;   // Energy saving mode active
        resw37                    : Byte;   // Reserved
        resdw38                   : DWord;  // Reserved
        resdw42                   : DWord;  // Reserved
        resdw46                   : DWord;  // Reserved
        exMotorProtectActive      : Bool;   // F-Starter: Ex motor protection active
        res501                    : Bool;   // Reserved
        newSafetyParaRec          : Bool;   // F-Starter: new safety parameters received
        res503                    : Bool;   // Reserved
        res504                    : Bool;   // Reserved
        res505                    : Bool;   // Reserved
        res506                    : Bool;   // Reserved
        res507                    : Bool;   // Reserved
        resb51                    : Byte;   // Reserved
        res520                    : Bool;   // Reserved
        res521                    : Bool;   // Reserved
        res522                    : Bool;   // Reserved
        res523                    : Bool;   // Reserved
        currWarnLimitExceed       : Bool;   // Ie warning limit exceeded
        currWarnLimitUndershot    : Bool;   // Ie warning limit undershot
        res526                    : Bool;   // Reserved
        res527                    : Bool;   // Reserved
        resb53                    : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec129 : STRUCT
        majMinVer          AT %B0 : Byte    := BYTE#0;                     // Major / minor version
        lengthParamBlock   AT %B1 : Byte    := BYTE#10;                    // Length of parameter block = 10
        numParamBlocks     AT %B2 : Byte    := BYTE#16;                    // Number of parameter blocks
        resb3              AT %B3 : Byte;                                  // Reserved
        paramBlock         AT %B4 : Array[1..16] of EM480VHFDataRecParam;
      END_STRUCT;

   END_TYPE

   TYPE EM480VRCHFDataRec128             : STRUCT
        majMinVer                        : Byte    := BYTE#97;                  // Major / minor version
        numParamStruct                   : Byte    := BYTE#2;                   // Number of parameter structures = 2
        numModuleParamBlocks             : Byte    := BYTE#1;                   // Number of module parameter blocks = 1
        lengthModuleParamBlock           : Byte    := BYTE#26;                  // Length of module parameter block = 26
        connectTypePhases                : Byte    := BYTE#0;                   // Connection type of the phases
        measRangePower                   : Byte;                                // Voltage measuring range of the power supply system
        energyCountGateScaleValLineFrequ : Byte;                                // Energy counter gate / Full-scale value for energy counter / Line frequency of the power supply system
        resb07                           : Byte;                                // Reserved
        enableCalcAnalysisDiag           : Byte;                                // Enable value calculation, analysis and diagnostic
        idUserDataVariant                : Byte;                                // ID of the user data variant
        currTransSecVolt                 : Word;                                // Current transformer secondary voltage [0.1mV]
        currTransPrimCurr                : Word;                                // Current transformer Primary rated current [A]
        currTransLineCond                : Byte;                                // Current transformer for line conductions
        resb15                           : Byte;                                // Reserved
        voltDipLimit                     : Word;                                // Voltage dip limit in relation to nominal value voltage [0.1%]
        voltSwellLimit                   : Word;                                // Voltage swell limit in relation to nominal value voltage [0.1%]
        thresOverCurr                    : Word;                                // Threshold overcurrent in relation to nominal value current [0.1%]
        numCycForAnalysis                : Word;                                // Number of cycles for analysis of voltage increase and dip
        resw24                           : Word;                                // Reserved
        resw26                           : Word;                                // Reserved
        resw28                           : Word;                                // Reserved
        numChannelParamBlocks            : Byte    := BYTE#3;                   // Number of channel parameter blocks = 3
        lengthChannelParamBlock          : Byte    := BYTE#32;                  // Length of channel parameter block = 32
        channel                          : Array[0..2] of EM480VRCHFDataRecCh;
      END_STRUCT;

   END_TYPE

   TYPE MotorStarterIn          : STRUCT
        ready                   : Bool;   // Ready (automatic)
        motorOn                 : Bool;   // Motor on
        groupFault              : Bool;   // Group fault
        groupWarning            : Bool;   // Group warning
        input1                  : Bool;   // Input 1 (with 3DI/LC module)
        input2                  : Bool;   // Input 2 (with 3DI/LC module)
        input3                  : Bool;   // Input 3 (with 3DI/LC module)
        inputLC                 : Bool;   // Input LC (with 3DI/LC module)
        currMotorCurrentBit0    : Bool;   // Current motor current Icurr [%] Bit 0
        currMotorCurrentBit1    : Bool;   // Current motor current Icurr [%] Bit 1
        currMotorCurrentBit2    : Bool;   // Current motor current Icurr [%] Bit 2
        currMotorCurrentBit3    : Bool;   // Current motor current Icurr [%] Bit 3
        currMotorCurrentBit4    : Bool;   // Current motor current Icurr [%] Bit 4
        currMotorCurrentBit5    : Bool;   // Current motor current Icurr [%] Bit 5
        manLocalMode            : Bool;   // Manual local mode (with 3DI/LC module)
        res17                   : Bool;   // Reserved
        readyStartMotorOn       : Bool;   // Ready to start for motor on
        motorCw                 : Bool;   // Motor CW
        motorCcw                : Bool;   // Motor CCW (Reversing starters only)
        quickStopActive         : Bool;   // Quick stop active
        energySaveModeActive    : Bool;   // Energy saving mode active
        diModulePlugged         : Bool;   // DI module plugged (for non safety motor starters version >= V1.1)
        exMotorProtection       : Bool;   // EX motor protection (safety motor starters only)
        res27                   : Bool;   // Reserved
        thermMotorModelOverload : Bool;   // Thermal motor model overload
        res31                   : Bool;   // Reserved
        currentLimitTripping    : Bool;   // Ie current limit tripping
        fdiActivated            : Bool;   // Input F-DI activated (safety motor starters only)
        residualCurrentDetected : Bool;   // Residual current detected
        asymmetryDetected       : Bool;   // Asymmetry detected
        overTemperature         : Bool;   // Overtemperature
        res37                   : Bool;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EMRCHFDataRec128            : STRUCT
        majMinVer                   : Byte    := BYTE#105;             // Major / minor version
        numParamStruct              : Byte    := BYTE#2;               // Number of parameter structures = 2
        numModuleParamBlocks        : Byte    := BYTE#1;               // Number of module parameter blocks = 1
        lengthModuleParamBlock      : Byte    := BYTE#26;              // Length of module parameter block = 26
        connectTypePhases           : Byte;                            // Connection type of the phases
        measRangePower              : Byte;                            // Voltage measuring range of the power supply system
        energyGateCountLineFrequ    : Byte;                            // Energy meters gate switch / End value / Line frequency of the power supply system
        resb07                      : Byte;                            // Reserved
        minMaxValueCalcGateDiagVolt : Byte;                            // Min/Max value calc. / Min/Max value calc. gate / Diagnostics load voltage
        idUserDataVariant           : Byte;                            // ID of the user data variant
        currTransSecVolt            : Word;                            // Current transformer secondary voltage
        currTransPrimCurr           : Word;                            // Current transformer primary rated current
        currTransLineCond           : Byte;                            // Current transformer for line
        resb15                      : Byte;                            // Reserved
        voltDipLimit                : Word;                            // Voltage dip limit in relation to nominal value voltage [0.1%]
        voltSwellLimit              : Word;                            // Voltage swell limit in relation to nominal value voltage [0.1%]
        thresOverCurr               : Word;                            // Threshold overcurrent in relation to nominal value current [0.1%]
        numCycForAnalysis           : Word;                            // Number of cycles for analysis of voltage increase and dip
        resb24                      : Byte;                            // Reserved
        resb25                      : Byte;                            // Reserved
        resb26                      : Byte;                            // Reserved
        resb27                      : Byte;                            // Reserved
        resb28                      : Byte;                            // Reserved
        resb29                      : Byte;                            // Reserved
        numChannelParamBlocks       : Byte    := BYTE#3;               // Number of channel parameter blocks = 3
        lengthChannelParamBlock     : Byte    := BYTE#32;              // Length of channel parameter block = 32
        channel                     : Array[0..2] of EMRCHFDataRecCh;  // Channels
      END_STRUCT;

   END_TYPE

   TYPE MotorStarterDS94  : STRUCT
        phaseCurrentL1    : Byte;   // Phase current L1 in %; 0...796%; Inc 3.125%
        phaseCurrentL2    : Byte;   // Phase current L2 in %; 0...796%; Inc 3.125%
        phaseCurrentL3    : Byte;   // Phase current L3 in %; 0...796%; Inc 3.125%
        resb3             : Byte;   // Reserved
        resw4             : Word;   // Reserved
        resb6             : Byte;   // Reserved
        unbalance         : Byte;   // Unbalance; 0...255%; Inc 1%
        motorHeating      : Word;   // Motor heating; 0...1.000%
        resdw10           : DWord;  // Reserved
        resdw14           : DWord;  // Reserved
        resdw18           : DWord;  // Reserved
        resdw22           : DWord;  // Reserved
        resw26            : Word;   // Reserved
        phaseCurrentEffL1 : DInt;   // Phase current L1; +-0...20.000A; Inc 0.01A
        phaseCurrentEffL2 : DInt;   // Phase current L2; +-0...20.000A; Inc 0.01A
        phaseCurrentEffL3 : DInt;   // Phase current L3; +-0...20.000A; Inc 0.01A
        electrSupplyVolt  : Int;    // Electronics supply voltage; 0... 1.500V; Inc 0.1V
        readw42           : DWord;  // Reserved
        resdw46           : DWord;  // Reserved
        resdw50           : DWord;  // Reserved
        resdw54           : DWord;  // Reserved
        resdw58           : DWord;  // Reserved
        resw62            : Word;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE MotorStarterDS7x : STRUCT
        entry            AT %B0 : Array[1..21] of MotorStarterEntry;
      END_STRUCT;

   END_TYPE

   TYPE TMPulseControlMotor : STRUCT
        channel             AT %B0 : Array[0..1] of TMPulseControlMotorCh;
      END_STRUCT;

   END_TYPE

   TYPE TMPulseFeedback : STRUCT
        channel         AT %B0 : Array[0..1] of TMPulseFeedbackCh;
      END_STRUCT;

   END_TYPE

   TYPE MotorStarterIAndM3 : STRUCT
        blockType          AT %B0 : Int    := 16#0023;     // Block type
        blockLength        AT %B2 : Int    := 16#0038;     // Block length = 56
        blockVersion       AT %B4 : Int    := 16#0100;     // Block version = 1.0
        imDescriptor       AT %B6 : Array[0..53] of Char;  // Comment
      END_STRUCT;

   END_TYPE

   TYPE EM480VSTDataRec129 : STRUCT
        majMinVer          AT %B0 : Byte    := BYTE#0;                     // Major / minor version
        lengthParamBlock   AT %B1 : Byte    := BYTE#10;                    // Length of parameter block = 10
        numParamBlocks     AT %B2 : Byte    := BYTE#1;                     // Number of parameter blocks
        resb3              AT %B3 : Byte;                                  // Reserved
        paramBlock         AT %B4 : Array[1..16] of EM480VSTDataRecParam;
      END_STRUCT;

   END_TYPE

   TYPE MotorStarterDS201              : STRUCT
        res00                          : Bool;                // Reserved
        loadType                       : Bool;                // Load type 0= 3phase; 1=1phase
        exMotorApp                     : Bool;                // EX motor application 0= no; 1= yes (only F-Starter)
        res03                          : Bool;                // Reserved
        turnOffClass0                  : Bool;                // Trip class; [0]: CLASS 10; [3]: CLASS 5 (10a)
        turnOffClass1                  : Bool;                // Trip class; [0]: CLASS 10; [3]: CLASS 5 (10a)
        turnOffClass2                  : Bool;                // Trip class; [0]: CLASS 10; [3]: CLASS 5 (10a)
        turnOffClass3                  : Bool;                // Trip class; [0]: CLASS 10; [3]: CLASS 5 (10a)
        responseOverload0              : Bool;                // Response to overload - TMM; [0]: Trip without restart; [1]: Trip with restart ; [2]: Warn only
        responseOverload1              : Bool;                // Response to overload - TMM; [0]: Trip without restart; [1]: Trip with restart ; [2]: Warn only
        behaviorThermMotorModelRestart : Bool;                // 0]: Retention of the thermal motor; [1]: Deletion of the thermal motor
        responseSafetySwitchOff        : Bool;                // [0]: no warning by safety switch-off; [1]: warning by safety switch-off
        responseCPUStop                : Bool;                // Response to CPU STOP; [0]: Switch substitute value; [1]: Retain last value
        responseResCurrentDetect       : Bool    := TRUE;     // Response to residual current; [0]: Warn ; [1]: Tripping
        responseAsymmetry              : Bool    := TRUE;     // Response to asymmetry; [0]: Warn ; [1]: Tripping
        res17                          : Bool;                // Reserved
        input1Level                    : Bool    := TRUE;     // Input 1 level; [0]: NC contact; [1]: NO contact
        input2Level                    : Bool    := TRUE;     // Input 2 level; [0]: NC contact; [1]: NO contact
        input3Level                    : Bool    := TRUE;     // Input 3 level; [0]: NC contact; [1]: NO contact
        groupFaultDiag                 : Bool;                // Group fault diagnostics; [0]: Enable; [1]: Disable
        input1Signal                   : Bool;                // Input 1 signal; [0]: Non-retentive; [1]: Retentive
        input2Signal                   : Bool;                // Input 2 signal; [0]: Non-retentive; [1]: Retentive
        input3Signal                   : Bool;                // Input 3 signal; [0]: Non-retentive; [1]: Retentive
        groupWarnDiag                  : Bool    := TRUE;     // Group warning diagnostics; [0]: Enable; [1]: Disable
        input1Action                   : Byte    := BYTE#8;   // Input 1 action; [8]: Motor CW
        input2Action                   : Byte    := BYTE#9;   // Input 2 action; [9]: Motor CCW
        input3Action                   : Byte    := BYTE#13;  // Input 3 action; [13]: Cold start; not safety starter!
        ratedOperatCurrent             : Int;                 // Rated operational current Ie; 0.3 … 9 A/10 mA
        lowerCurrentLimit              : Byte;                // Lower current limit; 18.75 … 100 %/3.125 % [6 … 32]; [0]: Deactivated
        upperCurrentLimit              : Byte;                // Upper current limit; 50 … 400 %/3.125 % [16 … 128]; [0]: Deactivated
      END_STRUCT;

   END_TYPE

   TYPE AI2xSTDataRec128   : STRUCT
        majMinVer          AT %B0  : Byte    := BYTE#0;              // Major / minor version
        channelParamLength AT %B1  : Byte    := BYTE#18;             // Length of the parameter data = 18
        channel            AT %B2  : Array[0..1] of AIxSTDataRecCh;
      END_STRUCT;

   END_TYPE

   TYPE EM480VCTHFDataRec128             : STRUCT
        majMinVer                        : Byte    := BYTE#97;                  // Major / minor version
        numParamStruct                   : Byte    := BYTE#2;                   // Number of parameter structures = 2
        numModuleParamBlocks             : Byte    := BYTE#1;                   // Number of module parameter blocks = 1
        lengthModuleParamBlock           : Byte    := BYTE#26;                  // Length of module parameter block = 26
        connectTypePhases                : Byte    := BYTE#0;                   // Connection type of the phases
        measRangePower                   : Byte;                                // Voltage measuring range of the power supply system
        energyCountGateScaleValLineFrequ : Byte;                                // Energy counter gate / Full-scale value for energy counter / Line frequency of the power supply system
        resb07                           : Byte;                                // Reserved
        enableCalcAnalysisDiag           : Byte;                                // Enable value calculation, analysis and diagnostic
        idUserDataVariant                : Byte;                                // ID of the user data variant
        currTransPrimCurr                : DWord;                               // Current transformer Primary current (A)
        currTransSecCurr                 : Byte;                                // Current transformer secondary current; 00=1A, 01=5A 
        resb15                           : Byte;                                // Reserved
        voltDipLimit                     : Word;                                // Voltage dip limit in relation to nominal value voltage [0.1%]
        voltSwellLimit                   : Word;                                // Voltage swell limit in relation to nominal value voltage [0.1%]
        thresOverCurr                    : Word;                                // Threshold overcurrent in relation to nominal value current [0.1%]
        numCycForAnalysis                : Word;                                // Number of cycles for analysis of voltage increase and dip
        resw24                           : Word;                                // Reserved
        resw26                           : Word;                                // Reserved
        resw28                           : Word;                                // Reserved
        numChannelParamBlocks            : Byte    := BYTE#3;                   // Number of channel parameter blocks = 3
        lengthChannelParamBlock          : Byte    := BYTE#32;                  // Length of channel parameter block = 32
        channel                          : Array[0..2] of EM480VCTHFDataRecCh;
      END_STRUCT;

   END_TYPE

   TYPE EM400VSTDataRec142         : STRUCT
        version                    : Byte;   // Version
        resb1                      : Byte;   // Reserved
        voltL1N                    : Real;   // Voltage UL1-N
        voltL2N                    : Real;   // Voltage UL2-N
        voltL3N                    : Real;   // Voltage UL3-N
        voltL1L2                   : Real;   // Voltage UL1-L2
        voltL2L3                   : Real;   // Voltage UL2-L3
        voltL3L1                   : Real;   // Voltage UL3-L1
        currentL1                  : Real;   // Current L1
        currentL2                  : Real;   // Current L2
        currentL3                  : Real;   // Current L3
        powerFactorL1              : Real;   // Power factor L1
        powerFactorL2              : Real;   // Power factor L2
        powerFactorL3              : Real;   // Power factor L3
        totalPowerFactor           : Real;   // Total power factor L1 L2 L3
        frequency                  : Real;   // Frequency
        amplUnbalanceVolt          : Real;   // Amplitude unbalance for voltage
        amplUnbalanceCurrent       : Real;   // Amplitude unbalance for current
        apparentPowerL1            : Real;   // Apparent power L1
        apparentPowerL2            : Real;   // Apparent power L2
        apparentPowerL3            : Real;   // Apparent power L3
        totalApparentPower         : Real;   // Total apparent power L1 L2 L3
        reactivePowerL1            : Real;   // Reactive power L1
        reactivePowerL2            : Real;   // Reactive power L2
        reactivePowerL3            : Real;   // Reactive power L2
        totalReactivePower         : Real;   // Total reactive power L1 L2 L3
        activePowerL1              : Real;   // Active power L1
        activePowerL2              : Real;   // Active power L2
        activePowerL3              : Real;   // Active power L3
        totalActivePower           : Real;   // Total active power L1 L2 L3
        phaseAngleL1               : Real;   //  Phase angle L1
        phaseAngleL2               : Real;   //  Phase angle L2
        phaseAngleL3               : Real;   //  Phase angle L3
        totalApparentEnergy        : Real;   // Total apparent energy L1 L2 L3
        totalReactiveEnergy        : Real;   // Total reactive energy L1 L2 L3
        totalActiveEnergy          : Real;   // Total active energy L1 L2 L3
        totalReactiveEnergyIn      : Real;   // Total reactive energy inflow L1 L2 L3
        totalReactiveEnergyOut     : Real;   // Total reactive energy outflow L1 L2 L3
        totalActiveEnergyIn        : Real;   // Total active energy inflow L1 L2 L3
        totalActiveEnergyOut       : Real;   // Total active energy outflow L1 L2 L3
        totalApparentEnergyLong    : LReal;  // Total apparent energy L1 L2 L3
        totalReactiveEnergyLong    : LReal;  // Total reactive energy L1 L2 L3
        totalActiveEnergyLong      : LReal;  // Total active energy L1 L2 L3
        totalReactiveEnergyInLong  : LReal;  // Total reactive energy inflow L1 L2 L3
        totalReactiveEnergyOutLong : LReal;  // Total reactive energy outflow L1 L2 L3
        totalActiveEnergyInLong    : LReal;  // Total active energy inflow L1 L2 L3
        totalActiveEnergyOutLong   : LReal;  // Total active energy outflow L1 L2 L3
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec130a131 : STRUCT
        majMinVer              AT %B0 : Byte    := BYTE#0;     // Major / minor version
        numUserDataVariant     AT %B1 : Byte    := BYTE#2;     // Number of user data variant = 1
        numMeasValues          AT %B2 : Byte    := BYTE#64;    // Number of measured values for user data mapping
        resb3                  AT %B3 : Byte;                  // Reserved
        measValue              AT %B4 : Array[1..64] of Word;  // ID of measured value for user data mapping
      END_STRUCT;

   END_TYPE

   TYPE AI2xUIHFDataRec128V2Scale : STRUCT
        majMinVer                AT %B0   : Byte    := BYTE#0;                        // Major / minor version
        channelParamLength       AT %B1   : Byte    := BYTE#38;                       // Length of the parameter data = 38
        channel                  AT %B2   : Array[0..1] of AI2xUIHFDataRecChV2Scale;
      END_STRUCT;

   END_TYPE

   TYPE AI4xRTDTCHFDataRec128 : STRUCT
        majMinVer             AT %B0  : Byte    := BYTE#16;                  // Major / minor version
        channelParamLength    AT %B1  : Byte    := BYTE#22;                  // Length of the parameter data = 22
        channel               AT %B2  : Array[0..3] of AIxRTDTCHFDataRecCh;
      END_STRUCT;

   END_TYPE

   TYPE AI4xSTDataRec128   : STRUCT
        majMinVer          AT %B0  : Byte    := BYTE#0;              // Major / minor version
        channelParamLength AT %B1  : Byte    := BYTE#18;             // Length of the parameter data = 18
        channel            AT %B2  : Array[0..3] of AIxSTDataRecCh;
      END_STRUCT;

   END_TYPE

   TYPE AI2xUIHSDataRec128      : STRUCT
        majMinVer               AT %B0 : Byte    := BYTE#64;                // Major / minor version
        numParamStruct          AT %B1 : Byte    := BYTE#2;                 // Number of parameter structures = 2
        numModuleParamBlocks    AT %B2 : Byte    := BYTE#1;                 // Number of module parameter blocks = 1
        lengthModuleParamBlock  AT %B3 : Byte    := BYTE#4;                 // Length of module parameter block = 4
        operatingMode           AT %B4 : Byte    := BYTE#0;                 // Operating mode
        samplingRate            AT %B5 : Byte;                              // Sampling rate
        resw6                   AT %B6 : Word;                              // Reserved
        numChannelParamBlocks   AT %B8 : Byte    := BYTE#2;                 // Number of channel parameter blocks = 2
        lengthChannelParamBlock AT %B9 : Byte    := BYTE#20;                // Length of channel parameter block = 20
        channel                 AT %B10 : Array[0..1] of AI2xUIHSDataRecCh;
      END_STRUCT;

   END_TYPE

   TYPE AI2xUIHFDataRec128V2 : STRUCT
        majMinVer            AT %B0  : Byte    := BYTE#0;                   // Major / minor version
        channelParamLength   AT %B1  : Byte    := BYTE#22;                  // Length of the parameter data = 22
        channel              AT %B2  : Array[0..1] of AI2xUIHFDataRecChV2;
      END_STRUCT;

   END_TYPE

   TYPE AI2xUIHFDataRec128V1 : STRUCT
        majMinVer            AT %B0  : Byte    := BYTE#0;                   // Major / minor version
        channelParamLength   AT %B1  : Byte    := BYTE#18;                  // Length of the parameter data = 18
        channel              AT %B2  : Array[0..1] of AI2xUIHFDataRecChV1;
      END_STRUCT;

   END_TYPE

   TYPE AI8xRTDTCHFDataRec128 : STRUCT
        majMinVer             AT %B0  : Byte    := BYTE#16;                  // Major / minor version
        channelParamLength    AT %B1  : Byte    := BYTE#22;                  // Length of the parameter data = 22
        channel               AT %B2  : Array[0..7] of AIxRTDTCHFDataRecCh;
      END_STRUCT;

   END_TYPE

   TYPE AI8xBADataRec128   : STRUCT
        majMinVer          AT %B0  : Byte    := BYTE#0;              // Major / minor version
        channelParamLength AT %B1  : Byte    := BYTE#18;             // Length of the parameter data = 18
        channel            AT %B2  : Array[0..7] of AIxSTDataRecCh;
      END_STRUCT;

   END_TYPE

   TYPE AI4xIHARTDataRec140 : STRUCT
        version             AT %B0 : Byte    := BYTE#0;                     // Version
        blockLength         AT %B1 : Byte    := BYTE#11;                    // Block length = 11
        blockType           AT %B2 : Byte    := BYTE#75;                    // Block type = 75
        resb3               AT %B3 : Byte;                                  // Reserved
        variable            AT %B4 : Array[0..3] of AI4xIHARTDataRec140Ch;
      END_STRUCT;

   END_TYPE

   TYPE AQ2xSTDataRec128   : STRUCT
        majMinVer          AT %B0  : Byte    := BYTE#0;              // Major / minor version
        channelParamLength AT %B1  : Byte    := BYTE#6;              // Length of the parameter data = 6
        channel            AT %B2  : Array[0..1] of AQxSTDataRecCh;
      END_STRUCT;

   END_TYPE

   TYPE AQ4xSTDataRec128   : STRUCT
        majMinVer          AT %B0  : Byte    := BYTE#0;              // Major / minor version
        channelParamLength AT %B1  : Byte    := BYTE#6;              // Length of the parameter data = 6
        channel            AT %B2  : Array[0..3] of AQxSTDataRecCh;
      END_STRUCT;

   END_TYPE

   TYPE AI4xIHARTDataRec128 : STRUCT
        majMinVer           AT %B0 : Byte    := BYTE#16;                 // Major / minor version
        channelParamLength  AT %B1 : Byte    := BYTE#10;                 // Length of the parameter data = 10
        channel             AT %B2 : Array[0..3] of AI4xIHARTDataRecCh;
      END_STRUCT;

   END_TYPE

   TYPE MotorStarterDS202     : STRUCT
        blockingTime          AT %B0 : Byte    := BYTE#2;   // Blocking time; 1 … 7,5s/0.5 s; [2 … 15]; Default [2]: 1 s.; for not safety starter mwith V1.0 t >= 5 sec [2 … 10]
        warnLimitMotorHeat    AT %B1 : Byte;                // Warning limit - motor heating; 0 … 99 %/1 %; [0 … 99]; [0]: Deactivated
        resw2                 AT %B2 : Int;                 // Reserved
        resw4                 AT %B4 : Int;                 // Reserved
        blockingCurrent       AT %B6 : Byte    := BYTE#16;  // Blocking current; 150 ... 1000 %/50 %; [3 ... 20]; Default [16]: 800 %
        resb7                 AT %B7 : Byte;                // Reserved
        lowerCurrentWarnLimit AT %B8 : Byte    := BYTE#7;   // Lower current warning limit; 18.75 … 100 %/3.125 %; [6 … 32]; [0]: Deactivated; Default [7]: 21.875 %
        upperCurrentWarnLimit AT %B9 : Byte    := BYTE#36;  // Upper current warning limit; 50 … 400 %/3.125 %; [16 … 128]; [0]: Deactivated; Default [36]: 112.5 %
      END_STRUCT;

   END_TYPE

   TYPE TMPulseControl : STRUCT
        channel        AT %B0  : Array[0..1] of TMPulseControlCh;
      END_STRUCT;

   END_TYPE
END_NAMESPACE
