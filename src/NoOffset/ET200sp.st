NAMESPACE Siemens.Tiax.Types.NoOffset
   TYPE PNIOTimeStamp : STRUCT
        status        : UInt;   // Status synchronization
        secondsHigh   : UInt;   // Seconds high
        secondsLow    : UDInt;  // Seconds low
        nanoseconds   : UDInt;  // Nanoseconds
      END_STRUCT;

   END_TYPE

   TYPE EM480VSTDataRecParam : STRUCT
        measValueID          : Word;   // Measured value ID
        monitoring           : Byte;   // Monitoring
        hysteresis           : Byte;   // Hysteresis for limit monitoring
        limitMonitored       : Real;   // Limit to be monitored
        delayTime            : Byte;   // Delay time for limit detection = 0 ... 10 s
        resb                 : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EM480VSTDataRecCh     : STRUCT
        enableDiagnostic      : Byte;   // Enable Diagnostic
        overCurrTolerance     : Byte;   // Overcurrent tolerance 10 .. 100 [0.1 A]
        overCurrToleranceTime : Word;   // Overcurrent tolerance time
        currTransPrimCurr     : DWord;  // Current transformer Primary current (A)
        setEnable             : Byte;   // Reverse current direction / Operating hours counter / Current transformer secondary current /  Operating hours counter gate
        lowLimitMeasCurr      : Byte;   // Low limit for measuring current
        secondVolt            : Word;   // Voltage transformer secondary voltage
        primVolt              : DWord;  // Voltage transformer primary voltage
        resb16                : Byte;   // Reserved
        resb17                : Byte;   // Reserved
        resb18                : Byte;   // Reserved
        resb19                : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EM480VRCHFDataRecCh   : STRUCT
        enableDiagnostic      : Byte;   // Enable Diagnostic
        enableDetect          : Byte;   // EnableDetect
        nomValueCurr          : DWord;  // Nominal value current [A]
        toleranceFactOverCurr : Word;   // Tolerance factor overcurrent in relation to nominal value current [0.1%]
        overCurrToleranceTime : Word;   // Overcurrent tolerance time
        lowLimitCurrMeas      : Word;   // Low limit current measurement in relation to nominal value current [0.1%]
        currTransSecVolt      : Word;   // Current transformer secondary voltage [0.1mV]
        currTransPrimCurr     : Word;   // Current transformer primary rated current [A]
        enableOptions         : Byte;   // Reverse current direction / Operating hours counter / Current transformer secondary current /  Operating hours counter gate
        resb17                : Byte;   // Reserved
        nomValueVolt          : DWord;  // Nominal value voltage [V]
        toleranceFactVolt     : Word;   // Tolerance factor over-/undervoltage in relation to nominal value voltage [0.1%]
        transPrimVolt         : DWord;  // Voltage transformer primary voltage
        transSecondVolt       : Word;   // Voltage transformer secondary voltage
        resw30                : Word;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EM480VCTHFDataRecCh   : STRUCT
        enableDiagnostic      : Byte;   // Enable Diagnostic
        enableDetect          : Byte;   // EnableDetect
        nomValueCurr          : DWord;  // Nominal value current [A]
        toleranceFactOverCurr : Word;   // Tolerance factor overcurrent in relation to nominal value current [0.1%]
        overCurrToleranceTime : Word;   // Overcurrent tolerance time
        lowLimitCurrMeas      : Word;   // Low limit current measurement in relation to nominal value current [0.1%]
        currTransPrimCurr     : DWord;  // Current transformer Primary current (A)
        enableOptions         : Byte;   // Reverse current direction / Operating hours counter / Current transformer secondary current /  Operating hours counter gate
        resb17                : Byte;   // Reserved
        nomValueVolt          : DWord;  // Nominal value voltage [V]
        toleranceFactVolt     : Word;   // Tolerance factor over-/undervoltage in relation to nominal value voltage [0.1%]
        transPrimVolt         : DWord;  // Voltage transformer primary voltage
        transSecondVolt       : Word;   // Voltage transformer secondary voltage
        resw30                : Word;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE AI2xUIHFDataRecChV2Scale : STRUCT
        measType                 : Byte;   // Measurement type
        measRange                : Byte;   // Measuring range
        resb2                    : Byte;   // Reserved
        frequSuppressSmooth      : Byte;   // Interference frequency suppression / Smoothing
        resb4                    : Byte;   // Reserved
        hwInterruptLimits        : Byte;   // Hardware interrupt, high/low limit 1/2
        enableDiagnostic         : Byte;   // Enable Diagnostic
        measRangeAdjust          : Byte;   // Measuring range adjustment (0=Locked; 1=Enabled)
        resw8                    : Word;   // Reserved
        hwInterruptHighLimit1    : DWord;  // Hardware interrupt high limit 1
        hwInterruptLowLimit1     : DWord;  // Hardware interrupt low limit 1
        hwInterruptHighLimit2    : DWord;  // Hardware interrupt high limit 2
        hwInterruptLowLimit2     : DWord;  // Hardware interrupt low limit 2
        measRangeAdjustHighLimit : Word;   // Measuring range adjustment high limit
        measRangeAdjustLowLimit  : Word;   // Measuring range adjustment low limit
        scaledHighNomRangeLimit  : DWord;  // Scaled high nominal range limit
        scaledLowNomRangeLimit   : DWord;  // Scaled low nominal range limit
      END_STRUCT;

   END_TYPE

   TYPE AIxRTDTCHFDataRecCh   : STRUCT
        measType              : Byte;   // Measurement type
        measRange             : Byte;   // Measuring range
        tempCoefficient       : Byte;   // Temperature coefficient for measuring range
        frequSuppressSmooth   : Byte;   // Interference frequency suppression / Smoothing
        referJunctionTempUnit : Byte;   // Reference junction / Temperature unit
        hwInterruptLimits     : Byte;   // Hardware interrupt, high/low limit 1/2
        enableDiagnostic      : Byte;   // Enable Diagnostic
        scalMeasRange         : Byte;   // Scalable measuring range
        resw8                 : Word;   // Reserved
        hwInterruptHighLimit1 : Word;   // Hardware interrupt high limit 1
        hwInterruptLowLimit1  : Word;   // Hardware interrupt low limit 1
        hwInterruptHighLimit2 : Word;   // Hardware interrupt high limit 2
        hwInterruptLowLimit2  : Word;   // Hardware interrupt low limit 2
        conductorResist       : Word;   // Conductor resistance, 0 to 50000 milliohm
        measRangeCenter       : Word;   // Measuring range center
      END_STRUCT;

   END_TYPE

   TYPE AIxSTDataRecCh      : STRUCT
        measType            : Byte;   // Measurement type
        measRange           : Byte;   // Measuring range
        resb2               : Byte;   // Reserved
        frequSuppressSmooth : Byte;   // Interference frequency suppression / Smoothing
        resb4               : Byte;   // Reserved
        resb5               : Byte;   // Reserved
        enableDiagnostic    : Byte;   // Enable Diagnostic
        resb7               : Byte;   // Reserved
        resw8               : Word;   // Reserved
        resw10              : Word;   // Reserved
        resw12              : Word;   // Reserved
        resw14              : Word;   // Reserved
        resw16              : Word;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE AI2xUIHSDataRecCh     : STRUCT
        measType              : Byte;   // Measurement type
        measRange             : Byte;   // Measuring range
        resb2                 : Byte;   // Reserved
        smoothing             : Byte;   // Smoothing
        resb4                 : Byte;   // Reserved
        hwInterruptLimits     : Byte;   // Hardware interrupt, high/low limit 1/2
        enableDiagnostic      : Byte;   // Enable Diagnostic
        resb7                 : Byte;   // Reserved
        resw8                 : Word;   // Reserved
        hwInterruptHighLimit1 : Word;   // Hardware interrupt high limit 1
        hwInterruptLowLimit1  : Word;   // Hardware interrupt low limit 1
        hwInterruptHighLimit2 : Word;   // Hardware interrupt high limit 2
        hwInterruptLowLimit2  : Word;   // Hardware interrupt low limit 2
        resw18                : Word;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE AI2xUIHFDataRecChV2      : STRUCT
        measType                 : Byte;   // Measurement type
        measRange                : Byte;   // Measuring range
        resb2                    : Byte;   // Reserved
        frequSuppressSmooth      : Byte;   // Interference frequency suppression / Smoothing
        resb4                    : Byte;   // Reserved
        hwInterruptLimits        : Byte;   // Hardware interrupt, high/low limit 1/2
        enableDiagnostic         : Byte;   // Enable Diagnostic
        measRangeAdjust          : Byte;   // Measuring range adjustment (0=Locked; 1=Enabled)
        resw8                    : Word;   // Reserved
        hwInterruptHighLimit1    : Word;   // Hardware interrupt high limit 1
        hwInterruptLowLimit1     : Word;   // Hardware interrupt low limit 1
        hwInterruptHighLimit2    : Word;   // Hardware interrupt high limit 2
        hwInterruptLowLimit2     : Word;   // Hardware interrupt low limit 2
        measRangeAdjustHighLimit : Word;   // Measuring range adjustment high limit
        measRangeAdjustLowLimit  : Word;   // Measuring range adjustment low limit
      END_STRUCT;

   END_TYPE

   TYPE AI2xUIHFDataRecChV1   : STRUCT
        measType              : Byte;   // Measurement type
        measRange             : Byte;   // Measuring range
        resb2                 : Byte;   // Reserved
        frequSuppressSmooth   : Byte;   // Interference frequency suppression / Smoothing
        resb4                 : Byte;   // Reserved
        hwInterruptLimits     : Byte;   // Hardware interrupt, high/low limit 1/2
        enableDiagnostic      : Byte;   // Enable Diagnostic
        resb7                 : Byte;   // Reserved
        resw8                 : Word;   // Reserved
        hwInterruptHighLimit1 : Word;   // Hardware interrupt high limit 1
        hwInterruptLowLimit1  : Word;   // Hardware interrupt low limit 1
        hwInterruptHighLimit2 : Word;   // Hardware interrupt high limit 2
        hwInterruptLowLimit2  : Word;   // Hardware interrupt low limit 2
      END_STRUCT;

   END_TYPE

   TYPE AI4xIHARTDataRec140Ch : STRUCT
        channelNum            : Byte;   // Channel number 0..3
        varMark               : Byte;   // Variable marking
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRecCh         : STRUCT
        enableDiagnostic      : Byte;   // Enable Diagnostic
        overCurrTolerance     : Byte;   // Overcurrent tolerance 10 .. 100 [0.1 A]
        overCurrToleranceTime : Word;   // Overcurrent tolerance time
        currTransPrimCurr     : Word;   // Current transformer Primary current (A)
        revCurrDirCurrTrans   : Byte;   // Reverse current direction / Current transformer secondary current
        resb7                 : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE AQxSTDataRecCh   : STRUCT
        outputType       : Byte;   // Output type
        outputRange      : Byte;   // Output range
        enableDiagnostic : Byte;   // Enable Diagnostic
        reactStop        : Byte;   // Reaction to CPU STOP
        substValue       : Word;   // Substitute value (for channel)
      END_STRUCT;

   END_TYPE

   TYPE TMPulseControlCh : STRUCT
        outputValue      : UDInt;  // The output value depends on the mode setting
        slot             : UDInt;  // The parameter SLOT depends on the LD_SLOT value
        defSlot          : Byte;   // To specify meaning and update mode of SLOT
        swEnable         : Bool;   // Activate the output sequence
        tmCtrlDQ         : Bool;   // Outputs are controlled directly by programm (0) or by module (1)
        reserved0        : Bool;   // Reserved
        setDQA           : Bool;   // Set the output A
        setDQB           : Bool;   // Set the output B
        dither           : Bool;   // Activates the dithering function
        reserved1        : Bool;   // Reserved
        reserved2        : Bool;   // Reserved
        resError         : Bool;   // Resets the error flags in the feedback interface
        reserved3        : Bool;   // Reserved
        reserved4        : Bool;   // Reserved
        reserved5        : Bool;   // Reserved
        reserved6        : Bool;   // Reserved
        reserved7        : Bool;   // Reserved
        reserved8        : Bool;   // Reserved
        reserved9        : Bool;   // Reserved
        reserved10       : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRecParam : STRUCT
        measValueID          : Word;   // Measured value ID
        monitoring           : Byte;   // Monitoring
        hysteresis           : Byte;   // Hysteresis for limit monitoring
        limitMonitored       : Real;   // Limit to be monitored
        delayTime            : Byte;   // Delay time for limit detection = 0 ... 10 s
        resb                 : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE DI8HSDataRecDICh : STRUCT
        modeInputDelay   : Byte;   // Mode / Hardware interrupt / Input delay
        pulseStretch     : Byte;   // Pulse stretching
      END_STRUCT;

   END_TYPE

   TYPE TMPulseControlMotorCh : STRUCT
        outputValue           : DInt;   // The output value depends on the mode setting
        slot                  : UDInt;  // The parameter SLOT depends on the LD_SLOT value
        defSlot               : Byte;   // To specify meaning and update mode of SLOT
        swEnable              : Bool;   // Activate the output sequence
        tmCtrlDQ              : Bool;   // Outputs are controlled directly by programm (0) or by module (1)
        reserved0             : Bool;   // Reserved
        setDQA                : Bool;   // Set the output A
        setDQB                : Bool;   // Set the output B
        dither                : Bool;   // Activates the dithering function
        reserved1             : Bool;   // Reserved
        reserved2             : Bool;   // Reserved
        resError              : Bool;   // Resets the error flags in the feedback interface
        reserved3             : Bool;   // Reserved
        reserved4             : Bool;   // Reserved
        reserved5             : Bool;   // Reserved
        reserved6             : Bool;   // Reserved
        reserved7             : Bool;   // Reserved
        reserved8             : Bool;   // Reserved
        reserved9             : Bool;   // Reserved
        reserved10            : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE DI8HSDataRecOVSCh : STRUCT
        modeInputDelay    : Byte;   // Mode / Input delay
        reserved0         : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE TMPulseDataRecHead : STRUCT
        majMinVer          : Byte    := BYTE#1;   // Major / minor version
        channelParamLength : Byte    := BYTE#52;  // Length of parameter data per channel
        reserved0          : Word;                // Reserved
      END_STRUCT;

   END_TYPE

   TYPE MotorStarterEntry : STRUCT
        operatingHours    : DInt;   // Operating hours - device
        objectNumber      : Int;    // Object Number
      END_STRUCT;

   END_TYPE

   TYPE DI8HSDataRecCountCh : STRUCT
        counterInputs0      : Byte;   // Mode / Reaction / Edge selection / Count direction / Input delay
        counterInputs1      : Byte;   // Set output / Setting function of the DI
        reserved0           : Byte;   // Reserved
        reserved1           : Byte;   // Reserved
        compareValue1       : DInt;   // Comparison value 1
        compareValue0       : DInt;   // Comparison value 0
        startValue          : DInt;   // Start value
        countHighLimit      : DInt;   // Count high limit
        countLowLimit       : DInt;   // Count low limit
        reserved2           : Byte;   // Reserved
        reserved3           : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE TMPulseFeedbackCh : STRUCT
        errPwr            : Bool;   // 24V DC present, but is not in the correct range
        err24V            : Bool;   // Short-circuit/overload, in the 24V DC sensor supply output
        errLd             : Bool;   // Error while loading a parameter value using single-update mode
        errPulse          : Bool;   // Pulse duration reduced to smaller than the minimum allowed value during operation
        errDQA            : Bool;   // Short-circuit/overload on the digital output DQn.A detected
        errDQB            : Bool;   // Short-circuit/overload on the digital output DQn.B or attempt to set both DQn.A and DQn.B high
        errOutVal         : Bool;   // The value in OUTPUT_VALUE is not valid
        errSlotVal        : Bool;   // The value in SLOT is not valid where MODE_SLOT = 1 (permanent update)
        reserved0         : Bool;   // Reserved
        reserved1         : Bool;   // Reserved
        stsLdSlot         : Bool;   // Toggle acknowledge bit for each action of the SLOT-mode
        reserved2         : Bool;   // Reserved
        stsReady          : Bool;   // Module is parameterized correctly, running, and delivering valid data
        stsSwEnable       : Bool;   // Current state of the software enable
        reserved3         : Bool;   // Reserved
        reserved4         : Bool;   // Reserved
        stsEnable         : Bool;   // Output sequence is active
        stsDQA            : Bool;   // State of digital output DQn.A
        stsDQB            : Bool;   // State of digital output DQn.B
        stsDI             : Bool;   // DIn.0: State of digital input
        stsDither         : Bool;   // Dithering state
        reserved5         : Bool;   // Reserved
        reserved6         : Bool;   // Reserved
        reserved7         : Bool;   // Reserved
        seqCnt            : Byte;   // Counts completed output sequences (Bit 0)
        measuredCurrent   : Int;    // S7 analog value (0 to 32,767)
        qlmnLlm           : Bool;   // The low limit of the manipulated value has been reached
        qlmnHlm           : Bool;   // The high limit of the manipulated value has been reached
        reserved8         : Bool;   // Reserved
        reserved9         : Bool;   // Reserved
        reserved10        : Bool;   // Reserved
        reserved11        : Bool;   // Reserved
        reserved12        : Bool;   // Reserved
        reserved13        : Bool;   // Reserved
        reserved14        : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE DQ4HSDataRecCh : STRUCT
        settingsMode   : Byte;   // Substitute values / Reaction / operating mode
        reserved0      : Byte;   // Reserved
        setValue1      : Word;   // Depends on operating mode
        setValue2      : Word;   // Depends on operating mode
        setValue3      : Word;   // Depends on operating mode
      END_STRUCT;

   END_TYPE

   TYPE TMPulseControlFrequCh : STRUCT
        outputValue           : Real;   // Frequency in Hz
        slot                  : UDInt;  // The parameter SLOT depends on the LD_SLOT value
        defSlot               : Byte;   // To specify meaning and update mode of SLOT
        swEnable              : Bool;   // Activate the output sequence
        tmCtrlDQ              : Bool;   // Outputs are controlled directly by programm (0) or by module (1)
        reserved0             : Bool;   // Reserved
        setDQA                : Bool;   // Set the output A
        setDQB                : Bool;   // Set the output B
        dither                : Bool;   // Activates the dithering function
        reserved1             : Bool;   // Reserved
        reserved2             : Bool;   // Reserved
        resError              : Bool;   // Resets the error flags in the feedback interface
        reserved3             : Bool;   // Reserved
        reserved4             : Bool;   // Reserved
        reserved5             : Bool;   // Reserved
        reserved6             : Bool;   // Reserved
        reserved7             : Bool;   // Reserved
        reserved8             : Bool;   // Reserved
        reserved9             : Bool;   // Reserved
        reserved10            : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE AI4xIHARTDataRecCh  : STRUCT
        measType            : Byte;               // Measurement type
        measRange           : Byte;               // Measuring range
        resb2               : Byte;               // Reserved
        frequSuppressSmooth : Byte;               // Interference frequency suppression / Smoothing
        wireBreakThreshold  : Byte;               // Wire break threshold
        resb5               : Byte;               // Reserved
        enableDiagnostic    : Byte;               // Enable Diagnostic
        enableDiagHart      : Byte;               // Enable Diagnostic; HART diagnostics
        numHartPreamble     : Byte    := BYTE#5;  // Number of HART preamble bytes (default = 5)
        numHartRepetitions  : Byte    := BYTE#5;  // Number of HART repetitions (default = 5)
      END_STRUCT;

   END_TYPE

   TYPE OVSCh           : STRUCT
        subcycles1To8   : Byte;   // Subcycles 1 to 8
        subcycles9To16  : Byte;   // Subcycles 9 to 16
        subcycles17To24 : Byte;   // Subcycles 17 to 24
        subcycles25To32 : Byte;   // Subcycles 25 to 32
      END_STRUCT;

   END_TYPE

   TYPE TMPulseDataRecCh : STRUCT
        behavior0        : Byte;   // Current control / Dithering / High-speed output / operating mode
        behavior1        : Byte;   // PID loop calculation / reserved / Diagnostic interrupt / Reaction to CPU STOP
        behavior2        : Byte;   // Reserved / Input delay / Function DI
        behavior3        : Byte;   // Reserved / Output format / Diagnostics DQB / Diagnostics DQA / Substitute value DQB / Substitute value DQA
        minPulseDuration : DWord;  // Minimum pulse duration
        periodDuration   : DWord;  // Period duration
        onDelay          : DWord;  // On-delay: 0 μs to 85,000,000 μs
        value            : DWord;  // Value
        ditherAmplitude  : DWord;  // Dither amplitude (per mil)
        ditherPeriod     : DWord;  // Dither period
        refValueCurrent  : UInt;   // PWM mode only: Reference value current (mA)
        deadBandWidth    : UInt;   // PWM mode only: Dead band width (μA)
        highLimit        : UInt;   // PWM mode only: High limit - S7-analog value relative to the reference value
        lowLimit         : UInt;   // PWM mode only: Low limit - S7-analog value relative to the reference value
        gain             : Real;   // PWM mode only: Gain
        ti               : Real;   // PWM mode only: Integration time (s)
        td               : Real;   // PWM mode only: Derivative action time (s)
        tmLag            : Real;   // PWM mode only: Time lag of the derivative action (s)
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRecParam : STRUCT
        measValueID      : Word;   // Measured value ID
        monitoring       : Byte;   // Monitoring
        hysteresis       : Byte;   // Hysteresis for limit monitoring
        limitMonitored   : Real;   // Limit to be monitored
        delayTime        : Byte;   // Delay time for limit detection = 0 ... 10 s
        resb             : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE RealValueAndPNIOTimeStamp : STRUCT
        value                     : Real;           // value
        pnIOTimeStamp             : PNIOTimeStamp;  // Time stamp
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRecParam : STRUCT
        measValueID      : Word;   // Measured value ID
        monitoring       : Byte;   // Monitoring
        hysteresis       : Byte;   // Hysteresis for limit monitoring
        limitMonitored   : Real;   // Limit to be monitored
        delayTime        : Byte;   // Delay time for limit detection = 0 ... 10 s
        resb             : Byte;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EMCTHFDataRecCh       : STRUCT
        enableDiagnostic      : Byte;   // Enable Diagnostic
        enableDetect          : Byte;   // EnableDetect
        nomValueCurr          : DWord;  // Nominal value current [A]
        toleranceFactOverCurr : Word;   // Tolerance factor overcurrent in relation to nominal value current [0.1%]
        overCurrToleranceTime : Word;   // Overcurrent tolerance time
        lowLimitCurrMeas      : Word;   // Low limit current measurement in relation to nominal value current [0.1%]
        currTransPrimCurr     : DWord;  // Current transformer primary current [A]
        enableOptions         : Byte;   // Reverse current direction / Operating hours counter / Current transformer secondary current /  Operating hours counter gate
        resb17                : Byte;   // Reserved
        nomValueVolt          : DWord;  // Nominal value voltage [V]
        toleranceFactVolt     : Word;   // Tolerance factor over-/undervoltage in relation to nominal value voltage [0.1%]
        transPrimVolt         : DWord;  // Voltage transformer primary voltage
        transSecondVolt       : Word;   // Voltage transformer secondary voltage
        resw30                : Word;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EMRCHFDataRecCh       : STRUCT
        enableDiagnostic      : Byte;   // Enable Diagnostic
        enableDetect          : Byte;   // EnableDetect
        nomValueCurr          : DWord;  // Nominal value current [A]
        toleranceFactOverCurr : Word;   // Tolerance factor overcurrent in relation to nominal value current [0.1%]
        overCurrToleranceTime : Word;   // Overcurrent tolerance time
        lowLimitCurrMeas      : Word;   // Low limit current measurement in relation to nominal value current [0.1%]
        currTransSecVolt      : Word;   // Current transformer secondary voltage [0.1 mV]
        currTransPrimCurr     : Word;   // Current transformer primary rated current
        enableOptions         : Byte;   // Reverse current direction / Operating hours counter / Current transformer secondary current /  Operating hours counter gate
        resb17                : Byte;   // Reserved
        nomValueVolt          : DWord;  // Nominal value voltage [V]
        toleranceFactVolt     : Word;   // Tolerance factor over-/undervoltage in relation to nominal value voltage [0.1%]
        transPrimVolt         : DWord;  // Voltage transformer primary voltage
        transSecondVolt       : Word;   // Voltage transformer secondary voltage
        resw30                : Word;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EMHFMeasValRecBlock   : STRUCT
        measValueIDRec        : Word;   // ID of the measured value for measured value recording
        recInterval           : Word;   // Recording interval for measured value recording
        modeMeasValRec        : Byte;   // Mode for measured value recording; 0:once / 1:Circular buffer 
        measValRecBlock       : Byte;   // MV recorder block n; 0:no HW interrupt / 1:HW interrupt when DS17x is full
        startTrigIDmeasValRec : Byte;   // Start trigger ID measured value recording
        stopTrigIDmeasValRec  : Byte;   // Stop trigger ID measured value recording
      END_STRUCT;

   END_TYPE

   TYPE EMRCSTDataRecCh       : STRUCT
        enableDiagnostic      : Byte;   // Enable Diagnostic
        resb1                 : Byte;   // Reserved
        nomValueCurr          : DWord;  // Nominal value current [A]
        toleranceFactOverCurr : Word;   // Tolerance factor overcurrent in relation to nominal value current [0.1%]
        overCurrToleranceTime : Word;   // Overcurrent tolerance time
        lowLimitCurrMeas      : Word;   // Low limit current measurement in relation to nominal value current [0.1%]
        currTransSecVolt      : Word;   // Current transformer secondary voltage [0.1 mV]
        currTransPrimCurr     : Word;   // Current transformer primary rated current
        enableOptions         : Byte;   // Reverse current direction / Operating hours counter / Current transformer secondary current /  Operating hours counter gate
        resb17                : Byte;   // Reserved
        nomValueVolt          : DWord;  // Nominal value voltage [V]
        toleranceFactVolt     : Word;   // Tolerance factor over-/undervoltage in relation to nominal value voltage [0.1%]
        transPrimVolt         : DWord;  // Voltage transformer primary voltage
        transSecondVolt       : Word;   // Voltage transformer secondary voltage
        resw30                : Word;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EMCTSTDataRecCh       : STRUCT
        enableDiagnostic      : Byte;   // Enable Diagnostic
        resb1                 : Byte;   // Reserved
        nomValueCurr          : DWord;  // Nominal value current [A]
        toleranceFactOverCurr : Word;   // Tolerance factor overcurrent in relation to nominal value current [0.1%]
        overCurrToleranceTime : Word;   // Overcurrent tolerance time
        lowLimitCurrMeas      : Word;   // Low limit current measurement in relation to nominal value current [0.1%]
        currTransPrimCurr     : DWord;  // Current transformer primary current [A]
        enableOptions         : Byte;   // Reverse current direction / Operating hours counter / Current transformer secondary current /  Operating hours counter gate
        resb17                : Byte;   // Reserved
        nomValueVolt          : DWord;  // Nominal value voltage [V]
        toleranceFactVolt     : Word;   // Tolerance factor over-/undervoltage in relation to nominal value voltage [0.1%]
        transPrimVolt         : DWord;  // Voltage transformer primary voltage
        transSecondVolt       : Word;   // Voltage transformer secondary voltage
        resw30                : Word;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec169    : STRUCT
        version           : Byte;           // Version
        resb1             : Byte;           // Reserved
        nextIndex         : Byte;           // Next index
        overflow          : Byte;           // Overflow
        switchOffTime1    : PNIOTimeStamp;  // 1: Switch-off time
        switchOnTime1     : PNIOTimeStamp;  // 1: Switch-on time
        switchOffTime2    : PNIOTimeStamp;  // 2: Switch-off time
        switchOnTime2     : PNIOTimeStamp;  // 2: Switch-on time
        switchOffTime3    : PNIOTimeStamp;  // 3: Switch-off time
        switchOnTime3     : PNIOTimeStamp;  // 3: Switch-on time
        switchOffTime4    : PNIOTimeStamp;  // 4: Switch-off time
        switchOnTime4     : PNIOTimeStamp;  // 4: Switch-on time
        switchOffTime5    : PNIOTimeStamp;  // 5: Switch-off time
        switchOnTime5     : PNIOTimeStamp;  // 5: Switch-on time
        switchOffTime6    : PNIOTimeStamp;  // 6: Switch-off time
        switchOnTime6     : PNIOTimeStamp;  // 6: Switch-on time
        switchOffTime7    : PNIOTimeStamp;  // 7: Switch-off time
        switchOnTime7     : PNIOTimeStamp;  // 7: Switch-on time
        switchOffTime8    : PNIOTimeStamp;  // 8: Switch-off time
        switchOnTime8     : PNIOTimeStamp;  // 8: Switch-on time
        switchOffTime9    : PNIOTimeStamp;  // 9: Switch-off time
        switchOnTime9     : PNIOTimeStamp;  // 9: Switch-on time
        currentModuleTime : PNIOTimeStamp;  // Current module time
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec163    : STRUCT
        version           : Byte;                  // Version
        resb1             : Byte;                  // Reserved
        tHDaNCurrL1       : Real;                  // Total harmonic distortion (THD+N) current L1
        currL1            : Real;                  // Current L1
        harmCurrL1        : Array[1..40] of Real;  // Harmonics 1-40: Current L1
        tHDaNCurrL2       : Real;                  // Total harmonic distortion (THD+N) current L2
        currL2            : Real;                  // Current L2
        harmCurrL2        : Array[1..40] of Real;  // Harmonics 1-40: Current L2
        tHDaNCurrL3       : Real;                  // Total harmonic distortion (THD+N) current L3
        currL3            : Real;                  // Current L3
        harmCurrL3        : Array[1..40] of Real;  // Harmonics 1-40: Current L3
        currentModuleTime : PNIOTimeStamp;         // Current module time
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec161    : STRUCT
        version           : Byte;                  // Version
        resb1             : Byte;                  // Reserved
        tHDaNVoltL1       : Real;                  // Total harmonic distortion (THD+N) voltage L1
        voltL1N           : Real;                  // Voltage L1-N
        harmVoltL1        : Array[1..40] of Real;  // Harmonics 1-40: Voltage L1
        tHDaNVoltL2       : Real;                  // Total harmonic distortion (THD+N) voltage L2
        voltL2N           : Real;                  // Voltage L2-N
        harmVoltL2        : Array[1..40] of Real;  // Harmonics 1-40: Voltage L2
        tHDaNVoltL3       : Real;                  // Total harmonic distortion (THD+N) voltage L3
        voltL3N           : Real;                  // Voltage L3-N
        harmVoltL3        : Array[1..40] of Real;  // Harmonics 1-40: Voltage L3
        currentModuleTime : PNIOTimeStamp;         // Current module time
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec148V0          : STRUCT
        version                   : Byte;   // Version
        resb1                     : Byte;   // Reserved
        qualifierL2               : Word;   // Qualifier L2
        voltL2N                   : Real;   // Voltage L2-N
        currentL2                 : Real;   // Current L2
        apparentPowerL2           : Real;   // Apparent power L2
        activePowerL2             : Real;   // Active power L2
        reactivePowerQtotL2       : Real;   // Reactive power Qtot L2
        powerFactorL2             : Real;   // Power factor λ L2
        phaseAngleL2              : Real;   // Phase angle L2
        apparentEnergyLongL2      : LReal;  // Apparent energy L2
        totalActiveEnergyLongL2   : LReal;  // Active energy (total) L2
        totalReactiveEnergyLongL2 : LReal;  // Reactive energy (total) L2
        maxVoltL2N                : Real;   // Max. voltage L2-N
        maxCurrentL2              : Real;   // Max. current L2
        maxApparentPowerL2        : Real;   // Max. apparent power L2
        maxActivePowerL2          : Real;   // Max. active power L2
        maxReactivePowerQtotL2    : Real;   // Max. reactive power Qtot L2
        maxPowerFactorL2          : Real;   // Max. power factor λ L2
        minVoltL2N                : Real;   // Min. voltage L2-N
        minCurrentL2              : Real;   // Min. current L2
        minApparentPowerL2        : Real;   // Min. apparent power L2
        minActivePowerL2          : Real;   // Min. active power L2
        minReactivePowerQtotL2    : Real;   // Min. reactive power L2
        minPowerFactorL2          : Real;   // Min. power factor λ L2
      END_STRUCT;

   END_TYPE

   TYPE DQ4HSPWM       : STRUCT
        outputValueCh0 : Word;   // Output value channel 0 with pulse width modulation
        outputValueCh1 : Word;   // Output value channel 1 with pulse width modulation
        outputValueCh2 : Word;   // Output value channel 2 with pulse width modulation
        outputValueCh3 : Word;   // Output value channel 3 with pulse width modulation
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec148V0          : STRUCT
        version                   : Byte;   // Version
        resb1                     : Byte;   // Reserved
        qualifierL2               : Word;   // Qualifier L2
        voltL2N                   : Real;   // Voltage L2-N
        currentL2                 : Real;   // Current L2
        apparentPowerL2           : Real;   // Apparent power L2
        activePowerL2             : Real;   // Active power L2
        reactivePowerQtotL2       : Real;   // Reactive power Qtot L2
        powerFactorL2             : Real;   // Power factor λ L2
        phaseAngleL2              : Real;   // Phase angle L2
        apparentEnergyLongL2      : LReal;  // Apparent energy L2
        totalActiveEnergyLongL2   : LReal;  // Active energy (total) L2
        totalReactiveEnergyLongL2 : LReal;  // Reactive energy (total) L2
        maxVoltL2N                : Real;   // Max. voltage L2-N
        maxCurrentL2              : Real;   // Max. current L2
        maxApparentPowerL2        : Real;   // Max. apparent power L2
        maxActivePowerL2          : Real;   // Max. active power L2
        maxReactivePowerQtotL2    : Real;   // Max. reactive power Qtot L2
        maxPowerFactorL2          : Real;   // Max. power factor λ L2
        minVoltL2N                : Real;   // Min. voltage L2-N
        minCurrentL2              : Real;   // Min. current L2
        minApparentPowerL2        : Real;   // Min. apparent power L2
        minActivePowerL2          : Real;   // Min. active power L2
        minReactivePowerQtotL2    : Real;   // Min. reactive power L2
        minPowerFactorL2          : Real;   // Min. power factor λ L2
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec129   : STRUCT
        majMinVer        : Byte    := BYTE#0;                 // Major / minor version
        lengthParamBlock : Byte    := BYTE#10;                // Length of parameter block = 10
        numParamBlocks   : Byte    := BYTE#16;                // Number of parameter blocks
        resb3            : Byte;                              // Reserved
        paramBlock       : Array[1..16] of EMSTDataRecParam;  // Parameter blocks
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec149V0          : STRUCT
        version                   : Byte;   // Version
        resb1                     : Byte;   // Reserved
        qualifierL3               : Word;   // Qualifier L3
        voltL3N                   : Real;   // Voltage L3-N
        currentL3                 : Real;   // Current L3
        apparentPowerL3           : Real;   // Apparent power L3
        activePowerL3             : Real;   // Active power L3
        reactivePowerQtotL3       : Real;   // Reactive power Qtot L3
        powerFactorL3             : Real;   // Power factor λ L3
        phaseAngleL3              : Real;   // Phase angle L3
        apparentEnergyLongL3      : LReal;  // Apparent energy L3
        totalActiveEnergyLongL3   : LReal;  // Active energy (total) L3
        totalReactiveEnergyLongL3 : LReal;  // Reactive energy (total) L3
        maxVoltL3N                : Real;   // Max. voltage L3-N
        maxCurrentL3              : Real;   // Max. current L3
        maxApparentPowerL3        : Real;   // Max. apparent power L3
        maxActivePowerL3          : Real;   // Max. active power L3
        maxReactivePowerQtotL3    : Real;   // Max. reactive power Qtot L3
        maxPowerFactorL3          : Real;   // Max. power factor λ L3
        minVoltL3N                : Real;   // Min. voltage L3-N
        minCurrentL3              : Real;   // Min. current L3
        minApparentPowerL3        : Real;   // Min. apparent power L3
        minActivePowerL3          : Real;   // Min. active power L3
        minReactivePowerQtotL3    : Real;   // Min. reactive power L3
        minPowerFactorL3          : Real;   // Min. power factor λ L3
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec147V1          : STRUCT
        version                   : Byte    := BYTE#1;  // Version
        resb1                     : Byte;               // Reserved
        qualifierL1               : Word;               // Qualifier L1
        voltL1N                   : Real;               // Voltage L1-N
        currentL1                 : Real;               // Current L1
        apparentPowerL1           : Real;               // Apparent power L1
        activePowerL1             : Real;               // Active power L1
        reactivePowerQtotL1       : Real;               // Reactive power Qtot L1
        powerFactorL1             : Real;               // Power factor λ L1
        phaseAngleL1              : Real;               // Phase angle L1
        apparentEnergyLongL1      : LReal;              // Apparent energy L1
        totalActiveEnergyLongL1   : LReal;              // Active energy (total) L1
        totalReactiveEnergyLongL1 : LReal;              // Reactive energy (total) L1
        maxVoltL1N                : Real;               // Max. voltage L1-N
        maxCurrentL1              : Real;               // Max. current L1
        maxApparentPowerL1        : Real;               // Max. apparent power L1
        maxActivePowerL1          : Real;               // Max. active power L1
        maxReactivePowerQtotL1    : Real;               // Max. reactive power Qtot L1
        maxPowerFactorL1          : Real;               // Max. power factor λ L1
        minVoltL1N                : Real;               // Min. voltage L1-N
        minCurrentL1              : Real;               // Min. current L1
        minApparentPowerL1        : Real;               // Min. apparent power L1
        minActivePowerL1          : Real;               // Min. active power L1
        minReactivePowerQtotL1    : Real;               // Min. reactive power Qtot L1
        minPowerFactorL1          : Real;               // Min. power factor λ L1
        reactivePowerQnL1         : Real;               // Reactive power Qn L1
        resDW108                  : DWord;              // Reserved
        resDW112                  : Real;               // Reserved
        resDW116                  : Real;               // Reserved
        resDW120                  : Real;               // Reserved
        resDW124                  : Real;               // Reserved
        resDW128                  : Real;               // Reserved
        resDW132                  : Real;               // Reserved
        fundReactivePowerL1       : Real;               // Fundamental reactive power L1
        resDW140                  : DWord;              // Reserved
        fundActiveFactorL1        : Real;               // Fundamental cos φ active factor L1
        resDW148                  : DWord;              // Reserved
        resDW152                  : DWord;              // Reserved
        resDW156                  : DWord;              // Reserved
        resDW160                  : DWord;              // Reserved
        resDW164                  : DWord;              // Reserved
        resDW168                  : DWord;              // Reserved
        resDW172                  : DWord;              // Reserved
        resDW176                  : DWord;              // Reserved
        resDW180                  : DWord;              // Reserved
        resDW184                  : DWord;              // Reserved
        resDW188                  : DWord;              // Reserved
        resDW192                  : DWord;              // Reserved
        resDW196                  : DWord;              // Reserved
        resDW200                  : DWord;              // Reserved
        resDW204                  : DWord;              // Reserved
        resDW208                  : DWord;              // Reserved
        resDW212                  : DWord;              // Reserved
        resDW216                  : DWord;              // Reserved
        resDW220                  : DWord;              // Reserved
        resDW224                  : DWord;              // Reserved
        resDW228                  : DWord;              // Reserved
        resDW232                  : DWord;              // Reserved
        resDW236                  : DWord;              // Reserved
        resDW240                  : DWord;              // Reserved
        resDW244                  : DWord;              // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec160             : STRUCT
        version                    : Byte;           // Version
        resb1                      : Byte;           // Reserved
        neutralCurrIn              : Real;           // Neutral current IN
        neutralCurrCyc10to12       : Real;           // Neutral current 10/12 cycles
        totalCurrIn                : Real;           // Total current IL1+IL2+IL3-IN
        fundReactivePowerL1L2L3    : Real;           // Fundamental reactive power L1 L2 L3
        maxFundReactivePowerL1L2L3 : Real;           // Max. fundamental reactive power L1 L2 L3
        minFundReactivePowerL1L2L3 : Real;           // Min. fundamental reactive power L1 L2 L3
        powerFactorL1L2L3          : Real;           // Power factor λ L1L2L3
        fundReactivePowerL1        : Real;           // Fundamental reactive power L1
        fundReactivePowerL2        : Real;           // Fundamental reactive power L2
        fundReactivePowerL3        : Real;           // Fundamental reactive power L3
        fundActiveFactorL1         : Real;           // Fundamental cos φ active factor L1
        fundActiveFactorL2         : Real;           // Fundamental cos φ active factor L2
        fundActiveFactorL3         : Real;           // Fundamental cos φ active factor L3
        tHDaNVoltL1                : Real;           // Total harmonic distortion (THD+N) voltage L1
        tHDaNVoltL2                : Real;           // Total harmonic distortion (THD+N) voltage L2
        tHDaNVoltL3                : Real;           // Total harmonic distortion (THD+N) voltage L3
        tHDaNCurrL1                : Real;           // Total harmonic distortion (THD+N) current L1
        tHDaNCurrL2                : Real;           // Total harmonic distortion (THD+N) current L2
        tHDaNCurrL3                : Real;           // Total harmonic distortion (THD+N) current L3
        maxTHDaNVoltL1             : Real;           // Max. total harmonic distortion (THD+N) voltage L1
        maxTHDaNVoltL2             : Real;           // Max. total harmonic distortion (THD+N) voltage L2
        maxTHDaNVoltL3             : Real;           // Max. total harmonic distortion (THD+N) voltage L3
        maxTHDaNCurrL1             : Real;           // Max. total harmonic distortion (THD+N) current L1
        maxTHDaNCurrL2             : Real;           // Max. total harmonic distortion (THD+N) current L2
        maxTHDaNCurrL3             : Real;           // Max. total harmonic distortion (THD+N) current L3
        minTHDaNVoltL1             : Real;           // Min. total harmonic distortion (THD+N) voltage L1
        minTHDaNVoltL2             : Real;           // Min. total harmonic distortion (THD+N) voltage L2
        minTHDaNVoltL3             : Real;           // Min. total harmonic distortion (THD+N) voltage L3
        minTHDaNCurrL1             : Real;           // Min. total harmonic distortion (THD+N) current L1
        minTHDaNCurrL2             : Real;           // Min. total harmonic distortion (THD+N) current L2
        minTHDaNCurrL3             : Real;           // Min. total harmonic distortion (THD+N) current L3
        voltDipValueL1             : Real;           // Voltage dip - value L1
        voltDipDurationL1          : Real;           // Voltage dip - duration L1
        voltDipValueL2             : Real;           // Voltage dip - value L2
        voltDipDurationL2          : Real;           // Voltage dip - duration L2
        voltDipValueL3             : Real;           // Voltage dip - value L3
        voltDipDurationL3          : Real;           // Voltage dip - duration L3
        voltIncValueL1             : Real;           // Voltage increase - value L1
        voltIncDurationL1          : Real;           // Voltage increase - duration L1
        voltIncValueL2             : Real;           // Voltage increase - value L2
        voltIncDurationL2          : Real;           // Voltage increase - duration L2
        voltIncValueL3             : Real;           // Voltage increase - value L3
        voltIncDurationL3          : Real;           // Voltage increase - duration L3
        voltPeakValueL1            : Real;           // Voltage peak value L1
        voltPeakValueL2            : Real;           // Voltage peak value L2
        voltPeakValueL3            : Real;           // Voltage peak value L3
        currPeakValueL1            : Real;           // Current peak value L1
        currPeakValueL2            : Real;           // Current peak value L2
        currPeakValueL3            : Real;           // Current peak value L3
        overCurrValueL1            : Real;           // Overcurrent value L1
        overCurrValueL2            : Real;           // Overcurrent value L2
        overCurrValueL3            : Real;           // Overcurrent value L3
        amplUnbalanceVolt          : Real;           // Amplitude unbalance voltage U2
        amplUnbalanceCurrent       : Real;           // Amplitude unbalance current Iasym
        powerQualityAnalysis       : UDInt;          // Power quality analysis - Qualifier
        currentModuleTime          : PNIOTimeStamp;  // Current module time
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec174    : STRUCT
        version           : Byte;                   // Version
        statusBits        : Byte;                   // Status bits; 80h: Rec. ended; 40h: Rec. in progress; 00h: Evaluating data not useful
        numMeasValues     : UInt;                   // Number of measured values 0...200
        stopIndex         : UInt;                   // Stop index 0...199
        overflow          : Byte;                   // Overflow 0...255
        recStatus         : Byte;                   // Recorder status; 0: Initial status; 3: Rec. parameterized; 4: Rec. in progress; 5: Rec. ended; 6: Reco. stopped
        currentModuleTime : PNIOTimeStamp;          // Current module time
        measValueID       : Array[1..200] of Real;  // ID measured value
      END_STRUCT;

   END_TYPE

   TYPE DI8HSCountControlCh : STRUCT
        loadValue           : DWord;  // Load value
        controlByte         : Byte;   // Control byte counter
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec173    : STRUCT
        version           : Byte;                   // Version
        statusBits        : Byte;                   // Status bits; 80h: Rec. ended; 40h: Rec. in progress; 00h: Evaluating data not useful
        numMeasValues     : UInt;                   // Number of measured values 0...200
        stopIndex         : UInt;                   // Stop index 0...199
        overflow          : Byte;                   // Overflow 0...255
        recStatus         : Byte;                   // Recorder status; 0: Initial status; 3: Rec. parameterized; 4: Rec. in progress; 5: Rec. ended; 6: Reco. stopped
        currentModuleTime : PNIOTimeStamp;          // Current module time
        measValueID       : Array[1..200] of Real;  // ID measured value
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec147V0          : STRUCT
        version                   : Byte;   // Version
        resb1                     : Byte;   // Reserved
        qualifierL1               : Word;   // Qualifier L1
        voltL1N                   : Real;   // Voltage L1-N
        currentL1                 : Real;   // Current L1
        apparentPowerL1           : Real;   // Apparent power L1
        activePowerL1             : Real;   // Active power L1
        reactivePowerQtotL1       : Real;   // Reactive power Qtot L1
        powerFactorL1             : Real;   // Power factor λ L1
        phaseAngleL1              : Real;   // Phase angle L1
        apparentEnergyLongL1      : LReal;  // Apparent energy L1
        totalActiveEnergyLongL1   : LReal;  // Active energy (total) L1
        totalReactiveEnergyLongL1 : LReal;  // Reactive energy (total) L1
        maxVoltL1N                : Real;   // Max. voltage L1-N
        maxCurrentL1              : Real;   // Max. current L1
        maxApparentPowerL1        : Real;   // Max. apparent power L1
        maxActivePowerL1          : Real;   // Max. active power L1
        maxReactivePowerQtotL1    : Real;   // Max. reactive power Qtot L1
        maxPowerFactorL1          : Real;   // Max. power factor λ L1
        minVoltL1N                : Real;   // Min. voltage L1-N
        minCurrentL1              : Real;   // Min. current L1
        minApparentPowerL1        : Real;   // Min. apparent power L1
        minActivePowerL1          : Real;   // Min. active power L1
        minReactivePowerQtotL1    : Real;   // Min. reactive power Qtot L1
        minPowerFactorL1          : Real;   // Min. power factor λ L1
      END_STRUCT;

   END_TYPE

   TYPE DI8HSCountFeedbackCh : STRUCT
        counterValue         : DWord;  // Current counter value for the Respective channel
        stsDQ                : Bool;   // Status DQ
        stsGate              : Bool;   // Status of the internal gate for the Respective channel
        reserved0            : Bool;   // Reserved
        reserved1            : Bool;   // Reserved
        reserved2            : Bool;   // Reserved
        reserved3            : Bool;   // Reserved
        ldStsSlot            : Bool;   // The load request for SLOT (LD_SLOT) has been detected and executed (toggling)
        ldError              : Bool;   // Error occured for the Respective channel
        eventUFlow           : Bool;   // Saved state, shows that there was a counter value underflow
        eventOFlow           : Bool;   // Saved state, shows that there was a counter value overflow
        eventCmp0            : Bool;   // Saved state, shows that a comparison event with comparison value 0 occured
        eventCmp1            : Bool;   // Saved state, shows that a comparison event with comparison value 1 occured
        resEventUFlowAck     : Bool;   // Reset of event eventUFlow is active
        resEventOFlowAck     : Bool;   // Reset of event eventOFlow is active
        resEventCmp0Ack      : Bool;   // Reset of event eventCmp0 is active
        resEventCmp1Ack      : Bool;   // Reset of event eventCmp1 is active
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec129   : STRUCT
        majMinVer        : Byte    := BYTE#0;                 // Major / minor version
        lengthParamBlock : Byte    := BYTE#10;                // Length of parameter block = 10
        numParamBlocks   : Byte    := BYTE#16;                // Number of parameter blocks
        resb3            : Byte;                              // Reserved
        paramBlock       : Array[1..16] of EMHFDataRecParam;  // Parameter blocks
      END_STRUCT;

   END_TYPE

   TYPE DI8HSDataRecDI          : STRUCT
        majMinVer               : Byte    := BYTE#64;               // Major / minor version
        numParamStruct          : Byte    := BYTE#2;                // Number of parameter structures = 2
        numModuleParamBlocks    : Byte    := BYTE#1;                // Number of module parameter blocks = 1
        lengthModuleParamBlock  : Byte    := BYTE#2;                // Length of module parameter block = 2
        operatingMode           : Byte    := BYTE#0;                // Operating mode
        enableDiagnostics       : Byte;                             // Enable diagnostics
        numChannelParamBlocks   : Byte    := BYTE#8;                // Number of channel parameter blocks = 8
        lengthChannelParamBlock : Byte    := BYTE#2;                // Length of channel parameter block = 2
        channel                 : Array[0..7] of DI8HSDataRecDICh;  // Channel 0 to 7
      END_STRUCT;

   END_TYPE

   TYPE DI8HSDataRecOVS         : STRUCT
        majMinVer               : Byte    := BYTE#64;                // Major / minor version
        numParamStruct          : Byte    := BYTE#2;                 // Number of parameter structures = 2
        numModuleParamBlocks    : Byte    := BYTE#1;                 // Number of module parameter blocks = 1
        lengthModuleParamBlock  : Byte    := BYTE#2;                 // Length of module parameter block = 2
        operatingMode           : Byte;                              // Sampling rate / Operating mode
        enableDiagnostics       : Byte;                              // Enable diagnostics
        numChannelParamBlocks   : Byte    := BYTE#8;                 // Number of channel parameter blocks = 8
        lengthChannelParamBlock : Byte    := BYTE#2;                 // Length of channel parameter block = 2
        channel                 : Array[0..7] of DI8HSDataRecOVSCh;  // Channel 0 to 7
      END_STRUCT;

   END_TYPE

   TYPE DI8HSCountFeedbackState : STRUCT
        stsDI0                  : Bool;   // Status DI0
        stsDI1                  : Bool;   // Status DI1
        stsDI2                  : Bool;   // Status DI2
        stsDI3                  : Bool;   // Status DI3
        stsDI4                  : Bool;   // Status DI4
        stsDI5                  : Bool;   // Status DI5
        stsDI6                  : Bool;   // Status DI6
        stsDI7                  : Bool;   // Status DI7
      END_STRUCT;

   END_TYPE

   TYPE DI8HSDataRecCount       : STRUCT
        majMinVer               : Byte    := BYTE#64;                  // Major / minor version
        numParamStruct          : Byte    := BYTE#2;                   // Number of parameter structures = 2
        numModuleParamBlocks    : Byte    := BYTE#1;                   // Number of module parameter blocks = 1
        lengthModuleParamBlock  : Byte    := BYTE#2;                   // Length of module parameter block = 2
        operatingMode           : Byte    := BYTE#1;                   // Operating mode
        enableDiagnostics       : Byte;                                // Enable diagnostics
        numChannelParamBlocks   : Byte    := BYTE#4;                   // Number of channel parameter blocks = 4
        lengthChannelParamBlock : Byte    := BYTE#26;                  // Length of channel parameter block = 26
        channel                 : Array[0..3] of DI8HSDataRecCountCh;  // Channel 0 to 3
      END_STRUCT;

   END_TYPE

   TYPE EMCTHFDataRec128            : STRUCT
        majMinVer                   : Byte    := BYTE#97;              // Major / minor version
        numParamStruct              : Byte    := BYTE#2;               // Number of parameter structures = 2
        numModuleParamBlocks        : Byte    := BYTE#1;               // Number of module parameter blocks = 1
        lengthModuleParamBlock      : Byte    := BYTE#26;              // Length of module parameter block = 26
        connectTypePhases           : Byte;                            // Connection type of the phases
        measRangePower              : Byte;                            // Voltage measuring range of the power supply system
        energyGateCountLineFrequ    : Byte;                            // Energy meters gate switch / End value / Line frequency of the power supply system
        resb07                      : Byte;                            // Reserved
        minMaxValueCalcGateDiagVolt : Byte;                            // Min/Max value calc. / Min/Max value calc. gate / Diagnostics load voltage
        idUserDataVariant           : Byte;                            // ID of the user data variant
        transPrimCurrent            : DWord;                           // Current transformer primary current
        currTransSecCurr            : Byte;                            // Current transformer secondary current; 00=1A, 01=5A 
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
        channel                     : Array[0..2] of EMCTHFDataRecCh;  // Channels
      END_STRUCT;

   END_TYPE

   TYPE DQ4HSDataRec            : STRUCT
        majMinVer               : Byte    := BYTE#64;             // Major / minor version
        numParamStruct          : Byte    := BYTE#2;              // Number of parameter structures = 2
        numModuleParamBlocks    : Byte    := BYTE#1;              // Number of module parameter blocks = 1
        lengthModuleParamBlock  : Byte    := BYTE#2;              // Length of module parameter block = 2
        operatingMode           : Byte    := BYTE#0;              // Operating mode
        enableDiagnostics       : Byte;                           // Enable diagnostics
        numChannelParamBlocks   : Byte    := BYTE#4;              // Number of channel parameter blocks = 4
        lengthChannelParamBlock : Byte    := BYTE#8;              // Length of channel parameter block = 8
        channel                 : Array[0..3] of DQ4HSDataRecCh;  // Channel 0 to 3
      END_STRUCT;

   END_TYPE

   TYPE EMRCSTDataRec128            : STRUCT
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
        resw16                      : Word;                            // Reserved
        resw18                      : Word;                            // Reserved
        resw20                      : Word;                            // Reserved
        resw22                      : Word;                            // Reserved
        resb24                      : Byte;                            // Reserved
        resb25                      : Byte;                            // Reserved
        resb26                      : Byte;                            // Reserved
        resb27                      : Byte;                            // Reserved
        resb28                      : Byte;                            // Reserved
        resb29                      : Byte;                            // Reserved
        numChannelParamBlocks       : Byte    := BYTE#3;               // Number of channel parameter blocks = 3
        lengthChannelParamBlock     : Byte    := BYTE#32;              // Length of channel parameter block = 32
        channel                     : Array[0..2] of EMRCSTDataRecCh;  // Channels
      END_STRUCT;

   END_TYPE

   TYPE EMCTSTDataRec128            : STRUCT
        majMinVer                   : Byte    := BYTE#97;              // Major / minor version
        numParamStruct              : Byte    := BYTE#2;               // Number of parameter structures = 2
        numModuleParamBlocks        : Byte    := BYTE#1;               // Number of module parameter blocks = 1
        lengthModuleParamBlock      : Byte    := BYTE#26;              // Length of module parameter block = 26
        connectTypePhases           : Byte    := BYTE#0;               // Connection type of the phases
        measRangePower              : Byte;                            // Voltage measuring range of the power supply system
        energyGateCountLineFrequ    : Byte;                            // Energy meters gate switch / End value / Line frequency of the power supply system
        resb07                      : Byte;                            // Reserved
        minMaxValueCalcGateDiagVolt : Byte;                            // Min/Max value calc. / Min/Max value calc. gate / Diagnostics load voltage
        idUserDataVariant           : Byte;                            // ID of the user data variant
        transPrimCurrent            : DWord;                           // Current transformer primary current
        resb14                      : Byte;                            // Reserved
        resb15                      : Byte;                            // Reserved
        resw16                      : Word;                            // Reserved
        resw18                      : Word;                            // Reserved
        resw20                      : Word;                            // Reserved
        resw22                      : Word;                            // Reserved
        resb24                      : Byte;                            // Reserved
        resb25                      : Byte;                            // Reserved
        resb26                      : Byte;                            // Reserved
        resb27                      : Byte;                            // Reserved
        resb28                      : Byte;                            // Reserved
        resb29                      : Byte;                            // Reserved
        numChannelParamBlocks       : Byte    := BYTE#3;               // Number of channel parameter blocks = 3
        lengthChannelParamBlock     : Byte    := BYTE#32;              // Length of channel parameter block = 32
        channel                     : Array[0..2] of EMCTSTDataRecCh;  // Channels
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec170 : STRUCT
        version        : Byte;                   // Version
        resb1          : Byte;                   // Reserved
        numIDs         : UInt    := UINT#599;    // Number of IDs
        measValueID    : Array[1..599] of UInt;  // ID measured value
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec143           : STRUCT
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
        operHoursCntL3           : Real;               // Operating hours counter L3 (initial value)
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec149V0          : STRUCT
        version                   : Byte;   // Version
        resb1                     : Byte;   // Reserved
        qualifierL3               : Word;   // Qualifier L3
        voltL3N                   : Real;   // Voltage L3-N
        currentL3                 : Real;   // Current L3
        apparentPowerL3           : Real;   // Apparent power L3
        activePowerL3             : Real;   // Active power L3
        reactivePowerQtotL3       : Real;   // Reactive power Qtot L3
        powerFactorL3             : Real;   // Power factor λ L3
        phaseAngleL3              : Real;   // Phase angle L3
        apparentEnergyLongL3      : LReal;  // Apparent energy L3
        totalActiveEnergyLongL3   : LReal;  // Active energy (total) L3
        totalReactiveEnergyLongL3 : LReal;  // Reactive energy (total) L3
        maxVoltL3N                : Real;   // Max. voltage L3-N
        maxCurrentL3              : Real;   // Max. current L3
        maxApparentPowerL3        : Real;   // Max. apparent power L3
        maxActivePowerL3          : Real;   // Max. active power L3
        maxReactivePowerQtotL3    : Real;   // Max. reactive power Qtot L3
        maxPowerFactorL3          : Real;   // Max. power factor λ L3
        minVoltL3N                : Real;   // Min. voltage L3-N
        minCurrentL3              : Real;   // Min. current L3
        minApparentPowerL3        : Real;   // Min. apparent power L3
        minActivePowerL3          : Real;   // Min. active power L3
        minReactivePowerQtotL3    : Real;   // Min. reactive power L3
        minPowerFactorL3          : Real;   // Min. power factor λ L3
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec149V1          : STRUCT
        version                   : Byte    := BYTE#1;  // Version
        resb1                     : Byte;               // Reserved
        qualifierL3               : Word;               // Qualifier L3
        voltL3N                   : Real;               // Voltage L3-N
        currentL3                 : Real;               // Current L3
        apparentPowerL3           : Real;               // Apparent power L3
        activePowerL3             : Real;               // Active power L3
        reactivePowerL3           : Real;               // Reactive power Qtot L3
        powerFactorL3             : Real;               // Power factor λ L3
        phaseAngleL3              : Real;               // Phase angle L3
        apparentEnergyLongL3      : LReal;              // Apparent energy L3
        totalActiveEnergyLongL3   : LReal;              // Active energy (total) L3
        totalReactiveEnergyLongL3 : LReal;              // Reactive energy (total) L3
        maxVoltL3N                : Real;               // Max. voltage L3-N
        maxCurrentL3              : Real;               // Max. current L3
        maxApparentPowerL3        : Real;               // Max. apparent power L3
        maxActivePowerL3          : Real;               // Max. active power L3
        maxReactivePowerQtotL3    : Real;               // Max. reactive power Qtot L3
        maxPowerFactorL3          : Real;               // Max. power factor λ L3
        minVoltL3N                : Real;               // Min. voltage L3-N
        minCurrentL3              : Real;               // Min. current L3
        minApparentPowerL3        : Real;               // Min. apparent power L3
        minActivePowerL3          : Real;               // Min. active power L3
        minReactivePowerQtotL3    : Real;               // Min. reactive power Qtot L3
        minPowerFactorL3          : Real;               // Min. power factor λ L3
        reactivePowerQnL3         : Real;               // Reactive power Qn L3
        resDW108                  : DWord;              // Reserved
        resDW112                  : Real;               // Reserved
        resDW116                  : Real;               // Reserved
        resDW120                  : Real;               // Reserved
        resDW124                  : Real;               // Reserved
        resDW128                  : Real;               // Reserved
        resDW132                  : Real;               // Reserved
        fundReactivePowerL3       : Real;               // Fundamental reactive power L3
        resDW140                  : DWord;              // Reserved
        fundActiveFactorL3        : Real;               // Fundamental cos φ active factor L3
        resDW148                  : DWord;              // Reserved
        resDW152                  : DWord;              // Reserved
        resDW156                  : DWord;              // Reserved
        resDW160                  : DWord;              // Reserved
        resDW164                  : DWord;              // Reserved
        resDW168                  : DWord;              // Reserved
        resDW172                  : DWord;              // Reserved
        resDW176                  : DWord;              // Reserved
        resDW180                  : DWord;              // Reserved
        resDW184                  : DWord;              // Reserved
        resDW188                  : DWord;              // Reserved
        resDW192                  : DWord;              // Reserved
        resDW196                  : DWord;              // Reserved
        resDW200                  : DWord;              // Reserved
        resDW204                  : DWord;              // Reserved
        resDW208                  : DWord;              // Reserved
        resDW212                  : DWord;              // Reserved
        resDW216                  : DWord;              // Reserved
        resDW220                  : DWord;              // Reserved
        resDW224                  : DWord;              // Reserved
        resDW228                  : DWord;              // Reserved
        resDW232                  : DWord;              // Reserved
        resDW236                  : DWord;              // Reserved
        resDW240                  : DWord;              // Reserved
        resDW244                  : DWord;              // Reserved
      END_STRUCT;

   END_TYPE

   TYPE DQ4HSOVS : STRUCT
        channel  : Array[0..3] of OVSCh;  // Output values channel 0..3 with oversampling
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec142V3              : STRUCT
        version                       : Byte    := BYTE#3;  // Version
        resb1                         : Byte;               // Reserved
        voltL1N                       : Real;               // Voltage L1-N
        voltL2N                       : Real;               // Voltage L2-N
        voltL3N                       : Real;               // Voltage L3-N
        voltL1L2                      : Real;               // Voltage L1-L2
        voltL2L3                      : Real;               // Voltage L2-L3
        voltL3L1                      : Real;               // Voltage L3-L1
        currentL1                     : Real;               // Current L1
        currentL2                     : Real;               // Current L2
        currentL3                     : Real;               // Current L3
        powerFactorL1                 : Real;               // Power factor λ L1
        powerFactorL2                 : Real;               // Power factor λ L2
        powerFactorL3                 : Real;               // Power factor λ L3
        powerFactorL1L2L3             : Real;               // Power factor L1 L2 L3
        frequencyL1L2L3               : Real;               // Frequency L1 L2 L3
        amplUnbalanceVolt             : Real;               // Amplitude unbalance voltage U2
        amplUnbalanceCurrent          : Real;               // Amplitude unbalance current Iasym
        apparentPowerL1               : Real;               // Apparent power L1
        apparentPowerL2               : Real;               // Apparent power L2
        apparentPowerL3               : Real;               // Apparent power L3
        apparentPowerL1L2L3           : Real;               // Apparent power L1 L2 L3
        reactivePowerQtotL1           : Real;               // Reactive power Qtot L1
        reactivePowerQtotL2           : Real;               // Reactive power Qtot L2
        reactivePowerQtotL3           : Real;               // Reactive power Qtot L3
        reactivePowerQtotL1L2L3       : Real;               // Reactive power Qtot L1 L2 L3
        activePowerL1                 : Real;               // Active power L1
        activePowerL2                 : Real;               // Active power L2
        activePowerL3                 : Real;               // Active power L3
        activePowerL1L2L3             : Real;               // Active power L1 L2 L3
        phaseAngleL1                  : Real;               // Phase angle L1
        phaseAngleL2                  : Real;               // Phase angle L2
        phaseAngleL3                  : Real;               // Phase angle L3
        apparentEnergyL1L2L3          : Real;               // Apparent energy L1 L2 L3
        totalReactiveEnergyL1L2L3     : Real;               // Total reactive energy L1 L2 L3
        totalActiveEnergyL1L2L3       : Real;               // Total active energy L1 L2 L3
        reactiveEnergyInL1L2L3        : Real;               // Reactive energy inflow L1 L2 L3
        reactiveEnergyOutL1L2L3       : Real;               // Reactive energy outflow L1 L2 L3
        activeEnergyInL1L2L3          : Real;               // Active energy inflow L1 L2 L3
        activeEnergyOutL1L2L3         : Real;               // Active energy outflow L1 L2 L3
        apparentEnergyLongL1L2L3      : LReal;              // Apparent energy L1 L2 L3
        totalReactiveEnergyLongL1L2L3 : LReal;              // Total reactive energy L1 L2 L3
        totalActiveEnergyLongL1L2L3   : LReal;              // Total active energy L1 L2 L3
        reactiveEnergyInLongL1L2L3    : LReal;              // Reactive energy inflow L1 L2 L3
        reactiveEnergyOutLongL1L2L3   : LReal;              // Reactive energy outflow L1 L2 L3
        activeEnergyInLongL1L2L3      : LReal;              // Active energy inflow L1 L2 L3
        activeEnergyOutLongL1L2L3     : LReal;              // Active energy outflow L1 L2 L3
        neutralCurrentIn              : Real;               // Neutral current IN
        reservedDW214                 : DWord;              // Reserved
        reactivePowerQnL1             : Real;               // Reactive power Qn L1
        reactivePowerQnL2             : Real;               // Reactive power Qn L2
        reactivePowerQnL3             : Real;               // Reactive power Qn L3
        reactivePowerQnL1L2L3         : Real;               // Reactive power Qn L1 L2 L3
        averageVoltLN                 : Real;               // Average voltage load L-N (Utot)
        averageVoltLL                 : Real;               // Average voltage L-L
        averageCurrL1L2L3             : Real;               // Average current L1L2L3 (Itot)
        meanPowerFactorL1L2L3         : Real;               // Mean power factor λ L1L2L3
        reservedDW250                 : DWord;              // Reserved
        reservedDW254                 : DWord;              // Reserved
        reservedDW258                 : DWord;              // Reserved
        reservedDW262                 : DWord;              // Reserved
        reservedDW266                 : DWord;              // Reserved
        reservedDW270                 : DWord;              // Reserved
        reservedDW274                 : DWord;              // Reserved
        reservedDW278                 : DWord;              // Reserved
        reservedDW282                 : DWord;              // Reserved
        fundReactivePowerL1           : Real;               // Fundamental reactive power L1
        fundReactivePowerL2           : Real;               // Fundamental reactive power L2
        fundReactivePowerL3           : Real;               // Fundamental reactive power L3
        reservedDW298                 : DWord;              // Reserved
        reservedDW302                 : DWord;              // Reserved
        reservedDW306                 : DWord;              // Reserved
        fundActiveFactorL1            : Real;               // Fundamental cos φ active factor L1
        fundActiveFactorL2            : Real;               // Fundamental cos φ active factor L2
        fundActiveFactorL3            : Real;               // Fundamental cos φ active factor L3
        reservedDW322                 : DWord;              // Reserved
        reservedDW326                 : DWord;              // Reserved
        reservedDW330                 : DWord;              // Reserved
        reservedDW334                 : DWord;              // Reserved
        reservedDW338                 : DWord;              // Reserved
        reservedDW342                 : DWord;              // Reserved
        currentModuleTime             : PNIOTimeStamp;      // Current module time
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec144             : STRUCT
        version                    : Byte;   // Version
        resb1                      : Byte;   // Reserved
        maxVoltL1N                 : Real;   // Max. voltage L1-N
        maxVoltL2N                 : Real;   // Max. voltage L2-N
        maxVoltL3N                 : Real;   // Max. voltage L3-N
        maxVoltL1L2                : Real;   // Max. voltage L1-L2
        maxVoltL2L3                : Real;   // Max. voltage L2-L3
        maxVoltL3L1                : Real;   // Max. voltage L3-L1
        maxCurrentL1               : Real;   // Max. current L1
        maxCurrentL2               : Real;   // Max. current L2
        maxCurrentL3               : Real;   // Max. current L3
        maxApparentPowerL1         : Real;   // Max. apparent power L1
        maxApparentPowerL2         : Real;   // Max. apparent power L2
        maxApparentPowerL3         : Real;   // Max. apparent power L3
        maxActivePowerL1           : Real;   // Max. active power L1
        maxActivePowerL2           : Real;   // Max. active power L2
        maxActivePowerL3           : Real;   // Max. active power L3
        maxReactivePowerQtotL1     : Real;   // Max. reactive power Qtot L1
        maxReactivePowerQtotL2     : Real;   // Max. reactive power Qtot L2
        maxReactivePowerQtotL3     : Real;   // Max. reactive power Qtot L3
        maxPowerFactorL1           : Real;   // Max. power factor λ L1
        maxPowerFactorL2           : Real;   // Max. power factor λ L2
        maxPowerFactorL3           : Real;   // Max. power factor λ L3
        maxFrequency               : Real;   // Max. frequency
        maxApparentPowerL1L2L3     : Real;   // Max. apparent power L1 L2 L3
        maxActivePowerL1L2L3       : Real;   // Max. active power L1 L2 L3
        maxReactivePowerQtotL1L2L3 : Real;   // Max. reactive power Qtot L1 L2 L3
        maxPowerFactorL1L2L3       : Real;   // Max. power factor λ L1L2L3
        maxReactivePowerQnL1       : Real;   // Max. reactive power Qn L1
        maxReactivePowerQnL2       : Real;   // Max. reactive power Qn L2
        maxReactivePowerQnL3       : Real;   // Max. reactive power Qn L3
        resDW118                   : DWord;  // Reserved
        resDW122                   : DWord;  // Reserved
        resDW126                   : DWord;  // Reserved
        resDW130                   : DWord;  // Reserved
        resDW134                   : DWord;  // Reserved
        resDW138                   : DWord;  // Reserved
        resDW142                   : DWord;  // Reserved
        resDW146                   : DWord;  // Reserved
        resDW150                   : DWord;  // Reserved
        resDW154                   : DWord;  // Reserved
        resDW158                   : DWord;  // Reserved
        resDW162                   : DWord;  // Reserved
        resDW166                   : DWord;  // Reserved
        resDW170                   : DWord;  // Reserved
        resDW174                   : DWord;  // Reserved
        resDW178                   : DWord;  // Reserved
        resDW182                   : DWord;  // Reserved
        resDW186                   : DWord;  // Reserved
        resDW190                   : DWord;  // Reserved
        resDW194                   : DWord;  // Reserved
        resDW198                   : DWord;  // Reserved
        resDW202                   : DWord;  // Reserved
        resDW206                   : DWord;  // Reserved
        resDW210                   : DWord;  // Reserved
        resDW214                   : DWord;  // Reserved
        resDW218                   : DWord;  // Reserved
        resDW222                   : DWord;  // Reserved
        maxNeutralCurr             : Real;   // Max. neutral current
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec144             : STRUCT
        version                    : Byte    := BYTE#2;  // Version
        resb1                      : Byte;               // Reserved
        maxVoltL1N                 : Real;               // Max. voltage L1-N
        maxVoltL2N                 : Real;               // Max. voltage L2-N
        maxVoltL3N                 : Real;               // Max. voltage L3-N
        maxVoltL1L2                : Real;               // Max. voltage L1-L2
        maxVoltL2L3                : Real;               // Max. voltage L2-L3
        maxVoltL3L1                : Real;               // Max. voltage L3-L1
        maxCurrentL1               : Real;               // Max. current L1
        maxCurrentL2               : Real;               // Max. current L2
        maxCurrentL3               : Real;               // Max. current L3
        maxApparentPowerL1         : Real;               // Max. apparent power L1
        maxApparentPowerL2         : Real;               // Max. apparent power L2
        maxApparentPowerL3         : Real;               // Max. apparent power L3
        maxActivePowerL1           : Real;               // Max. active power L1
        maxActivePowerL2           : Real;               // Max. active power L2
        maxActivePowerL3           : Real;               // Max. active power L3
        maxReactivePowerQtotL1     : Real;               // Max. reactive power Qtot L1
        maxReactivePowerQtotL2     : Real;               // Max. reactive power Qtot L2
        maxReactivePowerQtotL3     : Real;               // Max. reactive power Qtot L3
        maxPowerFactorL1           : Real;               // Max. power factor λ L1
        maxPowerFactorL2           : Real;               // Max. power factor λ L2
        maxPowerFactorL3           : Real;               // Max. power factor λ L3
        maxFrequency               : Real;               // Max. frequency
        maxApparentPowerL1L2L3     : Real;               // Max. apparent power L1 L2 L3
        maxActivePowerL1L2L3       : Real;               // Max. active power L1 L2 L3
        maxReactivePowerQtotL1L2L3 : Real;               // Max. reactive power Qtot L1 L2 L3
        maxPowerFactorL1L2L3       : Real;               // Max. power factor λ L1L2L3
        maxReactivePowerQnL1       : Real;               // Max. reactive power Qn L1
        maxReactivePowerQnL2       : Real;               // Max. reactive power Qn L2
        maxReactivePowerQnL3       : Real;               // Max. reactive power Qn L3
        maxMeanVoltLN              : Real;               // Max. mean voltage L-N
        maxMeanVoltLL              : Real;               // Max. mean voltage L-L
        maxMeanCurrL1L2L3          : Real;               // Max. mean current L1L2L3
        maxFundVoltL1              : Real;               // Max. fundamental voltage L1
        maxFundVoltL2              : Real;               // Max. fundamental voltage L2
        maxFundVoltL3              : Real;               // Max. fundamental voltage L3
        maxFundCurrL1              : Real;               // Max. fundamental current L1
        maxFundCurrL2              : Real;               // Max. fundamental current L2
        maxFundCurrL3              : Real;               // Max. fundamental current L3
        maxFundApparentPowerL1     : Real;               // Max. fundamental apparent power L1
        maxFundApparentPowerL2     : Real;               // Max. fundamental apparent power L2
        maxFundApparentPowerL3     : Real;               // Max. fundamental apparent power L3
        maxFundReactivePowerL1     : Real;               // Max. fundamental reactive power L1
        maxFundReactivePowerL2     : Real;               // Max. fundamental reactive power L2
        maxFundReactivePowerL3     : Real;               // Max. fundamental reactive power L3
        maxFundActivePowerL1       : Real;               // Max. fundamental active power L1
        maxFundActivePowerL2       : Real;               // Max. fundamental active power L2
        maxFundActivePowerL3       : Real;               // Max. fundamental active power L3
        maxFundActiveFactorL1      : Real;               // Max. fundamental cos φ active factor L1
        maxFundActiveFactorL2      : Real;               // Max. fundamental cos φ active factor L2
        maxFundActiveFactorL3      : Real;               // Max. fundamental cos φ active factor L3
        maxTHDaNVoltL1             : Real;               // Max. total harmonic distortion (THD+N) voltage L1
        maxTHDaNVoltL2             : Real;               // Max. total harmonic distortion (THD+N) voltage L2
        maxTHDaNVoltL3             : Real;               // Max. total harmonic distortion (THD+N) voltage L3
        maxTHDaNCurrL1             : Real;               // Max. total harmonic distortion (THD+N) current L1
        maxTHDaNCurrL2             : Real;               // Max. total harmonic distortion (THD+N) current L2
        maxTHDaNCurrL3             : Real;               // Max. total harmonic distortion (THD+N) current L3
        maxNeutralCurr             : Real;               // Max. neutral current
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec145           : STRUCT
        version                  : Byte    := BYTE#2;  // Version
        resb1                    : Byte;               // Reserved
        minVoltL1N               : Real;               // Min. voltage L1-N
        minVoltL2N               : Real;               // Min. voltage L2-N
        minVoltL3N               : Real;               // Min. voltage L3-N
        minVoltL1L2              : Real;               // Min. voltage L1-L2
        minVoltL2L3              : Real;               // Min. voltage L2-L3
        minVoltL3L1              : Real;               // Min. voltage L3-L1
        minCurrentL1             : Real;               // Min. current L1
        minCurrentL2             : Real;               // Min. current L2
        minCurrentL3             : Real;               // Min. current L3
        minApparentPowerL1       : Real;               // Min. apparent power L1
        minApparentPowerL2       : Real;               // Min. apparent power L2
        minApparentPowerL3       : Real;               // Min. apparent power L3
        minActivePowerL1         : Real;               // Min. active power L1
        minActivePowerL2         : Real;               // Min. active power L2
        minActivePowerL3         : Real;               // Min. active power L3
        minReactivePowerQtotL1   : Real;               // Min. reactive power Qtot L1
        minReactivePowerQtotL2   : Real;               // Min. reactive power Qtot L2
        minReactivePowerQtotL3   : Real;               // Min. reactive power Qtot L3
        minPowerFactorL1         : Real;               // Min. power factor λ L1
        minPowerFactorL2         : Real;               // Min. power factor λ L2
        minPowerFactorL3         : Real;               // Min. power factor λ L3
        minFrequency             : Real;               // Min. frequency
        minApparentPowerL1L2L3   : Real;               // Min. apparent power L1 L2 L3
        minActivePowerL1L2L3     : Real;               // Min. active power L1 L2 L3
        minReactivePowerQnL1L2L3 : Real;               // Min. reactive power Qn L1 L2 L3
        minPowerFactorL1L2L3     : Real;               // Min. power factor λ L1 L2 L3
        minReactivePowerQnL1     : Real;               // Min. reactive power Qn L1
        minReactivePowerQnL2     : Real;               // Min. reactive power Qn L2
        minReactivePowerQnL3     : Real;               // Min. reactive power Qn L3
        minMeanVoltLN            : Real;               // Min. mean voltage L-N
        minMeanVoltLL            : Real;               // Min. mean voltage L-L
        minMeanCurrL1L2L3        : Real;               // Min. mean current L1 L2 L3
        minFundVoltL1            : Real;               // Min. fundamental voltage L1
        minFundVoltL2            : Real;               // Min. fundamental voltage L2
        minFundVoltL3            : Real;               // Min. fundamental voltage L3
        minFundCurrL1            : Real;               // Min. fundamental current L1
        minFundCurrL2            : Real;               // Min. fundamental current L2
        minFundCurrL3            : Real;               // Min. fundamental current L3
        minFundApparentPowerL1   : Real;               // Min. fundamental apparent power L1
        minFundApparentPowerL2   : Real;               // Min. fundamental apparent power L2
        minFundApparentPowerL3   : Real;               // Min. fundamental apparent power L3
        minFundReactivePowerL1   : Real;               // Min. fundamental reactive power L1
        minFundReactivePowerL2   : Real;               // Min. fundamental reactive power L2
        minFundReactivePowerL3   : Real;               // Min. fundamental reactive power L3
        minFundActivePowerL1     : Real;               // Min. fundamental active power L1
        minFundActivePowerL2     : Real;               // Min. fundamental active power L2
        minFundActivePowerL3     : Real;               // Min. fundamental active power L3
        minFundActiveFactorL1    : Real;               // Min. fundamental cos φ active factor L1
        minFundActiveFactorL2    : Real;               // Min. fundamental cos φ active factor L2
        minFundActiveFactorL3    : Real;               // Min. fundamental cos φ active factor L3
        minTHDaNVoltL1           : Real;               // Min. total harmonic distortion (THD+N) voltage L1
        minTHDaNVoltL2           : Real;               // Min. total harmonic distortion (THD+N) voltage L2
        minTHDaNVoltL3           : Real;               // Min. total harmonic distortion (THD+N) voltage L3
        minTHDaNCurrL1           : Real;               // Min. total harmonic distortion (THD+N) current L1
        minTHDaNCurrL2           : Real;               // Min. total harmonic distortion (THD+N) current L2
        minTHDaNCurrL3           : Real;               // Min. total harmonic distortion (THD+N) current L3
        minNeutralCurr           : Real;               // Min. neutral current
      END_STRUCT;

   END_TYPE

   TYPE TMTimerDIDQ10Feedback : STRUCT
        stsDI0                : Bool;   // Status DI0
        stsDI1                : Bool;   // Status DI1
        stsDI2                : Bool;   // Status DI2
        stsDI3                : Bool;   // Status DI3
        reserved0             : Bool;   // Reserved
        reserved1             : Bool;   // Reserved
        reserved2             : Bool;   // Reserved
        reserved3             : Bool;   // Reserved
        qIDI0                 : Bool;   // Quality information DI0
        qIDI1                 : Bool;   // Quality information DI1
        qIDI2                 : Bool;   // Quality information DI2
        qIDI3                 : Bool;   // Quality information DI3
        reserved4             : Bool;   // Reserved
        reserved5             : Bool;   // Reserved
        reserved6             : Bool;   // Reserved
        reserved7             : Bool;   // Reserved
        qIDQ0                 : Bool;   // Quality information DQ0
        qIDQ1                 : Bool;   // Quality information DQ1
        qIDQ2                 : Bool;   // Quality information DQ2
        qIDQ3                 : Bool;   // Quality information DQ3
        qIDQ4                 : Bool;   // Quality information DQ4
        qIDQ5                 : Bool;   // Quality information DQ5
        reserved8             : Bool;   // Reserved
        reserved9             : Bool;   // Reserved
        reserved10            : Byte;   // Reserved
        tecInDI0              : DWord;  // Value depends on operating mode
        tecInDI1              : DWord;  // Value depends on operating mode
        tecInDI2              : DWord;  // Value depends on operating mode
        tecInDI3              : DWord;  // Value depends on operating mode
        lecEn0                : Byte;   // Lost edge counter; DI / DQ active as Timer DI / DQ
        lecEn2                : Byte;   // Lost edge counter; DI / DQ active as Timer DI / DQ
        enDQ0                 : Bool;   // DQ0 active as Timer DQ
        enDQ1                 : Bool;   // DQ1 active as Timer DQ
        enDQ2                 : Bool;   // DQ2 active as Timer DQ
        enDQ3                 : Bool;   // DQ3 active as Timer DQ
        enDQ4                 : Bool;   // DQ4 active as Timer DQ
        enDQ5                 : Bool;   // DQ5 active as Timer DQ
        reserved11            : Bool;   // Reserved
        reserved12            : Bool;   // Reserved
        layoutProperty        : Byte;   // Module-specific Value
        zsw                   : Word;   // This Value is controlled by the TIO instruction TIO_SYNC
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec142V3              : STRUCT
        version                       : Byte    := BYTE#3;  // Version
        resb1                         : Byte;               // Reserved
        voltL1N                       : Real;               // Voltage L1-N
        voltL2N                       : Real;               // Voltage L2-N
        voltL3N                       : Real;               // Voltage L3-N
        voltL1L2                      : Real;               // Voltage L1-L2
        voltL2L3                      : Real;               // Voltage L2-L3
        voltL3L1                      : Real;               // Voltage L3-L1
        currentL1                     : Real;               // Current L1
        currentL2                     : Real;               // Current L2
        currentL3                     : Real;               // Current L3
        powerFactorL1                 : Real;               // Power factor λ L1
        powerFactorL2                 : Real;               // Power factor λ L2
        powerFactorL3                 : Real;               // Power factor λ L3
        powerFactorL1L2L3             : Real;               // Power factor λ L1 L2 L3
        frequencyL1L2L3               : Real;               // Frequency L1 L2 L3
        amplUnbalanceVolt             : Real;               // Amplitude unbalance voltage U2
        amplUnbalanceCurrent          : Real;               // Amplitude unbalance current Iasym
        apparentPowerL1               : Real;               // Apparent power L1
        apparentPowerL2               : Real;               // Apparent power L2
        apparentPowerL3               : Real;               // Apparent power L3
        apparentPowerL1L2L3           : Real;               // Apparent power L1 L2 L3
        reactivePowerQtotL1           : Real;               // Reactive power Qtot L1
        reactivePowerQtotL2           : Real;               // Reactive power Qtot L2
        reactivePowerQtotL3           : Real;               // Reactive power Qtot L3
        reactivePowerQtotL1L2L3       : Real;               // Reactive power Qtot L1 L2 L3
        activePowerL1                 : Real;               // Active power L1
        activePowerL2                 : Real;               // Active power L2
        activePowerL3                 : Real;               // Active power L3
        activePowerL1L2L3             : Real;               // Active power L1 L2 L3
        phaseAngleL1                  : Real;               // Phase angle L1
        phaseAngleL2                  : Real;               // Phase angle L2
        phaseAngleL3                  : Real;               // Phase angle L3
        apparentEnergyL1L2L3          : Real;               // Apparent energy L1 L2 L3
        totalReactiveEnergyL1L2L3     : Real;               // Total reactive energy L1 L2 L3
        totalActiveEnergyL1L2L3       : Real;               // Total active energy L1 L2 L3
        reactiveEnergyInL1L2L3        : Real;               // Reactive energy inflow L1 L2 L3
        reactiveEnergyOutL1L2L3       : Real;               // Reactive energy outflow L1 L2 L3
        activeEnergyInL1L2L3          : Real;               // Active energy inflow L1 L2 L3
        activeEnergyOutL1L2L3         : Real;               // Active energy outflow L1 L2 L3
        apparentEnergyLongL1L2L3      : LReal;              // Apparent energy L1 L2 L3
        totalReactiveEnergyLongL1L2L3 : LReal;              // Total reactive energy L1 L2 L3
        totalActiveEnergyLongL1L2L3   : LReal;              // Total active energy L1 L2 L3
        reactiveEnergyInLongL1L2L3    : LReal;              // Reactive energy inflow L1 L2 L3
        reactiveEnergyOutLongL1L2L3   : LReal;              // Reactive energy outflow L1 L2 L3
        activeEnergyInLongL1L2L3      : LReal;              // Active energy inflow L1 L2 L3
        activeEnergyOutLongL1L2L3     : LReal;              // Active energy outflow L1 L2 L3
        neutralCurrentIn              : Real;               // Neutral current IN
        neutralCurrentCyc10to12       : Real;               // Neutral current 10/12 cycle
        reactivePowerQnL1             : Real;               // Reactive power Qn L1
        reactivePowerQnL2             : Real;               // Reactive power Qn L2
        reactivePowerQnL3             : Real;               // Reactive power Qn L3
        reactivePowerQnL1L2L3         : Real;               // Reactive power Qn L1 L2 L3
        averageVoltLN                 : Real;               // Average voltage L-N (Utot)
        averageVoltLL                 : Real;               // Average voltage L-L
        averageCurrL1L2L3             : Real;               // Average current L1L2L3 (Itot)
        meanPowerFactorL1L2L3         : Real;               // Mean power factor λ L1L2L3
        fundVoltL1                    : Real;               // Fundamental voltage L1
        fundVoltL2                    : Real;               // Fundamental voltage L2
        fundVoltL3                    : Real;               // Fundamental voltage L3
        fundCurrL1                    : Real;               // Fundamental current L1
        fundCurrL2                    : Real;               // Fundamental current L2
        fundCurrL3                    : Real;               // Fundamental current L3
        fundApparentPowerL1           : Real;               // Fundamental apparent power L1
        fundApparentPowerL2           : Real;               // Fundamental apparent power L2
        fundApparentPowerL3           : Real;               // Fundamental apparent power L3
        fundReactivePowerL1           : Real;               // Fundamental reactive power L1
        fundReactivePowerL2           : Real;               // Fundamental reactive power L2
        fundReactivePowerL3           : Real;               // Fundamental reactive power L3
        fundActivePowerL1             : Real;               // Fundamental active power L1
        fundActivePowerL2             : Real;               // Fundamental active power L2
        fundActivePowerL3             : Real;               // Fundamental active power L3
        fundActiveFactorL1            : Real;               // Fundamental cos φ active factor L1
        fundActiveFactorL2            : Real;               // Fundamental cos φ active factor L2
        fundActiveFactorL3            : Real;               // Fundamental cos φ active factor L3
        tHDaNVoltL1                   : Real;               // Total harmonic distortion (THD+N) voltage L1
        tHDaNVoltL2                   : Real;               // Total harmonic distortion (THD+N) voltage L2
        tHDaNVoltL3                   : Real;               // Total harmonic distortion (THD+N) voltage L3
        tHDaNCurrL1                   : Real;               // Total harmonic distortion (THD+N) current L1
        tHDaNCurrL2                   : Real;               // Total harmonic distortion (THD+N) current L2
        tHDaNCurrL3                   : Real;               // Total harmonic distortion (THD+N) current L3
        currentModuleTime             : PNIOTimeStamp;      // Current module time
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec145           : STRUCT
        version                  : Byte    := BYTE#1;  // Version
        resb1                    : Byte;               // Reserved
        minVoltL1N               : Real;               // Min. voltage L1-N
        minVoltL2N               : Real;               // Min. voltage L2-N
        minVoltL3N               : Real;               // Min. voltage L3-N
        minVoltL1L2              : Real;               // Min. voltage L1-L2
        minVoltL2L3              : Real;               // Min. voltage L2-L3
        minVoltL3L1              : Real;               // Min. voltage L3-L1
        minCurrentL1             : Real;               // Min. current L1
        minCurrentL2             : Real;               // Min. current L2
        minCurrentL3             : Real;               // Min. current L3
        minApparentPowerL1       : Real;               // Min. apparent power L1
        minApparentPowerL2       : Real;               // Min. apparent power L2
        minApparentPowerL3       : Real;               // Min. apparent power L3
        minActivePowerL1         : Real;               // Min. active power L1
        minActivePowerL2         : Real;               // Min. active power L2
        minActivePowerL3         : Real;               // Min. active power L3
        minReactivePowerQtotL1   : Real;               // Min. reactive power Qtot L1
        minReactivePowerQtotL2   : Real;               // Min. reactive power Qtot L2
        minReactivePowerQtotL3   : Real;               // Min. reactive power Qtot L3
        minPowerFactorL1         : Real;               // Min. power factor λ L1
        minPowerFactorL2         : Real;               // Min. power factor λ L2
        minPowerFactorL3         : Real;               // Min. power factor λ L3
        minFrequency             : Real;               // Min. frequency
        minApparentPowerL1L2L3   : Real;               // Min. apparent power L1 L2 L3
        minActivePowerL1L2L3     : Real;               // Min. active power L1 L2 L3
        minReactivePowerQnL1L2L3 : Real;               // Min. reactive power Qn L1 L2 L3
        minPowerFactorL1L2L3     : Real;               // Min. power factor λ L1 L2 L3
        minReactivePowerQnL1     : Real;               // Min. reactive power Qn L1
        minReactivePowerQnL2     : Real;               // Min. reactive power Qn L2
        minReactivePowerQnL3     : Real;               // Min. reactive power Qn L3
        resDW118                 : DWord;              // Reserved
        resDW122                 : DWord;              // Reserved
        resDW126                 : DWord;              // Reserved
        resDW130                 : DWord;              // Reserved
        resDW134                 : DWord;              // Reserved
        resDW138                 : DWord;              // Reserved
        resDW142                 : DWord;              // Reserved
        resDW146                 : DWord;              // Reserved
        resDW150                 : DWord;              // Reserved
        resDW154                 : DWord;              // Reserved
        resDW158                 : DWord;              // Reserved
        resDW162                 : DWord;              // Reserved
        resDW166                 : DWord;              // Reserved
        resDW170                 : DWord;              // Reserved
        resDW174                 : DWord;              // Reserved
        resDW178                 : DWord;              // Reserved
        resDW182                 : DWord;              // Reserved
        resDW186                 : DWord;              // Reserved
        resDW190                 : DWord;              // Reserved
        resDW194                 : DWord;              // Reserved
        resDW198                 : DWord;              // Reserved
        resDW202                 : DWord;              // Reserved
        resDW206                 : DWord;              // Reserved
        resDW210                 : DWord;              // Reserved
        resDW214                 : DWord;              // Reserved
        resDW218                 : DWord;              // Reserved
        resDW222                 : DWord;              // Reserved
        minNeutralCurr           : Real;               // Min. neutral current
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec147V0          : STRUCT
        version                   : Byte;   // Version
        resb1                     : Byte;   // Reserved
        qualifierL1               : Word;   // Qualifier L1
        voltL1N                   : Real;   // Voltage L1-N
        currentL1                 : Real;   // Current L1
        apparentPowerL1           : Real;   // Apparent power L1
        activePowerL1             : Real;   // Active power L1
        reactivePowerQtotL1       : Real;   // Reactive power Qtot L1
        powerFactorL1             : Real;   // Power factor λ L1
        phaseAngleL1              : Real;   // Phase angle L1
        apparentEnergyLongL1      : LReal;  // Apparent energy L1
        totalActiveEnergyLongL1   : LReal;  // Active energy (total) L1
        totalReactiveEnergyLongL1 : LReal;  // Reactive energy (total) L1
        maxVoltL1N                : Real;   // Max. voltage L1-N
        maxCurrentL1              : Real;   // Max. current L1
        maxApparentPowerL1        : Real;   // Max. apparent power L1
        maxActivePowerL1          : Real;   // Max. active power L1
        maxReactivePowerQtotL1    : Real;   // Max. reactive power Qtot L1
        maxPowerFactorL1          : Real;   // Max. power factor λ L1
        minVoltL1N                : Real;   // Min. voltage L1-N
        minCurrentL1              : Real;   // Min. current L1
        minApparentPowerL1        : Real;   // Min. apparent power L1
        minActivePowerL1          : Real;   // Min. active power L1
        minReactivePowerQtotL1    : Real;   // Min. reactive power Qtot L1
        minPowerFactorL1          : Real;   // Min. power factor λ L1
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec147V1          : STRUCT
        version                   : Byte    := BYTE#1;  // Version
        resb1                     : Byte;               // Reserved
        qualifierL1               : Word;               // Qualifier L1
        voltL1N                   : Real;               // Voltage L1-N
        currentL1                 : Real;               // Current L1
        apparentPowerL1           : Real;               // Apparent power L1
        activePowerL1             : Real;               // Active power L1
        reactivePowerQtotL1       : Real;               // Reactive power Qtot L1
        powerFactorL1             : Real;               // Power factor λ L1
        phaseAngleL1              : Real;               // Phase angle L1
        apparentEnergyLongL1      : LReal;              // Apparent energy L1
        totalActiveEnergyLongL1   : LReal;              // Active energy (total) L1
        totalReactiveEnergyLongL1 : LReal;              // Reactive energy (total) L1
        maxVoltL1N                : Real;               // Max. voltage L1-N
        maxCurrentL1              : Real;               // Max. current L1
        maxApparentPowerL1        : Real;               // Max. apparent power L1
        maxActivePowerL1          : Real;               // Max. active power L1
        maxReactivePowerQtotL1    : Real;               // Max. reactive power Qtot L1
        maxPowerFactorL1          : Real;               // Max. power factor λ L1
        minVoltL1N                : Real;               // Min. voltage L1-N
        minCurrentL1              : Real;               // Min. current L1
        minApparentPowerL1        : Real;               // Min. apparent power L1
        minActivePowerL1          : Real;               // Min. active power L1
        minReactivePowerQtotL1    : Real;               // Min. reactive power Qtot L1
        minPowerFactorL1          : Real;               // Min. power factor λ L1
        reactivePowerQnL1         : Real;               // Reactive power Qn L1
        voltL1Cycles10to12        : Real;               // Voltage L1 10-12 cycles
        currL1Cycles10to12        : Real;               // Current L1 10-12 cycles
        maxReactivePowerQnL1      : Real;               // Max. reactive power Qn L1
        minReactivePowerQnL1      : Real;               // Min. reactive power Qn L1
        fundVoltL1                : Real;               // Fundamental voltage L1
        fundCurrL1                : Real;               // Fundamental current L1
        fundApparentPowerL1       : Real;               // Fundamental apparent power L1
        fundReactivePowerL1       : Real;               // Fundamental reactive power L1
        fundActivePowerL1         : Real;               // Fundamental active power L1
        fundActiveFactorL1        : Real;               // Fundamental cos φ active factor L1
        maxFundVoltL1             : Real;               // Max. fundamental voltage L1
        maxFundCurrL1             : Real;               // Max. fundamental current L1
        maxFundApparentPowerL1    : Real;               // Max. fundamental apparent power L1
        maxFundReactivePowerL1    : Real;               // Max. fundamental reactive power L1
        maxFundActivePowerL1      : Real;               // Max. fundamental active power L1
        maxFundActiveFactorL1     : Real;               // Max. fundamental cos φ active factor L1
        minFundVoltL1             : Real;               // Min. fundamental voltage L1
        minFundCurrL1             : Real;               // Min. fundamental current L1
        minFundApparentPowerL1    : Real;               // Min. fundamental apparent power L1
        minFundReactivePowerL1    : Real;               // Min. fundamental reactive power L1
        minFundActivePowerL1      : Real;               // Min. fundamental active power L1
        minFundActiveFactorL1     : Real;               // Min. fundamental cos φ active factor L1
        tHDaNVoltL1               : Real;               // Total harmonic distortion (THD+N) voltage L1
        tHDaNCurrL1               : Real;               // Total harmonic distortion (THD+N) current L1
        maxTHDaNVoltL1            : Real;               // Max. total harmonic distortion (THD+N) voltage L1
        maxTHDaNCurrL1            : Real;               // Max. total harmonic distortion (THD+N) current L1
        minTHDaNVoltL1            : Real;               // Min. total harmonic distortion (THD+N) voltage L1
        minTHDaNCurrL1            : Real;               // Min. total harmonic distortion (THD+N) current L1
        voltDipValueL1            : Real;               // Voltage dip - value L1
        voltDipDurationL1         : Real;               // Voltage dip - duration L1
        voltSwellValueL1          : Real;               // Voltage swell - value L1
        voltSwellDurationL1       : Real;               // Voltage swell - duration L1
        voltPeakValueL1           : Real;               // Voltage peak value L1
        currPeakValueL1           : Real;               // Current peak value L1
        overCurrValueL1           : Real;               // Overcurrent value L1
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec142V2              : STRUCT
        version                       : Byte    := BYTE#2;  // Version
        resb1                         : Byte;               // Reserved
        voltL1N                       : Real;               // Voltage L1-N
        voltL2N                       : Real;               // Voltage L2-N
        voltL3N                       : Real;               // Voltage L3-N
        voltL1L2                      : Real;               // Voltage L1-L2
        voltL2L3                      : Real;               // Voltage L2-L3
        voltL3L1                      : Real;               // Voltage L3-L1
        currentL1                     : Real;               // Current L1
        currentL2                     : Real;               // Current L2
        currentL3                     : Real;               // Current L3
        powerFactorL1                 : Real;               // Power factor λ L1
        powerFactorL2                 : Real;               // Power factor λ L2
        powerFactorL3                 : Real;               // Power factor λ L3
        powerFactorL1L2L3             : Real;               // Power factor λ L1 L2 L3
        frequencyL1L2L3               : Real;               // Frequency L1 L2 L3
        amplUnbalanceVolt             : Real;               // Amplitude unbalance voltage U2
        amplUnbalanceCurrent          : Real;               // Amplitude unbalance current Iasym
        apparentPowerL1               : Real;               // Apparent power L1
        apparentPowerL2               : Real;               // Apparent power L2
        apparentPowerL3               : Real;               // Apparent power L3
        apparentPowerL1L2L3           : Real;               // Apparent power L1 L2 L3
        reactivePowerQtotL1           : Real;               // Reactive power Qtot L1
        reactivePowerQtotL2           : Real;               // Reactive power Qtot L2
        reactivePowerQtotL3           : Real;               // Reactive power Qtot L3
        reactivePowerQtotL1L2L3       : Real;               // Reactive power Qtot L1 L2 L3
        activePowerL1                 : Real;               // Active power L1
        activePowerL2                 : Real;               // Active power L2
        activePowerL3                 : Real;               // Active power L3
        activePowerL1L2L3             : Real;               // Active power L1 L2 L3
        phaseAngleL1                  : Real;               // Phase angle L1
        phaseAngleL2                  : Real;               // Phase angle L2
        phaseAngleL3                  : Real;               // Phase angle L3
        apparentEnergyL1L2L3          : Real;               // Apparent energy L1 L2 L3
        totalReactiveEnergyL1L2L3     : Real;               // Total reactive energy L1 L2 L3
        totalActiveEnergyL1L2L3       : Real;               // Total active energy L1 L2 L3
        reactiveEnergyInL1L2L3        : Real;               // Reactive energy inflow L1 L2 L3
        reactiveEnergyOutL1L2L3       : Real;               // Reactive energy outflow L1 L2 L3
        activeEnergyInL1L2L3          : Real;               // Active energy inflow L1 L2 L3
        activeEnergyOutL1L2L3         : Real;               // Active energy outflow L1 L2 L3
        apparentEnergyLongL1L2L3      : LReal;              // Apparent energy L1 L2 L3
        totalReactiveEnergyLongL1L2L3 : LReal;              // Total reactive energy L1 L2 L3
        totalActiveEnergyLongL1L2L3   : LReal;              // Total active energy L1 L2 L3
        reactiveEnergyInLongL1L2L3    : LReal;              // Reactive energy inflow L1 L2 L3
        reactiveEnergyOutLongL1L2L3   : LReal;              // Reactive energy outflow L1 L2 L3
        activeEnergyInLongL1L2L3      : LReal;              // Active energy inflow L1 L2 L3
        activeEnergyOutLongL1L2L3     : LReal;              // Active energy outflow L1 L2 L3
        neutralCurrentIn              : Real;               // Neutral current IN
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec148V1          : STRUCT
        version                   : Byte    := BYTE#1;  // Version
        resb1                     : Byte;               // Reserved
        qualifierL2               : Word;               // Qualifier L2
        voltL2N                   : Real;               // Voltage L2-N
        currentL2                 : Real;               // Current L2
        apparentPowerL2           : Real;               // Apparent power L2
        activePowerL2             : Real;               // Active power L2
        reactivePowerQtotL2       : Real;               // Reactive power Qtot L2
        powerFactorL2             : Real;               // Power factor λ L2
        phaseAngleL2              : Real;               // Phase angle L2
        apparentEnergyLongL2      : LReal;              // Apparent energy L2
        totalActiveEnergyLongL2   : LReal;              // Active energy (total) L2
        totalReactiveEnergyLongL2 : LReal;              // Reactive energy (total) L2
        maxVoltL2N                : Real;               // Max. voltage L2-N
        maxCurrentL2              : Real;               // Max. current L2
        maxApparentPowerL2        : Real;               // Max. apparent power L2
        maxActivePowerL2          : Real;               // Max. active power L2
        maxReactivePowerQtotL2    : Real;               // Max. reactive power Qtot L2
        maxPowerFactorL2          : Real;               // Max. power factor λ L2
        minVoltL2N                : Real;               // Min. voltage L2-N
        minCurrentL2              : Real;               // Min. current L2
        minApparentPowerL2        : Real;               // Min. apparent power L2
        minActivePowerL2          : Real;               // Min. active power L2
        minReactivePowerQtotL2    : Real;               // Min. reactive power Qtot L2
        minPowerFactorL2          : Real;               // Min. power factor λ L2
        reactivePowerQnL2         : Real;               // Reactive power Qn L2
        voltL2Cycles10to12        : Real;               // Voltage L2 10-12 cycles
        currL2Cycles10to12        : Real;               // Current L2 10-12 cycles
        maxReactivePowerQnL2      : Real;               // Max. reactive power Qn L2
        minReactivePowerQnL2      : Real;               // Min. reactive power Qn L2
        fundVoltL2                : Real;               // Fundamental voltage L2
        fundCurrL2                : Real;               // Fundamental current L2
        fundApparentPowerL2       : Real;               // Fundamental apparent power L2
        fundReactivePowerL2       : Real;               // Fundamental reactive power L2
        fundActivePowerL2         : Real;               // Fundamental active power L2
        fundActiveFactorL2        : Real;               // Fundamental cos φ active factor L2
        maxFundVoltL2             : Real;               // Max. fundamental voltage L2
        maxFundCurrL2             : Real;               // Max. fundamental current L2
        maxFundApparentPowerL2    : Real;               // Max. fundamental apparent power L2
        maxFundReactivePowerL2    : Real;               // Max. fundamental reactive power L2
        maxFundActivePowerL2      : Real;               // Max. fundamental active power L2
        maxFundActiveFactorL2     : Real;               // Max. fundamental cos φ active factor L2
        minFundVoltL2             : Real;               // Min. fundamental voltage L2
        minFundCurrL2             : Real;               // Min. fundamental current L2
        minFundApparentPowerL2    : Real;               // Min. fundamental apparent power L2
        minFundReactivePowerL2    : Real;               // Min. fundamental reactive power L2
        minFundActivePowerL2      : Real;               // Min. fundamental active power L2
        minFundActiveFactorL2     : Real;               // Min. fundamental cos φ active factor L2
        tHDaNVoltL2               : Real;               // Total harmonic distortion (THD+N) voltage L2
        tHDaNCurrL2               : Real;               // Total harmonic distortion (THD+N) current L2
        maxTHDaNVoltL2            : Real;               // Max. total harmonic distortion (THD+N) voltage L2
        maxTHDaNCurrL2            : Real;               // Max. total harmonic distortion (THD+N) current L2
        minTHDaNVoltL2            : Real;               // Min. total harmonic distortion (THD+N) voltage L2
        minTHDaNCurrL2            : Real;               // Min. total harmonic distortion (THD+N) current L2
        voltDipValueL2            : Real;               // Voltage dip - value L2
        voltDipDurationL2         : Real;               // Voltage dip - duration L2
        voltSwellValueL2          : Real;               // Voltage swell - value L2
        voltSwellDurationL2       : Real;               // Voltage swell - duration L2
        voltPeakValueL2           : Real;               // Voltage peak value L2
        currPeakValueL2           : Real;               // Current peak value L2
        overCurrValueL2           : Real;               // Overcurrent value L2
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec142V2              : STRUCT
        version                       : Byte    := BYTE#2;  // Version
        resb1                         : Byte;               // Reserved
        voltL1N                       : Real;               // Voltage L1-N
        voltL2N                       : Real;               // Voltage L2-N
        voltL3N                       : Real;               // Voltage L3-N
        voltL1L2                      : Real;               // Voltage L1-L2
        voltL2L3                      : Real;               // Voltage L2-L3
        voltL3L1                      : Real;               // Voltage L3-L1
        currentL1                     : Real;               // Current L1
        currentL2                     : Real;               // Current L2
        currentL3                     : Real;               // Current L3
        powerFactorL1                 : Real;               // Power factor λ L1
        powerFactorL2                 : Real;               // Power factor λ L2
        powerFactorL3                 : Real;               // Power factor λ L3
        powerFactorL1L2L3             : Real;               // Power factor L1 L2 L3
        frequencyL1L2L3               : Real;               // Frequency L1 L2 L3
        amplUnbalanceVolt             : Real;               // Amplitude unbalance voltage U2
        amplUnbalanceCurrent          : Real;               // Amplitude unbalance current Iasym
        apparentPowerL1               : Real;               // Apparent power L1
        apparentPowerL2               : Real;               // Apparent power L2
        apparentPowerL3               : Real;               // Apparent power L3
        apparentPowerL1L2L3           : Real;               // Apparent power L1 L2 L3
        reactivePowerQtotL1           : Real;               // Reactive power Qtot L1
        reactivePowerQtotL2           : Real;               // Reactive power Qtot L2
        reactivePowerQtotL3           : Real;               // Reactive power Qtot L3
        reactivePowerQtotL1L2L3       : Real;               // Reactive power Qtot L1 L2 L3
        activePowerL1                 : Real;               // Active power L1
        activePowerL2                 : Real;               // Active power L2
        activePowerL3                 : Real;               // Active power L3
        activePowerL1L2L3             : Real;               // Active power L1 L2 L3
        phaseAngleL1                  : Real;               // Phase angle L1
        phaseAngleL2                  : Real;               // Phase angle L2
        phaseAngleL3                  : Real;               // Phase angle L3
        apparentEnergyL1L2L3          : Real;               // Apparent energy L1 L2 L3
        totalReactiveEnergyL1L2L3     : Real;               // Total reactive energy L1 L2 L3
        totalActiveEnergyL1L2L3       : Real;               // Total active energy L1 L2 L3
        reactiveEnergyInL1L2L3        : Real;               // Reactive energy inflow L1 L2 L3
        reactiveEnergyOutL1L2L3       : Real;               // Reactive energy outflow L1 L2 L3
        activeEnergyInL1L2L3          : Real;               // Active energy inflow L1 L2 L3
        activeEnergyOutL1L2L3         : Real;               // Active energy outflow L1 L2 L3
        apparentEnergyLongL1L2L3      : LReal;              // Apparent energy L1 L2 L3
        totalReactiveEnergyLongL1L2L3 : LReal;              // Total reactive energy L1 L2 L3
        totalActiveEnergyLongL1L2L3   : LReal;              // Total active energy L1 L2 L3
        reactiveEnergyInLongL1L2L3    : LReal;              // Reactive energy inflow L1 L2 L3
        reactiveEnergyOutLongL1L2L3   : LReal;              // Reactive energy outflow L1 L2 L3
        activeEnergyInLongL1L2L3      : LReal;              // Active energy inflow L1 L2 L3
        activeEnergyOutLongL1L2L3     : LReal;              // Active energy outflow L1 L2 L3
        neutralCurrentIn              : Real;               // Neutral current IN
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec154             : STRUCT
        version                    : Byte    := BYTE#2;          // Version
        resb1                      : Byte;                       // Reserved
        maxVoltL1N                 : RealValueAndPNIOTimeStamp;  // Max. voltage L1-N
        maxVoltL2N                 : RealValueAndPNIOTimeStamp;  // Max. voltage L2-N
        maxVoltL3N                 : RealValueAndPNIOTimeStamp;  // Max. voltage L3-N
        maxVoltL1L2                : RealValueAndPNIOTimeStamp;  // Max. voltage L1-L2
        maxVoltL2L3                : RealValueAndPNIOTimeStamp;  // Max. voltage L2-L3
        maxVoltL3L1                : RealValueAndPNIOTimeStamp;  // Max. voltage L3-L1
        maxCurrentL1               : RealValueAndPNIOTimeStamp;  // Max. current L1
        maxCurrentL2               : RealValueAndPNIOTimeStamp;  // Max. current L2
        maxCurrentL3               : RealValueAndPNIOTimeStamp;  // Max. current L3
        maxApparentPowerL1         : RealValueAndPNIOTimeStamp;  // Max. apparent power L1
        maxApparentPowerL2         : RealValueAndPNIOTimeStamp;  // Max. apparent power L2
        maxApparentPowerL3         : RealValueAndPNIOTimeStamp;  // Max. apparent power L3
        maxActivePowerL1           : RealValueAndPNIOTimeStamp;  // Max. active power L1
        maxActivePowerL2           : RealValueAndPNIOTimeStamp;  // Max. active power L2
        maxActivePowerL3           : RealValueAndPNIOTimeStamp;  // Max. active power L3
        maxReactivePowerQtotL1     : RealValueAndPNIOTimeStamp;  // Max. reactive power Qtot L1
        maxReactivePowerQtotL2     : RealValueAndPNIOTimeStamp;  // Max. reactive power Qtot L2
        maxReactivePowerQtotL3     : RealValueAndPNIOTimeStamp;  // Max. reactive power Qtot L3
        maxPowerFactorL1           : RealValueAndPNIOTimeStamp;  // Max. power factor λ L1
        maxPowerFactorL2           : RealValueAndPNIOTimeStamp;  // Max. power factor λ L2
        maxPowerFactorL3           : RealValueAndPNIOTimeStamp;  // Max. power factor λ L3
        maxFrequency               : RealValueAndPNIOTimeStamp;  // Max. frequency
        maxApparentPowerL1L2L3     : RealValueAndPNIOTimeStamp;  // Max. apparent power L1 L2 L3
        maxActivePowerL1L2L3       : RealValueAndPNIOTimeStamp;  // Max. active power L1 L2 L3
        maxReactivePowerQtotL1L2L3 : RealValueAndPNIOTimeStamp;  // Max. reactive power Qtot L1 L2 L3
        maxPowerFactorL1L2L3       : RealValueAndPNIOTimeStamp;  // Max. power factor λ L1L2L3
        maxReactivePowerQnL1       : RealValueAndPNIOTimeStamp;  // Max. reactive power Qn L1
        maxReactivePowerQnL2       : RealValueAndPNIOTimeStamp;  // Max. reactive power Qn L2
        maxReactivePowerQnL3       : RealValueAndPNIOTimeStamp;  // Max. reactive power Qn L3
        maxMeanVoltLN              : RealValueAndPNIOTimeStamp;  // Max. mean voltage L-N
        maxMeanVoltLL              : RealValueAndPNIOTimeStamp;  // Max. mean voltage L-L
        maxSumMeanCurrL1L2L3       : RealValueAndPNIOTimeStamp;  // Max. sum mean value current L1L2L3
        maxFundVoltL1              : RealValueAndPNIOTimeStamp;  // Max. fundamental voltage L1
        maxFundVoltL2              : RealValueAndPNIOTimeStamp;  // Max. fundamental voltage L2
        maxFundVoltL3              : RealValueAndPNIOTimeStamp;  // Max. fundamental voltage L3
        maxFundCurrL1              : RealValueAndPNIOTimeStamp;  // Max. fundamental current L1
        maxFundCurrL2              : RealValueAndPNIOTimeStamp;  // Max. fundamental current L2
        maxFundCurrL3              : RealValueAndPNIOTimeStamp;  // Max. fundamental current L3
        maxFundApparentPowerL1     : RealValueAndPNIOTimeStamp;  // Max. fundamental apparent power L1
        maxFundApparentPowerL2     : RealValueAndPNIOTimeStamp;  // Max. fundamental apparent power L2
        maxFundApparentPowerL3     : RealValueAndPNIOTimeStamp;  // Max. fundamental apparent power L3
        maxFundReactivePowerL1     : RealValueAndPNIOTimeStamp;  // Max. fundamental reactive power L1
        maxFundReactivePowerL2     : RealValueAndPNIOTimeStamp;  // Max. fundamental reactive power L2
        maxFundReactivePowerL3     : RealValueAndPNIOTimeStamp;  // Max. fundamental reactive power L3
        maxFundActivePowerL1       : RealValueAndPNIOTimeStamp;  // Max. fundamental active power L1
        maxFundActivePowerL2       : RealValueAndPNIOTimeStamp;  // Max. fundamental active power L2
        maxFundActivePowerL3       : RealValueAndPNIOTimeStamp;  // Max. fundamental active power L3
        maxFundActiveFactorL1      : RealValueAndPNIOTimeStamp;  // Max. fundamental cos φ active factor L1
        maxFundActiveFactorL2      : RealValueAndPNIOTimeStamp;  // Max. fundamental cos φ active factor L2
        maxFundActiveFactorL3      : RealValueAndPNIOTimeStamp;  // Max. fundamental cos φ active factor L3
        maxTHDaNVoltL1             : RealValueAndPNIOTimeStamp;  // Max. total harmonic distortion (THD+N) voltage L1
        maxTHDaNVoltL2             : RealValueAndPNIOTimeStamp;  // Max. total harmonic distortion (THD+N) voltage L2
        maxTHDaNVoltL3             : RealValueAndPNIOTimeStamp;  // Max. total harmonic distortion (THD+N) voltage L3
        maxTHDaNCurrL1             : RealValueAndPNIOTimeStamp;  // Max. total harmonic distortion (THD+N) current L1
        maxTHDaNCurrL2             : RealValueAndPNIOTimeStamp;  // Max. total harmonic distortion (THD+N) current L2
        maxTHDaNCurrL3             : RealValueAndPNIOTimeStamp;  // Max. total harmonic distortion (THD+N) current L3
        maxNeutralCurr             : RealValueAndPNIOTimeStamp;  // Max. neutral current
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec143           : STRUCT
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
        operHoursCntL3           : Real;               // Operating hours counter L3 (initial value)
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec135 : STRUCT
        majMinVer      : Byte    := BYTE#0;      // Major / minor version
        dataRecordNum  : Byte    := BYTE#151;    // Data record number for data record mapping = 151
        numMeasValues  : Byte    := BYTE#150;    // Number of measured values for data record mapping
        resb3          : Byte;                   // Reserved
        measValueID    : Array[1..150] of Word;  // ID of measured value for data record mapping
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec149V1          : STRUCT
        version                   : Byte    := BYTE#1;  // Version
        resb1                     : Byte;               // Reserved
        qualifierL3               : Word;               // Qualifier L3
        voltL3N                   : Real;               // Voltage L3-N
        currentL3                 : Real;               // Current L3
        apparentPowerL3           : Real;               // Apparent power L3
        activePowerL3             : Real;               // Active power L3
        reactivePowerQtotL3       : Real;               // Reactive power Qtot L3
        powerFactorL3             : Real;               // Power factor λ L3
        phaseAngleL3              : Real;               // Phase angle L3
        apparentEnergyLongL3      : LReal;              // Apparent energy L3
        totalActiveEnergyLongL3   : LReal;              // Active energy (total) L3
        totalReactiveEnergyLongL3 : LReal;              // Reactive energy (total) L3
        maxVoltL3N                : Real;               // Max. voltage L3-N
        maxCurrentL3              : Real;               // Max. current L3
        maxApparentPowerL3        : Real;               // Max. apparent power L3
        maxActivePowerL3          : Real;               // Max. active power L3
        maxReactivePowerQtotL3    : Real;               // Max. reactive power Qtot L3
        maxPowerFactorL3          : Real;               // Max. power factor λ L3
        minVoltL3N                : Real;               // Min. voltage L3-N
        minCurrentL3              : Real;               // Min. current L3
        minApparentPowerL3        : Real;               // Min. apparent power L3
        minActivePowerL3          : Real;               // Min. active power L3
        minReactivePowerQtotL3    : Real;               // Min. reactive power Qtot L3
        minPowerFactorL3          : Real;               // Min. power factor λ L3
        reactivePowerQnL3         : Real;               // Reactive power Qn L3
        voltL3Cycles10to12        : Real;               // Voltage L3 10-12 cycles
        currL3Cycles10to12        : Real;               // Current L3 10-12 cycles
        maxReactivePowerQnL3      : Real;               // Max. reactive power Qn L3
        minReactivePowerQnL3      : Real;               // Min. reactive power Qn L3
        fundVoltL3                : Real;               // Fundamental voltage L3
        fundCurrL3                : Real;               // Fundamental current L3
        fundApparentPowerL3       : Real;               // Fundamental apparent power L3
        fundReactivePowerL3       : Real;               // Fundamental reactive power L3
        fundActivePowerL3         : Real;               // Fundamental active power L3
        fundActiveFactorL3        : Real;               // Fundamental cos φ active factor L3
        maxFundVoltL3             : Real;               // Max. fundamental voltage L3
        maxFundCurrL3             : Real;               // Max. fundamental current L3
        maxFundApparentPowerL3    : Real;               // Max. fundamental apparent power L3
        maxFundReactivePowerL3    : Real;               // Max. fundamental reactive power L3
        maxFundActivePowerL3      : Real;               // Max. fundamental active power L3
        maxFundActiveFactorL3     : Real;               // Max. fundamental cos φ active factor L3
        minFundVoltL3             : Real;               // Min. fundamental voltage L3
        minFundCurrL3             : Real;               // Min. fundamental current L3
        minFundApparentPowerL3    : Real;               // Min. fundamental apparent power L3
        minFundReactivePowerL3    : Real;               // Min. fundamental reactive power L3
        minFundActivePowerL3      : Real;               // Min. fundamental active power L3
        minFundActiveFactorL3     : Real;               // Min. fundamental cos φ active factor L3
        tHDaNVoltL3               : Real;               // Total harmonic distortion (THD+N) voltage L3
        tHDaNCurrL3               : Real;               // Total harmonic distortion (THD+N) current L3
        maxTHDaNVoltL3            : Real;               // Max. total harmonic distortion (THD+N) voltage L3
        maxTHDaNCurrL3            : Real;               // Max. total harmonic distortion (THD+N) current L3
        minTHDaNVoltL3            : Real;               // Min. total harmonic distortion (THD+N) voltage L3
        minTHDaNCurrL3            : Real;               // Min. total harmonic distortion (THD+N) current L3
        voltDipValueL3            : Real;               // Voltage dip - value L3
        voltDipDurationL3         : Real;               // Voltage dip - duration L3
        voltSwellValueL3          : Real;               // Voltage swell - value L3
        voltSwellDurationL3       : Real;               // Voltage swell - duration L3
        voltPeakValueL3           : Real;               // Voltage peak value L3
        currPeakValueL3           : Real;               // Current peak value L3
        overCurrValueL3           : Real;               // Overcurrent value L3
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec150V1     : STRUCT
        version              : Byte    := BYTE#1;  // Version
        resb1                : Byte;               // Reserved
        operHoursCntL1L2L3   : Real;               // Operating hours counter L1 L2 L3
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

   TYPE TMTimerDIDQ10DataRec : STRUCT
        majMinVer            : Byte    := BYTE#1;   // Major / minor version
        channelParamLength   : Byte    := BYTE#36;  // Length of the parameter data = 36
        reserved0            : Word;                // Reserved
        pwmPeriod            : Byte;                // Reserved/ PWM period for the digital outputs
        enableDiagnostics    : Byte;                // Enable diagnostics / Reaction to CPU STOP
        reserved1            : Word;                // Reserved
        operatingModeDI0     : Byte;                // Reserved / invert input signal / operating mode DI0
        inputDelayDI0        : Byte;                // Reserved / Input delay / Filter frequency DI0
        operatingModeDI1     : Byte;                // Reserved / invert input signal / operating mode DI1
        inputDelayDI1        : Byte;                // Reserved / Input delay / Filter frequency DI1
        operatingModeDI2     : Byte;                // Reserved / invert input signal / HW enable with DI3 / operating mode DI2
        inputDelayDI2        : Byte;                // Reserved / Input delay / Filter frequency DI2
        operatingModeDI3     : Byte;                // Reserved / invert input signal / operating mode DI1
        inputDelayDI3        : Byte;                // Reserved / Input delay DI3
        operatingModeDQ0     : Byte;                // High-speed output / Substitute value / invert input signal / HW enable / operating mode DQ0
        reserved2            : Byte;                // Reserved
        operatingModeDQ1     : Byte;                // High-speed output / Substitute value / invert input signal / HW enable / operating mode DQ1
        reserved3            : Byte;                // Reserved
        operatingModeDQ2     : Byte;                // High-speed output / Substitute value / invert input signal / HW enable / operating mode DQ2
        reserved4            : Byte;                // Reserved
        operatingModeDQ3     : Byte;                // High-speed output / Substitute value / invert input signal / Reserved / operating mode DQ3
        reserved5            : Byte;                // Reserved
        operatingModeDQ4     : Byte;                // High-speed output / Substitute value / invert input signal / Reserved / operating mode DQ4
        reserved6            : Byte;                // Reserved
        operatingModeDQ5     : Byte;                // High-speed output / Substitute value / invert input signal / Reserved / operating mode DQ5
        reserved7            : Byte;                // Reserved
        reserved8            : DWord;               // Reserved
        reserved9            : DWord;               // Reserved
        reserved10           : DWord;               // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec130     : STRUCT
        majMinVer          : Byte    := BYTE#0;     // Major / minor version
        numUserDataVariant : Byte    := BYTE#1;     // Number of user data variant = 1
        numMeasValues      : Byte;                  // Number of measured values for payload mapping
        resb3              : Byte;                  // Reserved
        measValue          : Array[1..64] of Word;  // ID of measured value for payload mapping
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec148V1          : STRUCT
        version                   : Byte    := BYTE#1;  // Version
        resb1                     : Byte;               // Reserved
        qualifierL2               : Word;               // Qualifier L2
        voltL2N                   : Real;               // Voltage L2-N
        currentL2                 : Real;               // Current L2
        apparentPowerL2           : Real;               // Apparent power L2
        activePowerL2             : Real;               // Active power L2
        reactivePowerQtotL2       : Real;               // Reactive power Qtot L2
        powerFactorL2             : Real;               // Power factor λ L2
        phaseAngleL2              : Real;               // Phase angle L2
        apparentEnergyLongL2      : LReal;              // Apparent energy L2
        totalActiveEnergyLongL2   : LReal;              // Active energy (total) L2
        totalReactiveEnergyLongL2 : LReal;              // Reactive energy (total) L2
        maxVoltL2N                : Real;               // Max. voltage L2-N
        maxCurrentL2              : Real;               // Max. current L2
        maxApparentPowerL2        : Real;               // Max. apparent power L2
        maxActivePowerL2          : Real;               // Max. active power L2
        maxReactivePowerQtotL2    : Real;               // Max. reactive power Qtot L2
        maxPowerFactorL2          : Real;               // Max. power factor λ L2
        minVoltL2N                : Real;               // Min. voltage L2-N
        minCurrentL2              : Real;               // Min. current L2
        minApparentPowerL2        : Real;               // Min. apparent power L2
        minActivePowerL2          : Real;               // Min. active power L2
        minReactivePowerQtotL2    : Real;               // Min. reactive power Qtot L2
        minPowerFactorL2          : Real;               // Min. power factor λ L2
        reactivePowerQnL2         : Real;               // Reactive power Qn L2
        resDW108                  : DWord;              // Reserved
        resDW112                  : Real;               // Reserved
        resDW116                  : Real;               // Reserved
        resDW120                  : Real;               // Reserved
        resDW124                  : Real;               // Reserved
        resDW128                  : Real;               // Reserved
        resDW132                  : Real;               // Reserved
        fundReactivePowerL2       : Real;               // Fundamental reactive power L2
        resDW140                  : DWord;              // Reserved
        fundActiveFactorL2        : Real;               // Fundamental cos φ active factor L2
        resDW148                  : DWord;              // Reserved
        resDW152                  : DWord;              // Reserved
        resDW156                  : DWord;              // Reserved
        resDW160                  : DWord;              // Reserved
        resDW164                  : DWord;              // Reserved
        resDW168                  : DWord;              // Reserved
        resDW172                  : DWord;              // Reserved
        resDW176                  : DWord;              // Reserved
        resDW180                  : DWord;              // Reserved
        resDW184                  : DWord;              // Reserved
        resDW188                  : DWord;              // Reserved
        resDW192                  : DWord;              // Reserved
        resDW196                  : DWord;              // Reserved
        resDW200                  : DWord;              // Reserved
        resDW204                  : DWord;              // Reserved
        resDW208                  : DWord;              // Reserved
        resDW212                  : DWord;              // Reserved
        resDW216                  : DWord;              // Reserved
        resDW220                  : DWord;              // Reserved
        resDW224                  : DWord;              // Reserved
        resDW228                  : DWord;              // Reserved
        resDW232                  : DWord;              // Reserved
        resDW236                  : DWord;              // Reserved
        resDW240                  : DWord;              // Reserved
        resDW244                  : DWord;              // Reserved
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec130a131 : STRUCT
        majMinVer          : Byte    := BYTE#0;     // Major / minor version
        numPayloadVariant  : Byte;                  // Number of payload variant 1 or 2
        numMeasValues      : Byte    := BYTE#64;    // Number of measured values for payload mapping
        resb3              : Byte;                  // Reserved
        measValue          : Array[1..64] of Word;  // ID of measured value for payload mapping
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec155           : STRUCT
        version                  : Byte    := BYTE#2;          // Version
        resb1                    : Byte;                       // Reserved
        minVoltL1N               : RealValueAndPNIOTimeStamp;  // Min. voltage L1-N
        minVoltL2N               : RealValueAndPNIOTimeStamp;  // Min. voltage L2-N
        minVoltL3N               : RealValueAndPNIOTimeStamp;  // Min. voltage L3-N
        minVoltL1L2              : RealValueAndPNIOTimeStamp;  // Min. voltage L1-L2
        minVoltL2L3              : RealValueAndPNIOTimeStamp;  // Min. voltage L2-L3
        minVoltL3L1              : RealValueAndPNIOTimeStamp;  // Min. voltage L3-L1
        minCurrentL1             : RealValueAndPNIOTimeStamp;  // Min. current L1
        minCurrentL2             : RealValueAndPNIOTimeStamp;  // Min. current L2
        minCurrentL3             : RealValueAndPNIOTimeStamp;  // Min. current L3
        minApparentPowerL1       : RealValueAndPNIOTimeStamp;  // Min. apparent power L1
        minApparentPowerL2       : RealValueAndPNIOTimeStamp;  // Min. apparent power L2
        minApparentPowerL3       : RealValueAndPNIOTimeStamp;  // Min. apparent power L3
        minActivePowerL1         : RealValueAndPNIOTimeStamp;  // Min. active power L1
        minActivePowerL2         : RealValueAndPNIOTimeStamp;  // Min. active power L2
        minActivePowerL3         : RealValueAndPNIOTimeStamp;  // Min. active power L3
        minReactivePowerQtotL1   : RealValueAndPNIOTimeStamp;  // Min. reactive power Qtot L1
        minReactivePowerQtotL2   : RealValueAndPNIOTimeStamp;  // Min. reactive power Qtot L2
        minReactivePowerQtotL3   : RealValueAndPNIOTimeStamp;  // Min. reactive power Qtot L3
        minPowerFactorL1         : RealValueAndPNIOTimeStamp;  // Min. power factor λ L1
        minPowerFactorL2         : RealValueAndPNIOTimeStamp;  // Min. power factor λ L2
        minPowerFactorL3         : RealValueAndPNIOTimeStamp;  // Min. power factor λ L3
        minFrequency             : RealValueAndPNIOTimeStamp;  // Min. frequency
        minlApparentPowerL1L2L3  : RealValueAndPNIOTimeStamp;  // Min. apparent power L1 L2 L3
        minActivePowerL1L2L3     : RealValueAndPNIOTimeStamp;  // Min. active power L1 L2 L3
        minReactivePowerQnL1L2L3 : RealValueAndPNIOTimeStamp;  // Min. reactive power Qn L1 L2 L3
        minPowerFactorL1L2L3     : RealValueAndPNIOTimeStamp;  // Min. power factor λ L1 L2 L3
        minReactivePowerQnL1     : RealValueAndPNIOTimeStamp;  // Min. reactive power Qn L1
        minReactivePowerQnL2     : RealValueAndPNIOTimeStamp;  // Min. reactive power Qn L2
        minReactivePowerQnL3     : RealValueAndPNIOTimeStamp;  // Min. reactive power Qn L3
        minMeanVoltLN            : RealValueAndPNIOTimeStamp;  // Min. mean voltage L-N
        minMeanVoltLL            : RealValueAndPNIOTimeStamp;  // Min. mean voltage L-L
        minMeanCurrL1L2L3        : RealValueAndPNIOTimeStamp;  // Min. mean current L1 L2 L3
        minFundVoltL1            : RealValueAndPNIOTimeStamp;  // Min. fundamental voltage L1
        minFundVoltL2            : RealValueAndPNIOTimeStamp;  // Min. fundamental voltage L2
        minFundVoltL3            : RealValueAndPNIOTimeStamp;  // Min. fundamental voltage L3
        minFundCurrL1            : RealValueAndPNIOTimeStamp;  // Min. fundamental current L1
        minFundCurrL2            : RealValueAndPNIOTimeStamp;  // Min. fundamental current L2
        minFundCurrL3            : RealValueAndPNIOTimeStamp;  // Min. fundamental current L3
        minFundApparentPowerL1   : RealValueAndPNIOTimeStamp;  // Min. fundamental apparent power L1
        minFundApparentPowerL2   : RealValueAndPNIOTimeStamp;  // Min. fundamental apparent power L2
        minFundApparentPowerL3   : RealValueAndPNIOTimeStamp;  // Min. fundamental apparent power L3
        minFundReactivePowerL1   : RealValueAndPNIOTimeStamp;  // Min. fundamental reactive power L1
        minFundReactivePowerL2   : RealValueAndPNIOTimeStamp;  // Min. fundamental reactive power L2
        minFundReactivePowerL3   : RealValueAndPNIOTimeStamp;  // Min. fundamental reactive power L3
        minFundActivePowerL1     : RealValueAndPNIOTimeStamp;  // Min. fundamental active power L1
        minFundActivePowerL2     : RealValueAndPNIOTimeStamp;  // Min. fundamental active power L2
        minFundActivePowerL3     : RealValueAndPNIOTimeStamp;  // Min. fundamental active power L3
        minFundActiveFactorL1    : RealValueAndPNIOTimeStamp;  // Min. fundamental cos φ active factor L1
        minFundActiveFactorL2    : RealValueAndPNIOTimeStamp;  // Min. fundamental cos φ active factor L2
        minFundActiveFactorL3    : RealValueAndPNIOTimeStamp;  // Min. fundamental cos φ active factor L3
        minTHDaNVoltL1           : RealValueAndPNIOTimeStamp;  // Min. total harmonic distortion (THD+N) voltage L1
        minTHDaNVoltL2           : RealValueAndPNIOTimeStamp;  // Min. total harmonic distortion (THD+N) voltage L2
        minTHDaNVoltL3           : RealValueAndPNIOTimeStamp;  // Min. total harmonic distortion (THD+N) voltage L3
        minTHDaNCurrL1           : RealValueAndPNIOTimeStamp;  // Min. total harmonic distortion (THD+N) current L1
        minTHDaNCurrL2           : RealValueAndPNIOTimeStamp;  // Min. total harmonic distortion (THD+N) current L2
        minTHDaNCurrL3           : RealValueAndPNIOTimeStamp;  // Min. total harmonic distortion (THD+N) current L3
        minNeutralCurr           : RealValueAndPNIOTimeStamp;  // Min. neutral current
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec155           : STRUCT
        version                  : Byte    := BYTE#2;          // Version
        resb1                    : Byte;                       // Reserved
        minVoltL1N               : RealValueAndPNIOTimeStamp;  // Min. voltage L1-N
        minVoltL2N               : RealValueAndPNIOTimeStamp;  // Min. voltage L2-N
        minVoltL3N               : RealValueAndPNIOTimeStamp;  // Min. voltage L3-N
        minVoltL1L2              : RealValueAndPNIOTimeStamp;  // Min. voltage L1-L2
        minVoltL2L3              : RealValueAndPNIOTimeStamp;  // Min. voltage L2-L3
        minVoltL3L1              : RealValueAndPNIOTimeStamp;  // Min. voltage L3-L1
        minCurrentL1             : RealValueAndPNIOTimeStamp;  // Min. current L1
        minCurrentL2             : RealValueAndPNIOTimeStamp;  // Min. current L2
        minCurrentL3             : RealValueAndPNIOTimeStamp;  // Min. current L3
        minApparentPowerL1       : RealValueAndPNIOTimeStamp;  // Min. apparent power L1
        minApparentPowerL2       : RealValueAndPNIOTimeStamp;  // Min. apparent power L2
        minApparentPowerL3       : RealValueAndPNIOTimeStamp;  // Min. apparent power L3
        minActivePowerL1         : RealValueAndPNIOTimeStamp;  // Min. active power L1
        minActivePowerL2         : RealValueAndPNIOTimeStamp;  // Min. active power L2
        minActivePowerL3         : RealValueAndPNIOTimeStamp;  // Min. active power L3
        minReactivePowerQtotL1   : RealValueAndPNIOTimeStamp;  // Min. reactive power Qtot L1
        minReactivePowerQtotL2   : RealValueAndPNIOTimeStamp;  // Min. reactive power Qtot L2
        minReactivePowerQtotL3   : RealValueAndPNIOTimeStamp;  // Min. reactive power Qtot L3
        minPowerFactorL1         : RealValueAndPNIOTimeStamp;  // Min. power factor λ L1
        minPowerFactorL2         : RealValueAndPNIOTimeStamp;  // Min. power factor λ L2
        minPowerFactorL3         : RealValueAndPNIOTimeStamp;  // Min. power factor λ L3
        minFrequency             : RealValueAndPNIOTimeStamp;  // Min. frequency
        minlApparentPowerL1L2L3  : RealValueAndPNIOTimeStamp;  // Min. apparent power L1 L2 L3
        minActivePowerL1L2L3     : RealValueAndPNIOTimeStamp;  // Min. active power L1 L2 L3
        minReactivePowerQnL1L2L3 : RealValueAndPNIOTimeStamp;  // Min. reactive power Qn L1 L2 L3
        minPowerFactorL1L2L3     : RealValueAndPNIOTimeStamp;  // Min. power factor λ L1 L2 L3
        minReactivePowerQnL1     : RealValueAndPNIOTimeStamp;  // Min. reactive power Qn L1
        minReactivePowerQnL2     : RealValueAndPNIOTimeStamp;  // Min. reactive power Qn L2
        minReactivePowerQnL3     : RealValueAndPNIOTimeStamp;  // Min. reactive power Qn L3
        resByteArray466          : Array[0..15] of Byte;       // Reserved
        resByteArray482          : Array[0..15] of Byte;       // Reserved
        resByteArray498          : Array[0..15] of Byte;       // Reserved
        resByteArray514          : Array[0..15] of Byte;       // Reserved
        resByteArray530          : Array[0..15] of Byte;       // Reserved
        resByteArray546          : Array[0..15] of Byte;       // Reserved
        resByteArray562          : Array[0..15] of Byte;       // Reserved
        resByteArray578          : Array[0..15] of Byte;       // Reserved
        resByteArray594          : Array[0..15] of Byte;       // Reserved
        resByteArray610          : Array[0..15] of Byte;       // Reserved
        resByteArray626          : Array[0..15] of Byte;       // Reserved
        resByteArray642          : Array[0..15] of Byte;       // Reserved
        resByteArray658          : Array[0..15] of Byte;       // Reserved
        resByteArray674          : Array[0..15] of Byte;       // Reserved
        resByteArray690          : Array[0..15] of Byte;       // Reserved
        resByteArray706          : Array[0..15] of Byte;       // Reserved
        resByteArray722          : Array[0..15] of Byte;       // Reserved
        resByteArray738          : Array[0..15] of Byte;       // Reserved
        resByteArray754          : Array[0..15] of Byte;       // Reserved
        resByteArray770          : Array[0..15] of Byte;       // Reserved
        resByteArray786          : Array[0..15] of Byte;       // Reserved
        resByteArray802          : Array[0..15] of Byte;       // Reserved
        resByteArray818          : Array[0..15] of Byte;       // Reserved
        resByteArray834          : Array[0..15] of Byte;       // Reserved
        resByteArray850          : Array[0..15] of Byte;       // Reserved
        resByteArray866          : Array[0..15] of Byte;       // Reserved
        resByteArray882          : Array[0..15] of Byte;       // Reserved
        minNeutralCurr           : RealValueAndPNIOTimeStamp;  // Min. neutral current
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec134    : STRUCT
        lowHighVer        : Byte    := BYTE#0;                   // Version low / high 
        numDataRecord     : Byte    := BYTE#173;                 // Data record number for recorded measured values
        numMeasValues     : Byte;                                // Number of activated measured values recordings
        resb3             : Byte;                                // Reserved
        measValueRecBlock : Array[1..2] of EMHFMeasValRecBlock;  // ID of measured value for payload mapping
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec154             : STRUCT
        version                    : Byte    := BYTE#2;          // Version
        resb1                      : Byte;                       // Reserved
        maxVoltL1N                 : RealValueAndPNIOTimeStamp;  // Max. voltage L1-N
        maxVoltL2N                 : RealValueAndPNIOTimeStamp;  // Max. voltage L2-N
        maxVoltL3N                 : RealValueAndPNIOTimeStamp;  // Max. voltage L3-N
        maxVoltL1L2                : RealValueAndPNIOTimeStamp;  // Max. voltage L1-L2
        maxVoltL2L3                : RealValueAndPNIOTimeStamp;  // Max. voltage L2-L3
        maxVoltL3L1                : RealValueAndPNIOTimeStamp;  // Max. voltage L3-L1
        maxCurrentL1               : RealValueAndPNIOTimeStamp;  // Max. current L1
        maxCurrentL2               : RealValueAndPNIOTimeStamp;  // Max. current L2
        maxCurrentL3               : RealValueAndPNIOTimeStamp;  // Max. current L3
        maxApparentPowerL1         : RealValueAndPNIOTimeStamp;  // Max. apparent power L1
        maxApparentPowerL2         : RealValueAndPNIOTimeStamp;  // Max. apparent power L2
        maxApparentPowerL3         : RealValueAndPNIOTimeStamp;  // Max. apparent power L3
        maxActivePowerL1           : RealValueAndPNIOTimeStamp;  // Max. active power L1
        maxActivePowerL2           : RealValueAndPNIOTimeStamp;  // Max. active power L2
        maxActivePowerL3           : RealValueAndPNIOTimeStamp;  // Max. active power L3
        maxReactivePowerQtotL1     : RealValueAndPNIOTimeStamp;  // Max. reactive power Qtot L1
        maxReactivePowerQtotL2     : RealValueAndPNIOTimeStamp;  // Max. reactive power Qtot L2
        maxReactivePowerQtotL3     : RealValueAndPNIOTimeStamp;  // Max. reactive power Qtot L3
        maxPowerFactorL1           : RealValueAndPNIOTimeStamp;  // Max. power factor λ L1
        maxPowerFactorL2           : RealValueAndPNIOTimeStamp;  // Max. power factor λ L2
        maxPowerFactorL3           : RealValueAndPNIOTimeStamp;  // Max. power factor λ L3
        maxFrequency               : RealValueAndPNIOTimeStamp;  // Max. frequency
        maxApparentPowerL1L2L3     : RealValueAndPNIOTimeStamp;  // Max. apparent power L1 L2 L3
        maxActivePowerL1L2L3       : RealValueAndPNIOTimeStamp;  // Max. active power L1 L2 L3
        maxReactivePowerQtotL1L2L3 : RealValueAndPNIOTimeStamp;  // Max. reactive power Qtot L1 L2 L3
        maxPowerFactorL1L2L3       : RealValueAndPNIOTimeStamp;  // Max. power factor λ L1L2L3
        maxReactivePowerQnL1       : RealValueAndPNIOTimeStamp;  // Max. reactive power Qn L1
        maxReactivePowerQnL2       : RealValueAndPNIOTimeStamp;  // Max. reactive power Qn L2
        maxReactivePowerQnL3       : RealValueAndPNIOTimeStamp;  // Max. reactive power Qn L3
        resByteArray466            : Array[0..15] of Byte;       // Reserved
        resByteArray482            : Array[0..15] of Byte;       // Reserved
        resByteArray498            : Array[0..15] of Byte;       // Reserved
        resByteArray514            : Array[0..15] of Byte;       // Reserved
        resByteArray530            : Array[0..15] of Byte;       // Reserved
        resByteArray546            : Array[0..15] of Byte;       // Reserved
        resByteArray562            : Array[0..15] of Byte;       // Reserved
        resByteArray578            : Array[0..15] of Byte;       // Reserved
        resByteArray594            : Array[0..15] of Byte;       // Reserved
        resByteArray610            : Array[0..15] of Byte;       // Reserved
        resByteArray626            : Array[0..15] of Byte;       // Reserved
        resByteArray642            : Array[0..15] of Byte;       // Reserved
        resByteArray658            : Array[0..15] of Byte;       // Reserved
        resByteArray674            : Array[0..15] of Byte;       // Reserved
        resByteArray690            : Array[0..15] of Byte;       // Reserved
        resByteArray706            : Array[0..15] of Byte;       // Reserved
        resByteArray722            : Array[0..15] of Byte;       // Reserved
        resByteArray738            : Array[0..15] of Byte;       // Reserved
        resByteArray754            : Array[0..15] of Byte;       // Reserved
        resByteArray770            : Array[0..15] of Byte;       // Reserved
        resByteArray786            : Array[0..15] of Byte;       // Reserved
        resByteArray802            : Array[0..15] of Byte;       // Reserved
        resByteArray818            : Array[0..15] of Byte;       // Reserved
        resByteArray834            : Array[0..15] of Byte;       // Reserved
        resByteArray850            : Array[0..15] of Byte;       // Reserved
        resByteArray866            : Array[0..15] of Byte;       // Reserved
        resByteArray882            : Array[0..15] of Byte;       // Reserved
        maxNeutralCurr             : RealValueAndPNIOTimeStamp;  // Max. neutral current
      END_STRUCT;

   END_TYPE

   TYPE TMTimerDIDQ10Control : STRUCT
        setDQ0               : Bool;   // Set DQ0 in the DQ operating mode Timer DQ
        setDQ1               : Bool;   // Set DQ1 in the DQ operating mode Timer DQ
        setDQ2               : Bool;   // Set DQ2 in the DQ operating mode Timer DQ
        setDQ3               : Bool;   // Set DQ3 in the DQ operating mode Timer DQ
        setDQ4               : Bool;   // Set DQ4 in the DQ operating mode Timer DQ
        setDQ5               : Bool;   // Set DQ5 in the DQ operating mode Timer DQ
        reserved0            : Bool;   // Reserved
        reserved1            : Bool;   // Reserved
        setEnDI0             : Bool;   // Override hardware enable for DI0
        setEnDI1             : Bool;   // Override hardware enable for DI1
        setEnDI2             : Bool;   // Override hardware enable for DI2
        setEnDI3             : Bool;   // Override hardware enable for DI3
        setEnDQ0             : Bool;   // Override hardware enable for DQ0
        setEnDQ1             : Bool;   // Override hardware enable for DQ1
        setEnDQ2             : Bool;   // Override hardware enable for DQ2
        setEnDQ3             : Bool;   // Override hardware enable for DQ3
        setEnDQ4             : Bool;   // Override hardware enable for DQ4
        setEnDQ5             : Bool;   // Override hardware enable for DQ5
        reserved2            : Bool;   // Reserved
        reserved3            : Bool;   // Reserved
        reserved4            : Bool;   // Reserved
        reserved5            : Bool;   // Reserved
        reserved6            : Bool;   // Reserved
        reserved7            : Bool;   // Reserved
        reserved8            : Byte;   // Reserved
        tecOutDQ0            : DWord;  // Value depends on DQ operating mode
        tecOutDQ1            : DWord;  // Value depends on DQ operating mode
        tecOutDQ2            : DWord;  // Value depends on DQ operating mode
        tecOutDQ3            : DWord;  // Value depends on DQ operating mode
        tecOutDQ4            : DWord;  // Value depends on DQ operating mode
        tecOutDQ5            : DWord;  // Value depends on DQ operating mode
        selDI0               : Byte;   // This Value is supplied by the TIO instruction TIO_DI
        selDI2               : Byte;   // This Value is supplied by the TIO instruction TIO_DI
        stw                  : Word;   // This Value is controlled by the TIO instruction TIO_SYNC
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec151Real : STRUCT
        version            : Byte;                   // Version
        numMeasValues      : Byte    := BYTE#150;    // Number of measured values for data record mapping
        measValue          : Array[1..150] of Real;  // ID of measured value for user data mapping
      END_STRUCT;

   END_TYPE

   TYPE DI8HSOVS : STRUCT
        channel  : Array[0..7] of OVSCh;  // Output values channel 0..7 with oversampling
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec150V1     : STRUCT
        version              : Byte    := BYTE#1;  // Version
        resb1                : Byte;               // Reserved
        operHoursCntL1L2L3   : Real;               // Operating hours counter L1 L2 L3
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
        resUDINT88           : UDInt;              // Reserved
        currentModuleTime    : PNIOTimeStamp;      // Current module time
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec135 : STRUCT
        majMinVer      : Byte    := BYTE#0;      // Major / minor version
        dataRecordNum  : Byte    := BYTE#151;    // Data record number for data record mapping = 151
        numMeasValues  : Byte    := BYTE#150;    // Number of measured values for data record mapping
        resb3          : Byte;                   // Reserved
        measValueID    : Array[1..150] of Word;  // ID of measured value for data record mapping
      END_STRUCT;

   END_TYPE

   TYPE EMHFDataRec151Real : STRUCT
        version            : Byte;                   // Version
        numMeasValues      : Byte    := BYTE#150;    // Number of measured values
        measValue          : Array[1..150] of Real;  // ID of measured value
      END_STRUCT;

   END_TYPE

   TYPE MotorStarterOut  : STRUCT
        motorCw          : Bool;   // Motor CW
        motorCcw         : Bool;   // Motor CCW (Reversing starters only)
        res02            : Bool;   // Reserved
        tripReset        : Bool;   // Trip RESET
        emergencyStart   : Bool;   // Emergency start
        res05            : Bool;   // Reserved
        res06            : Bool;   // Reserved
        coldStart        : Bool;   // Cold start
        res10            : Bool;   // Reserved
        res11            : Bool;   // Reserved
        res12            : Bool;   // Reserved
        res13            : Bool;   // Reserved
        res14            : Bool;   // Reserved
        res15            : Bool;   // Reserved
        res16            : Bool;   // Reserved
        disableQuickStop : Bool;   // Disable quick stop
      END_STRUCT;

   END_TYPE

   TYPE TMPulseControlFrequ : STRUCT
        channel             : Array[0..1] of TMPulseControlFrequCh;
      END_STRUCT;

   END_TYPE

   TYPE EEatIndustryProfileE2 : STRUCT
        totalActivePower      : Real;   // Total active power L1 L2 L3
        totalActiveEnergyIn   : Real;   // Total active energy inflow L1 L2 L3
        totalActiveEnergyOut  : Real;   // Total active energy outflow L1 L2 L3
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
        version               : Byte;   // Version
        resb1                 : Byte;   // Reserved
        minVoltL1N            : Real;   // Min. voltage UL1-N
        minVoltL2N            : Real;   // Min. voltage UL2-N
        minVoltL3N            : Real;   // Min. voltage UL3-N
        minVoltL1L2           : Real;   // Min. voltage UL1-L2
        minVoltL2L3           : Real;   // Min. voltage UL2-L3
        minVoltL3L1           : Real;   // Min. voltage UL3-L1
        minCurrentL1          : Real;   // Min. current L1
        minCurrentL2          : Real;   // Min. current L2
        minCurrentL3          : Real;   // Min. current L3
        minApparentPowerL1    : Real;   // Min. apparent power L1
        minApparentPowerL2    : Real;   // Min. apparent power L2
        minApparentPowerL3    : Real;   // Min. apparent power L3
        minActivePowerL1      : Real;   // Min. active power L1
        minActivePowerL2      : Real;   // Min. active power L2
        minActivePowerL3      : Real;   // Min. active power L3
        minReactivePowerL1    : Real;   // Min. reactive power L1
        minReactivePowerL2    : Real;   // Min. reactive power L2
        minReactivePowerL3    : Real;   // Min. reactive power L3
        minPowerFactorL1      : Real;   // Min. power factor L1
        minPowerFactorL2      : Real;   // Min. power factor L2
        minPowerFactorL3      : Real;   // Min. power factor L3
        minFrequency          : Real;   // Min. frequency
        minTotalApparentPower : Real;   // Min. total apparent power
        minTotalActivePower   : Real;   // Min. total active power
        minTotalReactivePower : Real;   // Min. total reactive power
        minTotalPowerFactor   : Real;   // Min. total power factor
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec144V1      : STRUCT
        version                   : Byte;   // Version
        resb1                     : Byte;   // Reserved
        maxVoltL1N                : Real;   // Max. voltage UL1-N
        maxVoltL2N                : Real;   // Max. voltage UL2-N
        maxVoltL3N                : Real;   // Max. voltage UL3-N
        maxVoltL1L2               : Real;   // Max. voltage UL1-L2
        maxVoltL2L3               : Real;   // Max. voltage UL2-L3
        maxVoltL3L1               : Real;   // Max. voltage UL3-L1
        maxCurrentL1              : Real;   // Max. current L1
        maxCurrentL2              : Real;   // Max. current L2
        maxCurrentL3              : Real;   // Max. current L3
        maxApparentPowerL1        : Real;   // Max. apparent power L1
        maxApparentPowerL2        : Real;   // Max. apparent power L2
        maxApparentPowerL3        : Real;   // Max. apparent power L3
        maxActivePowerL1          : Real;   // Max. active power L1
        maxActivePowerL2          : Real;   // Max. active power L2
        maxActivePowerL3          : Real;   // Max. active power L3
        maxReactivePowerQtotL1    : Real;   // Max. reactive power Qtot L1
        maxReactivePowerQtotL2    : Real;   // Max. reactive power Qtot L2
        maxReactivePowerQtotL3    : Real;   // Max. reactive power Qtot L3
        maxPowerFactorL1          : Real;   // Max. power factor L1
        maxPowerFactorL2          : Real;   // Max. power factor L2
        maxPowerFactorL3          : Real;   // Max. power factor L3
        maxFrequency              : Real;   // Max. frequency
        maxTotalApparentPower     : Real;   // Max. apparent power L1 L2 L3
        maxTotalActivePower       : Real;   // Max. active power L1 L2 L3
        maxTotalReactivePowerQtot : Real;   // Max. reactive power Qtot L1 L2 L3
        maxTotalPowerFactor       : Real;   // Max. power factor λ L1L2L3
        maxReactivePowerQnL1      : Real;   // Max. reactive power Qn L1
        maxReactivePowerQnL2      : Real;   // Max. reactive power Qn L2
        maxReactivePowerQnL3      : Real;   // Max. reactive power Qn L3
        maxMeanVoltLN             : Real;   // Max. mean voltage L-N
        maxMeanVoltLL             : Real;   // Max. mean voltage L-L
        maxSumMeanCurr            : Real;   // Max. sum mean value current
        maxFundVoltL1             : Real;   // Max. fundamental voltage L1
        maxFundVoltL2             : Real;   // Max. fundamental voltage L2
        maxFundVoltL3             : Real;   // Max. fundamental voltage L3
        maxFundCurrL1             : Real;   // Max. fundamental current L1
        maxFundCurrL2             : Real;   // Max. fundamental current L2
        maxFundCurrL3             : Real;   // Max. fundamental current L3
        maxFundApparentPowerL1    : Real;   // Max. fundamental apparent power L1
        maxFundApparentPowerL2    : Real;   // Max. fundamental apparent power L2
        maxFundApparentPowerL3    : Real;   // Max. fundamental apparent power L3
        maxFundReactivePowerL1    : Real;   // Max. fundamental reactive power L1
        maxFundReactivePowerL2    : Real;   // Max. fundamental reactive power L2
        maxFundReactivePowerL3    : Real;   // Max. fundamental reactive power L3
        maxFundActivePowerL1      : Real;   // Max. fundamental active power L1
        maxFundActivePowerL2      : Real;   // Max. fundamental active power L2
        maxFundActivePowerL3      : Real;   // Max. fundamental active power L3
        maxFundActiveFactorL1     : Real;   // Max. fundamental cos φ active factor L1
        maxFundActiveFactorL2     : Real;   // Max. fundamental cos φ active factor L2
        maxFundActiveFactorL3     : Real;   // Max. fundamental cos φ active factor L3
        maxTHDaNVoltL1            : Real;   // Max. THD+N voltage L1
        maxTHDaNVoltL2            : Real;   // Max. THD+N voltage L2
        maxTHDaNVoltL3            : Real;   // Max. THD+N voltage L3
        maxTHDaNCurrL1            : Real;   // Max. THD+N current L1
        maxTHDaNCurrL2            : Real;   // Max. THD+N current L2
        maxTHDaNCurrL3            : Real;   // Max. THD+N current L3
      END_STRUCT;

   END_TYPE

   TYPE EM480VSTDataRec144    : STRUCT
        version               : Byte;   // Version
        resb1                 : Byte;   // Reserved
        maxVoltL1N            : Real;   // Max. voltage UL1-N
        maxVoltL2N            : Real;   // Max. voltage UL2-N
        maxVoltL3N            : Real;   // Max. voltage UL3-N
        maxVoltL1L2           : Real;   // Max. voltage UL1-L2
        maxVoltL2L3           : Real;   // Max. voltage UL2-L3
        maxVoltL3L1           : Real;   // Max. voltage UL3-L1
        maxCurrentL1          : Real;   // Max. current L1
        maxCurrentL2          : Real;   // Max. current L2
        maxCurrentL3          : Real;   // Max. current L3
        maxApparentPowerL1    : Real;   // Max. apparent power L1
        maxApparentPowerL2    : Real;   // Max. apparent power L2
        maxApparentPowerL3    : Real;   // Max. apparent power L3
        maxActivePowerL1      : Real;   // Max. active power L1
        maxActivePowerL2      : Real;   // Max. active power L2
        maxActivePowerL3      : Real;   // Max. active power L3
        maxReactivePowerL1    : Real;   // Max. reactive power L1
        maxReactivePowerL2    : Real;   // Max. reactive power L2
        maxReactivePowerL3    : Real;   // Max. reactive power L3
        maxPowerFactorL1      : Real;   // Max. power factor L1
        maxPowerFactorL2      : Real;   // Max. power factor L2
        maxPowerFactorL3      : Real;   // Max. power factor L3
        maxFrequency          : Real;   // Max. frequency
        maxTotalApparentPower : Real;   // Max. total apparent power
        maxTotalActivePower   : Real;   // Max. total active power
        maxTotalReactivePower : Real;   // Max. total reactive power
        maxTotalPowerFactor   : Real;   // Max. total power factor
      END_STRUCT;

   END_TYPE

   TYPE EM480VSTDataRec143       : STRUCT
        version                  : Byte    := BYTE#1;  // Version
        resb1                    : Byte;               // Reserved
        controlStatusByte1L1     : Byte;               // Status / control byte 1 - L1
        controlStatusByte2L1     : Byte;               // Status / control byte 2 - L1
        controlStatusByte1L2     : Byte;               // Status / control byte 1 - L2
        controlStatusByte2L2     : Byte;               // Status / control byte 2 - L2
        controlStatusByte1L3     : Byte;               // Status / control byte 1 - L3
        controlStatusByte2L3     : Byte;               // Status / control byte 2 - L3
        activeEnergyInL1         : LReal;              // Active energy inflow (initial value) L1
        activeEnergyOutL1        : LReal;              // Active energy outflow (initial value) L1
        reactiveEnergyInL1       : LReal;              // Reactive energy inflow (initial value) L1
        reactiveEnergyOutL1      : LReal;              // Reactive energy outflow (initial value) L1
        apparentEnergyL1         : LReal;              // Apparent energy (initial value) L1
        activeEnergyInL2         : LReal;              // Active energy inflow (initial value) L2
        activeEnergyOutL2        : LReal;              // Active energy outflow (initial value) L2
        reactiveEnergyInL2       : LReal;              // Reactive energy inflow (initial value) L2
        reactiveEnergyOutL2      : LReal;              // Reactive energy outflow (initial value) L2
        apparentEnergyL2         : LReal;              // Apparent energy (initial value) L2
        activeEnergyInL3         : LReal;              // Active energy inflow (initial value) L3
        activeEnergyOutL3        : LReal;              // Active energy outflow (initial value) L3
        reactiveEnergyInL3       : LReal;              // Reactive energy inflow (initial value) L3
        reactiveEnergyOutL3      : LReal;              // Reactive energy outflow (initial value) L3
        apparentEnergyL3         : LReal;              // Apparent energy (initial value) L3
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

   TYPE EM480VSTDataRec142         : STRUCT
        version                    : Byte    := BYTE#1;  // Version
        resb1                      : Byte;               // Reserved
        voltL1N                    : Real;               // Voltage UL1-N
        voltL2N                    : Real;               // Voltage UL2-N
        voltL3N                    : Real;               // Voltage UL3-N
        voltL1L2                   : Real;               // Voltage UL1-L2
        voltL2L3                   : Real;               // Voltage UL2-L3
        voltL3L1                   : Real;               // Voltage UL3-L1
        currentL1                  : Real;               // Current L1
        currentL2                  : Real;               // Current L2
        currentL3                  : Real;               // Current L3
        powerFactorL1              : Real;               // Power factor L1
        powerFactorL2              : Real;               // Power factor L2
        powerFactorL3              : Real;               // Power factor L3
        totalPowerFactor           : Real;               // Total power factor L1 L2 L3
        frequency                  : Real;               // Frequency
        amplUnbalanceVolt          : Real;               // Amplitude unbalance for voltage
        amplUnbalanceCurrent       : Real;               // Amplitude unbalance for current
        apparentPowerL1            : Real;               // Apparent power L1
        apparentPowerL2            : Real;               // Apparent power L2
        apparentPowerL3            : Real;               // Apparent power L3
        totalApparentPower         : Real;               // Total apparent power L1 L2 L3
        reactivePowerL1            : Real;               // Reactive power L1
        reactivePowerL2            : Real;               // Reactive power L2
        reactivePowerL3            : Real;               // Reactive power L2
        totalReactivePower         : Real;               // Total reactive power L1 L2 L3
        activePowerL1              : Real;               // Active power L1
        activePowerL2              : Real;               // Active power L2
        activePowerL3              : Real;               // Active power L3
        totalActivePower           : Real;               // Total active power L1 L2 L3
        phaseAngleL1               : Real;               //  Phase angle L1
        phaseAngleL2               : Real;               //  Phase angle L2
        phaseAngleL3               : Real;               //  Phase angle L3
        totalApparentEnergy        : Real;               // Total apparent energy L1 L2 L3
        totalReactiveEnergy        : Real;               // Total reactive energy L1 L2 L3
        totalActiveEnergy          : Real;               // Total active energy L1 L2 L3
        totalReactiveEnergyIn      : Real;               // Total reactive energy inflow L1 L2 L3
        totalReactiveEnergyOut     : Real;               // Total reactive energy outflow L1 L2 L3
        totalActiveEnergyIn        : Real;               // Total active energy inflow L1 L2 L3
        totalActiveEnergyOut       : Real;               // Total active energy outflow L1 L2 L3
        totalApparentEnergyLong    : LReal;              // Total apparent energy L1 L2 L3
        totalReactiveEnergyLong    : LReal;              // Total reactive energy L1 L2 L3
        totalActiveEnergyLong      : LReal;              // Total active energy L1 L2 L3
        totalReactiveEnergyInLong  : LReal;              // Total reactive energy inflow L1 L2 L3
        totalReactiveEnergyOutLong : LReal;              // Total reactive energy outflow L1 L2 L3
        totalActiveEnergyInLong    : LReal;              // Total active energy inflow L1 L2 L3
        totalActiveEnergyOutLong   : LReal;              // Total active energy outflow L1 L2 L3
        neutralCurrent             : Real;               // Neutral current
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec142V3       : STRUCT
        version                    : Byte    := BYTE#3;  // Version
        resb1                      : Byte;               // Reserved
        voltL1N                    : Real;               // Voltage UL1-N
        voltL2N                    : Real;               // Voltage UL2-N
        voltL3N                    : Real;               // Voltage UL3-N
        voltL1L2                   : Real;               // Voltage UL1-L2
        voltL2L3                   : Real;               // Voltage UL2-L3
        voltL3L1                   : Real;               // Voltage UL3-L1
        currentL1                  : Real;               // Current L1
        currentL2                  : Real;               // Current L2
        currentL3                  : Real;               // Current L3
        powerFactorL1              : Real;               // Power factor L1
        powerFactorL2              : Real;               // Power factor L2
        powerFactorL3              : Real;               // Power factor L3
        totalPowerFactor           : Real;               // Total power factor L1 L2 L3
        frequency                  : Real;               // Frequency
        amplUnbalanceVolt          : Real;               // Amplitude unbalance for voltage
        amplUnbalanceCurrent       : Real;               // Amplitude unbalance for current
        apparentPowerL1            : Real;               // Apparent power L1
        apparentPowerL2            : Real;               // Apparent power L2
        apparentPowerL3            : Real;               // Apparent power L3
        totalApparentPower         : Real;               // Total apparent power L1 L2 L3
        reactivePowerQtotL1        : Real;               // Reactive power Qtot L1
        reactivePowerQtotL2        : Real;               // Reactive power Qtot L2
        reactivePowerQtotL3        : Real;               // Reactive power Qtot L2
        totalReactivePowerQtot     : Real;               // Total reactive power Qtot L1 L2 L3
        activePowerL1              : Real;               // Active power L1
        activePowerL2              : Real;               // Active power L2
        activePowerL3              : Real;               // Active power L3
        totalActivePower           : Real;               // Total active power L1 L2 L3
        phaseAngleL1               : Real;               //  Phase angle L1
        phaseAngleL2               : Real;               //  Phase angle L2
        phaseAngleL3               : Real;               //  Phase angle L3
        totalApparentEnergy        : Real;               // Total apparent energy L1 L2 L3
        totalReactiveEnergy        : Real;               // Total reactive energy L1 L2 L3
        totalActiveEnergy          : Real;               // Total active energy L1 L2 L3
        totalReactiveEnergyIn      : Real;               // Total reactive energy inflow L1 L2 L3
        totalReactiveEnergyOut     : Real;               // Total reactive energy outflow L1 L2 L3
        totalActiveEnergyIn        : Real;               // Total active energy inflow L1 L2 L3
        totalActiveEnergyOut       : Real;               // Total active energy outflow L1 L2 L3
        totalApparentEnergyLong    : LReal;              // Total apparent energy L1 L2 L3
        totalReactiveEnergyLong    : LReal;              // Total reactive energy L1 L2 L3
        totalActiveEnergyLong      : LReal;              // Total active energy L1 L2 L3
        totalReactiveEnergyInLong  : LReal;              // Total reactive energy inflow L1 L2 L3
        totalReactiveEnergyOutLong : LReal;              // Total reactive energy outflow L1 L2 L3
        totalActiveEnergyInLong    : LReal;              // Total active energy inflow L1 L2 L3
        totalActiveEnergyOutLong   : LReal;              // Total active energy outflow L1 L2 L3
        neutralCurrent             : Real;               // Neutral current
        neutralCurrentCyc10to12    : Real;               // Neutral current 10/12 cycle
        reactivePowerQnL1          : Real;               // Reactive power Qn L1
        reactivePowerQnL2          : Real;               // Reactive power Qn L2
        reactivePowerQnL3          : Real;               // Reactive power Qn L3
        totalReactivePowerQn       : Real;               // Total reactive power Qn L1 L2 L3
        averageVoltLN              : Real;               // Average voltage L-N (Usum)
        averageVoltLL              : Real;               // Average voltage L-L
        totalAverageCurr           : Real;               // Average current L1L2L3 (Isum)
        totalMeanPowerFactor       : Real;               // Mean power factor λ L1L2L3
        fundVoltL1                 : Real;               // Fundamental voltage L1
        fundVoltL2                 : Real;               // Fundamental voltage L2
        fundVoltL3                 : Real;               // Fundamental voltage L3
        fundCurrL1                 : Real;               // Fundamental current L1
        fundCurrL2                 : Real;               // Fundamental current L2
        fundCurrL3                 : Real;               // Fundamental current L3
        fundApparentPowerL1        : Real;               // Fundamental apparent power L1
        fundApparentPowerL2        : Real;               // Fundamental apparent power L2
        fundApparentPowerL3        : Real;               // Fundamental apparent power L3
        fundReactivePowerL1        : Real;               // Fundamental reactive power L1
        fundReactivePowerL2        : Real;               // Fundamental reactive power L2
        fundReactivePowerL3        : Real;               // Fundamental reactive power L3
        fundActivePowerL1          : Real;               // Fundamental active power L1
        fundActivePowerL2          : Real;               // Fundamental active power L2
        fundActivePowerL3          : Real;               // Fundamental active power L3
        fundActiveFactorL1         : Real;               // Fundamental cos φ active factor L1
        fundActiveFactorL2         : Real;               // Fundamental cos φ active factor L2
        fundActiveFactorL3         : Real;               // Fundamental cos φ active factor L3
        harmDistTHDaNVoltL1        : Real;               // Harmonic distortion (THD+N) voltage L1
        harmDistTHDaNVoltL2        : Real;               // Harmonic distortion (THD+N) voltage L2
        harmDistTHDaNVoltL3        : Real;               // Harmonic distortion (THD+N) voltage L3
        harmDistTHDaNCurrL1        : Real;               // Harmonic distortion (THD+N) current L1
        harmDistTHDaNCurrL2        : Real;               // Harmonic distortion (THD+N) current L2
        harmDistTHDaNCurrL3        : Real;               // Harmonic distortion (THD+N) current L3
        currentModuleTime          : PNIOTimeStamp;      // Current module time
      END_STRUCT;

   END_TYPE

   TYPE EM400VSTDataRec143  : STRUCT
        version             : Byte;   // Version
        resb1               : Byte;   // Reserved
        controlByte1L1      : Byte;   // Control byte 1 - L1
        controlByte2L1      : Byte;   // Control byte 2 - L1
        controlByte1L2      : Byte;   // Control byte 1 - L2
        controlByte2L2      : Byte;   // Control byte 2 - L2
        controlByte1L3      : Byte;   // Control byte 1 - L3
        controlByte2L3      : Byte;   // Control byte 2 - L3
        activeEnergyInL1    : LReal;  // Active energy inflow (initial value) L1
        activeEnergyOutL1   : LReal;  // Active energy outflow (initial value) L1
        reactiveEnergyInL1  : LReal;  // Reactive energy inflow (initial value) L1
        reactiveEnergyOutL1 : LReal;  // Reactive energy outflow (initial value) L1
        apparentEnergyL1    : LReal;  // Apparent energy (initial value) L1
        activeEnergyInL2    : LReal;  // Active energy inflow (initial value) L2
        activeEnergyOutL2   : LReal;  // Active energy outflow (initial value) L2
        reactiveEnergyInL2  : LReal;  // Reactive energy inflow (initial value) L2
        reactiveEnergyOutL2 : LReal;  // Reactive energy outflow (initial value) L2
        apparentEnergyL2    : LReal;  // Apparent energy (initial value) L2
        activeEnergyInL3    : LReal;  // Active energy inflow (initial value) L3
        activeEnergyOutL3   : LReal;  // Active energy outflow (initial value) L3
        reactiveEnergyInL3  : LReal;  // Reactive energy inflow (initial value) L3
        reactiveEnergyOutL3 : LReal;  // Reactive energy outflow (initial value) L3
        apparentEnergyL3    : LReal;  // Apparent energy (initial value) L3
      END_STRUCT;

   END_TYPE

   TYPE EM480VSTDataRec150   : STRUCT
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
      END_STRUCT;

   END_TYPE

   TYPE EM480VSTDataRec149 : STRUCT
        version            : Byte    := BYTE#1;  // Version
        resb1              : Byte;               // Reserved
        qualifierL3        : Word;               // Qualifier L3
        voltL3N            : Real;               // Voltage UL3-N
        currentL3          : Real;               // Current L3
        apparentPowerL3    : Real;               // Apparent power L3
        activePowerL3      : Real;               // Active power L3
        reactivePowerL3    : Real;               // Reactive power L3
        powerFactorL3      : Real;               // Power factor L3
        phaseAngleL3       : Real;               // Phase angle L3
        apparentEnergyL3   : LReal;              // Apparent energy L3
        activeEnergyL3     : LReal;              // Active energy (total) L3
        reactiveEnergyL3   : LReal;              // Reactive energy (total) L3
        maxVoltL3N         : Real;               // Max. voltage UL3-N
        maxCurrentL3       : Real;               // Max. current L3
        maxApparentPowerL3 : Real;               // Max. apparent power L3
        maxActivePowerL3   : Real;               // Max. active power L3
        maxReactivePowerL3 : Real;               // Max. reactive power L3
        maxPowerFactorL3   : Real;               // Max. power factor L3
        minVoltL3N         : Real;               // Min. voltage UL3-N
        minCurrentL3       : Real;               // Min. current L3
        minApparentPowerL3 : Real;               // Min. apparent power L3
        minActivePowerL3   : Real;               // Min. active power L3
        minReactivePowerL3 : Real;               // Min. reactive power L3
        minPowerFactorL3   : Real;               // Min. power factor L3
      END_STRUCT;

   END_TYPE

   TYPE EM480VSTDataRec148 : STRUCT
        version            : Byte    := BYTE#1;  // Version
        resb1              : Byte;               // Reserved
        qualifierL2        : Word;               // Qualifier L2
        voltL2N            : Real;               // Voltage UL2-N
        currentL2          : Real;               // Current L2
        apparentPowerL2    : Real;               // Apparent power L2
        activePowerL2      : Real;               // Active power L2
        reactivePowerL2    : Real;               // Reactive power L2
        powerFactorL2      : Real;               // Power factor L2
        phaseAngleL2       : Real;               // Phase angle L2
        apparentEnergyL2   : LReal;              // Apparent energy L2
        activeEnergyL2     : LReal;              // Active energy (total) L2
        reactiveEnergyL2   : LReal;              // Reactive energy (total) L2
        maxVoltL2N         : Real;               // Max. voltage UL2-N
        maxCurrentL2       : Real;               // Max. current L2
        maxApparentPowerL2 : Real;               // Max. apparent power L2
        maxActivePowerL2   : Real;               // Max. active power L2
        maxReactivePowerL2 : Real;               // Max. reactive power L2
        maxPowerFactorL2   : Real;               // Max. power factor L2
        minVoltL2N         : Real;               // Min. voltage UL2-N
        minCurrentL2       : Real;               // Min. current L2
        minApparentPowerL2 : Real;               // Min. apparent power L2
        minActivePowerL2   : Real;               // Min. active power L2
        minReactivePowerL2 : Real;               // Min. reactive power L2
        minPowerFactorL2   : Real;               // Min. power factor L2
      END_STRUCT;

   END_TYPE

   TYPE EM480VSTDataRec147    : STRUCT
        version               : Byte    := BYTE#1;  // Version
        resb1                 : Byte;               // Reserved
        qualifierL1           : Word;               // Qualifier L1
        voltL1N               : Real;               // Voltage UL1-N
        currentL1             : Real;               // Current L1
        apparentPowerL1       : Real;               // Apparent power L1
        activePowerL1         : Real;               // Active power L1
        reactivePowerL1       : Real;               // Reactive power L1
        powerFactorL1         : Real;               // Power factor L1
        phaseAngleL1          : Real;               // Phase angle L1
        apparentEnergyL1      : LReal;              // Apparent energy L1
        totalActiveEnergyL1   : LReal;              // Active energy (total) L1
        totalReactiveEnergyL1 : LReal;              // Reactive energy (total) L1
        maxVoltL1N            : Real;               // Max. voltage UL1-N
        maxCurrentL1          : Real;               // Max. current L1
        maxApparentPowerL1    : Real;               // Max. apparent power L1
        maxActivePowerL1      : Real;               // Max. active power L1
        maxReactivePowerL1    : Real;               // Max. reactive power L1
        maxPowerFactorL1      : Real;               // Max. power factor L1
        minVoltL1N            : Real;               // Min. voltage UL1-N
        minCurrentL1          : Real;               // Min. current L1
        minApparentPowerL1    : Real;               // Min. apparent power L1
        minActivePowerL1      : Real;               // Min. active power L1
        minReactivePowerL1    : Real;               // Min. reactive power L1
        minPowerFactorL1      : Real;               // Min. power factor L1
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec170 : STRUCT
        version            : Byte;                   // Version
        resb1              : Byte;                   // Reserved
        numIDs             : UInt;                   // Number of IDs
        measValueID        : Array[1..580] of UInt;  // ID measured value
      END_STRUCT;

   END_TYPE

   TYPE EM400VSTDataRec128       : STRUCT
        majMinVer                : Byte    := BYTE#65;            // Major / minor version
        numParamStruct           : Byte    := BYTE#2;             // Number of parameter structures = 2
        numModuleParamBlocks     : Byte    := BYTE#1;             // Number of module parameter blocks = 1
        lengthModuleParamBlock   : Byte    := BYTE#8;             // Length of module parameter block = 8
        connectTypePhases        : Byte    := BYTE#0;             // Connection type of the phases
        measRangePower           : Byte;                          // Voltage measuring range of the power supply system
        energyCountGateLineFrequ : Byte;                          // Energy counter gate / Line frequency of the power supply system
        lineVoltTolerance        : Byte;                          // Line voltage tolerance
        diagLineVolt             : Byte;                          // Diagnostics line voltage
        lowLimitCurrMeas         : Byte;                          // Low limit for current measurement [mA]
        resb10                   : Byte;                          // Reserved
        idUserDataVariant        : Byte;                          // ID of the user data variant
        numChannelParamBlocks    : Byte    := BYTE#3;             // Number of channel parameter blocks = 3
        lengthChannelParamBlock  : Byte    := BYTE#8;             // Length of channel parameter block = 8
        channel                  : Array[0..2] of EMSTDataRecCh;
      END_STRUCT;

   END_TYPE

   TYPE EEatIndustryProfileE1 : STRUCT
        totalActivePower      : Real;   // Total active power L1 L2 L3
      END_STRUCT;

   END_TYPE

   TYPE EMSTDataRec128           : STRUCT
        majMinVer                : Byte    := BYTE#64;            // Major / minor version
        numParamStruct           : Byte    := BYTE#2;             // Number of parameter structures = 2
        numModuleParamBlocks     : Byte    := BYTE#1;             // Number of module parameter blocks = 1
        lengthModuleParamBlock   : Byte    := BYTE#8;             // Length of module parameter block = 8
        connectTypePhases        : Byte    := BYTE#0;             // Connection type of the phases
        measRangePower           : Byte;                          // Voltage measuring range of the power supply system
        energyCountGateLineFrequ : Byte;                          // Energy counter gate / Line frequency of the power supply system
        lineVoltTolerance        : Byte;                          // Line voltage tolerance
        diagLineVolt             : Byte;                          // Diagnostics line voltage
        lowLimitCurrMeas         : Byte;                          // Low limit for current measurement [mA]
        resb10                   : Byte;                          // Reserved
        idUserDataVariant        : Byte;                          // ID of the user data variant
        numChannelParamBlocks    : Byte    := BYTE#3;             // Number of channel parameter blocks = 3
        lengthChannelParamBlock  : Byte    := BYTE#8;             // Length of channel parameter block = 8
        channel                  : Array[0..2] of EMSTDataRecCh;
      END_STRUCT;

   END_TYPE

   TYPE EEatIndustryProfileE0 : STRUCT
        currentL1             : Real;   // Current L1
        currentL2             : Real;   // Current L2
        currentL3             : Real;   // Current L3
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec147V0      : STRUCT
        version                   : Byte;   // Version
        resb1                     : Byte;   // Reserved
        qualifierL1               : Word;   // Qualifier L1
        voltL1N                   : Real;   // Voltage UL1-N
        currentL1                 : Real;   // Current L1
        apparentPowerL1           : Real;   // Apparent power L1
        activePowerL1             : Real;   // Active power L1
        reactivePowerQtotL1       : Real;   // Reactive power Qtot L1
        powerFactorL1             : Real;   // Power factor L1
        phaseAngleL1              : Real;   // Phase angle L1
        apparentEnergyLongL1      : LReal;  // Apparent energy L1
        totalActiveEnergyLongL1   : LReal;  // Active energy (total) L1
        totalReactiveEnergyLongL1 : LReal;  // Reactive energy (total) L1
        maxVoltL1N                : Real;   // Max. voltage UL1-N
        maxCurrentL1              : Real;   // Max. current L1
        maxApparentPowerL1        : Real;   // Max. apparent power L1
        maxActivePowerL1          : Real;   // Max. active power L1
        maxReactivePowerQtotL1    : Real;   // Max. reactive power Qtot L1
        maxPowerFactorL1          : Real;   // Max. power factor L1
        minVoltL1N                : Real;   // Min. voltage UL1-N
        minCurrentL1              : Real;   // Min. current L1
        minApparentPowerL1        : Real;   // Min. apparent power L1
        minActivePowerL1          : Real;   // Min. active power L1
        minReactivePowerQtotL1    : Real;   // Min. reactive power Qtot L1
        minPowerFactorL1          : Real;   // Min. power factor L1
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec155      : STRUCT
        version                 : Byte    := BYTE#1;          // Version
        resb1                   : Byte;                       // Reserved
        minVoltL1N              : RealValueAndPNIOTimeStamp;  // Min. voltage UL1-N
        minVoltL2N              : RealValueAndPNIOTimeStamp;  // Min. voltage UL2-N
        minVoltL3N              : RealValueAndPNIOTimeStamp;  // Min. voltage UL3-N
        minVoltL1L2             : RealValueAndPNIOTimeStamp;  // Min. voltage UL1-L2
        minVoltL2L3             : RealValueAndPNIOTimeStamp;  // Min. voltage UL2-L3
        minVoltL3L1             : RealValueAndPNIOTimeStamp;  // Min. voltage UL3-L1
        minCurrentL1            : RealValueAndPNIOTimeStamp;  // Min. current L1
        minCurrentL2            : RealValueAndPNIOTimeStamp;  // Min. current L2
        minCurrentL3            : RealValueAndPNIOTimeStamp;  // Min. current L3
        minApparentPowerL1      : RealValueAndPNIOTimeStamp;  // Min. apparent power L1
        minApparentPowerL2      : RealValueAndPNIOTimeStamp;  // Min. apparent power L2
        minApparentPowerL3      : RealValueAndPNIOTimeStamp;  // Min. apparent power L3
        minActivePowerL1        : RealValueAndPNIOTimeStamp;  // Min. active power L1
        minActivePowerL2        : RealValueAndPNIOTimeStamp;  // Min. active power L2
        minActivePowerL3        : RealValueAndPNIOTimeStamp;  // Min. active power L3
        minReactivePowerQtotL1  : RealValueAndPNIOTimeStamp;  // Min. reactive power Qtot L1
        minReactivePowerQtotL2  : RealValueAndPNIOTimeStamp;  // Min. reactive power Qtot L2
        minReactivePowerQtotL3  : RealValueAndPNIOTimeStamp;  // Min. reactive power Qtot L3
        minPowerFactorL1        : RealValueAndPNIOTimeStamp;  // Min. power factor L1
        minPowerFactorL2        : RealValueAndPNIOTimeStamp;  // Min. power factor L2
        minPowerFactorL3        : RealValueAndPNIOTimeStamp;  // Min. power factor L3
        minFrequency            : RealValueAndPNIOTimeStamp;  // Min. frequency
        minTotalApparentPower   : RealValueAndPNIOTimeStamp;  // Min. apparent power L1 L2 L3
        minTotalActivePower     : RealValueAndPNIOTimeStamp;  // Min. active power L1 L2 L3
        minTotalReactivePowerQn : RealValueAndPNIOTimeStamp;  // Min. reactive power Qn L1 L2 L3
        minTotalPowerFactor     : RealValueAndPNIOTimeStamp;  // Min. power factor λ L1 L2 L3
        minReactivePowerQnL1    : RealValueAndPNIOTimeStamp;  // Min. reactive power Qn L1
        minReactivePowerQnL2    : RealValueAndPNIOTimeStamp;  // Min. reactive power Qn L2
        minReactivePowerQnL3    : RealValueAndPNIOTimeStamp;  // Min. reactive power Qn L3
        minMeanVoltLN           : RealValueAndPNIOTimeStamp;  // Min. mean voltage L-N
        minMeanVoltLL           : RealValueAndPNIOTimeStamp;  // Min. mean voltage L-L
        minTotalMeanCurr        : RealValueAndPNIOTimeStamp;  // Min. mean current L1 L2 L3
        minFundVoltL1           : RealValueAndPNIOTimeStamp;  // Min. fundamental voltage L1
        minFundVoltL2           : RealValueAndPNIOTimeStamp;  // Min. fundamental voltage L2
        minFundVoltL3           : RealValueAndPNIOTimeStamp;  // Min. fundamental voltage L3
        minFundCurrL1           : RealValueAndPNIOTimeStamp;  // Min. fundamental current L1
        minFundCurrL2           : RealValueAndPNIOTimeStamp;  // Min. fundamental current L2
        minFundCurrL3           : RealValueAndPNIOTimeStamp;  // Min. fundamental current L3
        minFundApparentPowerL1  : RealValueAndPNIOTimeStamp;  // Min. fundamental apparent power L1
        minFundApparentPowerL2  : RealValueAndPNIOTimeStamp;  // Min. fundamental apparent power L2
        minFundApparentPowerL3  : RealValueAndPNIOTimeStamp;  // Min. fundamental apparent power L3
        minFundReactivePowerL1  : RealValueAndPNIOTimeStamp;  // Min. fundamental reactive power L1
        minFundReactivePowerL2  : RealValueAndPNIOTimeStamp;  // Min. fundamental reactive power L2
        minFundReactivePowerL3  : RealValueAndPNIOTimeStamp;  // Min. fundamental reactive power L3
        minFundActivePowerL1    : RealValueAndPNIOTimeStamp;  // Min. fundamental active power L1
        minFundActivePowerL2    : RealValueAndPNIOTimeStamp;  // Min. fundamental active power L2
        minFundActivePowerL3    : RealValueAndPNIOTimeStamp;  // Min. fundamental active power L3
        minFundActiveFactorL1   : RealValueAndPNIOTimeStamp;  // Min. fundamental cos φ active factor L1
        minFundActiveFactorL2   : RealValueAndPNIOTimeStamp;  // Min. fundamental cos φ active factor L2
        minFundActiveFactorL3   : RealValueAndPNIOTimeStamp;  // Min. fundamental cos φ active factor L3
        minTHDaNVoltL1          : RealValueAndPNIOTimeStamp;  // Min. THD+N voltage L1
        minTHDaNVoltL2          : RealValueAndPNIOTimeStamp;  // Min. THD+N voltage L2
        minTHDaNVoltL3          : RealValueAndPNIOTimeStamp;  // Min. THD+N voltage L3
        minTHDaNCurrL1          : RealValueAndPNIOTimeStamp;  // Min. THD+N current L1
        minTHDaNCurrL2          : RealValueAndPNIOTimeStamp;  // Min. THD+N current L2
        minTHDaNCurrL3          : RealValueAndPNIOTimeStamp;  // Min. THD+N current L3
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec154        : STRUCT
        version                   : Byte    := BYTE#1;          // Version
        resb1                     : Byte;                       // Reserved
        maxVoltL1N                : RealValueAndPNIOTimeStamp;  // Max. voltage UL1-N
        maxVoltL2N                : RealValueAndPNIOTimeStamp;  // Max. voltage UL2-N
        maxVoltL3N                : RealValueAndPNIOTimeStamp;  // Max. voltage UL3-N
        maxVoltL1L2               : RealValueAndPNIOTimeStamp;  // Max. voltage UL1-L2
        maxVoltL2L3               : RealValueAndPNIOTimeStamp;  // Max. voltage UL2-L3
        maxVoltL3L1               : RealValueAndPNIOTimeStamp;  // Max. voltage UL3-L1
        maxCurrentL1              : RealValueAndPNIOTimeStamp;  // Max. current L1
        maxCurrentL2              : RealValueAndPNIOTimeStamp;  // Max. current L2
        maxCurrentL3              : RealValueAndPNIOTimeStamp;  // Max. current L3
        maxApparentPowerL1        : RealValueAndPNIOTimeStamp;  // Max. apparent power L1
        maxApparentPowerL2        : RealValueAndPNIOTimeStamp;  // Max. apparent power L2
        maxApparentPowerL3        : RealValueAndPNIOTimeStamp;  // Max. apparent power L3
        maxActivePowerL1          : RealValueAndPNIOTimeStamp;  // Max. active power L1
        maxActivePowerL2          : RealValueAndPNIOTimeStamp;  // Max. active power L2
        maxActivePowerL3          : RealValueAndPNIOTimeStamp;  // Max. active power L3
        maxReactivePowerQtotL1    : RealValueAndPNIOTimeStamp;  // Max. reactive power Qtot L1
        maxReactivePowerQtotL2    : RealValueAndPNIOTimeStamp;  // Max. reactive power Qtot L2
        maxReactivePowerQtotL3    : RealValueAndPNIOTimeStamp;  // Max. reactive power Qtot L3
        maxPowerFactorL1          : RealValueAndPNIOTimeStamp;  // Max. power factor L1
        maxPowerFactorL2          : RealValueAndPNIOTimeStamp;  // Max. power factor L2
        maxPowerFactorL3          : RealValueAndPNIOTimeStamp;  // Max. power factor L3
        maxFrequency              : RealValueAndPNIOTimeStamp;  // Max. frequency
        maxTotalApparentPower     : RealValueAndPNIOTimeStamp;  // Max. apparent power L1 L2 L3
        maxTotalActivePower       : RealValueAndPNIOTimeStamp;  // Max. active power L1 L2 L3
        maxTotalReactivePowerQtot : RealValueAndPNIOTimeStamp;  // Max. reactive power Qtot L1 L2 L3
        maxTotalPowerFactor       : RealValueAndPNIOTimeStamp;  // Max. power factor λ L1L2L3
        maxReactivePowerQnL1      : RealValueAndPNIOTimeStamp;  // Max. reactive power Qn L1
        maxReactivePowerQnL2      : RealValueAndPNIOTimeStamp;  // Max. reactive power Qn L2
        maxReactivePowerQnL3      : RealValueAndPNIOTimeStamp;  // Max. reactive power Qn L3
        maxMeanVoltLN             : RealValueAndPNIOTimeStamp;  // Max. mean voltage L-N
        maxMeanVoltLL             : RealValueAndPNIOTimeStamp;  // Max. mean voltage L-L
        maxSumMeanCurr            : RealValueAndPNIOTimeStamp;  // Max. sum mean value current
        maxFundVoltL1             : RealValueAndPNIOTimeStamp;  // Max. fundamental voltage L1
        maxFundVoltL2             : RealValueAndPNIOTimeStamp;  // Max. fundamental voltage L2
        maxFundVoltL3             : RealValueAndPNIOTimeStamp;  // Max. fundamental voltage L3
        maxFundCurrL1             : RealValueAndPNIOTimeStamp;  // Max. fundamental current L1
        maxFundCurrL2             : RealValueAndPNIOTimeStamp;  // Max. fundamental current L2
        maxFundCurrL3             : RealValueAndPNIOTimeStamp;  // Max. fundamental current L3
        maxFundApparentPowerL1    : RealValueAndPNIOTimeStamp;  // Max. fundamental apparent power L1
        maxFundApparentPowerL2    : RealValueAndPNIOTimeStamp;  // Max. fundamental apparent power L2
        maxFundApparentPowerL3    : RealValueAndPNIOTimeStamp;  // Max. fundamental apparent power L3
        maxFundReactivePowerL1    : RealValueAndPNIOTimeStamp;  // Max. fundamental reactive power L1
        maxFundReactivePowerL2    : RealValueAndPNIOTimeStamp;  // Max. fundamental reactive power L2
        maxFundReactivePowerL3    : RealValueAndPNIOTimeStamp;  // Max. fundamental reactive power L3
        maxFundActivePowerL1      : RealValueAndPNIOTimeStamp;  // Max. fundamental active power L1
        maxFundActivePowerL2      : RealValueAndPNIOTimeStamp;  // Max. fundamental active power L2
        maxFundActivePowerL3      : RealValueAndPNIOTimeStamp;  // Max. fundamental active power L3
        maxFundActiveFactorL1     : RealValueAndPNIOTimeStamp;  // Max. fundamental cos φ active factor L1
        maxFundActiveFactorL2     : RealValueAndPNIOTimeStamp;  // Max. fundamental cos φ active factor L2
        maxFundActiveFactorL3     : RealValueAndPNIOTimeStamp;  // Max. fundamental cos φ active factor L3
        maxTHDaNVoltL1            : RealValueAndPNIOTimeStamp;  // Max. THD+N voltage L1
        maxTHDaNVoltL2            : RealValueAndPNIOTimeStamp;  // Max. THD+N voltage L2
        maxTHDaNVoltL3            : RealValueAndPNIOTimeStamp;  // Max. THD+N voltage L3
        maxTHDaNCurrL1            : RealValueAndPNIOTimeStamp;  // Max. THD+N current L1
        maxTHDaNCurrL2            : RealValueAndPNIOTimeStamp;  // Max. THD+N current L2
        maxTHDaNCurrL3            : RealValueAndPNIOTimeStamp;  // Max. THD+N current L3
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec145V1    : STRUCT
        version                 : Byte    := BYTE#1;  // Version
        resb1                   : Byte;               // Reserved
        minVoltL1N              : Real;               // Min. voltage UL1-N
        minVoltL2N              : Real;               // Min. voltage UL2-N
        minVoltL3N              : Real;               // Min. voltage UL3-N
        minVoltL1L2             : Real;               // Min. voltage UL1-L2
        minVoltL2L3             : Real;               // Min. voltage UL2-L3
        minVoltL3L1             : Real;               // Min. voltage UL3-L1
        minCurrentL1            : Real;               // Min. current L1
        minCurrentL2            : Real;               // Min. current L2
        minCurrentL3            : Real;               // Min. current L3
        minApparentPowerL1      : Real;               // Min. apparent power L1
        minApparentPowerL2      : Real;               // Min. apparent power L2
        minApparentPowerL3      : Real;               // Min. apparent power L3
        minActivePowerL1        : Real;               // Min. active power L1
        minActivePowerL2        : Real;               // Min. active power L2
        minActivePowerL3        : Real;               // Min. active power L3
        minReactivePowerQtotL1  : Real;               // Min. reactive power Qtot L1
        minReactivePowerQtotL2  : Real;               // Min. reactive power Qtot L2
        minReactivePowerQtotL3  : Real;               // Min. reactive power Qtot L3
        minPowerFactorL1        : Real;               // Min. power factor L1
        minPowerFactorL2        : Real;               // Min. power factor L2
        minPowerFactorL3        : Real;               // Min. power factor L3
        minFrequency            : Real;               // Min. frequency
        minTotalApparentPower   : Real;               // Min. apparent power L1 L2 L3
        minTotalActivePower     : Real;               // Min. active power L1 L2 L3
        minTotalReactivePowerQn : Real;               // Min. reactive power Qn L1 L2 L3
        minTotalPowerFactor     : Real;               // Min. power factor λ L1 L2 L3
        minReactivePowerQnL1    : Real;               // Min. reactive power Qn L1
        minReactivePowerQnL2    : Real;               // Min. reactive power Qn L2
        minReactivePowerQnL3    : Real;               // Min. reactive power Qn L3
        minMeanVoltLN           : Real;               // Min. mean voltage L-N
        minMeanVoltLL           : Real;               // Min. mean voltage L-L
        minTotalMeanCurr        : Real;               // Min. mean current L1 L2 L3
        minFundVoltL1           : Real;               // Min. fundamental voltage L1
        minFundVoltL2           : Real;               // Min. fundamental voltage L2
        minFundVoltL3           : Real;               // Min. fundamental voltage L3
        minFundCurrL1           : Real;               // Min. fundamental current L1
        minFundCurrL2           : Real;               // Min. fundamental current L2
        minFundCurrL3           : Real;               // Min. fundamental current L3
        minFundApparentPowerL1  : Real;               // Min. fundamental apparent power L1
        minFundApparentPowerL2  : Real;               // Min. fundamental apparent power L2
        minFundApparentPowerL3  : Real;               // Min. fundamental apparent power L3
        minFundReactivePowerL1  : Real;               // Min. fundamental reactive power L1
        minFundReactivePowerL2  : Real;               // Min. fundamental reactive power L2
        minFundReactivePowerL3  : Real;               // Min. fundamental reactive power L3
        minFundActivePowerL1    : Real;               // Min. fundamental active power L1
        minFundActivePowerL2    : Real;               // Min. fundamental active power L2
        minFundActivePowerL3    : Real;               // Min. fundamental active power L3
        minFundActiveFactorL1   : Real;               // Min. fundamental cos φ active factor L1
        minFundActiveFactorL2   : Real;               // Min. fundamental cos φ active factor L2
        minFundActiveFactorL3   : Real;               // Min. fundamental cos φ active factor L3
        minTHDaNVoltL1          : Real;               // Min. THD+N voltage L1
        minTHDaNVoltL2          : Real;               // Min. THD+N voltage L2
        minTHDaNVoltL3          : Real;               // Min. THD+N voltage L3
        minTHDaNCurrL1          : Real;               // Min. THD+N current L1
        minTHDaNCurrL2          : Real;               // Min. THD+N current L2
        minTHDaNCurrL3          : Real;               // Min. THD+N current L3
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
        version                    : Byte    := BYTE#2;  // Version
        resb1                      : Byte;               // Reserved
        voltL1N                    : Real;               // Voltage UL1-N
        voltL2N                    : Real;               // Voltage UL2-N
        voltL3N                    : Real;               // Voltage UL3-N
        voltL1L2                   : Real;               // Voltage UL1-L2
        voltL2L3                   : Real;               // Voltage UL2-L3
        voltL3L1                   : Real;               // Voltage UL3-L1
        currentL1                  : Real;               // Current L1
        currentL2                  : Real;               // Current L2
        currentL3                  : Real;               // Current L3
        powerFactorL1              : Real;               // Power factor L1
        powerFactorL2              : Real;               // Power factor L2
        powerFactorL3              : Real;               // Power factor L3
        totalPowerFactor           : Real;               // Total power factor L1 L2 L3
        frequency                  : Real;               // Frequency
        amplUnbalanceVolt          : Real;               // Amplitude unbalance for voltage
        amplUnbalanceCurrent       : Real;               // Amplitude unbalance for current
        apparentPowerL1            : Real;               // Apparent power L1
        apparentPowerL2            : Real;               // Apparent power L2
        apparentPowerL3            : Real;               // Apparent power L3
        totalApparentPower         : Real;               // Total apparent power L1 L2 L3
        reactivePowerQtotL1        : Real;               // Reactive power Qtot L1
        reactivePowerQtotL2        : Real;               // Reactive power Qtot L2
        reactivePowerQtotL3        : Real;               // Reactive power Qtot L2
        totalReactivePowerQtot     : Real;               // Total reactive power Qtot L1 L2 L3
        activePowerL1              : Real;               // Active power L1
        activePowerL2              : Real;               // Active power L2
        activePowerL3              : Real;               // Active power L3
        totalActivePower           : Real;               // Total active power L1 L2 L3
        phaseAngleL1               : Real;               //  Phase angle L1
        phaseAngleL2               : Real;               //  Phase angle L2
        phaseAngleL3               : Real;               //  Phase angle L3
        totalApparentEnergy        : Real;               // Total apparent energy L1 L2 L3
        totalReactiveEnergy        : Real;               // Total reactive energy L1 L2 L3
        totalActiveEnergy          : Real;               // Total active energy L1 L2 L3
        totalReactiveEnergyIn      : Real;               // Total reactive energy inflow L1 L2 L3
        totalReactiveEnergyOut     : Real;               // Total reactive energy outflow L1 L2 L3
        totalActiveEnergyIn        : Real;               // Total active energy inflow L1 L2 L3
        totalActiveEnergyOut       : Real;               // Total active energy outflow L1 L2 L3
        totalApparentEnergyLong    : LReal;              // Total apparent energy L1 L2 L3
        totalReactiveEnergyLong    : LReal;              // Total reactive energy L1 L2 L3
        totalActiveEnergyLong      : LReal;              // Total active energy L1 L2 L3
        totalReactiveEnergyInLong  : LReal;              // Total reactive energy inflow L1 L2 L3
        totalReactiveEnergyOutLong : LReal;              // Total reactive energy outflow L1 L2 L3
        totalActiveEnergyInLong    : LReal;              // Total active energy inflow L1 L2 L3
        totalActiveEnergyOutLong   : LReal;              // Total active energy outflow L1 L2 L3
        neutralCurrent             : Real;               // Neutral current
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec160        : STRUCT
        version                   : Byte;           // Version
        resb1                     : Byte;           // Reserved
        neutralCurrIn             : Real;           // Neutral current IN
        neutralCurrCyc10to12      : Real;           // Neutral current 10/12 cycles
        totalCurrIn               : Real;           // Total current IL1+IL2+IL3-IN
        totalFundReactivePower    : Real;           // Fundamental reactive power L1 L2 L3
        totalMaxFundReactivePower : Real;           // Max. fundamental reactive power L1 L2 L3
        totalMinFundReactivePower : Real;           // Min. fundamental reactive power L1 L2 L3
        totalPowerFactor          : Real;           // Power factor λ L1L2L3
        fundReactivePowerL1       : Real;           // Fundamental reactive power L1
        fundReactivePowerL2       : Real;           // Fundamental reactive power L2
        fundReactivePowerL3       : Real;           // Fundamental reactive power L3
        fundActiveFactorL1        : Real;           // Fundamental cos φ active factor L1
        fundActiveFactorL2        : Real;           // Fundamental cos φ active factor L2
        fundActiveFactorL3        : Real;           // Fundamental cos φ active factor L3
        THDaNVoltL1               : Real;           // THD+N voltage L1
        THDaNVoltL2               : Real;           // THD+N voltage L2
        THDaNVoltL3               : Real;           // THD+N voltage L3
        THDaNCurrL1               : Real;           // THD+N current L1
        THDaNCurrL2               : Real;           // THD+N current L2
        THDaNCurrL3               : Real;           // THD+N current L3
        maxTHDaNVoltL1            : Real;           // Max. THD+N voltage L1
        maxTHDaNVoltL2            : Real;           // Max. THD+N voltage L2
        maxTHDaNVoltL3            : Real;           // Max. THD+N voltage L3
        maxTHDaNCurrL1            : Real;           // Max. THD+N current L1
        maxTHDaNCurrL2            : Real;           // Max. THD+N current L2
        maxTHDaNCurrL3            : Real;           // Max. THD+N current L3
        minTHDaNVoltL1            : Real;           // Min. THD+N voltage L1
        minTHDaNVoltL2            : Real;           // Min. THD+N voltage L2
        minTHDaNVoltL3            : Real;           // Min. THD+N voltage L3
        minTHDaNCurrL1            : Real;           // Min. THD+N current L1
        minTHDaNCurrL2            : Real;           // Min. THD+N current L2
        minTHDaNCurrL3            : Real;           // Min. THD+N current L3
        voltDipValueL1            : Real;           // Voltage dip - value L1
        voltDipDurationL1         : Real;           // Voltage dip - duration L1
        voltDipValueL2            : Real;           // Voltage dip - value L2
        voltDipDurationL2         : Real;           // Voltage dip - duration L2
        voltDipValueL3            : Real;           // Voltage dip - value L3
        voltDipDurationL3         : Real;           // Voltage dip - duration L3
        voltIncValueL1            : Real;           // Voltage increase - value L1
        voltIncDurationL1         : Real;           // Voltage increase - duration L1
        voltIncValueL2            : Real;           // Voltage increase - value L2
        voltIncDurationL2         : Real;           // Voltage increase - duration L2
        voltIncValueL3            : Real;           // Voltage increase - value L3
        voltIncDurationL3         : Real;           // Voltage increase - duration L3
        voltPeakValueL1           : Real;           // Voltage peak value L1
        voltPeakValueL2           : Real;           // Voltage peak value L2
        voltPeakValueL3           : Real;           // Voltage peak value L3
        currPeakValueL1           : Real;           // Current peak value L1
        currPeakValueL2           : Real;           // Current peak value L2
        currPeakValueL3           : Real;           // Current peak value L3
        overCurrValueL1           : Real;           // Overcurrent value L1
        overCurrValueL2           : Real;           // Overcurrent value L2
        overCurrValueL3           : Real;           // Overcurrent value L3
        ampSymVolt                : Real;           // Amplitude symmetry Voltage U2
        ampSymCurr                : Real;           // Amplitude symmetry Current Iunsym
        powerQualityAnalysis      : UDInt;          // Power quality analysis - Qualifier
        currentModuleTime         : PNIOTimeStamp;  // Current module time
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec163 : STRUCT
        version            : Byte;                  // Version
        resb1              : Byte;                  // Reserved
        THDaNCurrL1        : Real;                  // THD+N current L1
        currL1             : Real;                  // Current L1
        harmCurrL1         : Array[1..40] of Real;  // Harmonics 1-40: Current L1
        THDaNCurrL2        : Real;                  // THD+N current L2
        currL2             : Real;                  // Current L2
        harmCurrL2         : Array[1..40] of Real;  // Harmonics 1-40: Current L2
        THDaNCurrL3        : Real;                  // THD+N current L3
        currL3             : Real;                  // Current L3
        harmCurrL3         : Array[1..40] of Real;  // Harmonics 1-40: Current L3
        currentModuleTime  : PNIOTimeStamp;         // Current module time
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec147V1      : STRUCT
        version                   : Byte    := BYTE#1;  // Version
        resb1                     : Byte;               // Reserved
        qualifierL1               : Word;               // Qualifier L1
        voltL1N                   : Real;               // Voltage UL1-N
        currentL1                 : Real;               // Current L1
        apparentPowerL1           : Real;               // Apparent power L1
        activePowerL1             : Real;               // Active power L1
        reactivePowerL1           : Real;               // Reactive power L1
        powerFactorL1             : Real;               // Power factor L1
        phaseAngleL1              : Real;               // Phase angle L1
        apparentEnergyLongL1      : LReal;              // Apparent energy L1
        totalActiveEnergyLongL1   : LReal;              // Active energy (total) L1
        totalReactiveEnergyLongL1 : LReal;              // Reactive energy (total) L1
        maxVoltL1N                : Real;               // Max. voltage UL1-N
        maxCurrentL1              : Real;               // Max. current L1
        maxApparentPowerL1        : Real;               // Max. apparent power L1
        maxActivePowerL1          : Real;               // Max. active power L1
        maxReactivePowerL1        : Real;               // Max. reactive power L1
        maxPowerFactorL1          : Real;               // Max. power factor L1
        minVoltL1N                : Real;               // Min. voltage UL1-N
        minCurrentL1              : Real;               // Min. current L1
        minApparentPowerL1        : Real;               // Min. apparent power L1
        minActivePowerL1          : Real;               // Min. active power L1
        minReactivePowerQtotL1    : Real;               // Min. reactive power Qtot L1
        minPowerFactorL1          : Real;               // Min. power factor L1
        reactivePowerQnL1         : Real;               // Reactive power Qn L1
        voltL1Cycles10to12        : Real;               // Voltage L1 10-12 cycles
        currL1Cycles10to12        : Real;               // Current L1 10-12 cycles
        maxReactivePowerQnL1      : Real;               // Max. reactive power Qn L1
        minReactivePowerQnL1      : Real;               // Min. reactive power Qn L1
        fundVoltL1                : Real;               // Fundamental voltage L1
        fundCurrL1                : Real;               // Fundamental current L1
        fundApparentPowerL1       : Real;               // Fundamental apparent power L1
        fundReactivePowerL1       : Real;               // Fundamental reactive power L1
        fundActivePowerL1         : Real;               // Fundamental active power L1
        fundActiveFactorL1        : Real;               // Fundamental cos φ active factor L1
        maxFundVoltL1             : Real;               // Max. fundamental voltage L1
        maxFundCurrL1             : Real;               // Max. fundamental current L1
        maxFundApparentPowerL1    : Real;               // Max. fundamental apparent power L1
        maxFundReactivePowerL1    : Real;               // Max. fundamental reactive power L1
        maxFundActivePowerL1      : Real;               // Max. fundamental active power L1
        maxFundActiveFactorL1     : Real;               // Max. fundamental cos φ active factor L1
        minFundVoltL1             : Real;               // Min. fundamental voltage L1
        minFundCurrL1             : Real;               // Min. fundamental current L1
        minFundApparentPowerL1    : Real;               // Min. fundamental apparent power L1
        minFundReactivePowerL1    : Real;               // Min. fundamental reactive power L1
        minFundActivePowerL1      : Real;               // Min. fundamental active power L1
        minFundActiveFactorL1     : Real;               // Min. fundamental cos φ active factor L1
        THDaNVoltL1               : Real;               // THD+N voltage L1
        THDaNCurrL1               : Real;               // THD+N current L1
        maxTHDaNVoltL1            : Real;               // Max. THD+N voltage L1
        maxTHDaNCurrL1            : Real;               // Max. THD+N current L1
        minTHDaNVoltL1            : Real;               // Min. THD+N voltage L1
        minTHDaNCurrL1            : Real;               // Min. THD+N current L1
        voltDipValueL1            : Real;               // Voltage dip - value L1
        voltDipDurationL1         : Real;               // Voltage dip - duration L1
        voltSwellValueL1          : Real;               // Voltage swell - value L1
        voltSwellDurationL1       : Real;               // Voltage swell - duration L1
        voltPeakValueL1           : Real;               // Voltage peak value L1
        currPeakValueL1           : Real;               // Current peak value L1
        overCurrValueL1           : Real;               // Overcurrent value L1
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec148V0      : STRUCT
        version                   : Byte;   // Version
        resb1                     : Byte;   // Reserved
        qualifierL2               : Word;   // Qualifier L2
        voltL2N                   : Real;   // Voltage UL2-N
        currentL2                 : Real;   // Current L2
        apparentPowerL2           : Real;   // Apparent power L2
        activePowerL2             : Real;   // Active power L2
        reactivePowerQtotL2       : Real;   // Reactive power Qtot L2
        powerFactorL2             : Real;   // Power factor L2
        phaseAngleL2              : Real;   // Phase angle L2
        apparentEnergyLongL2      : LReal;  // Apparent energy L2
        totalActiveEnergyLongL2   : LReal;  // Active energy (total) L2
        totalReactiveEnergyLongL2 : LReal;  // Reactive energy (total) L2
        maxVoltL2N                : Real;   // Max. voltage UL2-N
        maxCurrentL2              : Real;   // Max. current L2
        maxApparentPowerL2        : Real;   // Max. apparent power L2
        maxActivePowerL2          : Real;   // Max. active power L2
        maxReactivePowerQtotL2    : Real;   // Max. reactive power Qtot L2
        maxPowerFactorL2          : Real;   // Max. power factor L2
        minVoltL2N                : Real;   // Min. voltage UL2-N
        minCurrentL2              : Real;   // Min. current L2
        minApparentPowerL2        : Real;   // Min. apparent power L2
        minActivePowerL2          : Real;   // Min. active power L2
        minReactivePowerQtotL2    : Real;   // Min. reactive power L2
        minPowerFactorL2          : Real;   // Min. power factor L2
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec148V1      : STRUCT
        version                   : Byte    := BYTE#1;  // Version
        resb1                     : Byte;               // Reserved
        qualifierL2               : Word;               // Qualifier L2
        voltL2N                   : Real;               // Voltage UL2-N
        currentL2                 : Real;               // Current L2
        apparentPowerL2           : Real;               // Apparent power L2
        activePowerL2             : Real;               // Active power L2
        reactivePowerL2           : Real;               // Reactive power L2
        powerFactorL2             : Real;               // Power factor L2
        phaseAngleL2              : Real;               // Phase angle L2
        apparentEnergyLongL2      : LReal;              // Apparent energy L2
        totalActiveEnergyLongL2   : LReal;              // Active energy (total) L2
        totalReactiveEnergyLongL2 : LReal;              // Reactive energy (total) L2
        maxVoltL2N                : Real;               // Max. voltage UL2-N
        maxCurrentL2              : Real;               // Max. current L2
        maxApparentPowerL2        : Real;               // Max. apparent power L2
        maxActivePowerL2          : Real;               // Max. active power L2
        maxReactivePowerL2        : Real;               // Max. reactive power L2
        maxPowerFactorL2          : Real;               // Max. power factor L2
        minVoltL2N                : Real;               // Min. voltage UL2-N
        minCurrentL2              : Real;               // Min. current L2
        minApparentPowerL2        : Real;               // Min. apparent power L2
        minActivePowerL2          : Real;               // Min. active power L2
        minReactivePowerQtotL2    : Real;               // Min. reactive power Qtot L2
        minPowerFactorL2          : Real;               // Min. power factor L2
        reactivePowerQnL2         : Real;               // Reactive power Qn L2
        voltL2Cycles10to12        : Real;               // Voltage L2 10-12 cycles
        currL2Cycles10to12        : Real;               // Current L2 10-12 cycles
        maxReactivePowerQnL2      : Real;               // Max. reactive power Qn L2
        minReactivePowerQnL2      : Real;               // Min. reactive power Qn L2
        fundVoltL2                : Real;               // Fundamental voltage L2
        fundCurrL2                : Real;               // Fundamental current L2
        fundApparentPowerL2       : Real;               // Fundamental apparent power L2
        fundReactivePowerL2       : Real;               // Fundamental reactive power L2
        fundActivePowerL2         : Real;               // Fundamental active power L2
        fundActiveFactorL2        : Real;               // Fundamental cos φ active factor L2
        maxFundVoltL2             : Real;               // Max. fundamental voltage L2
        maxFundCurrL2             : Real;               // Max. fundamental current L2
        maxFundApparentPowerL2    : Real;               // Max. fundamental apparent power L2
        maxFundReactivePowerL2    : Real;               // Max. fundamental reactive power L2
        maxFundActivePowerL2      : Real;               // Max. fundamental active power L2
        maxFundActiveFactorL2     : Real;               // Max. fundamental cos φ active factor L2
        minFundVoltL2             : Real;               // Min. fundamental voltage L2
        minFundCurrL2             : Real;               // Min. fundamental current L2
        minFundApparentPowerL2    : Real;               // Min. fundamental apparent power L2
        minFundReactivePowerL2    : Real;               // Min. fundamental reactive power L2
        minFundActivePowerL2      : Real;               // Min. fundamental active power L2
        minFundActiveFactorL2     : Real;               // Min. fundamental cos φ active factor L2
        THDaNVoltL2               : Real;               // THD+N voltage L2
        THDaNCurrL2               : Real;               // THD+N current L2
        maxTHDaNVoltL2            : Real;               // Max. THD+N voltage L2
        maxTHDaNCurrL2            : Real;               // Max. THD+N current L2
        minTHDaNVoltL2            : Real;               // Min. THD+N voltage L2
        minTHDaNCurrL2            : Real;               // Min. THD+N current L2
        voltDipValueL2            : Real;               // Voltage dip - value L2
        voltDipDurationL2         : Real;               // Voltage dip - duration L2
        voltSwellValueL2          : Real;               // Voltage swell - value L2
        voltSwellDurationL2       : Real;               // Voltage swell - duration L2
        voltPeakValueL2           : Real;               // Voltage peak value L2
        currPeakValueL2           : Real;               // Current peak value L2
        overCurrValueL2           : Real;               // Overcurrent value L2
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec149V0      : STRUCT
        version                   : Byte;   // Version
        resb1                     : Byte;   // Reserved
        qualifierL3               : Word;   // Qualifier L3
        voltL3N                   : Real;   // Voltage UL3-N
        currentL3                 : Real;   // Current L3
        apparentPowerL3           : Real;   // Apparent power L3
        activePowerL3             : Real;   // Active power L3
        reactivePowerQtotL3       : Real;   // Reactive power Qtot L3
        powerFactorL3             : Real;   // Power factor L3
        phaseAngleL3              : Real;   // Phase angle L3
        apparentEnergyLongL3      : LReal;  // Apparent energy L3
        totalActiveEnergyLongL3   : LReal;  // Active energy (total) L3
        totalReactiveEnergyLongL3 : LReal;  // Reactive energy (total) L3
        maxVoltL3N                : Real;   // Max. voltage UL3-N
        maxCurrentL3              : Real;   // Max. current L3
        maxApparentPowerL3        : Real;   // Max. apparent power L3
        maxActivePowerL3          : Real;   // Max. active power L3
        maxReactivePowerQtotL3    : Real;   // Max. reactive power Qtot L3
        maxPowerFactorL3          : Real;   // Max. power factor L3
        minVoltL3N                : Real;   // Min. voltage UL3-N
        minCurrentL3              : Real;   // Min. current L3
        minApparentPowerL3        : Real;   // Min. apparent power L3
        minActivePowerL3          : Real;   // Min. active power L3
        minReactivePowerQtotL3    : Real;   // Min. reactive power L3
        minPowerFactorL3          : Real;   // Min. power factor L3
      END_STRUCT;

   END_TYPE

   TYPE EM480VHFDataRec149V1      : STRUCT
        version                   : Byte    := BYTE#1;  // Version
        resb1                     : Byte;               // Reserved
        qualifierL3               : Word;               // Qualifier L3
        voltL3N                   : Real;               // Voltage UL3-N
        currentL3                 : Real;               // Current L3
        apparentPowerL3           : Real;               // Apparent power L3
        activePowerL3             : Real;               // Active power L3
        reactivePowerL3           : Real;               // Reactive power L3
        powerFactorL3             : Real;               // Power factor L3
        phaseAngleL3              : Real;               // Phase angle L3
        apparentEnergyLongL3      : LReal;              // Apparent energy L3
        totalActiveEnergyLongL3   : LReal;              // Active energy (total) L3
        totalReactiveEnergyLongL3 : LReal;              // Reactive energy (total) L3
        maxVoltL3N                : Real;               // Max. voltage UL3-N
        maxCurrentL3              : Real;               // Max. current L3
        maxApparentPowerL3        : Real;               // Max. apparent power L3
        maxActivePowerL3          : Real;               // Max. active power L3
        maxReactivePowerL3        : Real;               // Max. reactive power L3
        maxPowerFactorL3          : Real;               // Max. power factor L3
        minVoltL3N                : Real;               // Min. voltage UL3-N
        minCurrentL3              : Real;               // Min. current L3
        minApparentPowerL3        : Real;               // Min. apparent power L3
        minActivePowerL3          : Real;               // Min. active power L3
        minReactivePowerQtotL3    : Real;               // Min. reactive power Qtot L3
        minPowerFactorL3          : Real;               // Min. power factor L3
        reactivePowerQnL3         : Real;               // Reactive power Qn L3
        voltL3Cycles10to12        : Real;               // Voltage L3 10-12 cycles
        currL3Cycles10to12        : Real;               // Current L3 10-12 cycles
        maxReactivePowerQnL3      : Real;               // Max. reactive power Qn L3
        minReactivePowerQnL3      : Real;               // Min. reactive power Qn L3
        fundVoltL3                : Real;               // Fundamental voltage L3
        fundCurrL3                : Real;               // Fundamental current L3
        fundApparentPowerL3       : Real;               // Fundamental apparent power L3
        fundReactivePowerL3       : Real;               // Fundamental reactive power L3
        fundActivePowerL3         : Real;               // Fundamental active power L3
        fundActiveFactorL3        : Real;               // Fundamental cos φ active factor L3
        maxFundVoltL3             : Real;               // Max. fundamental voltage L3
        maxFundCurrL3             : Real;               // Max. fundamental current L3
        maxFundApparentPowerL3    : Real;               // Max. fundamental apparent power L3
        maxFundReactivePowerL3    : Real;               // Max. fundamental reactive power L3
        maxFundActivePowerL3      : Real;               // Max. fundamental active power L3
        maxFundActiveFactorL3     : Real;               // Max. fundamental cos φ active factor L3
        minFundVoltL3             : Real;               // Min. fundamental voltage L3
        minFundCurrL3             : Real;               // Min. fundamental current L3
        minFundApparentPowerL3    : Real;               // Min. fundamental apparent power L3
        minFundReactivePowerL3    : Real;               // Min. fundamental reactive power L3
        minFundActivePowerL3      : Real;               // Min. fundamental active power L3
        minFundActiveFactorL3     : Real;               // Min. fundamental cos φ active factor L3
        THDaNVoltL3               : Real;               // THD+N voltage L3
        THDaNCurrL3               : Real;               // THD+N current L3
        maxTHDaNVoltL3            : Real;               // Max. THD+N voltage L3
        maxTHDaNCurrL3            : Real;               // Max. THD+N current L3
        minTHDaNVoltL3            : Real;               // Min. THD+N voltage L3
        minTHDaNCurrL3            : Real;               // Min. THD+N current L3
        voltDipValueL3            : Real;               // Voltage dip - value L3
        voltDipDurationL3         : Real;               // Voltage dip - duration L3
        voltSwellValueL3          : Real;               // Voltage swell - value L3
        voltSwellDurationL3       : Real;               // Voltage swell - duration L3
        voltPeakValueL3           : Real;               // Voltage peak value L3
        currPeakValueL3           : Real;               // Current peak value L3
        overCurrValueL3           : Real;               // Overcurrent value L3
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
        majMinVer          : Byte    := BYTE#0;                     // Major / minor version
        lengthParamBlock   : Byte    := BYTE#10;                    // Length of parameter block = 10
        numParamBlocks     : Byte    := BYTE#16;                    // Number of parameter blocks
        resb3              : Byte;                                  // Reserved
        paramBlock         : Array[1..16] of EM480VHFDataRecParam;
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
        entry            : Array[1..21] of MotorStarterEntry;
      END_STRUCT;

   END_TYPE

   TYPE TMPulseControlMotor : STRUCT
        channel             : Array[0..1] of TMPulseControlMotorCh;
      END_STRUCT;

   END_TYPE

   TYPE TMPulseFeedback : STRUCT
        channel         : Array[0..1] of TMPulseFeedbackCh;
      END_STRUCT;

   END_TYPE

   TYPE MotorStarterIAndM3 : STRUCT
        blockType          : Int    := 16#0023;     // Block type
        blockLength        : Int    := 16#0038;     // Block length = 56
        blockVersion       : Int    := 16#0100;     // Block version = 1.0
        imDescriptor       : Array[0..53] of Char;  // Comment
      END_STRUCT;

   END_TYPE

   TYPE EM480VSTDataRec129 : STRUCT
        majMinVer          : Byte    := BYTE#0;                     // Major / minor version
        lengthParamBlock   : Byte    := BYTE#10;                    // Length of parameter block = 10
        numParamBlocks     : Byte    := BYTE#1;                     // Number of parameter blocks
        resb3              : Byte;                                  // Reserved
        paramBlock         : Array[1..16] of EM480VSTDataRecParam;
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
        majMinVer          : Byte    := BYTE#0;              // Major / minor version
        channelParamLength : Byte    := BYTE#18;             // Length of the parameter data = 18
        channel            : Array[0..1] of AIxSTDataRecCh;
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
        majMinVer              : Byte    := BYTE#0;     // Major / minor version
        numUserDataVariant     : Byte    := BYTE#2;     // Number of user data variant = 1
        numMeasValues          : Byte    := BYTE#64;    // Number of measured values for user data mapping
        resb3                  : Byte;                  // Reserved
        measValue              : Array[1..64] of Word;  // ID of measured value for user data mapping
      END_STRUCT;

   END_TYPE

   TYPE AI2xUIHFDataRec128V2Scale : STRUCT
        majMinVer                 : Byte    := BYTE#0;                        // Major / minor version
        channelParamLength        : Byte    := BYTE#38;                       // Length of the parameter data = 38
        channel                   : Array[0..1] of AI2xUIHFDataRecChV2Scale;
      END_STRUCT;

   END_TYPE

   TYPE AI4xRTDTCHFDataRec128 : STRUCT
        majMinVer             : Byte    := BYTE#16;                  // Major / minor version
        channelParamLength    : Byte    := BYTE#22;                  // Length of the parameter data = 22
        channel               : Array[0..3] of AIxRTDTCHFDataRecCh;
      END_STRUCT;

   END_TYPE

   TYPE AI4xSTDataRec128   : STRUCT
        majMinVer          : Byte    := BYTE#0;              // Major / minor version
        channelParamLength : Byte    := BYTE#18;             // Length of the parameter data = 18
        channel            : Array[0..3] of AIxSTDataRecCh;
      END_STRUCT;

   END_TYPE

   TYPE AI2xUIHSDataRec128      : STRUCT
        majMinVer               : Byte    := BYTE#64;                // Major / minor version
        numParamStruct          : Byte    := BYTE#2;                 // Number of parameter structures = 2
        numModuleParamBlocks    : Byte    := BYTE#1;                 // Number of module parameter blocks = 1
        lengthModuleParamBlock  : Byte    := BYTE#4;                 // Length of module parameter block = 4
        operatingMode           : Byte    := BYTE#0;                 // Operating mode
        samplingRate            : Byte;                              // Sampling rate
        resw6                   : Word;                              // Reserved
        numChannelParamBlocks   : Byte    := BYTE#2;                 // Number of channel parameter blocks = 2
        lengthChannelParamBlock : Byte    := BYTE#20;                // Length of channel parameter block = 20
        channel                 : Array[0..1] of AI2xUIHSDataRecCh;
      END_STRUCT;

   END_TYPE

   TYPE AI2xUIHFDataRec128V2 : STRUCT
        majMinVer            : Byte    := BYTE#0;                   // Major / minor version
        channelParamLength   : Byte    := BYTE#22;                  // Length of the parameter data = 22
        channel              : Array[0..1] of AI2xUIHFDataRecChV2;
      END_STRUCT;

   END_TYPE

   TYPE AI2xUIHFDataRec128V1 : STRUCT
        majMinVer            : Byte    := BYTE#0;                   // Major / minor version
        channelParamLength   : Byte    := BYTE#18;                  // Length of the parameter data = 18
        channel              : Array[0..1] of AI2xUIHFDataRecChV1;
      END_STRUCT;

   END_TYPE

   TYPE AI8xRTDTCHFDataRec128 : STRUCT
        majMinVer             : Byte    := BYTE#16;                  // Major / minor version
        channelParamLength    : Byte    := BYTE#22;                  // Length of the parameter data = 22
        channel               : Array[0..7] of AIxRTDTCHFDataRecCh;
      END_STRUCT;

   END_TYPE

   TYPE AI8xBADataRec128   : STRUCT
        majMinVer          : Byte    := BYTE#0;              // Major / minor version
        channelParamLength : Byte    := BYTE#18;             // Length of the parameter data = 18
        channel            : Array[0..7] of AIxSTDataRecCh;
      END_STRUCT;

   END_TYPE

   TYPE AI4xIHARTDataRec140 : STRUCT
        version             : Byte    := BYTE#0;                     // Version
        blockLength         : Byte    := BYTE#11;                    // Block length = 11
        blockType           : Byte    := BYTE#75;                    // Block type = 75
        resb3               : Byte;                                  // Reserved
        variable            : Array[0..3] of AI4xIHARTDataRec140Ch;
      END_STRUCT;

   END_TYPE

   TYPE AQ2xSTDataRec128   : STRUCT
        majMinVer          : Byte    := BYTE#0;              // Major / minor version
        channelParamLength : Byte    := BYTE#6;              // Length of the parameter data = 6
        channel            : Array[0..1] of AQxSTDataRecCh;
      END_STRUCT;

   END_TYPE

   TYPE AQ4xSTDataRec128   : STRUCT
        majMinVer          : Byte    := BYTE#0;              // Major / minor version
        channelParamLength : Byte    := BYTE#6;              // Length of the parameter data = 6
        channel            : Array[0..3] of AQxSTDataRecCh;
      END_STRUCT;

   END_TYPE

   TYPE AI4xIHARTDataRec128 : STRUCT
        majMinVer           : Byte    := BYTE#16;                 // Major / minor version
        channelParamLength  : Byte    := BYTE#10;                 // Length of the parameter data = 10
        channel             : Array[0..3] of AI4xIHARTDataRecCh;
      END_STRUCT;

   END_TYPE

   TYPE MotorStarterDS202     : STRUCT
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

   TYPE TMPulseControl : STRUCT
        channel        : Array[0..1] of TMPulseControlCh;
      END_STRUCT;

   END_TYPE
END_NAMESPACE
