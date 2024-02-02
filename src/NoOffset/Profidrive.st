NAMESPACE Siemens.Ax.Types.NoOffset
   TYPE PDSTW1BM : STRUCT
         reserved_Bit08       : Bool;   // Reserved
         reserved_Bit09       : Bool;   // Reserved
         controlByPlc         : Bool;   // 1 = Control by PLC
         reserved_Bit11       : Bool;   // Reserved
         reserved_Bit12       : Bool;   // Reserved
         reserved_Bit13       : Bool;   // Reserved
         reserved_Bit14       : Bool;   // Reserved
         reserved_Bit15       : Bool;   // Reserved
         off1                 : Bool;   // 0 = OFF (OFF1); 0->1 = ON
         off2                 : Bool;   // 0 = OFF2 (immediate pulse suppression and switch on inhibit); 1 = No OFF2 (enable is possible)
         off3                 : Bool;   // 0 = OFF3 (braking along the OFF3 ramp (p1135), then pulse suppression and switch on inhibit); 1 = No OFF3 (enable is possible)
         enableOperation      : Bool;   // 0 = Inhibit operation; 1 = Enable operation
         operatingCondition   : Bool;   // 0 = Inhibit ramp-function generator; 1 = Operating condition
         enableRampGenerator  : Bool;   // 0 = Stop the ramp-function generator; 1 = Enable the ramp-function generator
         enableSetpoint       : Bool;   // Enable / Disable Setpoint
         faultAcknowledge     : Bool;   // Alarm / No Alarm Acknowledge
      END_STRUCT;

   END_TYPE

   TYPE PDZSW1VIK : STRUCT
         noSpeedDeviation                    : Bool;   // Setpoint Speed Deviation within Tolerance
         controlRequested                    : Bool;   // Control requested
         speedComparisonValusReachedExeeded  : Bool;   // f or n comparison value reached/exceeded
         torqueLimitNotReached               : Bool;   // 1= LimitNotReached/LimitReached
         reserved_Bit12                      : Bool;   // Reserved
         noMotorOvertemperature              : Bool;   // NoMotorOvertemperature/MotorOvertemperature
         actualSpeedPositive                 : Bool;   // Motor turns positive/ Motor turns negative
         cmdDataSetSelCDS                    : Bool;   // 1 = Command Data Set selection CDS bit 0
         readyToSwitchOn                     : Bool;   // Ready to switch on
         readyToOperate                      : Bool;   // Ready to operate
         operationEnabled                    : Bool;   // Operation enabled (Speed setpoint)
         faultPresent                        : Bool;   // Fault present
         noCoastStopActivated                : Bool;   // No coast down active (OFF2 inactive)
         noQuickStopActivated                : Bool;   // No fast stop active (OFF3 inactive)
         switchingOnInhibited                : Bool;   // SwitchingOnInhibited/SwitchingOnNotInhibited
         alarmPresent                        : Bool;   // Alarm present/NoAlarm
      END_STRUCT;

   END_TYPE

   TYPE PDMeldNamur : STRUCT
         safetyMonitoringChannel    : Bool;   // 1 = Safety monitoring channel has detected an error
         faultSpeedSensor           : Bool;   // 1 = Fault Speed Sensor
         faultInternalCommunication : Bool;   // 1 = Fault Internal Communication
         faultInfeed                : Bool;   // 1 = Fault Infeed System (DC Link)
         reserved_Bit12             : Bool;   // Reserved
         reserved_Bit13             : Bool;   // Reserved
         reserved_Bit14             : Bool;   // Reserved
         miscellaneousFaults        : Bool;   // 1 = Miscellaneous Faults
         faultHwSw                  : Bool;   // 1 = Hardware/software errors
         lineSupplyFault            : Bool;   // 1 = Line Supply Fault 
         overvoltageDcLink          : Bool;   // 1 = DC Link Overvoltage
         powerElectronicsFault      : Bool;   // 1 = Fault Power electronics
         overtempElectronicComp     : Bool;   // 1 = Overtemperature Converter
         groundFault                : Bool;   // 1 = Ground fault
         overloadMotor              : Bool;   // 1 = Motor Overload 
         errorCommunicationBus      : Bool;   // 1 = Error Communication Bus
      END_STRUCT;

   END_TYPE

   TYPE PDSTW1VIK : STRUCT
         reserved_Bit08          : Bool;   // Reserved
         reserved_Bit09          : Bool;   // Reserved
         controlByPlc            : Bool;   // Drive controlled by PLC
         setpointInversion       : Bool;   // Invert the setpoint
         reserved_Bit12          : Bool;   // Reserved
         reserved_Bit13          : Bool;   // Reserved
         reserved_Bit14          : Bool;   // Reserved
         cmdDataSetSelCDS        : Bool;   // 1 = Command Data Set selection CDS bit 0
         SwitchOn                : Bool;   // Switch On / Off (OFF1)
         noCoastStop             : Bool;   // Activate / Deactivate Coast Stop (OFF2)
         noQuickStop             : Bool;   // Activate / Deactivate Quick Stop (OFF3)
         enableOperation         : Bool;   // Enable / Disable Operation
         enableRampGenerator     : Bool;   // Enable / Reset Ramp Generator
         unfreezeRampGenerator   : Bool;   // Unfreeze / Freez Ramp Generator
         enableSetpoint          : Bool;   // Enable / Disable Setpoint
         faultAcknowledge        : Bool;   // Alarm / No Alarm Acknowledge
      END_STRUCT;

   END_TYPE

   TYPE PDMTSTW : STRUCT
         risProbe1 : Bool;   // Activation of measuring time determination with the next rising edge
         risProbe2 : Bool;   // Activation of measuring time determination with the next rising edge
         risProbe3 : Bool;   // Activation of measuring time determination with the next rising edge
         risProbe4 : Bool;   // Activation of measuring time determination with the next rising edge
         risProbe5 : Bool;   // Activation of measuring time determination with the next rising edge
         risProbe6 : Bool;   // Activation of measuring time determination with the next rising edge
         risProbe7 : Bool;   // Activation of measuring time determination with the next rising edge
         risProbe8 : Bool;   // Activation of measuring time determination with the next rising edge
         falProbe1 : Bool;   // Activiation of measuring time determination with the next falling edge
         falProbe2 : Bool;   // Activiation of measuring time determination with the next falling edge
         falProbe3 : Bool;   // Activiation of measuring time determination with the next falling edge
         falProbe4 : Bool;   // Activiation of measuring time determination with the next falling edge
         falProbe5 : Bool;   // Activiation of measuring time determination with the next falling edge
         falProbe6 : Bool;   // Activiation of measuring time determination with the next falling edge
         falProbe7 : Bool;   // Activiation of measuring time determination with the next falling edge
         falProbe8 : Bool;   // Activiation of measuring time determination with the next falling edge
      END_STRUCT;

   END_TYPE

   TYPE PDADigital1 : STRUCT
         digitalOutput16 : Bool;   // Digital output 16 (DI/DO 16); p0746 = r2092.8
         reserved_Bit09 : Bool;   // Reserved
         reserved_Bit10 : Bool;   // Reserved
         reserved_Bit11 : Bool;   // Reserved
         reserved_Bit12 : Bool;   // Reserved
         reserved_Bit13 : Bool;   // Reserved
         reserved_Bit14 : Bool;   // Reserved
         reserved_Bit15 : Bool;   // Reserved
         reserved_Bit00 : Bool;   // Reserved
         reserved_Bit01 : Bool;   // Reserved
         reserved_Bit02 : Bool;   // Reserved
         reserved_Bit03 : Bool;   // Reserved
         reserved_Bit04 : Bool;   // Reserved
         reserved_Bit05 : Bool;   // Reserved
         reserved_Bit06 : Bool;   // Reserved
         reserved_Bit07 : Bool;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE PDPOSZSW1 : STRUCT
         stopCamMinusActive         : Bool;   // 1 = STOP cam minus active
         stopCamPlusActive          : Bool;   // 1 = STOP cam plus active
         jogActive                  : Bool;   // 1 = Jogging active
         refPointApproachActive     : Bool;   // 1 = Reference point approach active
         flyRefActive               : Bool;   // 1 = Flying referencing active
         traversingBlockActive      : Bool;   // 1 = Traversing Block active
         setupActive                : Bool;   // 1 = Set-up active
         mdiActive                  : Bool;   // 1 = MDI active;  0 = MDI inactive
         activeTraversingBlockBit0  : Bool;   // Active Traversing Block Bit 0
         activeTraversingBlockBit1  : Bool;   // Active Traversing Block Bit 1
         activeTraversingBlockBit2  : Bool;   // Active Traversing Block Bit 2
         activeTraversingBlockBit3  : Bool;   // Active Traversing Block Bit 3
         activeTraversingBlockBit4  : Bool;   // Active Traversing Block Bit 4
         activeTraversingBlockBit5  : Bool;   // Active Traversing Block Bit 5
         reserved_Bit06             : Bool;   // Reserved
         reserved_Bit07             : Bool;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE PDEDigital : STRUCT
         digitalInput0  : Bool;   // Digital input 0 (DI 0); p2081[8] = r0722.0
         digitalInput1  : Bool;   // Digital input 1 (DI 1); p2081[9] = r0722.1
         digitalInput2  : Bool;   // Digital input 2 (DI 2); p2081[10] = r0722.2
         digitalInput3  : Bool;   // Digital input 3 (DI 3); p2081[11] = r0722.3
         digitalInput4  : Bool;   // Digital input 4 (DI 4); p2081[12] = r0722.4
         digitalInput5  : Bool;   // Digital input 5 (DI 5); p2081[13] = r0722.5
         digitalInput6  : Bool;   // Digital input 6 (DI 6); p2081[14] = r0722.6
         digitalInput7  : Bool;   // Digital input 7 (DI 7); p2081[15] = r0722.7
         digitalInput8  : Bool;   // Digital input 8 (DI/DO 8); p2081[0] = r0722.8
         digitalInput9  : Bool;   // Digital input 9 (DI/DO 9); p2081[1] = r0722.9
         digitalInput10 : Bool;   // Digital input 10 (DI/DO 10); p2081[2] = r0722.10
         digitalInput11 : Bool;   // Digital input 11 (DI/DO 11); p2081[3] = r0722.11
         digitalInput12 : Bool;   // Digital input 12 (DI/DO 12); p2081[4] = r0722.12
         digitalInput13 : Bool;   // Digital input 13 (DI/DO 13); p2081[5] = r0722.13
         digitalInput14 : Bool;   // Digital input 14 (DI/DO 14); p2081[6] = r0722.14
         digitalInput15 : Bool;   // Digital input 15 (DI/DO 15); p2081[7] = r0722.15
      END_STRUCT;

   END_TYPE

   TYPE PDPOSZSW2 : STRUCT
         camSwitchPos1              : Bool;   // 1 = Position actual value <= cam switching position 1
         camSwitchPos2              : Bool;   // 1 = Position actual value <= cam switching position 2
         directOut1TraversBlock     : Bool;   // 1 = Direct output 1 via traversing block
         directOut2TraversBlock     : Bool;   // 1 = Direct output 2 via traversing block
         fixStopReached             : Bool;   // 1 = Fixed stop reached
         fixStopClampTorqueReached  : Bool;   // 1 = Fixed stop clamping torque reached
         travelToFixStopActive      : Bool;   // 1 = Travel to fixed stop active
         traversCmdActive           : Bool;   // 1 = Traversing command active
         trackModeActive            : Bool;   // 1 = Tracking mode active
         velocityLimActive          : Bool;   // 1 = Velocity limiting active
         setpointAvailable          : Bool;   // 1 = Setpoint available
         printMarkOutside           : Bool;   // 1 = Printing mark outside outer window
         axisMovesForwards          : Bool;   // 1 = Axis moves forward
         axisMovesBackwards         : Bool;   // 1 = Axis moves backwards
         swLimSwitchMinusReached    : Bool;   // 1 = Software limit switch minus reached
         swLimSwitchPlusReached     : Bool;   // 1 = Software limit switch plus reached
      END_STRUCT;

   END_TYPE

   TYPE PDPOSSTW1 : STRUCT
         absPosIsSelected              : Bool;   // 1 = Absolute positioning is selected.  0 = Relative positioning is selected.
         absPosModeBit0                : Bool;   // Mode Bit0: 1 = Absolute positioning/MDI direction selection, positive.   2 = Absolute positioning/MDI direction selection, negative.  3 = Absolute positioning through the shortest distance.  0 = Absolute positioning through the shortest distance.
         absPosModeBit1                : Bool;   // Mode Bit1: 1 = Absolute positioning/MDI direction selection, positive.   2 = Absolute positioning/MDI direction selection, negative.  3 = Absolute positioning through the shortest distance.  0 = Absolute positioning through the shortest distance.
         reserved_Bit11                : Bool;   // Reserved
         continousTransfer             : Bool;   // 1 = Continuous transfer;  0 = Activate MDI block change with 0->1 of a traversing task (STW1.6)
         reserved_Bit13                : Bool;   // Reserved
         signalSettingUpSelected       : Bool;   // 1 = Signal setting-up selected;  0 = Signal positioning selected.
         mdiSelection                  : Bool;   // 1 = MDI selection
         traversingBlockSelectionBit0  : Bool;   // Traversing block selection, bit 0
         traversingBlockSelectionBit1  : Bool;   // Traversing block selection, bit 1
         traversingBlockSelectionBit2  : Bool;   // Traversing block selection, bit 2
         traversingBlockSelectionBit3  : Bool;   // Traversing block selection, bit 3
         traversingBlockSelectionBit4  : Bool;   // Traversing block selection, bit 4
         traversingBlockSelectionBit5  : Bool;   // Traversing block selection, bit 5
         reserved_Bit06                : Bool;   // Reserved
         reserved_Bit07                : Bool;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE PDPOSSTW2 : STRUCT
         refTypeFlyingRef              : Bool;   // 1 = Referencing type selection for flying referencing;  0 = Referencing type selection for search for reference
         startSearchRefNegDir          : Bool;   // 1 = Start the search for reference in the negative direction;  0 = Start the search for reference in the positive direction.
         measuringProbe2               : Bool;   // 1 = Measuring probe 2 is activated;  0 = Measuring probe 1 is activated
         falMeasuringProbe             : Bool;   // 1 = Falling edge of the measuring probe;  0 = Rising edge of the measuring probe
         reserved_Bit12                : Bool;   // Reserved
         reserved_Bit13                : Bool;   // Reserved
         softwareLimitSwitchActivation : Bool;   // 1 = Software limit switch activation
         stopCamActive                 : Bool;   // 1 = STOP cam active
         trackingModeActive            : Bool;   // 1 = Tracking mode active
         setReferencePoint             : Bool;   // 1 = Set reference point
         referenceCamActive            : Bool;   // 1 = Reference cam active
         reserved_Bit03                : Bool;   // Reserved
         reserved_Bit04                : Bool;   // Reserved
         jogIncActive                  : Bool;   // 1 = Jogging, incremental active;  0 = Jogging, velocity active
         reserved_Bit06                : Bool;   // Reserved
         reserved_Bit07                : Bool;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE PDEZSW1 : STRUCT
         reserved_Bit08       : Bool;   // Reserved
         plcRequestsControl   : Bool;   // 1 = PLC requests control
         reserved_Bit10       : Bool;   // Reserved
         prechargingCompleted : Bool;   // 1 = Precharging completed
         lineContactorClosed  : Bool;   // 1 = Line contactor closed
         reserved_Bit13       : Bool;   // Reserved
         reserved_Bit14       : Bool;   // Reserved
         reserved_Bit15       : Bool;   // Reserved
         readyToSwitchOn      : Bool;   // 1 = Ready for switching on
         readyToOperate       : Bool;   // 1 = Ready for operation
         operationEnabled     : Bool;   // 1 = Operation enabled
         faultPresent         : Bool;   // 1 = Fault present
         noOff2Effective      : Bool;   // 1 = No OFF2 effective
         reserved_Bit05       : Bool;   // Reserved
         switchingOnInhibited : Bool;   // 1 = Switching on inhibited
         alarmPresent         : Bool;   // 1 = Alarm present
      END_STRUCT;

   END_TYPE

   TYPE PDADigital : STRUCT
         reserved_Bit08  : Bool;   // Reserved
         reserved_Bit09  : Bool;   // Reserved
         reserved_Bit10  : Bool;   // Reserved
         reserved_Bit11  : Bool;   // Reserved
         reserved_Bit12  : Bool;   // Reserved
         reserved_Bit13  : Bool;   // Reserved
         reserved_Bit14  : Bool;   // Reserved
         reserved_Bit15  : Bool;   // Reserved
         digitalOutput8  : Bool;   // Digital output 8 (DI/DO 8); p0738 = r2091.0
         digitalOutput9  : Bool;   // Digital output 9 (DI/DO 9); p0739 = r2091.1
         digitalOutput10 : Bool;   // Digital output 10 (DI/DO 10); p0740 = r2091.2
         digitalOutput11 : Bool;   // Digital output 11 (DI/DO 11); p0741 = r2091.3
         digitalOutput12 : Bool;   // Digital output 12 (DI/DO 12); p0742 = r2091.4
         digitalOutput13 : Bool;   // Digital output 13 (DI/DO 13); p0743 = r2091.5
         digitalOutput14 : Bool;   // Digital output 14 (DI/DO 14); p0744 = r2091.6
         digitalOutput15 : Bool;   // Digital output 15 (DI/DO 15); p0745 = r2091.7
      END_STRUCT;

   END_TYPE

   TYPE PDMTZSW : STRUCT
         digitalInputProbe1 : Bool;   // Digital input display
         digitalInputProbe2 : Bool;   // Digital input display
         digitalInputProbe3 : Bool;   // Digital input display
         digitalInputProbe4 : Bool;   // Digital input display
         digitalInputProbe5 : Bool;   // Digital input display
         digitalInputProbe6 : Bool;   // Digital input display
         digitalInputProbe7 : Bool;   // Digital input display
         digitalInputProbe8 : Bool;   // Digital input display
         subSamplingProbe1  : Bool;   // Not yet carried out
         subSamplingProbe2  : Bool;   // Not yet carried out
         subSamplingProbe3  : Bool;   // Not yet carried out
         subSamplingProbe4  : Bool;   // Not yet carried out
         subSamplingProbe5  : Bool;   // Not yet carried out
         subSamplingProbe6  : Bool;   // Not yet carried out
         subSamplingProbe7  : Bool;   // Not yet carried out
         subSamplingProbe8  : Bool;   // Not yet carried out
      END_STRUCT;

   END_TYPE

   TYPE PDEDigital1 : STRUCT
         digitalInput16 : Bool;   // Digital input 16 (DI 16); p2083[8] = r0722.16
         digitalInput17 : Bool;   // Digital input 17 (DI 17); p2083[9] = r0722.17
         digitalInput18 : Bool;   // Digital input 18 (DI 18); p2083[10] = r0722.18
         digitalInput19 : Bool;   // Digital input 19 (DI 19); p2083[11] = r0722.19
         digitalInput20 : Bool;   // Digital input 20 (DI 20); p2083[12] = r0722.20
         digitalInput21 : Bool;   // Digital input 21 (DI 21); p2083[13] = r0722.21
         digitalInput22 : Bool;   // Digital input 22 (DI 22); p2083[14] = r0722.22
         reserved_Bit15 : Bool;   // Reserved
         reserved_Bit00 : Bool;   // Reserved
         reserved_Bit01 : Bool;   // Reserved
         reserved_Bit02 : Bool;   // Reserved
         reserved_Bit03 : Bool;   // Reserved
         reserved_Bit04 : Bool;   // Reserved
         reserved_Bit05 : Bool;   // Reserved
         reserved_Bit06 : Bool;   // Reserved
         reserved_Bit07 : Bool;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE PDCUSTW1 : STRUCT
         reserved_Bit08       : Bool;   // Reserved
         reserved_Bit09       : Bool;   // Reserved
         ackAutoSuppressed    : Bool;   // Acknowledgment automatically suppressed
         reserved_Bit11       : Bool;   // Reserved
         masterSignOfLifeBit0 : Bool;   // Master sign-of-life bit 0
         masterSignOfLifeBit1 : Bool;   // Master sign-of-life bit 1
         masterSignOfLifeBit2 : Bool;   // Master sign-of-life bit 2
         masterSignOfLifeBit3 : Bool;   // Master sign-of-life bit 3
         syncFlag             : Bool;   // This signal is used to synchonize the joint system time between the controller and drive unit BI: p 0681[0]
         rtcPing              : Bool;   // This signal is used to set the UTC time using the Ping event BI: p 3104
         esrTrigger           : Bool;   // ESR-Trigger
         reserved_Bit03       : Bool;   // Reserved
         reserved_Bit04       : Bool;   // Reserved
         reserved_Bit05       : Bool;   // Reserved
         reserved_Bit06       : Bool;   // Reserved
         acknowledge          : Bool;   // 0 --> 1 = Acknowledge faults (Acknowledge fault. If the ON command is still active, the inverter switches to closing lockout state) p 2103[0] = r 2090.7
      END_STRUCT;

   END_TYPE

   TYPE PDSTW3 : STRUCT
         enableTechController       : Bool;   // 1 = Technology controller enable
         brakeActive                : Bool;   // 1 = DC braking active
         reserved_Bit10             : Bool;   // Reserved
         enableDroop                : Bool;   // 1 = Droop enable
         torqueControl              : Bool;   // 1 = Torque control
         extFault                   : Bool;   // 0 = External fault 1 (F07860)
         reserved_Bit14             : Bool;   // Reserved
         cdsBit1                    : Bool;   // 1 = CDS bit 1
         fixSetpBit0                : Bool;   // 1 = Fixed setp bit 0
         fixSetpBit1                : Bool;   // 1 = Fixed setp bit 1
         fixSetpBit2                : Bool;   // 1 = Fixed setp bit 2
         fixSetpBit3                : Bool;   // 1 = Fixed setp bit 3
         driveDataSetSelectionBit0  : Bool;   // 1 = DDS select. bit 0
         driveDataSetSelectionBit1  : Bool;   // 1 = DDS select. bit 1
         reserved_Bit06             : Bool;   // Reserved
         reserved_Bit07             : Bool;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE PDZSW3 : STRUCT
         vdcActGTvdcTreshVal              : Bool;   // 1 = Vdc > p2172;  Actual DC link voltage > threshld value
         rampingFinished                  : Bool;   // 1 = Ramping finished
         techControllerOutputLowerLimit   : Bool;   // 1 = Technology controller output at the lower limit
         techControllerOutputUpperLimit   : Bool;   // 1 = Technology controller output at the upper limit
         reserved_Bit12                   : Bool;   // Reserved
         reserved_Bit13                   : Bool;   // Reserved
         reserved_Bit14                   : Bool;   // Reserved
         reserved_Bit15                   : Bool;   // Reserved
         dcBrakingActive                  : Bool;   // 1 = DC braking active
         nActGTnStandstill                : Bool;   // 1 = |n_act| > p1226 (n_standstill);  Absolute current speed > stationary state detection
         nActGTnMin                       : Bool;   // 1 = |n_act| > p1080 (n_min);  Absolute actual speed > minimum speed
         iActGEiTreshVal                  : Bool;   // 1 = I_act >= p2170;  Actual current >= current threshold value
         nActGTnTreshVal                  : Bool;   // 1 = |n_act| > p2155;  Absolute actual speed > speed threshold value 2
         nActLEnTreshVal                  : Bool;   // 1 = |n_act| <= p2155;  Absolute actual speed <= speed threshold value 2
         nActGEnSet                       : Bool;   // 1 = |n_act| >=  r1119 (n_set);  Speed setpoint reached
         vdcActLEvdcTreshVal              : Bool;   // 1 = Vdc <= p2172;  Actual DC link voltage <= threshld value
      END_STRUCT;

   END_TYPE

   TYPE PDZSW1Pos : STRUCT
         followErrorWithinTolerance : Bool;   // 1 = Following error within tolerance
         controlRequested           : Bool;   // 1 = Control requested
         targetPosReached           : Bool;   // 1 = Target position reached
         homePosSet                 : Bool;   // 1 = Home position set
         ackTraversBlockActive      : Bool;   // Acknowledgement traversing block activated
         setPointFixed              : Bool;   // 1 = Setpoint fixed
         axisAcc                    : Bool;   // 1 = Axis accelerated
         axisDec                    : Bool;   // 1 = Axis decelerated
         readyToSwitchOn            : Bool;   // 1 = Ready to switch on
         readyToOperate             : Bool;   // 1 = Ready to operate
         operationEnabled           : Bool;   // 1 = Operation enabled (drive follows n_set)
         faultPresent               : Bool;   // 1 = Fault present
         noCoastStopActivated       : Bool;   // 1 = No coast down active (OFF2 inactive)
         noQuickStopActivated       : Bool;   // 1 = No fast stop active (OFF3 inactive)
         switchingOnInhibited       : Bool;   // SwitchingOnInhibited/SwitchingOnNotInhibited
         alarmPresent               : Bool;   // Alarm present/NoAlarm
      END_STRUCT;

   END_TYPE

   TYPE PDESTW1 : STRUCT
         reserved_Bit08                : Bool;   // Reserved
         reserved_Bit09                : Bool;   // Reserved
         controlByPlc                  : Bool;   // 1 = Control by PLC
         reserved_Bit11                : Bool;   // Reserved
         reserved_Bit12                : Bool;   // Reserved
         reserved_Bit13                : Bool;   // Reserved
         reserved_Bit14                : Bool;   // Reserved
         reserved_Bit15                : Bool;   // Reserved
         off1                          : Bool;   // 0->1 = ON (close precharging/line contactor, pulses can be enabled); 0 = OFF1 (reduce Vdc along a ramp, suppress pulse and open precharging/line contactor)
         off2                          : Bool;   // 1 = No OFF2 (enable is possible);  0 = OFF2 (immediate pulse suppression and switching on inhibited)
         reserved_Bit02                : Bool;   // Reserved
         enableOperation               : Bool;   // 1 = Enable operation (pulses can be enabled);  0 = Inhibit operation (suppress pulses)
         reserved_Bit04                : Bool;   // Reserved
         infeedInhibitMotoring         : Bool;   // 1 = Infeed, inhibit motoring operation
         infeedInhibitRegenOperation   : Bool;   // 1 = Infeed, inhibit regenerative operation
         faultAcknowledge              : Bool;   // 0->1 = Acknowledge faults
      END_STRUCT;

   END_TYPE

   TYPE PDSTW2BM : STRUCT
         droopEnabled                  : Bool;   // 1 = Droop enabled
         speedControllerEnabled        : Bool;   // 1 = Speed controller enabled
         reserved_Bit10                : Bool;   // Reserved
         torqueControlledOperation     : Bool;   // 1 = Torque controlled operation; 0 = Speed controlled operation
         reserved_Bit12                : Bool;   // Reserved
         reserved_Bit13                : Bool;   // Reserved
         reserved_Bit14                : Bool;   // Reserved
         signOfLifeBit                 : Bool;   // Controller slave sign-of-life Toggle bit
         cmdDataSetSelectionBit0       : Bool;   // Command data set selection CDS, bit 0
         cmdDataSetSelectionBit1       : Bool;   // Command data set selection CDS, bit 1
         driveDataSetSelectionBit0     : Bool;   // Drive data set selection DDS, bit 0
         driveDataSetSelectionBit1     : Bool;   // Drive data set selection DDS, bit 1
         driveDataSetSelectionBit2     : Bool;   // Drive data set selection DDS, bit 2
         bypassRampGenerator           : Bool;   // 1 = Bypass ramp-function generator
         reserved_Bit06                : Bool;   // Reserved
         speedControlSetIntegratorVal  : Bool;   // 1 = Speed controller set integrator value
      END_STRUCT;

   END_TYPE

   TYPE PDEZSW1BM : STRUCT
         reserved_Bit08          : Bool;   // Reserved
         plcRequestsControl      : Bool;   // 1 = PLC requests control
         reserved_Bit10          : Bool;   // Reserved
         prechargingCompleted    : Bool;   // 1 = Precharging completed
         lineContactorClosed     : Bool;   // 1 = Line contactor closed
         reserved_Bit13          : Bool;   // Reserved
         reserved_Bit14          : Bool;   // Reserved
         controllerSignOfLifeBit : Bool;   // Controller-sign-of-life Toggle bit
         readyToSwitchOn         : Bool;   // 1 = Ready for switching on
         readyToOperate          : Bool;   // 1 = Ready for operation
         operationEnabled        : Bool;   // 1 = Operation enabled
         faultPresent            : Bool;   // 1 = Fault present
         noOff2Effective         : Bool;   // 1 = No OFF2 effective
         reserved_Bit05          : Bool;   // Reserved
         switchingOnInhibited    : Bool;   // 1 = Switching on inhibited
         alarmPresent            : Bool;   // 1 = Alarm present
      END_STRUCT;

   END_TYPE

   TYPE PDZSW1BM : STRUCT
         noSpeedDeviation                    : Bool;   // 1 = Speed setpoint - actual value deviation within tolerance t_off
         controlRequested                    : Bool;   // 1 = Control requested
         speedComparisonValusReachedExeeded  : Bool;   // 1 = f or n comparison value reached/exceeded
         torqueLimitNotReached               : Bool;   // 1 = I, M, or P limit not reached
         openHoldingBrake                    : Bool;   // 1 = Open the holding brake
         reserved_Bit13                      : Bool;   // Reserved
         reserved_Bit14                      : Bool;   // Reserved
         reserved_Bit15                      : Bool;   // Reserved
         readyToSwitchOn                     : Bool;   // 1 = Ready for switching on
         readyToOperate                      : Bool;   // 1 = Ready for operation
         operationEnabled                    : Bool;   // 1 = Operation enabled
         faultPresent                        : Bool;   // 1 = Fault present
         noCoastDownActivated                : Bool;   // 1 = No coast down active (OFF2 inactive)
         noQuickStopActivated                : Bool;   // 1 = No quick stop active (OFF3 inactive)
         switchingOnInhibited                : Bool;   // 1 = Switching on inhibited active
         alarmPresent                        : Bool;   // 1 = Alarm present
      END_STRUCT;

   END_TYPE

   TYPE PDZSW2BM : STRUCT
         reserved_Bit08       : Bool;   // Reserved
         speedSetpointLimit   : Bool;   // 1 = Speed setpoint limited
         upperTorqueLimit     : Bool;   // 1 = Upper torque limit
         lowerTorqueLimit     : Bool;   // 1 = Lower torque limit
         encoderlessOperation : Bool;   // 1 = Encoderless operation due to fault
         ss1DelayTimeActive   : Bool;   // 1 = SS1 delay time active in the drive
         stoActive            : Bool;   // 1 = STO active in drive
         signOfLifeBit        : Bool;   // Controller slave sign-of-life Toggle bit
         reserved_Bit00       : Bool;   // Reserved
         reserved_Bit01       : Bool;   // Reserved
         reserved_Bit02       : Bool;   // Reserved
         reserved_Bit03       : Bool;   // Reserved
         reserved_Bit04       : Bool;   // Reserved
         alarmClassBit0       : Bool;   // 1 = Alarm class bit 0
         alarmClassBit1       : Bool;   // 1 = Alarm class bit 1
         reserved_Bit07       : Bool;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE PDMDIMOD : STRUCT
         reserved_Bit08    : Bool;   // Reserved
         reserved_Bit09    : Bool;   // Reserved
         reserved_Bit10    : Bool;   // Reserved
         reserved_Bit11    : Bool;   // Reserved
         reserved_Bit12    : Bool;   // Reserved
         reserved_Bit13    : Bool;   // Reserved
         reserved_Bit14    : Bool;   // Reserved
         reserved_Bit15    : Bool;   // Reserved
         absPosSelected    : Bool;   // 1 = Absolute positioning is selected;  0 = Relative positioning is selected
         posModeBit0       : Bool;   // Bit0: Absolute positioning mode
         posModeBit1       : Bool;   // Bit1: Absolute positioning mode
         reserved_Bit03    : Bool;   // Reserved
         reserved_Bit04    : Bool;   // Reserved
         reserved_Bit05    : Bool;   // Reserved
         reserved_Bit06    : Bool;   // Reserved
         reserved_Bit07    : Bool;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE PDAktsatz : STRUCT
         reserved_Bit08          : Bool;   // Reserved
         reserved_Bit09          : Bool;   // Reserved
         reserved_Bit10          : Bool;   // Reserved
         reserved_Bit11          : Bool;   // Reserved
         reserved_Bit12          : Bool;   // Reserved
         reserved_Bit13          : Bool;   // Reserved
         reserved_Bit14          : Bool;   // Reserved
         activeMDI               : Bool;   // 1 = MDI active; 0 = MDI inactive
         activeTraversBlockBit0  : Bool;   // 1 = Active traversing block, bit 0
         activeTraversBlockBit1  : Bool;   // 1 = Active traversing block, bit 1
         activeTraversBlockBit2  : Bool;   // 1 = Active traversing block, bit 2
         activeTraversBlockBit3  : Bool;   // 1 = Active traversing block, bit 3
         activeTraversBlockBit4  : Bool;   // 1 = Active traversing block, bit 4
         activeTraversBlockBit5  : Bool;   // 1 = Active traversing block, bit 5
         reserved_Bit06          : Bool;   // Reserved
         reserved_Bit07          : Bool;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE PDCUZSW1 : STRUCT
         sync                    : Bool;   // 1 = System time synchronized (SYNC)
         noAlarmPresent          : Bool;   // 1 = No alarm present
         noFaultPresent          : Bool;   // 1 = No fault present
         noSafetyMessagePresent  : Bool;   // 1 = No safety message present
         slaveSignOfLifeBit0     : Bool;   // Slave sign of life bit 0
         slaveSignOfLifeBit1     : Bool;   // Slave sign of life bit 1
         slaveSignOfLifeBit2     : Bool;   // Slave sign of life bit 2
         slaveSignOfLifeBit3     : Bool;   // Slave sign of life bit 3
         reserved_Bit00          : Bool;   // Reserved
         reserved_Bit01          : Bool;   // Reserved
         reserved_Bit02          : Bool;   // Reserved
         faultPresent            : Bool;   // 1 = Fault present
         reserved_Bit04          : Bool;   // Reserved
         reserved_Bit05          : Bool;   // Reserved
         reserved_Bit06          : Bool;   // Reserved
         alarmPresent            : Bool;   // 1 = Alarm present
      END_STRUCT;

   END_TYPE

   TYPE PDESTW1BM : STRUCT
         reserved_Bit08                : Bool;   // Reserved
         reserved_Bit09                : Bool;   // Reserved
         controlByPlc                  : Bool;   // 1 = Control by PLC
         reserved_Bit11                : Bool;   // Reserved
         reserved_Bit12                : Bool;   // Reserved
         reserved_Bit13                : Bool;   // Reserved
         reserved_Bit14                : Bool;   // Reserved
         controllerSignOfLifeBit       : Bool;   // Controller-sign-of-life Toggle bit
         off1                          : Bool;   // 0->1 = ON (close precharging/line contactor, pulses can be enabled); 0 = OFF1 (reduce Vdc along a ramp, suppress pulse and open precharging/line contactor)
         off2                          : Bool;   // 1 = No OFF2 (enable is possible); 0 = OFF2 (immediate pulse suppression and power-on inhibit)
         reserved_Bit02                : Bool;   // Reserved
         enableOperation               : Bool;   // 0 = Inhibit operation; 1 = Enable operation
         reserved_Bit04                : Bool;   // Reserved
         infeedInhibitMotoring         : Bool;   // 1 = Infeed, inhibit motoring
         infeedInhibitRegenOperation   : Bool;   // 1 = Infeed, inhibit regenerative operation
         faultAcknowledge              : Bool;   // Alarm / No Alarm Acknowledge
      END_STRUCT;

   END_TYPE

   TYPE PDSTW1Pos : STRUCT
         jog1SignalSource     : Bool;   // 1 = Jog 1 signal source
         jog2SignalSource     : Bool;   // 1 = Jog 2 signal source
         controlByPlc         : Bool;   // Drive controlled by PLC
         startHoming          : Bool;   // 1 = Start homing
         reserved_Bit12       : Bool;   // Reserved
         extBlockChange       : Bool;   // External block change
         reserved_Bit14       : Bool;   // Reserved
         reserved_Bit15       : Bool;   // Reserved
         SwitchOn             : Bool;   // Switch On / Off (OFF1)
         noCoastStop          : Bool;   // Activate / Deactivate Coast Stop (OFF2)
         noQuickStop          : Bool;   // Activate / Deactivate Quick Stop (OFF3)
         enableOperation      : Bool;   // Enable / Disable Operation
         noRejectTravTask     : Bool;   // 1 = Do not reject traversing task
         noIntermediateStop   : Bool;   // 1 = No intermediate stop
         actTravTask          : Bool;   // Activate traversing task
         faultAcknowledge     : Bool;   // Alarm / No Alarm Acknowledge
      END_STRUCT;

   END_TYPE

   TYPE PDSatzanw : STRUCT
         reserved_Bit08          : Bool;   // Reserved
         reserved_Bit09          : Bool;   // Reserved
         reserved_Bit10          : Bool;   // Reserved
         reserved_Bit11          : Bool;   // Reserved
         reserved_Bit12          : Bool;   // Reserved
         reserved_Bit13          : Bool;   // Reserved
         reserved_Bit14          : Bool;   // Reserved
         activateMDI             : Bool;   // 1 = Activate MDI; 0 = De-activate MDI; p2647 = r2091.15
         traversBlockSelectBit0  : Bool;   // 1 = Traversing block selection, bit 0; p2625 = r2091.0
         traversBlockSelectBit1  : Bool;   // 1 = Traversing block selection, bit 1; p2626 = r2091.1
         traversBlockSelectBit2  : Bool;   // 1 = Traversing block selection, bit 2; p2627 = r2091.2
         traversBlockSelectBit3  : Bool;   // 1 = Traversing block selection, bit 3; p2628 = r2091.3
         traversBlockSelectBit4  : Bool;   // 1 = Traversing block selection, bit 4; p2629 = r2091.4
         traversBlockSelectBit5  : Bool;   // 1 = Traversing block selection, bit 5; p2630 = r2091.5
         reserved_Bit06          : Bool;   // Reserved
         reserved_Bit07          : Bool;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE PDPOSSTW : STRUCT
         reserved_Bit08       : Bool;   // Reserved
         reserved_Bit09       : Bool;   // Reserved
         reserved_Bit10       : Bool;   // Reserved
         reserved_Bit11       : Bool;   // Reserved
         reserved_Bit12       : Bool;   // Reserved
         reserved_Bit13       : Bool;   // Reserved
         reserved_Bit14       : Bool;   // Reserved
         reserved_Bit15       : Bool;   // Reserved
         trackingModeActive   : Bool;   // 1 = Tracking mode active; 0 = No tracking mode active
         setHomePos           : Bool;   // 1 = Set home position; 0 = Do not set home position
         referenceCamActive   : Bool;   // 1 = Reference cam active
         reserved_Bit03       : Bool;   // Reserved
         reserved_Bit04       : Bool;   // Reserved
         joggingIncActive     : Bool;   // 1 = Jogging, incremental active;  0 = Jogging, velocity active
         reserved_Bit06       : Bool;   // Reserved
         reserved_Bit07       : Bool;   // Reserved
      END_STRUCT;

   END_TYPE

   TYPE PDPOSZSW : STRUCT
         camSwitchPos1              : Bool;   // 1 = Position actual value <= cam switching position 1
         camSwitchPos2              : Bool;   // 1 = Position actual value <= cam switching position 2
         directOut1TraversBlock     : Bool;   // 1 = Direct output 1 via traversing block
         directOut2TraversBlock     : Bool;   // 1 = Direct output 2 via traversing block
         fixStopReached             : Bool;   // 1 = Fixed stop reached
         fixStopClampTorqueReached  : Bool;   // 1 = Fixed stop clamping torque reached
         travelToFixStopActive      : Bool;   // 1 = Travel to fixed stop active
         reserved_Bit15             : Bool;   // Reserved
         trackModeActive            : Bool;   // 1 = Tracking mode active
         velocityLimActive          : Bool;   // 1 = Velocity limiting active
         setpointAvailable          : Bool;   // 1 = Setpoint available
         reserved_Bit03             : Bool;   // Reserved
         axisMovesForwards          : Bool;   // 1 = Axis moves forward
         axisMovesBackwards         : Bool;   // 1 = Axis moves backwards
         swLimSwitchMinusReached    : Bool;   // 1 = Software limit switch minus reached
         swLimSwitchPlusReached     : Bool;   // 1 = Software limit switch plus reached
      END_STRUCT;

   END_TYPE

   TYPE PDTel390Out : STRUCT
         CU_STW1     : PDCUSTW1;   // Control word 1, Control Unit 
         A_DIGITAL   : PDADigital;   // Digital output (16-bit)
      END_STRUCT;

   END_TYPE

   TYPE PDTel371In : STRUCT
         E_ZSW1_BM   : PDEZSW1BM;   // Status word 1 for Infeed, variant for BM (ALM, BLM, SLM)
         IAIST       : Word;   // Absolute actual current
         WARN_CODE   : Word;   // Alarm code
         FAULT_CODE  : Word;   // Fault code
         userPZD5    : Word;   // Freely interconnectable
         userPZD6    : Word;   // Freely interconnectable
         userPZD7    : Word;   // Freely interconnectable
         userPZD8    : Word;   // Freely interconnectable
      END_STRUCT;

   END_TYPE

   TYPE PDTel390In : STRUCT
         CU_ZSW1     : PDCUZSW1;   // Status word 1 for Control Unit
         E_DIGITAL   : PDEDigital;   // Digital input (16 Bit)
      END_STRUCT;

   END_TYPE

   TYPE PDTel391In : STRUCT
         CU_ZSW1     : PDCUZSW1;   // Status word 1 for Control Unit
         E_DIGITAL   : PDEDigital;   // Digital input (16 Bit)
         MT_ZSW      : PDMTZSW;   // Measuring probe status word
         MT1_ZS_F    : Word;   // Measuring probe 1 measuring time falling edge
         MT1_ZS_S    : Word;   // Measuring probe 1 measuring time rising edge
         MT2_ZS_F    : Word;   // Measuring probe 2 measuring time falling edge
         MT2_ZS_S    : Word;   // Measuring probe 2 measuring time rising edge
      END_STRUCT;

   END_TYPE

   TYPE PDTel370Out : STRUCT
         E_STW1  : PDESTW1;   // Control word 1 for Active Infeed (ALM, SMART)
      END_STRUCT;

   END_TYPE

   TYPE PDTel391Out : STRUCT
         CU_STW1     : PDCUSTW1;   // Control word 1, Control Unit 
         A_DIGITAL   : PDADigital;   // Digital output (16-bit)
         MT_STW      : PDMTSTW;   // Measuring probe control word
      END_STRUCT;

   END_TYPE

   TYPE PDTel393Out : STRUCT
         CU_STW1        : PDCUSTW1;   // Control word 1, Control Unit 
         A_DIGITAL      : PDADigital;   // Digital output (16-bit)
         A_DIGITAL_1    : PDADigital1;   // Digital output (16-bit)
         MT_STW         : PDMTSTW;   // Measuring probe control word
      END_STRUCT;

   END_TYPE

   TYPE PDTel371Out : STRUCT
         E_STW1_BM   : PDESTW1BM;   // Control word 1, variant for BM
         userPZD2    : Word;   // Freely interconnectable
         userPZD3    : Word;   // Freely interconnectable
         userPZD4    : Word;   // Freely interconnectable
         userPZD5    : Word;   // Freely interconnectable
      END_STRUCT;

   END_TYPE

   TYPE PDTel370In : STRUCT
         E_ZSW1  : PDEZSW1;   // Status word 1 for Active Infeed
      END_STRUCT;

   END_TYPE

   TYPE PDTel392Out : STRUCT
         CU_STW1     : PDCUSTW1;   // Control word 1, Control Unit 
         A_DIGITAL   : PDADigital;   // Digital output (16-bit)
         MT_STW      : PDMTSTW;   // Measuring probe control word
      END_STRUCT;

   END_TYPE

   TYPE PDTel116Out : STRUCT
         STW1     : PD_STW1_611UMode;   // Control word 1
         NSOLL_B  : DWord;   // Speed setpoint B (32-bit)
         STW2     : PD_STW2_611UMode;   // Control word 2
         MOMRED   : Word;   // Torque reduction
         G1_STW   : PD_Gx_STW;   // Encoder 1 control word
         G2_STW   : PD_Gx_STW;   // Encoder 2 control word
         XERR     : DWord;   // Position deviation
         KPC      : DWord;   // Position controller gain factor
      END_STRUCT;

   END_TYPE

   TYPE PDTel118In : STRUCT
         ZSW1        : PD_ZSW1_611UMode;   // Status word 1
         NIST_B      : DWord;   // Speed setpoint B (32 bit)
         ZSW2        : PD_ZSW2_611UMode;   // Status word 2
         MELDW       : PD_MELDW;   // Message word
         G2_ZSW      : PD_Gx_ZSW;   // Encoder 2 status word
         G2_XIST1    : DWord;   // Encoder 2 actual position 1
         G2_XIST2    : DWord;   // Encoder 2 actual position 2
         G3_ZSW      : PD_Gx_ZSW;   // Encoder 3 status word
         G3_XIST1    : DWord;   // Encoder 3 actual position 1
         G3_XIST2    : DWord;   // Encoder 3 actual position 2
         AIST_GLATT  : Word;   // Torque utilization smoothed
         MSOLL_GLATT : Word;   // Actual Torque setpoint smoothed
         PIST_GLATT  : Word;   // Power factor, smoothed
         ITIST_GLATT : Word;   // Current actual value, torque-generating
      END_STRUCT;

   END_TYPE

   TYPE PDTel118Out : STRUCT
         STW1        : PD_STW1_611UMode;   // Control word 1
         NSOLL_B     : DWord;   // Speed setpoint B (32-bit)
         STW2        : PD_STW2_611UMode;   // Control word 2
         MOMRED      : Word;   // Torque reduction
         G2_STW      : PD_Gx_STW;   // Encoder 2 control word
         G3_STW      : PD_Gx_STW;   // Encoder 3 control word
         XERR        : DWord;   // Position deviation
         KPC         : DWord;   // Position controller gain factor
      END_STRUCT;

   END_TYPE

   TYPE PDTel125In : STRUCT
         ZSW1     : PD_ZSW1_611UMode;   // Status word 1
         NIST_B   : DWord;   // Speed setpoint B (32 bit)
         ZSW2     : PD_ZSW2_611UMode;   // Status word 2
         MELDW    : PD_MELDW;   // Message word
         G1_ZSW   : PD_Gx_ZSW;   // Encoder 1 status word
         G1_XIST1 : DWord;   // Encoder 1 actual position 1
         G1_XIST2 : DWord;   // Encoder 1 actual position 2
      END_STRUCT;

   END_TYPE

   TYPE PDTel125Out : STRUCT
         STW1     : PD_STW1_611UMode;   // Control word 1
         NSOLL_B  : DWord;   // Speed setpoint B (32-bit)
         STW2     : PD_STW2_611UMode;   // Control word 2
         MOMRED   : Word;   // Torque reduction
         G1_STW   : PD_Gx_STW;   // Encoder 1 control word
         XERR     : DWord;   // Position deviation
         KPC      : DWord;   // Position controller gain factor
         M_VST    : Word;   // Torque pre-control value
         DSC_STW  : Word;   // DSC control word
         res      : Word;   // Reserved
         T_SYMM   : Word;   // DSC Symmetrizing time constant
      END_STRUCT;

   END_TYPE

   TYPE PDTel126In : STRUCT
         ZSW1     : PD_ZSW1_611UMode;   // Status word 1
         NIST_B   : DWord;   // Speed setpoint B (32 bit)
         ZSW2     : PD_ZSW2_611UMode;   // Status word 2
         MELDW    : PD_MELDW;   // Message word
         G1_ZSW   : PD_Gx_ZSW;   // Encoder 1 status word
         G1_XIST1 : DWord;   // Encoder 1 actual position 1
         G1_XIST2 : DWord;   // Encoder 1 actual position 2
         G2_ZSW   : PD_Gx_ZSW;   // Encoder 2 status word
         G2_XIST1 : DWord;   // Encoder 2 actual position 1
         G2_XIST2 : DWord;   // Encoder 2 actual position 2
      END_STRUCT;

   END_TYPE

   TYPE PDTel126Out : STRUCT
         STW1     : PD_STW1_611UMode;   // Control word 1
         NSOLL_B  : DWord;   // Speed setpoint B (32-bit)
         STW2     : PD_STW2_611UMode;   // Control word 2
         MOMRED   : Word;   // Torque reduction
         G1_STW   : PD_Gx_STW;   // Encoder 1 control word
         G2_STW   : PD_Gx_STW;   // Encoder 2 control word
         XERR     : DWord;   // Position deviation
         KPC      : DWord;   // Position controller gain factor
         M_VST    : Word;   // Torque pre-control value
         DSC_STW  : Word;   // DSC control word
         res      : Word;   // Reserved
         T_SYMM   : Word;   // DSC Symmetrizing time constant
      END_STRUCT;

   END_TYPE

   TYPE PDTel136In : STRUCT
         ZSW1           : PD_ZSW1_611UMode;   // Status word 1
         NIST_B         : DWord;   // Speed setpoint B (32 bit)
         ZSW2           : PD_ZSW2_611UMode;   // Status word 2
         MELDW          : PD_MELDW;   // Message word
         G1_ZSW         : PD_Gx_ZSW;   // Encoder 1 status word
         G1_XIST1       : DWord;   // Encoder 1 actual position 1
         G1_XIST2       : DWord;   // Encoder 1 actual position 2
         G2_ZSW         : PD_Gx_ZSW;   // Encoder 2 status word
         G2_XIST1       : DWord;   // Encoder 2 actual position 1
         G2_XIST2       : DWord;   // Encoder 2 actual position 2
         AIST_GLATT     : Word;   // Torque utilization smoothed
         MSOLL_GLATT    : Word;   // Actual Torque setpoint smoothed
         PIST_GLATT     : Word;   // Power factor, smoothed
         ITIST_GLATT    : Word;   // Current actual value, torque-generating
      END_STRUCT;

   END_TYPE

   TYPE PDTel392In : STRUCT
         CU_ZSW1     : PDCUZSW1;   // Status word 1 for Control Unit
         E_DIGITAL   : PDEDigital;   // Digital input (16 Bit)
         MT_ZSW      : PDMTZSW;   // Measuring probe status word
         MT1_ZS_F    : Word;   // Measuring probe 1 measuring time falling edge
         MT1_ZS_S    : Word;   // Measuring probe 1 measuring time rising edge
         MT2_ZS_F    : Word;   // Measuring probe 2 measuring time falling edge
         MT2_ZS_S    : Word;   // Measuring probe 2 measuring time rising edge
         MT3_ZS_F    : Word;   // Measuring probe 3 measuring time falling edge
         MT3_ZS_S    : Word;   // Measuring probe 3 measuring time rising edge
         MT4_ZS_F    : Word;   // Measuring probe 4 measuring time falling edge
         MT4_ZS_S    : Word;   // Measuring probe 4 measuring time rising edge
         MT5_ZS_F    : Word;   // Measuring probe 5 measuring time falling edge
         MT5_ZS_S    : Word;   // Measuring probe 5 measuring time rising edge
         MT6_ZS_F    : Word;   // Measuring probe 6 measuring time falling edge
         MT6_ZS_S    : Word;   // Measuring probe 6 measuring time rising edge
      END_STRUCT;

   END_TYPE

   TYPE PDTel350Out : STRUCT
         STW1     : PD_STW1;   // Control word 1
         NSOLL_A  : Word;   // Speed setpoint A (16-bit)
         M_LIM    : Word;   // Torque limit
         STW3     : PDSTW3;   // Control word 3
      END_STRUCT;

   END_TYPE

   TYPE PDTel136Out : STRUCT
         STW1     : PD_STW1_611UMode;   // Control word 1
         NSOLL_B  : DWord;   // Speed setpoint B (32-bit)
         STW2     : PD_STW2_611UMode;   // Control word 2
         MOMRED   : Word;   // Torque reduction
         G1_STW   : PD_Gx_STW;   // Encoder 1 control word
         G2_STW   : PD_Gx_STW;   // Encoder 2 control word
         XERR     : DWord;   // Position deviation
         KPC      : DWord;   // Position controller gain factor
         M_VST    : Word;   // Torque pre-control value
         DSC_STW  : Word;   // DSC control word
         res      : Word;   // Reserved
         T_SYMM   : Word;   // DSC Symmetrizing time constant
      END_STRUCT;

   END_TYPE

   TYPE PDTel352In : STRUCT
         ZSW1           : PD_ZSW1;   // Status word 1
         NIST_A_GLATT   : Word;   // Actual speed, smoothed
         IAIST_GLATT    : Word;   // Absolute actual current, smoothed
         MIST_GLATT     : Word;   // Actual torque smoothed
         WARN_CODE      : Word;   // Alarm code
         FAULT_CODE     : Word;   // Fault code
      END_STRUCT;

   END_TYPE

   TYPE PDTel7In : STRUCT
         ZSW1     : PDZSW1Pos;   // Status word 1
         AKTSATZ  : PDAktsatz;   // Pos selected block
      END_STRUCT;

   END_TYPE

   TYPE PDTel7Out : STRUCT
         STW1     : PDSTW1Pos;   // Control word 1
         SATZANW  : PDSatzanw;   // Pos block selection
      END_STRUCT;

   END_TYPE

   TYPE PDTel352Out : STRUCT
         STW1     : PD_STW1;   // Control word 1
         NSOLL_A  : Word;   // Speed setpoint A (16-bit)
         userPZD3 : Word;   // Freely interconnectable
         userPZD4 : Word;   // Freely interconnectable
         userPZD5 : Word;   // Freely interconnectable
         userPZD6 : Word;   // Freely interconnectable
      END_STRUCT;

   END_TYPE

   TYPE PDTel394In : STRUCT
         CU_ZSW1        : PDCUZSW1;   // Status word 1 for Control Unit
         E_DIGITAL      : PDEDigital;   // Digital input (16 Bit)
         E_DIGITAL_1    : PDEDigital1;   // Digital input (16 Bit)
      END_STRUCT;

   END_TYPE

   TYPE PDTel138Out : STRUCT
         STW1        : PD_STW1_611UMode;   // Control word 1
         NSOLL_B     : DWord;   // Speed setpoint B (32-bit)
         STW2        : PD_STW2_611UMode;   // Control word 2
         MOMRED      : Word;   // Torque reduction
         G2_STW      : PD_Gx_STW;   // Encoder 2 control word
         G3_STW      : PD_Gx_STW;   // Encoder 3 control word
         XERR        : DWord;   // Position deviation
         KPC         : DWord;   // Position controller gain factor
         M_VST       : Word;   // Torque pre-control value
         DSC_STW     : Word;   // DSC control word
         res         : Word;   // Reserved
         T_SYMM      : Word;   // DSC Symmetrizing time constant
      END_STRUCT;

   END_TYPE

   TYPE PDTel393In : STRUCT
         CU_ZSW1        : PDCUZSW1;   // Status word 1 for Control Unit
         E_DIGITAL      : PDEDigital;   // Digital input (16 Bit)
         E_DIGITAL_1    : PDEDigital1;   // Digital input (16 Bit)
         MT_ZSW         : PDMTZSW;   // Measuring probe status word
         MT1_ZS_F       : Word;   // Measuring probe 1 measuring time falling edge
         MT1_ZS_S       : Word;   // Measuring probe 1 measuring time rising edge
         MT2_ZS_F       : Word;   // Measuring probe 2 measuring time falling edge
         MT2_ZS_S       : Word;   // Measuring probe 2 measuring time rising edge
         MT3_ZS_F       : Word;   // Measuring probe 3 measuring time falling edge
         MT3_ZS_S       : Word;   // Measuring probe 3 measuring time rising edge
         MT4_ZS_F       : Word;   // Measuring probe 4 measuring time falling edge
         MT4_ZS_S       : Word;   // Measuring probe 4 measuring time rising edge
         MT5_ZS_F       : Word;   // Measuring probe 5 measuring time falling edge
         MT5_ZS_S       : Word;   // Measuring probe 5 measuring time rising edge
         MT6_ZS_F       : Word;   // Measuring probe 6 measuring time falling edge
         MT6_ZS_S       : Word;   // Measuring probe 6 measuring time rising edge
         MT7_ZS_F       : Word;   // Measuring probe 7 measuring time falling edge
         MT7_ZS_S       : Word;   // Measuring probe 7 measuring time rising edge
         MT8_ZS_F       : Word;   // Measuring probe 8 measuring time falling edge
         MT8_ZS_S       : Word;   // Measuring probe 8 measuring time rising edge
         E_ANALOG       : Word;   // Analog inputs
      END_STRUCT;

   END_TYPE

   TYPE PDTel350In : STRUCT
         ZSW1           : PD_ZSW1;   // Status word 1
         NIST_A_GLATT   : Word;   // Actual speed, smoothed
         IAIST_GLATT    : Word;   // Absolute actual current, smoothed
         ZSW3           : PDZSW3;   // Status word 3
      END_STRUCT;

   END_TYPE

   TYPE PDTel394Out : STRUCT
         CU_STW1        : PDCUSTW1;   // Control word 1, Control Unit 
         A_DIGITAL      : PDADigital;   // Digital output (16-bit)
         A_DIGITAL_1    : PDADigital1;   // Digital output (16-bit)
      END_STRUCT;

   END_TYPE

   TYPE PDTel860In : STRUCT
         G1_XIST1    : DWord;   // Sensor position actual value 1
         NIST_B      : DWord;   // Velocity value B
      END_STRUCT;

   END_TYPE

   TYPE PDTel139In : STRUCT
         ZSW1        : PD_ZSW1_611UMode;   // Status word 1
         NIST_B      : DWord;   // Speed setpoint B (32 bit)
         ZSW2        : PD_ZSW2_611UMode;   // Status word 2
         MELDW       : PD_MELDW;   // Message word
         G1_ZSW      : PD_Gx_ZSW;   // Encoder 1 status word
         G1_XIST1    : DWord;   // Encoder 1 actual position 1
         G1_XIST2    : DWord;   // Encoder 1 actual position 2
         SP_ZSW      : Word;   // Clamping System Status word
         SP_XIST_A   : Word;   // Clamping System: Position (analog actual value)
         SP_XIST_D   : Word;   // Clamping System: Position (digital measuring information value)
         SP_KONFIG   : Word;   // Clamping System: Sensor configuration
         res         : Word;   // Reserved
         AIST_GLATT  : Word;   // Torque utilization smoothed
         MSOLL_GLATT : Word;   // Actual Torque setpoint smoothed
         PIST_GLATT  : Word;   // Power factor, smoothed
         ITIST_GLATT : Word;   // Current actual value, torque-generating
      END_STRUCT;

   END_TYPE

   TYPE PDTel105In : STRUCT
      ZSW1     : PD_ZSW1_611UMode;
      NIST_B   : DWORD;
      ZSW2     : PD_ZSW2_611UMode;
      MELDW    : PD_MELDW;
      G1_ZSW   : PD_Gx_ZSW;
      G1_XIST1 : DWORD;
      G1_XIST2 : DWORD;
   END_STRUCT;

END_TYPE

TYPE PDTel105Out : STRUCT
      STW1    : PD_STW1_611UMode;
      NSOLL_B : DWORD;
      STW2    : PD_STW2_611UMode;
      MOMRED  : WORD;
      G1_STW  : PD_Gx_STW;
      XERR    : DWORD;
      KPC     : DWORD;
   END_STRUCT;

END_TYPE

   TYPE PDTel110Out : STRUCT
         STW1           : PDSTW1Pos;   // Control word 1
         SATZANW        : PDSatzanw;   // Pos block selection
         POS_STW        : PDPOSSTW;   // Pos control word
         STW2           : PD_STW2;   // Control word 2
         VelOVERRIDE    : Word;   // Pos velocity override
         MDI_TARPOS     : DWord;   // MDI position
         MDI_VELOCITY   : DWord;   // MDI velocity
         MDI_ACC        : Word;   // MDI acceleration override
         MDI_DEC        : Word;   // MDI deceleration override
         MDI_MOD        : PDMDIMOD;   // MDI mode
      END_STRUCT;

   END_TYPE

   TYPE PDTel20In : STRUCT
         ZSW1           : PDZSW1VIK;   // Status word 1
         NIST_A_GLATT   : Word;   // Actual speed, smoothed
         IAIST_GLATT    : Word;   // Absolute actual current, smoothed
         MIST_GLATT     : Word;   // Actual torque smoothed
         PIST_GLATT     : Word;   // Power factor, smoothed
         MELD_NAMUR     : PDMeldNamur;   // VIK-NAMUR message bit bar
      END_STRUCT;

   END_TYPE

   TYPE PDTel20Out : STRUCT
         STW1     : PDSTW1VIK;   // Control word 1
         NSOLL_A  : Word;   // Speed setpoint A (16-bit)
      END_STRUCT;

   END_TYPE

   TYPE PDTel110In : STRUCT
         ZSW1     : PDZSW1Pos;   // Status word 1
         AKTSATZ  : PDAktsatz;   // Pos selected block
         POS_ZSW  : PDPOSZSW;   // Pos status word
         ZSW2     : PD_ZSW2;   // Status word 2
         MELDW    : PD_MELDW;   // Message word
         XIST_A   : DWord;   // Position actual value A
      END_STRUCT;

   END_TYPE

   TYPE PDTel111In : STRUCT
         ZSW1        : PDZSW1Pos;   // Status word 1
         POS_ZSW1    : PDPOSZSW1;   // Pos status word 1
         POS_ZSW2    : PDPOSZSW2;   // Pos status word 2
         ZSW2        : PD_ZSW2;   // Status word 2
         MELDW       : PD_MELDW;   // Message word
         XIST_A      : DWord;   // Position actual value A
         NIST_B      : DWord;   // Speed setpoint B (32 bit)
         FAULT_CODE  : Word;   // Fault code
         WARN_CODE   : Word;   // Alarm code
         userPZD12   : Word;   // Freely interconnectable.
      END_STRUCT;

   END_TYPE

   TYPE PDTel111Out : STRUCT
         STW1           : PDSTW1Pos;   // Control word 1
         POS_STW1       : PDPOSSTW1;   // Pos control word 1
         POS_STW2       : PDPOSSTW2;   // Pos control word 2
         STW2           : PD_STW2;   // Control word 2
         VelOVERRIDE    : Word;   // Pos velocity override
         MDI_TARPOS     : DWord;   // MDI position
         MDI_VELOCITY   : DWord;   // MDI velocity
         MDI_ACC        : Word;   // MDI acceleration override
         MDI_DEC        : Word;   // MDI deceleration override
         userPZD12      : Word;   // Freely interconnectable.
      END_STRUCT;

   END_TYPE

   TYPE PDTel166Out : STRUCT
         STW1        : PD_STW1_611UMode;   // Control word 1
         NSOLL_B     : DWord;   // Speed setpoint B (32-bit)
         STW2        : PD_STW2_611UMode;   // Control word 2
         MOMRED      : Word;   // Torque reduction
         G1_STW      : PD_Gx_STW;   // Encoder 1 control word
         G2_STW      : PD_Gx_STW;   // Encoder 2 control word
         XERR        : DWord;   // Position deviation
         KPC         : DWord;   // Position controller gain factor
         G1_MP       : DWord;   // Reference value machine position for piston calibration
         G1_MP_ZSW   : Word;   // Status machine position for piston calibration
      END_STRUCT;

   END_TYPE

   TYPE PDTel82Out : STRUCT
         STW2_ENC    : PD_STW2_ENC;   // Encoder control word
         G1_STW      : PD_Gx_STW;   // Sensor control word
      END_STRUCT;

   END_TYPE

   TYPE PDTel166In : STRUCT
         ZSW1           : PD_ZSW1;   // Status word 1
         NIST_B         : DWord;   // Speed setpoint B (32 bit)
         ZSW2           : PD_ZSW2_611UMode;   // Status word 2
         MELDW          : PD_MELDW;   // Message word
         G1_ZSW         : PD_Gx_ZSW;   // Encoder 1 status word
         G1_XIST1       : DWord;   // Encoder 1 actual position 1
         G1_XIST2       : DWord;   // Encoder 1 actual position 2
         G2_ZSW         : PD_Gx_ZSW;   // Encoder 2 status word
         G2_XIST1       : DWord;   // Encoder 2 actual position 1
         G2_XIST2       : DWord;   // Encoder 2 actual position 2
         VA_VALVELIFT   : Word;   // Valve spool value
         VA_TORQUE      : Word;   // Force actual value
         VA_POWER       : Word;   // Active power
         VA_PRESSURE_A  : Word;   // Cylinder pressure A
         VA_PRESSURE_B  : Word;   // Cylinder pressure B
      END_STRUCT;

   END_TYPE

   TYPE PDTel9In : STRUCT
         ZSW1     : PDZSW1Pos;   // Status word 1
         AKTSATZ  : PDAktsatz;   // Pos selected block
         ZSW2     : PD_ZSW2;   // Status word 2
         XIST_A   : DWord;   // Position actual value A
      END_STRUCT;

   END_TYPE

   TYPE PDTel395In : STRUCT
         CU_ZSW1        : PDCUZSW1;   // Status word 1 for Control Unit
         E_DIGITAL      : PDEDigital;   // Digital input (16 Bit)
         E_DIGITAL_1    : PDEDigital1;   // Digital input (16 Bit)
         MT_ZSW         : PDMTZSW;   // Measuring probe status word
         MT_DIAG        : Word;   // Measuring probe (stage 3) diagnostics word
         MT_ZS_1        : Word;   // Measuring probe (stage 3) measuring time 1
         MT_ZS_2        : Word;   // Measuring probe (stage 3) measuring time 2
         MT_ZS_3        : Word;   // Measuring probe (stage 3) measuring time 3
         MT_ZS_4        : Word;   // Measuring probe (stage 3) measuring time 4
         MT_ZSB1        : Word;   // Measuring probe (stage 3) measuring time reference 1
         MT_ZS_5        : Word;   // Measuring probe (stage 3) measuring time 5
         MT_ZS_6        : Word;   // Measuring probe (stage 3) measuring time 6
         MT_ZS_7        : Word;   // Measuring probe (stage 3) measuring time 7
         MT_ZS_8        : Word;   // Measuring probe (stage 3) measuring time 8
         MT_ZSB2        : Word;   // Measuring probe (stage 3) measuring time reference 2
         MT_ZS_9        : Word;   // Measuring probe (stage 3) measuring time 9
         MT_ZS_10       : Word;   // Measuring probe (stage 3) measuring time 10
         MT_ZS_11       : Word;   // Measuring probe (stage 3) measuring time 11
         MT_ZS_12       : Word;   // Measuring probe (stage 3) measuring time 12
         MT_ZSB3        : Word;   // Measuring probe (stage 3) measuring time reference 3
         MT_ZS_13       : Word;   // Measuring probe (stage 3) measuring time 13
         MT_ZS_14       : Word;   // Measuring probe (stage 3) measuring time 14
         MT_ZS_15       : Word;   // Measuring probe (stage 3) measuring time 15
         MT_ZS_16       : Word;   // Measuring probe (stage 3) measuring time 16
         MT_ZSB4        : Word;   // Measuring probe (stage 3) measuring time reference 4
      END_STRUCT;

   END_TYPE

   TYPE PDTel84Out : STRUCT
         STW2_ENC    : PD_STW2_ENC;   // Encoder control word
         G1_STW      : PD_Gx_STW;   // Sensor control word
      END_STRUCT;

   END_TYPE

   TYPE PDTel82In : STRUCT
         ZSW2_ENC    : PD_ZSW2_ENC;   // Encoder status word
         G1_ZSW      : PD_Gx_ZSW;   // Sensor status word
         G1_XIST1    : DWord;   // Sensor position actual value 1
         G1_XIST2    : DWord;   // Sensor position actual value 2
         NIST_A      : Word;   // Velocity value A
      END_STRUCT;

   END_TYPE

   TYPE PDTel9Out : STRUCT
         STW1           : PDSTW1Pos;   // Control word 1
         SATZANW        : PDSatzanw;   // Pos block selection
         STW2           : PD_STW2;   // Control word 2
         MDI_TARPOS     : DWord;   // MDI position
         MDI_VELOCITY   : DWord;   // MDI velocity
         MDI_ACC        : Word;   // MDI acceleration override
         MDI_DEC        : Word;   // MDI deceleration override
         MDI_MOD        : PDMDIMOD;   // MDI mode specification
      END_STRUCT;

   END_TYPE

   TYPE PDTel396In : STRUCT
         CU_ZSW1        : PDCUZSW1;   // Status word 1 for Control Unit
         E_DIGITAL      : PDEDigital;   // Digital input (16 Bit)
         E_DIGITAL_1    : PDEDigital1;   // Digital input (16 Bit)
         MT_ZSW         : PDMTZSW;   // Measuring probe status word
         MT1_ZS_F       : Word;   // Measuring probe 1 measuring time falling edge
         MT1_ZS_S       : Word;   // Measuring probe 1 measuring time rising edge
         MT2_ZS_F       : Word;   // Measuring probe 2 measuring time falling edge
         MT2_ZS_S       : Word;   // Measuring probe 2 measuring time rising edge
         MT3_ZS_F       : Word;   // Measuring probe 3 measuring time falling edge
         MT3_ZS_S       : Word;   // Measuring probe 3 measuring time rising edge
         MT4_ZS_F       : Word;   // Measuring probe 4 measuring time falling edge
         MT4_ZS_S       : Word;   // Measuring probe 4 measuring time rising edge
         MT5_ZS_F       : Word;   // Measuring probe 5 measuring time falling edge
         MT5_ZS_S       : Word;   // Measuring probe 5 measuring time rising edge
         MT6_ZS_F       : Word;   // Measuring probe 6 measuring time falling edge
         MT6_ZS_S       : Word;   // Measuring probe 6 measuring time rising edge
         MT7_ZS_F       : Word;   // Measuring probe 7 measuring time falling edge
         MT7_ZS_S       : Word;   // Measuring probe 7 measuring time rising edge
         MT8_ZS_F       : Word;   // Measuring probe 8 measuring time falling edge
         MT8_ZS_S       : Word;   // Measuring probe 8 measuring time rising edge
         E_ANALOG       : Word;   // Analog inputs
      END_STRUCT;

   END_TYPE

   TYPE PDTel84In : STRUCT
         ZSW2_ENC    : PD_ZSW2_ENC;   // Encoder status word
         G1_ZSW      : PD_Gx_ZSW;   // Sensor status word
         G1_XIST3    : LWord;   // Sensor position actual value 3
         G1_XIST2    : DWord;   // Sensor position actual value 2
         NIST_B      : DWord;   // Velocity value B
      END_STRUCT;

   END_TYPE

   TYPE PDTel396Out : STRUCT
         CU_STW1        : PDCUSTW1;   // Control word 1, Control Unit 
         A_DIGITAL      : PDADigital;   // Digital output (16-bit)
         A_DIGITAL_1    : PDADigital1;   // Digital output (16 bit)
         MT_STW         : Word;   // Measuring probe control word
         NOCKEN1_ZS_F   : Word;   // Cam_0 switching instant for a falling edge
         NOCKEN1_ZS_S   : Word;   // Cam_0 switching instant for a rising edge
         NOCKEN2_ZS_F   : Word;   // Cam_1 switching instant for a falling edge
         NOCKEN2_ZS_S   : Word;   // Cam_1 switching instant for a rising edge
         NOCKEN3_ZS_F   : Word;   // Cam_2 switching instant for a falling edge
         NOCKEN3_ZS_S   : Word;   // Cam_2 switching instant for a rising edge
         NOCKEN4_ZS_F   : Word;   // Cam_3 switching instant for a falling edge
         NOCKEN4_ZS_S   : Word;   // Cam_3 switching instant for a rising edge
         NOCKEN5_ZS_F   : Word;   // Cam_4 switching instant for a falling edge
         NOCKEN5_ZS_S   : Word;   // Cam_4 switching instant for a rising edge
         NOCKEN6_ZS_F   : Word;   // Cam_5 switching instant for a falling edge
         NOCKEN6_ZS_S   : Word;   // Cam_5 switching instant for a rising edge
         NOCKEN7_ZS_F   : Word;   // Cam_6 switching instant for a falling edge
         NOCKEN7_ZS_S   : Word;   // Cam_6 switching instant for a rising edge
         NOCKEN8_ZS_F   : Word;   // Cam_7 switching instant for a falling edge
         NOCKEN8_ZS_S   : Word;   // Cam_7 switching instant for a rising edge
      END_STRUCT;

   END_TYPE

   TYPE PDTel139Out : STRUCT
         STW1        : PD_STW1_611UMode;   // Control word 1
         NSOLL_B     : DWord;   // Speed setpoint B (32-bit)
         STW2        : PD_STW2_611UMode;   // Control word 2
         MOMRED      : Word;   // Torque reduction
         G1_STW      : PD_Gx_STW;   // Encoder 1 control word
         res7        : Word;   // Reserved
         XERR        : DWord;   // Position deviation
         KPC         : DWord;   // Position controller gain factor
         M_VST       : Word;   // Torque pre-control value
         DSC_STW     : Word;   // DSC control word
         res14       : Word;   // Reserved
         T_SYMM      : Word;   // DSC Symmetrizing time constant
      END_STRUCT;

   END_TYPE

   TYPE PDTel138In : STRUCT
         ZSW1        : PD_ZSW1_611UMode;   // Status word 1
         NIST_B      : DWord;   // Speed setpoint B (32 bit)
         ZSW2        : PD_ZSW2_611UMode;   // Status word 2
         MELDW       : PD_MELDW;   // Message word
         G2_ZSW      : PD_Gx_ZSW;   // Encoder 2 status word
         G2_XIST1    : DWord;   // Encoder 2 actual position 1
         G2_XIST2    : DWord;   // Encoder 2 actual position 2
         G3_ZSW      : PD_Gx_ZSW;   // Encoder 3 status word
         G3_XIST1    : DWord;   // Encoder 3 actual position 1
         G3_XIST2    : DWord;   // Encoder 3 actual position 2
         AIST_GLATT  : Word;   // Torque utilization smoothed
         MSOLL_GLATT : Word;   // Actual Torque setpoint smoothed
         PIST_GLATT  : Word;   // Power factor, smoothed
         ITIST_GLATT : Word;   // Current actual value, torque-generating
      END_STRUCT;

   END_TYPE

   TYPE PDTel860Out : STRUCT
         G1_XIST_PRESET_A : DWord;   // Sensor position preset control word 32 bit
      END_STRUCT;

   END_TYPE

   TYPE PDTel395Out : STRUCT
         CU_STW1        : PDCUSTW1;   // Control word 1, Control Unit 
         A_DIGITAL      : PDADigital;   // Digital output (16-bit)
         A_DIGITAL_1    : PDADigital1;   // Digital output (16-bit)
         MT_STW         : PDMTSTW;   // Measuring probe control word
      END_STRUCT;

   END_TYPE

   TYPE PDTel220In : STRUCT
         ZSW1_BM              : PDZSW1BM;   // Status word 1, variant for BM
         NIST_A_NIST_A_GLATT  : Word;   // Speed setpoint A (16 bit);  Values smoothed at VECTOR, Values unsmoothed at SERVO
         IAIST_IAIST_GLATT    : Word;   // Absolute actual current;  Values smoothed at VECTOR, Values unsmoothed at SERVO
         MIST_MIST_GLATT      : Word;   // Actual torque;  Values smoothed at VECTOR, Values unsmoothed at SERVO
         WARN_CODE            : Word;   // Alarm code
         FAULT_CODE           : Word;   // Fault code
         ZSW2_BM              : PDZSW2BM;   // Status word 2, variant for BM
         r1482_userPZD8       : Word;   // CO: Speed controll I-partl output; Freely interconnectable
         userPZD9             : Word;   // Freely interconnectable
         userPZD10            : Word;   // Freely interconnectable
      END_STRUCT;

   END_TYPE

   TYPE PDTel116In : STRUCT
         ZSW1        : PD_ZSW1_611UMode;   // Status word 1
         NIST_B      : DWord;   // Speed setpoint B (32 bit)
         ZSW2        : PD_ZSW2_611UMode;   // Status word 2
         MELDW       : PD_MELDW;   // Message word
         G1_ZSW      : PD_Gx_ZSW;   // Encoder 1 status word
         G1_XIST1    : DWord;   // Encoder 1 actual position 1
         G1_XIST2    : DWord;   // Encoder 1 actual position 2
         G2_ZSW      : PD_Gx_ZSW;   // Encoder 2 status word
         G2_XIST1    : DWord;   // Encoder 2 actual position 1
         G2_XIST2    : DWord;   // Encoder 2 actual position 2
         AIST_GLATT  : Word;   // Torque utilization smoothed
         MSOLL_GLATT : Word;   // Actual Torque setpoint smoothed
         PIST_GLATT  : Word;   // Power factor, smoothed
         ITIST_GLATT : Word;   // Current actual value, torque-generating
      END_STRUCT;

   END_TYPE

   TYPE PDTel220Out : STRUCT
         STW1_BM     : PDSTW1BM;   // Control word 1, variant for BM
         NSOLL_B     : DWord;   // Speed setpoint B (32-bit)
         STW2_BM     : PDSTW2BM;   // Control word 2, variant for BM
         M_ADD       : Word;   // Additional torque
         M_LIM       : Word;   // Torque limit
         userPZD7    : Word;   // Freely interconnectable.
         userPZD8    : Word;   // Freely interconnectable.
         userPZD9    : Word;   // Freely interconnectable.
         userPZD10   : Word;   // Freely interconnectable.
      END_STRUCT;

   END_TYPE

   TYPE PDTel110 : STRUCT
         Input    : PDTel110In;   // Input telegram 110
         Output   : PDTel110Out;   // Output telegram 110
      END_STRUCT;

   END_TYPE

   TYPE PDTel118 : STRUCT
         Input    : PDTel118In;   // Input telegram 118
         Output   : PDTel118Out;   // Output telegram 118
      END_STRUCT;

   END_TYPE

   TYPE PDTel82 : STRUCT
         Input  : PDTel82In;
         Output : PDTel82Out;
      END_STRUCT;

   END_TYPE

   TYPE PDTel136 : STRUCT
         Input   : PDTel136In;   // Input telegram 136
         Output  : PDTel136Out;   // Output telegram 136
      END_STRUCT;

   END_TYPE

   TYPE PDTel84 : STRUCT
         Input  : PDTel84In;
         Output : PDTel84Out;
      END_STRUCT;

   END_TYPE

   TYPE PDTel860 : STRUCT
         Input  : PDTel860In;
         Output : PDTel860Out;
      END_STRUCT;

   END_TYPE

   TYPE PDTel126 : STRUCT
         Input   : PDTel126In;   // Input telegram 126
         Output  : PDTel126Out;   // Output telegram 126
      END_STRUCT;

   END_TYPE

   TYPE PDTel350 : STRUCT
         Input   : PDTel350In;   // Input telegram 350
         Output  : PDTel350Out;   // Output telegram 350
      END_STRUCT;

   END_TYPE

   TYPE PDTel125 : STRUCT
         Input   : PDTel125In;   // Input telegram 125
         Output  : PDTel125Out;   // Output telegram 125
      END_STRUCT;

   END_TYPE

   TYPE PDTel370 : STRUCT
         Input   : PDTel370In;   // Input telegram 370
         Output  : PDTel370Out;   // Output telegram 370
      END_STRUCT;

   END_TYPE

   TYPE PDTel9 : STRUCT
         Input   : PDTel9In;   // Input telegram 9
         Output  : PDTel9Out;   // Output telegram 9
      END_STRUCT;

   END_TYPE

   TYPE PDTel394 : STRUCT
         Input   : PDTel394In;   // Input telegram 394
         Output  : PDTel394Out;   // Output telegram 394
      END_STRUCT;

   END_TYPE

   TYPE PDTel220 : STRUCT
         Input   : PDTel220In;   // Input telegram 220
         Output  : PDTel220Out;   // Output telegram 220
      END_STRUCT;

   END_TYPE

   TYPE PDTel396 : STRUCT
         Input   : PDTel396In;   // Input telegram 396
         Output  : PDTel396Out;   // Output telegram 396
      END_STRUCT;

   END_TYPE

   TYPE PDTel371 : STRUCT
         Input   : PDTel371In;   // Input telegram 371
         Output  : PDTel371Out;   // Output telegram 371
      END_STRUCT;

   END_TYPE

   TYPE PDTel395 : STRUCT
         Input   : PDTel395In;   // Input telegram 395
         Output  : PDTel395Out;   // Output telegram 395
      END_STRUCT;

   END_TYPE

   TYPE PDTel390 : STRUCT
         Input   : PDTel390In;   // Input telegram 390
         Output  : PDTel390Out;   // Output telegram 390
      END_STRUCT;

   END_TYPE

   TYPE PDTel391 : STRUCT
         Input   : PDTel391In;   // Input telegram 391
         Output  : PDTel391Out;   // Output telegram 391
      END_STRUCT;

   END_TYPE

   TYPE PDTel166 : STRUCT
         Input   : PDTel166In;   // Input telegram 166
         Output  : PDTel166Out;   // Output telegram 166
      END_STRUCT;

   END_TYPE

   TYPE PDTel392 : STRUCT
         Input   : PDTel392In;   // Input telegram 392
         Output  : PDTel392Out;   // Output telegram 392
      END_STRUCT;

   END_TYPE

   TYPE PDTel393 : STRUCT
         Input   : PDTel393In;   // Input telegram 393
         Output  : PDTel393Out;   // Output telegram 393
      END_STRUCT;

   END_TYPE

   TYPE PDTel111 : STRUCT
         Input   : PDTel111In;   // Input telegram 111
         Output  : PDTel111Out;   // Output telegram 111
      END_STRUCT;

   END_TYPE

   TYPE PDTel138 : STRUCT
         Input   : PDTel138In;   // Input telegram 138
         Output  : PDTel138Out;   // Output telegram 138
      END_STRUCT;

   END_TYPE

   TYPE PDTel139 : STRUCT
         Input   : PDTel139In;   // Input telegram 139
         Output  : PDTel139Out;   // Output telegram 139
      END_STRUCT;

   END_TYPE

   TYPE PDTel20 : STRUCT
         Input  : PDTel20In;   // Input telegram 20
         Output : PDTel20Out;   // Output telegram 20
      END_STRUCT;

   END_TYPE

   TYPE PDTel7 : STRUCT
         Input  : PDTel7In;   // Input telegram 7
         Output : PDTel7Out;   // Output telegram 7
      END_STRUCT;

   END_TYPE

   TYPE PDTel352 : STRUCT
         Input  : PDTel352In;   // Input telegram 352
         Output : PDTel352Out;   // Output telegram 352
      END_STRUCT;

   END_TYPE

   TYPE PDTel116 : STRUCT
         Input  : PDTel116In;   // Input telegram 116
         Output : PDTel116Out;   // Output telegram 116
      END_STRUCT;

   END_TYPE

   TYPE PD_Gx_STW : STRUCT
      Reserved_Bit08          : BOOL;       
      Reserved_Bit09          : BOOL;       
      Reserved_Bit10          : BOOL;       
      Reserved_Bit11          : BOOL;       
      Reserved_Bit12          : BOOL;       
      AbsoluteValueCyclically : BOOL;                
      RequestParkingEncoder   : BOOL;                
      AcknowledgeError        : BOOL;          
      Function1Request        : BOOL;          
      Function2Request        : BOOL;          
      Function3Request        : BOOL;          
      Function4Request        : BOOL;          
      Command0Request         : BOOL;          
      Command1Request         : BOOL;          
      Command2Request         : BOOL;          
      Mode                    : BOOL;

   END_STRUCT;

END_TYPE

TYPE PD_Gx_ZSW : STRUCT
   Probe1Deflected                  : BOOL;       
   Probe2Deflected                  : BOOL;       
   Reserved_Bit10                   : BOOL;       
   EncoderFaultAcknowledgeActive    : BOOL;       
   HomePositionExecuted             : BOOL;       
   AbsoluteValueCyclicallyExecuted  : BOOL;                
   ParkingSensorExecuted            : BOOL;                
   SensorError                      : BOOL;          
   Function1Active                  : BOOL;          
   Function2Active                  : BOOL;          
   Function3Active                  : BOOL;          
   Function4Active                  : BOOL;          
   Value1Available                  : BOOL;          
   Value2Available                  : BOOL;          
   Value3Available                  : BOOL;          
   Value4Available                  : BOOL;

END_STRUCT;

END_TYPE

TYPE PD_MELDW : STRUCT
   SpeedTolerance              : BOOL;         
   Reserved_Bit09              : BOOL;         
   Reserved_Bit10              : BOOL;         
   ControllerEnable            : BOOL;            
   DriveReady                  : BOOL;      
   PulsesEnabled               : BOOL;                  
   Reserved_Bit14              : BOOL;                  
   Reserved_Bit15              : BOOL;            
   RampUpDownCompleted         : BOOL;                  
   TorqueUtilizationOk         : BOOL;                  
   ActSpeedValue3Ok            : BOOL;               
   ActSpeedValue2Ok            : BOOL;               
   Reserved_Bit04              : BOOL;            
   VariableFunctionality       : BOOL;                     
   NoWarningMotorTemperature   : BOOL;                        
   NoPowerUnitOvertemperature  : BOOL;               

END_STRUCT;

END_TYPE

TYPE PD_STW1_611UMode : STRUCT
   Reserved_Bit08                  : BOOL;                    
   EnableESRReaction               : BOOL;                       
   ControlByPlc                    : BOOL;                    
   RampFunctionGeneratorActive     : BOOL;                                      
   OpenHoldingBrake                : BOOL;                    
   Reserved_Bit13                  : BOOL;                             
   ClosedLoopTorqueControl         : BOOL;                                      
   Reserved_Bit15                  : BOOL;                       
   SwitchOn                        : BOOL;                 
   NoCoastStop                     : BOOL;                          
   NoQuickStop                     : BOOL;                       
   EnableOperation                 : BOOL;                             
   EnableRampGenerator             : BOOL;                             
   UnfreezeRampGenerator           : BOOL;                                         
   EnableSetpoint                  : BOOL;                                   
   FaultAcknowledge                : BOOL;                             

END_STRUCT;

END_TYPE

TYPE PD_STW2_611UMode : STRUCT
   TravelToFixedEndstop              : BOOL;                   
   DriveDataSetSelectionBit3         : BOOL;                            
   DriveDataSetSelectionBit4         : BOOL;                         
   MotorSwitchoverFinished           : BOOL;                                        
   MasterSignOfLifeBit0              : BOOL;                   
   MasterSignOfLifeBit1              : BOOL;                            
   MasterSignOfLifeBit2              : BOOL;                                     
   MasterSignOfLifeBit3              : BOOL;                      
   DriveDataSetSelectionBit0         : BOOL;                      
   DriveDataSetSelectionBit1         : BOOL;                               
   DriveDataSetSelectionBit2         : BOOL;                            
   Reserved_Bit03                    : BOOL;                      
   BypassRampFunctionGenerator       : BOOL;                                     
   Reserved_Bit05                    : BOOL;                                  
   IntegratorInhibit                 : BOOL;                               
   ParkingAxisSelection              : BOOL;                            

END_STRUCT;

END_TYPE


TYPE PD_ZSW1_611UMode : STRUCT
   NoSpeedDeviation                     : BOOL;                
   ControlRequested                     : BOOL;                         
   SpeedComparisonValusReachedExeeded   : BOOL;                                        
   AlarmClassBit0                       : BOOL;                                  
   AlarmClassBit1                       : BOOL;             
   Reserved_Bit13                       : BOOL;                      
   ClosedLoopTorqueControlActive        : BOOL;                                              
   Reserved_Bit15                       : BOOL;                
   ReadyToSwitchOn                      : BOOL;                   
   ReadyToOperate                       : BOOL;                         
   OperationEnabled                     : BOOL;                         
   FaultPresent                         : BOOL;                
   NoCoastStopActivated                 : BOOL;                                     
   NoQuickStopActivated                 : BOOL;                                  
   SwitchingOnInhibited                 : BOOL;                               
   AlarmPresent                         : BOOL;                      

END_STRUCT;

END_TYPE


TYPE PD_ZSW2_611UMode : STRUCT
   TravelToFixedEndStopActive     : BOOL;                    
   DriveDataSetEffectiveBit3      : BOOL;                             
   DriveDataSetEffectiveBit4      : BOOL;                                            
   MotorDataSetChangeoverActive   : BOOL;                                         
   SlaveSignOfLifeBit0            : BOOL;           
   SlaveSignOfLifeBit1            : BOOL;                    
   SlaveSignOfLifeBit2            : BOOL;                                            
   SlaveSignOfLifeBit3            : BOOL;              
   DriveDataSetEffectiveBit0      : BOOL;                       
   DriveDataSetEffectiveBit1      : BOOL;                             
   DriveDataSetEffectiveBit2      : BOOL;                             
   Reserved_Bit03                 : BOOL;        
   RampFunctionGeneratorInactive  : BOOL;                                            
   OpenHoldingBrake               : BOOL;                             
   IntegratorInhibit              : BOOL;                          
   ParkingAxisActive              : BOOL;                 

END_STRUCT;

END_TYPE

TYPE PD_ZSW1 : STRUCT
   NoSpeedDeviation                   : BOOL;                          
   ControlRequested                   : BOOL;                                   
   SpeedComparisonValusReachedExeeded : BOOL;                                                                    
   TorqueLimitNotReached              : BOOL;                                                     
   OpenHoldingBrake                   : BOOL;                 
   NoMotorOvertemperature             : BOOL;                                
   ActualSpeedPositive                : BOOL;                                                     
   NoPowerUnitOvertemperature         : BOOL;                             
   ReadyToSwitchOn                    : BOOL;                             
   ReadyToOperate                     : BOOL;                                
   OperationEnabled                   : BOOL;                                   
   FaultPresent                       : BOOL;           
   NoCoastStopActivated               : BOOL;                                                     
   NoQuickStopActivated               : BOOL;                                      
   SwitchingOnInhibited               : BOOL;                                   
   AlarmPresent                       : BOOL;                    

END_STRUCT;

END_TYPE

TYPE PD_ZSW2 : STRUCT
   TravelToFixedEndStopActive   : BOOL;                              
   Reserved_Bit09               : BOOL;                           
   PulsesEnabled                : BOOL;                                          
   MotorDataSetChangeoverActive : BOOL;                                                      
   SlaveSignOfLifeBit0          : BOOL;               
   SlaveSignOfLifeBit1          : BOOL;                        
   SlaveSignOfLifeBit2          : BOOL;                                                
   SlaveSignOfLifeBit3          : BOOL;                  
   DriveDataSetEffectiveBit0    : BOOL;                                 
   DriveDataSetEffectiveBit1    : BOOL;                                       
   DriveDataSetEffectiveBit2    : BOOL;                                       
   DriveDataSetEffectiveBit3    : BOOL;                  
   DriveDataSetEffectiveBit4    : BOOL;                                                      
   AlarmClassBit0               : BOOL;                           
   AlarmClassBit1               : BOOL;                        
   ParkingAxisActive            : BOOL;                  

END_STRUCT;

END_TYPE

TYPE PD_ZSW2_ENC : STRUCT
   Reserved_Bit08    : BOOL;                            
   ControlRequested  : BOOL;                            
   Reserved_Bit10    : BOOL;                                        
   Reserved_Bit11    : BOOL;                                                    
   SlaveLifeSignBit0 : BOOL;                
   SlaveLifeSignBit1 : BOOL;                         
   SlaveLifeSignBit2 : BOOL;                                                 
   SlaveLifeSignBit3 : BOOL;                   
   Reserved_Bit00    : BOOL;                               
   Reserved_Bit01    : BOOL;                                     
   Reserved_Bit02    : BOOL;                                     
   FaultPresent      : BOOL;                
   Reserved_Bit04    : BOOL;                                                    
   Reserved_Bit05    : BOOL;                         
   Reserved_Bit06    : BOOL;                      
   AlarmPresent      : BOOL;                

END_STRUCT;

END_TYPE


TYPE PD_STW1 : STRUCT
   Reserved_Bit08                      : BOOL;                               
   Reserved_Bit09                      : BOOL;                                        
   ControlByPlc                        : BOOL;                                                       
   SetpointInversion                   : BOOL;                                                       
   OpenHoldingBrake                    : BOOL;                         
   RaiseMotorizedPotentiometerSetpoint : BOOL;                                                    
   LowerMotorizedPotentiometerSetpoint : BOOL;                                                                            
   Reserved_Bit15                      : BOOL;                         
   SwitchOn                            : BOOL;                            
   NoCoastStop                         : BOOL;                                     
   NoQuickStop                         : BOOL;                                     
   EnableOperation                     : BOOL;                      
   EnableRampGenerator                 : BOOL;                                                             
   UnfreezeRampGenerator               : BOOL;                                                 
   EnableSetpoint                      : BOOL;                                     
   FaultAcknowledge                    : BOOL;                               

END_STRUCT;

END_TYPE

TYPE PD_STW2 : STRUCT
   TravelToFixedEndstop      : BOOL;                         
   Reserved_Bit09            : BOOL;                            
   Reserved_Bit10            : BOOL;                                           
   MotorSwitchoverFinished   : BOOL;                                                 
   MasterSignOfLifeBit0      : BOOL;                
   MasterSignOfLifeBit1      : BOOL;                         
   MasterSignOfLifeBit2      : BOOL;                                                 
   MasterSignOfLifeBit3      : BOOL;                   
   DriveDataSetSelectionBit0 : BOOL;                                  
   DriveDataSetSelectionBit1 : BOOL;                                        
   DriveDataSetSelectionBit2 : BOOL;                                        
   DriveDataSetSelectionBit3 : BOOL;                   
   DriveDataSetSelectionBit4 : BOOL;                                                       
   Reserved_Bit05            : BOOL;                            
   Reserved_Bit06            : BOOL;                         
   ParkingAxisSelection      : BOOL;                      

END_STRUCT;

END_TYPE


TYPE PD_STW2_ENC : STRUCT
   Reserved_Bit08       : BOOL;                             
   Reserved_Bit09       : BOOL;                                
   ControlByPlc         : BOOL;                                               
   Reserved_Bit11       : BOOL;                                                     
   MasterSignOfLifeBit0 : BOOL;                          
   MasterSignOfLifeBit1 : BOOL;                                   
   MasterSignOfLifeBit2 : BOOL;                                                           
   MasterSignOfLifeBit3 : BOOL;                             
   Reserved_Bit00       : BOOL;                                      
   Reserved_Bit01       : BOOL;                                            
   Reserved_Bit02       : BOOL;                                            
   Reserved_Bit03       : BOOL;                       
   Reserved_Bit04       : BOOL;                                                           
   Reserved_Bit05       : BOOL;                                
   Reserved_Bit06       : BOOL;                             
   FaultAcknowledge     : BOOL;                             

END_STRUCT;

END_TYPE

END_NAMESPACE
