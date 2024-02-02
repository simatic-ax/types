NAMESPACE Siemens.Ax.Types.WithOffset

   TYPE PDSTW1BM : STRUCT
      reserved_Bit08      AT %X0.0 : Bool;   // Reserved
      reserved_Bit09      AT %X0.1 : Bool;   // Reserved
      controlByPlc        AT %X0.2 : Bool;   // 1 = Control by PLC
      reserved_Bit11      AT %X0.3 : Bool;   // Reserved
      reserved_Bit12      AT %X0.4 : Bool;   // Reserved
      reserved_Bit13      AT %X0.5 : Bool;   // Reserved
      reserved_Bit14      AT %X0.6 : Bool;   // Reserved
      reserved_Bit15      AT %X0.7 : Bool;   // Reserved
      off1                AT %X1.0 : Bool;   // 0 = OFF (OFF1); 0->1 = ON
      off2                AT %X1.1 : Bool;   // 0 = OFF2 (immediate pulse suppression and switch on inhibit); 1 = No OFF2 (enable is possible)
      off3                AT %X1.2 : Bool;   // 0 = OFF3 (braking along the OFF3 ramp (p1135), then pulse suppression and switch on inhibit); 1 = No OFF3 (enable is possible)
      enableOperation     AT %X1.3 : Bool;   // 0 = Inhibit operation; 1 = Enable operation
      operatingCondition  AT %X1.4 : Bool;   // 0 = Inhibit ramp-function generator; 1 = Operating condition
      enableRampGenerator AT %X1.5 : Bool;   // 0 = Stop the ramp-function generator; 1 = Enable the ramp-function generator
      enableSetpoint      AT %X1.6 : Bool;   // Enable / Disable Setpoint
      faultAcknowledge    AT %X1.7 : Bool;   // Alarm / No Alarm Acknowledge
   END_STRUCT;

END_TYPE

TYPE PDZSW1VIK : STRUCT
      noSpeedDeviation                   AT %X0.0 : Bool;   // Setpoint Speed Deviation within Tolerance
      controlRequested                   AT %X0.1 : Bool;   // Control requested
      speedComparisonValusReachedExeeded AT %X0.2 : Bool;   // f or n comparison value reached/exceeded
      torqueLimitNotReached              AT %X0.3 : Bool;   // 1= LimitNotReached/LimitReached
      reserved_Bit12                     AT %X0.4 : Bool;   // Reserved
      noMotorOvertemperature             AT %X0.5 : Bool;   // NoMotorOvertemperature/MotorOvertemperature
      actualSpeedPositive                AT %X0.6 : Bool;   // Motor turns positive/ Motor turns negative
      cmdDataSetSelCDS                   AT %X0.7 : Bool;   // 1 = Command Data Set selection CDS bit 0
      readyToSwitchOn                    AT %X1.0 : Bool;   // Ready to switch on
      readyToOperate                     AT %X1.1 : Bool;   // Ready to operate
      operationEnabled                   AT %X1.2 : Bool;   // Operation enabled (Speed setpoint)
      faultPresent                       AT %X1.3 : Bool;   // Fault present
      noCoastStopActivated               AT %X1.4 : Bool;   // No coast down active (OFF2 inactive)
      noQuickStopActivated               AT %X1.5 : Bool;   // No fast stop active (OFF3 inactive)
      switchingOnInhibited               AT %X1.6 : Bool;   // SwitchingOnInhibited/SwitchingOnNotInhibited
      alarmPresent                       AT %X1.7 : Bool;   // Alarm present/NoAlarm
   END_STRUCT;

END_TYPE

TYPE PDMeldNamur : STRUCT
      safetyMonitoringChannel    AT %X0.0 : Bool;   // 1 = Safety monitoring channel has detected an error
      faultSpeedSensor           AT %X0.1 : Bool;   // 1 = Fault Speed Sensor
      faultInternalCommunication AT %X0.2 : Bool;   // 1 = Fault Internal Communication
      faultInfeed                AT %X0.3 : Bool;   // 1 = Fault Infeed System (DC Link)
      reserved_Bit12             AT %X0.4 : Bool;   // Reserved
      reserved_Bit13             AT %X0.5 : Bool;   // Reserved
      reserved_Bit14             AT %X0.6 : Bool;   // Reserved
      miscellaneousFaults        AT %X0.7 : Bool;   // 1 = Miscellaneous Faults
      faultHwSw                  AT %X1.0 : Bool;   // 1 = Hardware/software errors
      lineSupplyFault            AT %X1.1 : Bool;   // 1 = Line Supply Fault 
      overvoltageDcLink          AT %X1.2 : Bool;   // 1 = DC Link Overvoltage
      powerElectronicsFault      AT %X1.3 : Bool;   // 1 = Fault Power electronics
      overtempElectronicComp     AT %X1.4 : Bool;   // 1 = Overtemperature Converter
      groundFault                AT %X1.5 : Bool;   // 1 = Ground fault
      overloadMotor              AT %X1.6 : Bool;   // 1 = Motor Overload 
      errorCommunicationBus      AT %X1.7 : Bool;   // 1 = Error Communication Bus
   END_STRUCT;

END_TYPE

TYPE PDSTW1VIK : STRUCT
      reserved_Bit08        AT %X0.0 : Bool;   // Reserved
      reserved_Bit09        AT %X0.1 : Bool;   // Reserved
      controlByPlc          AT %X0.2 : Bool;   // Drive controlled by PLC
      setpointInversion     AT %X0.3 : Bool;   // Invert the setpoint
      reserved_Bit12        AT %X0.4 : Bool;   // Reserved
      reserved_Bit13        AT %X0.5 : Bool;   // Reserved
      reserved_Bit14        AT %X0.6 : Bool;   // Reserved
      cmdDataSetSelCDS      AT %X0.7 : Bool;   // 1 = Command Data Set selection CDS bit 0
      SwitchOn              AT %X1.0 : Bool;   // Switch On / Off (OFF1)
      noCoastStop           AT %X1.1 : Bool;   // Activate / Deactivate Coast Stop (OFF2)
      noQuickStop           AT %X1.2 : Bool;   // Activate / Deactivate Quick Stop (OFF3)
      enableOperation       AT %X1.3 : Bool;   // Enable / Disable Operation
      enableRampGenerator   AT %X1.4 : Bool;   // Enable / Reset Ramp Generator
      unfreezeRampGenerator AT %X1.5 : Bool;   // Unfreeze / Freez Ramp Generator
      enableSetpoint        AT %X1.6 : Bool;   // Enable / Disable Setpoint
      faultAcknowledge      AT %X1.7 : Bool;   // Alarm / No Alarm Acknowledge
   END_STRUCT;

END_TYPE

TYPE PDMTSTW : STRUCT
      risProbe1 AT %X0.0 : Bool;   // Activation of measuring time determination with the next rising edge
      risProbe2 AT %X0.1 : Bool;   // Activation of measuring time determination with the next rising edge
      risProbe3 AT %X0.2 : Bool;   // Activation of measuring time determination with the next rising edge
      risProbe4 AT %X0.3 : Bool;   // Activation of measuring time determination with the next rising edge
      risProbe5 AT %X0.4 : Bool;   // Activation of measuring time determination with the next rising edge
      risProbe6 AT %X0.5 : Bool;   // Activation of measuring time determination with the next rising edge
      risProbe7 AT %X0.6 : Bool;   // Activation of measuring time determination with the next rising edge
      risProbe8 AT %X0.7 : Bool;   // Activation of measuring time determination with the next rising edge
      falProbe1 AT %X1.0 : Bool;   // Activiation of measuring time determination with the next falling edge
      falProbe2 AT %X1.1 : Bool;   // Activiation of measuring time determination with the next falling edge
      falProbe3 AT %X1.2 : Bool;   // Activiation of measuring time determination with the next falling edge
      falProbe4 AT %X1.3 : Bool;   // Activiation of measuring time determination with the next falling edge
      falProbe5 AT %X1.4 : Bool;   // Activiation of measuring time determination with the next falling edge
      falProbe6 AT %X1.5 : Bool;   // Activiation of measuring time determination with the next falling edge
      falProbe7 AT %X1.6 : Bool;   // Activiation of measuring time determination with the next falling edge
      falProbe8 AT %X1.7 : Bool;   // Activiation of measuring time determination with the next falling edge
   END_STRUCT;

END_TYPE

TYPE PDADigital1 : STRUCT
      digitalOutput16 AT %X0.0 : Bool;   // Digital output 16 (DI/DO 16); p0746 = r2092.8
      reserved_Bit09  AT %X0.1 : Bool;   // Reserved
      reserved_Bit10  AT %X0.2 : Bool;   // Reserved
      reserved_Bit11  AT %X0.3 : Bool;   // Reserved
      reserved_Bit12  AT %X0.4 : Bool;   // Reserved
      reserved_Bit13  AT %X0.5 : Bool;   // Reserved
      reserved_Bit14  AT %X0.6 : Bool;   // Reserved
      reserved_Bit15  AT %X0.7 : Bool;   // Reserved
      reserved_Bit00  AT %X1.0 : Bool;   // Reserved
      reserved_Bit01  AT %X1.1 : Bool;   // Reserved
      reserved_Bit02  AT %X1.2 : Bool;   // Reserved
      reserved_Bit03  AT %X1.3 : Bool;   // Reserved
      reserved_Bit04  AT %X1.4 : Bool;   // Reserved
      reserved_Bit05  AT %X1.5 : Bool;   // Reserved
      reserved_Bit06  AT %X1.6 : Bool;   // Reserved
      reserved_Bit07  AT %X1.7 : Bool;   // Reserved
   END_STRUCT;

END_TYPE

TYPE PDPOSZSW1 : STRUCT
      stopCamMinusActive         AT %X0.0 : Bool;   // 1 = STOP cam minus active
      stopCamPlusActive          AT %X0.1 : Bool;   // 1 = STOP cam plus active
      jogActive                  AT %X0.2 : Bool;   // 1 = Jogging active
      refPointApproachActive     AT %X0.3 : Bool;   // 1 = Reference point approach active
      flyRefActive               AT %X0.4 : Bool;   // 1 = Flying referencing active
      traversingBlockActive      AT %X0.5 : Bool;   // 1 = Traversing Block active
      setupActive                AT %X0.6 : Bool;   // 1 = Set-up active
      mdiActive                  AT %X0.7 : Bool;   // 1 = MDI active;  0 = MDI inactive
      activeTraversingBlockBit0  AT %X1.0 : Bool;   // Active Traversing Block Bit 0
      activeTraversingBlockBit1  AT %X1.1 : Bool;   // Active Traversing Block Bit 1
      activeTraversingBlockBit2  AT %X1.2 : Bool;   // Active Traversing Block Bit 2
      activeTraversingBlockBit3  AT %X1.3 : Bool;   // Active Traversing Block Bit 3
      activeTraversingBlockBit4  AT %X1.4 : Bool;   // Active Traversing Block Bit 4
      activeTraversingBlockBit5  AT %X1.5 : Bool;   // Active Traversing Block Bit 5
      reserved_Bit06             AT %X1.6 : Bool;   // Reserved
      reserved_Bit07             AT %X1.7 : Bool;   // Reserved
   END_STRUCT;

END_TYPE

TYPE PDEDigital : STRUCT
      digitalInput0  AT %X0.0 : Bool;   // Digital input 0 (DI 0); p2081[8] = r0722.0
      digitalInput1  AT %X0.1 : Bool;   // Digital input 1 (DI 1); p2081[9] = r0722.1
      digitalInput2  AT %X0.2 : Bool;   // Digital input 2 (DI 2); p2081[10] = r0722.2
      digitalInput3  AT %X0.3 : Bool;   // Digital input 3 (DI 3); p2081[11] = r0722.3
      digitalInput4  AT %X0.4 : Bool;   // Digital input 4 (DI 4); p2081[12] = r0722.4
      digitalInput5  AT %X0.5 : Bool;   // Digital input 5 (DI 5); p2081[13] = r0722.5
      digitalInput6  AT %X0.6 : Bool;   // Digital input 6 (DI 6); p2081[14] = r0722.6
      digitalInput7  AT %X0.7 : Bool;   // Digital input 7 (DI 7); p2081[15] = r0722.7
      digitalInput8  AT %X1.0 : Bool;   // Digital input 8 (DI/DO 8); p2081[0] = r0722.8
      digitalInput9  AT %X1.1 : Bool;   // Digital input 9 (DI/DO 9); p2081[1] = r0722.9
      digitalInput10 AT %X1.2 : Bool;   // Digital input 10 (DI/DO 10); p2081[2] = r0722.10
      digitalInput11 AT %X1.3 : Bool;   // Digital input 11 (DI/DO 11); p2081[3] = r0722.11
      digitalInput12 AT %X1.4 : Bool;   // Digital input 12 (DI/DO 12); p2081[4] = r0722.12
      digitalInput13 AT %X1.5 : Bool;   // Digital input 13 (DI/DO 13); p2081[5] = r0722.13
      digitalInput14 AT %X1.6 : Bool;   // Digital input 14 (DI/DO 14); p2081[6] = r0722.14
      digitalInput15 AT %X1.7 : Bool;   // Digital input 15 (DI/DO 15); p2081[7] = r0722.15
   END_STRUCT;

END_TYPE

TYPE PDPOSZSW2 : STRUCT
      camSwitchPos1             AT %X0.0 : Bool;   // 1 = Position actual value <= cam switching position 1
      camSwitchPos2             AT %X0.1 : Bool;   // 1 = Position actual value <= cam switching position 2
      directOut1TraversBlock    AT %X0.2 : Bool;   // 1 = Direct output 1 via traversing block
      directOut2TraversBlock    AT %X0.3 : Bool;   // 1 = Direct output 2 via traversing block
      fixStopReached            AT %X0.4 : Bool;   // 1 = Fixed stop reached
      fixStopClampTorqueReached AT %X0.5 : Bool;   // 1 = Fixed stop clamping torque reached
      travelToFixStopActive     AT %X0.6 : Bool;   // 1 = Travel to fixed stop active
      traversCmdActive          AT %X0.7 : Bool;   // 1 = Traversing command active
      trackModeActive           AT %X1.0 : Bool;   // 1 = Tracking mode active
      velocityLimActive         AT %X1.1 : Bool;   // 1 = Velocity limiting active
      setpointAvailable         AT %X1.2 : Bool;   // 1 = Setpoint available
      printMarkOutside          AT %X1.3 : Bool;   // 1 = Printing mark outside outer window
      axisMovesForwards         AT %X1.4 : Bool;   // 1 = Axis moves forward
      axisMovesBackwards        AT %X1.5 : Bool;   // 1 = Axis moves backwards
      swLimSwitchMinusReached   AT %X1.6 : Bool;   // 1 = Software limit switch minus reached
      swLimSwitchPlusReached    AT %X1.7 : Bool;   // 1 = Software limit switch plus reached
   END_STRUCT;

END_TYPE

TYPE PDPOSSTW1 : STRUCT
      absPosIsSelected             AT %X0.0 : Bool;   // 1 = Absolute positioning is selected.  0 = Relative positioning is selected.
      absPosModeBit0               AT %X0.1 : Bool;   // Mode Bit0: 1 = Absolute positioning/MDI direction selection, positive.   2 = Absolute positioning/MDI direction selection, negative.  3 = Absolute positioning through the shortest distance.  0 = Absolute positioning through the shortest distance.
      absPosModeBit1               AT %X0.2 : Bool;   // Mode Bit1: 1 = Absolute positioning/MDI direction selection, positive.   2 = Absolute positioning/MDI direction selection, negative.  3 = Absolute positioning through the shortest distance.  0 = Absolute positioning through the shortest distance.
      reserved_Bit11               AT %X0.3 : Bool;   // Reserved
      continousTransfer            AT %X0.4 : Bool;   // 1 = Continuous transfer;  0 = Activate MDI block change with 0->1 of a traversing task (STW1.6)
      reserved_Bit13               AT %X0.5 : Bool;   // Reserved
      signalSettingUpSelected      AT %X0.6 : Bool;   // 1 = Signal setting-up selected;  0 = Signal positioning selected.
      mdiSelection                 AT %X0.7 : Bool;   // 1 = MDI selection
      traversingBlockSelectionBit0 AT %X1.0 : Bool;   // Traversing block selection, bit 0
      traversingBlockSelectionBit1 AT %X1.1 : Bool;   // Traversing block selection, bit 1
      traversingBlockSelectionBit2 AT %X1.2 : Bool;   // Traversing block selection, bit 2
      traversingBlockSelectionBit3 AT %X1.3 : Bool;   // Traversing block selection, bit 3
      traversingBlockSelectionBit4 AT %X1.4 : Bool;   // Traversing block selection, bit 4
      traversingBlockSelectionBit5 AT %X1.5 : Bool;   // Traversing block selection, bit 5
      reserved_Bit06               AT %X1.6 : Bool;   // Reserved
      reserved_Bit07               AT %X1.7 : Bool;   // Reserved
   END_STRUCT;

END_TYPE

TYPE PDPOSSTW2 : STRUCT
      refTypeFlyingRef              AT %X0.0 : Bool;   // 1 = Referencing type selection for flying referencing;  0 = Referencing type selection for search for reference
      startSearchRefNegDir          AT %X0.1 : Bool;   // 1 = Start the search for reference in the negative direction;  0 = Start the search for reference in the positive direction.
      measuringProbe2               AT %X0.2 : Bool;   // 1 = Measuring probe 2 is activated;  0 = Measuring probe 1 is activated
      falMeasuringProbe             AT %X0.3 : Bool;   // 1 = Falling edge of the measuring probe;  0 = Rising edge of the measuring probe
      reserved_Bit12                AT %X0.4 : Bool;   // Reserved
      reserved_Bit13                AT %X0.5 : Bool;   // Reserved
      softwareLimitSwitchActivation AT %X0.6 : Bool;   // 1 = Software limit switch activation
      stopCamActive                 AT %X0.7 : Bool;   // 1 = STOP cam active
      trackingModeActive            AT %X1.0 : Bool;   // 1 = Tracking mode active
      setReferencePoint             AT %X1.1 : Bool;   // 1 = Set reference point
      referenceCamActive            AT %X1.2 : Bool;   // 1 = Reference cam active
      reserved_Bit03                AT %X1.3 : Bool;   // Reserved
      reserved_Bit04                AT %X1.4 : Bool;   // Reserved
      jogIncActive                  AT %X1.5 : Bool;   // 1 = Jogging, incremental active;  0 = Jogging, velocity active
      reserved_Bit06                AT %X1.6 : Bool;   // Reserved
      reserved_Bit07                AT %X1.7 : Bool;   // Reserved
   END_STRUCT;

END_TYPE

TYPE PDEZSW1 : STRUCT
      reserved_Bit08       AT %X0.0 : Bool;   // Reserved
      plcRequestsControl   AT %X0.1 : Bool;   // 1 = PLC requests control
      reserved_Bit10       AT %X0.2 : Bool;   // Reserved
      prechargingCompleted AT %X0.3 : Bool;   // 1 = Precharging completed
      lineContactorClosed  AT %X0.4 : Bool;   // 1 = Line contactor closed
      reserved_Bit13       AT %X0.5 : Bool;   // Reserved
      reserved_Bit14       AT %X0.6 : Bool;   // Reserved
      reserved_Bit15       AT %X0.7 : Bool;   // Reserved
      readyToSwitchOn      AT %X1.0 : Bool;   // 1 = Ready for switching on
      readyToOperate       AT %X1.1 : Bool;   // 1 = Ready for operation
      operationEnabled     AT %X1.2 : Bool;   // 1 = Operation enabled
      faultPresent         AT %X1.3 : Bool;   // 1 = Fault present
      noOff2Effective      AT %X1.4 : Bool;   // 1 = No OFF2 effective
      reserved_Bit05       AT %X1.5 : Bool;   // Reserved
      switchingOnInhibited AT %X1.6 : Bool;   // 1 = Switching on inhibited
      alarmPresent         AT %X1.7 : Bool;   // 1 = Alarm present
   END_STRUCT;

END_TYPE

TYPE PDADigital : STRUCT
      reserved_Bit08  AT %X0.0 : Bool;   // Reserved
      reserved_Bit09  AT %X0.1 : Bool;   // Reserved
      reserved_Bit10  AT %X0.2 : Bool;   // Reserved
      reserved_Bit11  AT %X0.3 : Bool;   // Reserved
      reserved_Bit12  AT %X0.4 : Bool;   // Reserved
      reserved_Bit13  AT %X0.5 : Bool;   // Reserved
      reserved_Bit14  AT %X0.6 : Bool;   // Reserved
      reserved_Bit15  AT %X0.7 : Bool;   // Reserved
      digitalOutput8  AT %X1.0 : Bool;   // Digital output 8 (DI/DO 8); p0738 = r2091.0
      digitalOutput9  AT %X1.1 : Bool;   // Digital output 9 (DI/DO 9); p0739 = r2091.1
      digitalOutput10 AT %X1.2 : Bool;   // Digital output 10 (DI/DO 10); p0740 = r2091.2
      digitalOutput11 AT %X1.3 : Bool;   // Digital output 11 (DI/DO 11); p0741 = r2091.3
      digitalOutput12 AT %X1.4 : Bool;   // Digital output 12 (DI/DO 12); p0742 = r2091.4
      digitalOutput13 AT %X1.5 : Bool;   // Digital output 13 (DI/DO 13); p0743 = r2091.5
      digitalOutput14 AT %X1.6 : Bool;   // Digital output 14 (DI/DO 14); p0744 = r2091.6
      digitalOutput15 AT %X1.7 : Bool;   // Digital output 15 (DI/DO 15); p0745 = r2091.7
   END_STRUCT;

END_TYPE

TYPE PDMTZSW : STRUCT
      digitalInputProbe1 AT %X0.0 : Bool;   // Digital input display
      digitalInputProbe2 AT %X0.1 : Bool;   // Digital input display
      digitalInputProbe3 AT %X0.2 : Bool;   // Digital input display
      digitalInputProbe4 AT %X0.3 : Bool;   // Digital input display
      digitalInputProbe5 AT %X0.4 : Bool;   // Digital input display
      digitalInputProbe6 AT %X0.5 : Bool;   // Digital input display
      digitalInputProbe7 AT %X0.6 : Bool;   // Digital input display
      digitalInputProbe8 AT %X0.7 : Bool;   // Digital input display
      subSamplingProbe1  AT %X1.0 : Bool;   // Not yet carried out
      subSamplingProbe2  AT %X1.1 : Bool;   // Not yet carried out
      subSamplingProbe3  AT %X1.2 : Bool;   // Not yet carried out
      subSamplingProbe4  AT %X1.3 : Bool;   // Not yet carried out
      subSamplingProbe5  AT %X1.4 : Bool;   // Not yet carried out
      subSamplingProbe6  AT %X1.5 : Bool;   // Not yet carried out
      subSamplingProbe7  AT %X1.6 : Bool;   // Not yet carried out
      subSamplingProbe8  AT %X1.7 : Bool;   // Not yet carried out
   END_STRUCT;

END_TYPE

TYPE PDEDigital1 : STRUCT
      digitalInput16 AT %X0.0 : Bool;   // Digital input 16 (DI 16); p2083[8] = r0722.16
      digitalInput17 AT %X0.1 : Bool;   // Digital input 17 (DI 17); p2083[9] = r0722.17
      digitalInput18 AT %X0.2 : Bool;   // Digital input 18 (DI 18); p2083[10] = r0722.18
      digitalInput19 AT %X0.3 : Bool;   // Digital input 19 (DI 19); p2083[11] = r0722.19
      digitalInput20 AT %X0.4 : Bool;   // Digital input 20 (DI 20); p2083[12] = r0722.20
      digitalInput21 AT %X0.5 : Bool;   // Digital input 21 (DI 21); p2083[13] = r0722.21
      digitalInput22 AT %X0.6 : Bool;   // Digital input 22 (DI 22); p2083[14] = r0722.22
      reserved_Bit15 AT %X0.7 : Bool;   // Reserved
      reserved_Bit00 AT %X1.0 : Bool;   // Reserved
      reserved_Bit01 AT %X1.1 : Bool;   // Reserved
      reserved_Bit02 AT %X1.2 : Bool;   // Reserved
      reserved_Bit03 AT %X1.3 : Bool;   // Reserved
      reserved_Bit04 AT %X1.4 : Bool;   // Reserved
      reserved_Bit05 AT %X1.5 : Bool;   // Reserved
      reserved_Bit06 AT %X1.6 : Bool;   // Reserved
      reserved_Bit07 AT %X1.7 : Bool;   // Reserved
   END_STRUCT;

END_TYPE

TYPE PDCUSTW1 : STRUCT
      reserved_Bit08       AT %X0.0 : Bool;   // Reserved
      reserved_Bit09       AT %X0.1 : Bool;   // Reserved
      ackAutoSuppressed    AT %X0.2 : Bool;   // Acknowledgment automatically suppressed
      reserved_Bit11       AT %X0.3 : Bool;   // Reserved
      masterSignOfLifeBit0 AT %X0.4 : Bool;   // Master sign-of-life bit 0
      masterSignOfLifeBit1 AT %X0.5 : Bool;   // Master sign-of-life bit 1
      masterSignOfLifeBit2 AT %X0.6 : Bool;   // Master sign-of-life bit 2
      masterSignOfLifeBit3 AT %X0.7 : Bool;   // Master sign-of-life bit 3
      syncFlag             AT %X1.0 : Bool;   // This signal is used to synchonize the joint system time between the controller and drive unit BI: p 0681[0]
      rtcPing              AT %X1.1 : Bool;   // This signal is used to set the UTC time using the Ping event BI: p 3104
      esrTrigger           AT %X1.2 : Bool;   // ESR-Trigger
      reserved_Bit03       AT %X1.3 : Bool;   // Reserved
      reserved_Bit04       AT %X1.4 : Bool;   // Reserved
      reserved_Bit05       AT %X1.5 : Bool;   // Reserved
      reserved_Bit06       AT %X1.6 : Bool;   // Reserved
      acknowledge          AT %X1.7 : Bool;   // 0 --> 1 = Acknowledge faults (Acknowledge fault. If the ON command is still active, the inverter switches to closing lockout state) p 2103[0] = r 2090.7
   END_STRUCT;

END_TYPE

TYPE PDSTW3 : STRUCT
      enableTechController      AT %X0.0 : Bool;   // 1 = Technology controller enable
      brakeActive               AT %X0.1 : Bool;   // 1 = DC braking active
      reserved_Bit10            AT %X0.2 : Bool;   // Reserved
      enableDroop               AT %X0.3 : Bool;   // 1 = Droop enable
      torqueControl             AT %X0.4 : Bool;   // 1 = Torque control
      extFault                  AT %X0.5 : Bool;   // 0 = External fault 1 (F07860)
      reserved_Bit14            AT %X0.6 : Bool;   // Reserved
      cdsBit1                   AT %X0.7 : Bool;   // 1 = CDS bit 1
      fixSetpBit0               AT %X1.0 : Bool;   // 1 = Fixed setp bit 0
      fixSetpBit1               AT %X1.1 : Bool;   // 1 = Fixed setp bit 1
      fixSetpBit2               AT %X1.2 : Bool;   // 1 = Fixed setp bit 2
      fixSetpBit3               AT %X1.3 : Bool;   // 1 = Fixed setp bit 3
      driveDataSetSelectionBit0 AT %X1.4 : Bool;   // 1 = DDS select. bit 0
      driveDataSetSelectionBit1 AT %X1.5 : Bool;   // 1 = DDS select. bit 1
      reserved_Bit06            AT %X1.6 : Bool;   // Reserved
      reserved_Bit07            AT %X1.7 : Bool;   // Reserved
   END_STRUCT;

END_TYPE

TYPE PDZSW3 : STRUCT
      vdcActGTvdcTreshVal            AT %X0.0  : Bool;   // 1 = Vdc > p2172;  Actual DC link voltage > threshld value
      rampingFinished                AT %X0.1  : Bool;   // 1 = Ramping finished
      techControllerOutputLowerLimit AT %X0.2  : Bool;   // 1 = Technology controller output at the lower limit
      techControllerOutputUpperLimit AT %X0.3  : Bool;   // 1 = Technology controller output at the upper limit
      reserved_Bit12                 AT %X0.4  : Bool;   // Reserved
      reserved_Bit13                 AT %X0.5  : Bool;   // Reserved
      reserved_Bit14                 AT %X0.6  : Bool;   // Reserved
      reserved_Bit15                 AT %X0.7  : Bool;   // Reserved
      dcBrakingActive                AT %X1.0  : Bool;   // 1 = DC braking active
      nActGTnStandstill              AT %X1.1  : Bool;   // 1 = |n_act| > p1226 (n_standstill);  Absolute current speed > stationary state detection
      nActGTnMin                     AT %X1.2  : Bool;   // 1 = |n_act| > p1080 (n_min);  Absolute actual speed > minimum speed
      iActGEiTreshVal                AT %X1.3  : Bool;   // 1 = I_act >= p2170;  Actual current >= current threshold value
      nActGTnTreshVal                AT %X1.4  : Bool;   // 1 = |n_act| > p2155;  Absolute actual speed > speed threshold value 2
      nActLEnTreshVal                AT %X1.5  : Bool;   // 1 = |n_act| <= p2155;  Absolute actual speed <= speed threshold value 2
      nActGEnSet                     AT %X1.6  : Bool;   // 1 = |n_act| >=  r1119 (n_set);  Speed setpoint reached
      vdcActLEvdcTreshVal            AT %X1.7  : Bool;   // 1 = Vdc <= p2172;  Actual DC link voltage <= threshld value
   END_STRUCT;

END_TYPE

TYPE PDZSW1Pos : STRUCT
      followErrorWithinTolerance AT %X0.0 : Bool;   // 1 = Following error within tolerance
      controlRequested           AT %X0.1 : Bool;   // 1 = Control requested
      targetPosReached           AT %X0.2 : Bool;   // 1 = Target position reached
      homePosSet                 AT %X0.3 : Bool;   // 1 = Home position set
      ackTraversBlockActive      AT %X0.4 : Bool;   // Acknowledgement traversing block activated
      setPointFixed              AT %X0.5 : Bool;   // 1 = Setpoint fixed
      axisAcc                    AT %X0.6 : Bool;   // 1 = Axis accelerated
      axisDec                    AT %X0.7 : Bool;   // 1 = Axis decelerated
      readyToSwitchOn            AT %X1.0 : Bool;   // 1 = Ready to switch on
      readyToOperate             AT %X1.1 : Bool;   // 1 = Ready to operate
      operationEnabled           AT %X1.2 : Bool;   // 1 = Operation enabled (drive follows n_set)
      faultPresent               AT %X1.3 : Bool;   // 1 = Fault present
      noCoastStopActivated       AT %X1.4 : Bool;   // 1 = No coast down active (OFF2 inactive)
      noQuickStopActivated       AT %X1.5 : Bool;   // 1 = No fast stop active (OFF3 inactive)
      switchingOnInhibited       AT %X1.6 : Bool;   // SwitchingOnInhibited/SwitchingOnNotInhibited
      alarmPresent               AT %X1.7 : Bool;   // Alarm present/NoAlarm
   END_STRUCT;

END_TYPE

TYPE PDESTW1 : STRUCT
      reserved_Bit08                AT %X0.0 : Bool;   // Reserved
      reserved_Bit09                AT %X0.1 : Bool;   // Reserved
      controlByPlc                  AT %X0.2 : Bool;   // 1 = Control by PLC
      reserved_Bit11                AT %X0.3 : Bool;   // Reserved
      reserved_Bit12                AT %X0.4 : Bool;   // Reserved
      reserved_Bit13                AT %X0.5 : Bool;   // Reserved
      reserved_Bit14                AT %X0.6 : Bool;   // Reserved
      reserved_Bit15                AT %X0.7 : Bool;   // Reserved
      off1                          AT %X1.0 : Bool;   // 0->1 = ON (close precharging/line contactor, pulses can be enabled); 0 = OFF1 (reduce Vdc along a ramp, suppress pulse and open precharging/line contactor)
      off2                          AT %X1.1 : Bool;   // 1 = No OFF2 (enable is possible);  0 = OFF2 (immediate pulse suppression and switching on inhibited)
      reserved_Bit02                AT %X1.2 : Bool;   // Reserved
      enableOperation               AT %X1.3 : Bool;   // 1 = Enable operation (pulses can be enabled);  0 = Inhibit operation (suppress pulses)
      reserved_Bit04                AT %X1.4 : Bool;   // Reserved
      infeedInhibitMotoring         AT %X1.5 : Bool;   // 1 = Infeed, inhibit motoring operation
      infeedInhibitRegenOperation   AT %X1.6 : Bool;   // 1 = Infeed, inhibit regenerative operation
      faultAcknowledge              AT %X1.7 : Bool;   // 0->1 = Acknowledge faults
   END_STRUCT;

END_TYPE

TYPE PDSTW2BM : STRUCT
      droopEnabled                  AT %X0.0 : Bool;   // 1 = Droop enabled
      speedControllerEnabled        AT %X0.1 : Bool;   // 1 = Speed controller enabled
      reserved_Bit10                AT %X0.2 : Bool;   // Reserved
      torqueControlledOperation     AT %X0.3 : Bool;   // 1 = Torque controlled operation; 0 = Speed controlled operation
      reserved_Bit12                AT %X0.4 : Bool;   // Reserved
      reserved_Bit13                AT %X0.5 : Bool;   // Reserved
      reserved_Bit14                AT %X0.6 : Bool;   // Reserved
      signOfLifeBit                 AT %X0.7 : Bool;   // Controller slave sign-of-life Toggle bit
      cmdDataSetSelectionBit0       AT %X1.0 : Bool;   // Command data set selection CDS, bit 0
      cmdDataSetSelectionBit1       AT %X1.1 : Bool;   // Command data set selection CDS, bit 1
      driveDataSetSelectionBit0     AT %X1.2 : Bool;   // Drive data set selection DDS, bit 0
      driveDataSetSelectionBit1     AT %X1.3 : Bool;   // Drive data set selection DDS, bit 1
      driveDataSetSelectionBit2     AT %X1.4 : Bool;   // Drive data set selection DDS, bit 2
      bypassRampGenerator           AT %X1.5 : Bool;   // 1 = Bypass ramp-function generator
      reserved_Bit06                AT %X1.6 : Bool;   // Reserved
      speedControlSetIntegratorVal  AT %X1.7 : Bool;   // 1 = Speed controller set integrator value
   END_STRUCT;

END_TYPE

TYPE PDEZSW1BM : STRUCT
      reserved_Bit08          AT %X0.0 : Bool;   // Reserved
      plcRequestsControl      AT %X0.1 : Bool;   // 1 = PLC requests control
      reserved_Bit10          AT %X0.2 : Bool;   // Reserved
      prechargingCompleted    AT %X0.3 : Bool;   // 1 = Precharging completed
      lineContactorClosed     AT %X0.4 : Bool;   // 1 = Line contactor closed
      reserved_Bit13          AT %X0.5 : Bool;   // Reserved
      reserved_Bit14          AT %X0.6 : Bool;   // Reserved
      controllerSignOfLifeBit AT %X0.7 : Bool;   // Controller-sign-of-life Toggle bit
      readyToSwitchOn         AT %X1.0 : Bool;   // 1 = Ready for switching on
      readyToOperate          AT %X1.1 : Bool;   // 1 = Ready for operation
      operationEnabled        AT %X1.2 : Bool;   // 1 = Operation enabled
      faultPresent            AT %X1.3 : Bool;   // 1 = Fault present
      noOff2Effective         AT %X1.4 : Bool;   // 1 = No OFF2 effective
      reserved_Bit05          AT %X1.5 : Bool;   // Reserved
      switchingOnInhibited    AT %X1.6 : Bool;   // 1 = Switching on inhibited
      alarmPresent            AT %X1.7 : Bool;   // 1 = Alarm present
   END_STRUCT;

END_TYPE

TYPE PDZSW1BM : STRUCT
      noSpeedDeviation                   AT %X0.0 : Bool;   // 1 = Speed setpoint - actual value deviation within tolerance t_off
      controlRequested                   AT %X0.1 : Bool;   // 1 = Control requested
      speedComparisonValusReachedExeeded AT %X0.2 : Bool;   // 1 = f or n comparison value reached/exceeded
      torqueLimitNotReached              AT %X0.3 : Bool;   // 1 = I, M, or P limit not reached
      openHoldingBrake                   AT %X0.4 : Bool;   // 1 = Open the holding brake
      reserved_Bit13                     AT %X0.5 : Bool;   // Reserved
      reserved_Bit14                     AT %X0.6 : Bool;   // Reserved
      reserved_Bit15                     AT %X0.7 : Bool;   // Reserved
      readyToSwitchOn                    AT %X1.0 : Bool;   // 1 = Ready for switching on
      readyToOperate                     AT %X1.1 : Bool;   // 1 = Ready for operation
      operationEnabled                   AT %X1.2 : Bool;   // 1 = Operation enabled
      faultPresent                       AT %X1.3 : Bool;   // 1 = Fault present
      noCoastDownActivated               AT %X1.4 : Bool;   // 1 = No coast down active (OFF2 inactive)
      noQuickStopActivated               AT %X1.5 : Bool;   // 1 = No quick stop active (OFF3 inactive)
      switchingOnInhibited               AT %X1.6 : Bool;   // 1 = Switching on inhibited active
      alarmPresent                       AT %X1.7 : Bool;   // 1 = Alarm present
   END_STRUCT;

END_TYPE

TYPE PDZSW2BM : STRUCT
      reserved_Bit08       AT %X0.0 : Bool;   // Reserved
      speedSetpointLimit   AT %X0.1 : Bool;   // 1 = Speed setpoint limited
      upperTorqueLimit     AT %X0.2 : Bool;   // 1 = Upper torque limit
      lowerTorqueLimit     AT %X0.3 : Bool;   // 1 = Lower torque limit
      encoderlessOperation AT %X0.4 : Bool;   // 1 = Encoderless operation due to fault
      ss1DelayTimeActive   AT %X0.5 : Bool;   // 1 = SS1 delay time active in the drive
      stoActive            AT %X0.6 : Bool;   // 1 = STO active in drive
      signOfLifeBit        AT %X0.7 : Bool;   // Controller slave sign-of-life Toggle bit
      reserved_Bit00       AT %X1.0 : Bool;   // Reserved
      reserved_Bit01       AT %X1.1 : Bool;   // Reserved
      reserved_Bit02       AT %X1.2 : Bool;   // Reserved
      reserved_Bit03       AT %X1.3 : Bool;   // Reserved
      reserved_Bit04       AT %X1.4 : Bool;   // Reserved
      alarmClassBit0       AT %X1.5 : Bool;   // 1 = Alarm class bit 0
      alarmClassBit1       AT %X1.6 : Bool;   // 1 = Alarm class bit 1
      reserved_Bit07       AT %X1.7 : Bool;   // Reserved
   END_STRUCT;

END_TYPE

TYPE PDMDIMOD : STRUCT
      reserved_Bit08  AT %X0.0 : Bool;   // Reserved
      reserved_Bit09  AT %X0.1 : Bool;   // Reserved
      reserved_Bit10  AT %X0.2 : Bool;   // Reserved
      reserved_Bit11  AT %X0.3 : Bool;   // Reserved
      reserved_Bit12  AT %X0.4 : Bool;   // Reserved
      reserved_Bit13  AT %X0.5 : Bool;   // Reserved
      reserved_Bit14  AT %X0.6 : Bool;   // Reserved
      reserved_Bit15  AT %X0.7 : Bool;   // Reserved
      absPosSelected  AT %X1.0 : Bool;   // 1 = Absolute positioning is selected;  0 = Relative positioning is selected
      posModeBit0     AT %X1.1 : Bool;   // Bit0: Absolute positioning mode
      posModeBit1     AT %X1.2 : Bool;   // Bit1: Absolute positioning mode
      reserved_Bit03  AT %X1.3 : Bool;   // Reserved
      reserved_Bit04  AT %X1.4 : Bool;   // Reserved
      reserved_Bit05  AT %X1.5 : Bool;   // Reserved
      reserved_Bit06  AT %X1.6 : Bool;   // Reserved
      reserved_Bit07  AT %X1.7 : Bool;   // Reserved
   END_STRUCT;

END_TYPE

TYPE PDAktsatz : STRUCT
      reserved_Bit08          AT %X0.0 : Bool;   // Reserved
      reserved_Bit09          AT %X0.1 : Bool;   // Reserved
      reserved_Bit10          AT %X0.2 : Bool;   // Reserved
      reserved_Bit11          AT %X0.3 : Bool;   // Reserved
      reserved_Bit12          AT %X0.4 : Bool;   // Reserved
      reserved_Bit13          AT %X0.5 : Bool;   // Reserved
      reserved_Bit14          AT %X0.6 : Bool;   // Reserved
      activeMDI               AT %X0.7 : Bool;   // 1 = MDI active; 0 = MDI inactive
      activeTraversBlockBit0  AT %X1.0 : Bool;   // 1 = Active traversing block, bit 0
      activeTraversBlockBit1  AT %X1.1 : Bool;   // 1 = Active traversing block, bit 1
      activeTraversBlockBit2  AT %X1.2 : Bool;   // 1 = Active traversing block, bit 2
      activeTraversBlockBit3  AT %X1.3 : Bool;   // 1 = Active traversing block, bit 3
      activeTraversBlockBit4  AT %X1.4 : Bool;   // 1 = Active traversing block, bit 4
      activeTraversBlockBit5  AT %X1.5 : Bool;   // 1 = Active traversing block, bit 5
      reserved_Bit06          AT %X1.6 : Bool;   // Reserved
      reserved_Bit07          AT %X1.7 : Bool;   // Reserved
   END_STRUCT;

END_TYPE

TYPE PDCUZSW1 : STRUCT
      sync                   AT %X0.0 : Bool;   // 1 = System time synchronized (SYNC)
      noAlarmPresent         AT %X0.1 : Bool;   // 1 = No alarm present
      noFaultPresent         AT %X0.2 : Bool;   // 1 = No fault present
      noSafetyMessagePresent AT %X0.3 : Bool;   // 1 = No safety message present
      slaveSignOfLifeBit0    AT %X0.4 : Bool;   // Slave sign of life bit 0
      slaveSignOfLifeBit1    AT %X0.5 : Bool;   // Slave sign of life bit 1
      slaveSignOfLifeBit2    AT %X0.6 : Bool;   // Slave sign of life bit 2
      slaveSignOfLifeBit3    AT %X0.7 : Bool;   // Slave sign of life bit 3
      reserved_Bit00         AT %X1.0 : Bool;   // Reserved
      reserved_Bit01         AT %X1.1 : Bool;   // Reserved
      reserved_Bit02         AT %X1.2 : Bool;   // Reserved
      faultPresent           AT %X1.3 : Bool;   // 1 = Fault present
      reserved_Bit04         AT %X1.4 : Bool;   // Reserved
      reserved_Bit05         AT %X1.5 : Bool;   // Reserved
      reserved_Bit06         AT %X1.6 : Bool;   // Reserved
      alarmPresent           AT %X1.7 : Bool;   // 1 = Alarm present
   END_STRUCT;

END_TYPE

TYPE PDESTW1BM : STRUCT
      reserved_Bit08               AT %X0.0 : Bool;   // Reserved
      reserved_Bit09               AT %X0.1 : Bool;   // Reserved
      controlByPlc                 AT %X0.2 : Bool;   // 1 = Control by PLC
      reserved_Bit11               AT %X0.3 : Bool;   // Reserved
      reserved_Bit12               AT %X0.4 : Bool;   // Reserved
      reserved_Bit13               AT %X0.5 : Bool;   // Reserved
      reserved_Bit14               AT %X0.6 : Bool;   // Reserved
      controllerSignOfLifeBit      AT %X0.7 : Bool;   // Controller-sign-of-life Toggle bit
      off1                         AT %X1.0 : Bool;   // 0->1 = ON (close precharging/line contactor, pulses can be enabled); 0 = OFF1 (reduce Vdc along a ramp, suppress pulse and open precharging/line contactor)
      off2                         AT %X1.1 : Bool;   // 1 = No OFF2 (enable is possible); 0 = OFF2 (immediate pulse suppression and power-on inhibit)
      reserved_Bit02               AT %X1.2 : Bool;   // Reserved
      enableOperation              AT %X1.3 : Bool;   // 0 = Inhibit operation; 1 = Enable operation
      reserved_Bit04               AT %X1.4 : Bool;   // Reserved
      infeedInhibitMotoring        AT %X1.5 : Bool;   // 1 = Infeed, inhibit motoring
      infeedInhibitRegenOperation  AT %X1.6 : Bool;   // 1 = Infeed, inhibit regenerative operation
      faultAcknowledge             AT %X1.7 : Bool;   // Alarm / No Alarm Acknowledge
   END_STRUCT;

END_TYPE

TYPE PDSTW1Pos : STRUCT
      jog1SignalSource     AT %X0.0 : Bool;   // 1 = Jog 1 signal source
      jog2SignalSource     AT %X0.1 : Bool;   // 1 = Jog 2 signal source
      controlByPlc         AT %X0.2 : Bool;   // Drive controlled by PLC
      startHoming          AT %X0.3 : Bool;   // 1 = Start homing
      reserved_Bit12       AT %X0.4 : Bool;   // Reserved
      extBlockChange       AT %X0.5 : Bool;   // External block change
      reserved_Bit14       AT %X0.6 : Bool;   // Reserved
      reserved_Bit15       AT %X0.7 : Bool;   // Reserved
      SwitchOn             AT %X1.0 : Bool;   // Switch On / Off (OFF1)
      noCoastStop          AT %X1.1 : Bool;   // Activate / Deactivate Coast Stop (OFF2)
      noQuickStop          AT %X1.2 : Bool;   // Activate / Deactivate Quick Stop (OFF3)
      enableOperation      AT %X1.3 : Bool;   // Enable / Disable Operation
      noRejectTravTask     AT %X1.4 : Bool;   // 1 = Do not reject traversing task
      noIntermediateStop   AT %X1.5 : Bool;   // 1 = No intermediate stop
      actTravTask          AT %X1.6 : Bool;   // Activate traversing task
      faultAcknowledge     AT %X1.7 : Bool;   // Alarm / No Alarm Acknowledge
   END_STRUCT;

END_TYPE

TYPE PDSatzanw : STRUCT
      reserved_Bit08          AT %X0.0 : Bool;   // Reserved
      reserved_Bit09          AT %X0.1 : Bool;   // Reserved
      reserved_Bit10          AT %X0.2 : Bool;   // Reserved
      reserved_Bit11          AT %X0.3 : Bool;   // Reserved
      reserved_Bit12          AT %X0.4 : Bool;   // Reserved
      reserved_Bit13          AT %X0.5 : Bool;   // Reserved
      reserved_Bit14          AT %X0.6 : Bool;   // Reserved
      activateMDI             AT %X0.7 : Bool;   // 1 = Activate MDI; 0 = De-activate MDI; p2647 = r2091.15
      traversBlockSelectBit0  AT %X1.0 : Bool;   // 1 = Traversing block selection, bit 0; p2625 = r2091.0
      traversBlockSelectBit1  AT %X1.1 : Bool;   // 1 = Traversing block selection, bit 1; p2626 = r2091.1
      traversBlockSelectBit2  AT %X1.2 : Bool;   // 1 = Traversing block selection, bit 2; p2627 = r2091.2
      traversBlockSelectBit3  AT %X1.3 : Bool;   // 1 = Traversing block selection, bit 3; p2628 = r2091.3
      traversBlockSelectBit4  AT %X1.4 : Bool;   // 1 = Traversing block selection, bit 4; p2629 = r2091.4
      traversBlockSelectBit5  AT %X1.5 : Bool;   // 1 = Traversing block selection, bit 5; p2630 = r2091.5
      reserved_Bit06          AT %X1.6 : Bool;   // Reserved
      reserved_Bit07          AT %X1.7 : Bool;   // Reserved
   END_STRUCT;

END_TYPE

TYPE PDPOSSTW : STRUCT
      reserved_Bit08     AT %X0.0 : Bool;   // Reserved
      reserved_Bit09     AT %X0.1 : Bool;   // Reserved
      reserved_Bit10     AT %X0.2 : Bool;   // Reserved
      reserved_Bit11     AT %X0.3 : Bool;   // Reserved
      reserved_Bit12     AT %X0.4 : Bool;   // Reserved
      reserved_Bit13     AT %X0.5 : Bool;   // Reserved
      reserved_Bit14     AT %X0.6 : Bool;   // Reserved
      reserved_Bit15     AT %X0.7 : Bool;   // Reserved
      trackingModeActive AT %X1.0 : Bool;   // 1 = Tracking mode active; 0 = No tracking mode active
      setHomePos         AT %X1.1 : Bool;   // 1 = Set home position; 0 = Do not set home position
      referenceCamActive AT %X1.2 : Bool;   // 1 = Reference cam active
      reserved_Bit03     AT %X1.3 : Bool;   // Reserved
      reserved_Bit04     AT %X1.4 : Bool;   // Reserved
      joggingIncActive   AT %X1.5 : Bool;   // 1 = Jogging, incremental active;  0 = Jogging, velocity active
      reserved_Bit06     AT %X1.6 : Bool;   // Reserved
      reserved_Bit07     AT %X1.7 : Bool;   // Reserved
   END_STRUCT;

END_TYPE

TYPE PDPOSZSW : STRUCT
      camSwitchPos1             AT %X0.0 : Bool;   // 1 = Position actual value <= cam switching position 1
      camSwitchPos2             AT %X0.1 : Bool;   // 1 = Position actual value <= cam switching position 2
      directOut1TraversBlock    AT %X0.2 : Bool;   // 1 = Direct output 1 via traversing block
      directOut2TraversBlock    AT %X0.3 : Bool;   // 1 = Direct output 2 via traversing block
      fixStopReached            AT %X0.4 : Bool;   // 1 = Fixed stop reached
      fixStopClampTorqueReached AT %X0.5 : Bool;   // 1 = Fixed stop clamping torque reached
      travelToFixStopActive     AT %X0.6 : Bool;   // 1 = Travel to fixed stop active
      reserved_Bit15            AT %X0.7 : Bool;   // Reserved
      trackModeActive           AT %X1.0 : Bool;   // 1 = Tracking mode active
      velocityLimActive         AT %X1.1 : Bool;   // 1 = Velocity limiting active
      setpointAvailable         AT %X1.2 : Bool;   // 1 = Setpoint available
      reserved_Bit03            AT %X1.3 : Bool;   // Reserved
      axisMovesForwards         AT %X1.4 : Bool;   // 1 = Axis moves forward
      axisMovesBackwards        AT %X1.5 : Bool;   // 1 = Axis moves backwards
      swLimSwitchMinusReached   AT %X1.6 : Bool;   // 1 = Software limit switch minus reached
      swLimSwitchPlusReached    AT %X1.7 : Bool;   // 1 = Software limit switch plus reached
   END_STRUCT;

END_TYPE

TYPE PDTel390Out : STRUCT
      CU_STW1    AT %B0 : PDCUSTW1;   // Control word 1, Control Unit 
      A_DIGITAL  AT %B2 : PDADigital;   // Digital output (16-bit)
   END_STRUCT;

END_TYPE

TYPE PDTel371In : STRUCT
      E_ZSW1_BM  AT %B0 : PDEZSW1BM;   // Status word 1 for Infeed, variant for BM (ALM, BLM, SLM)
      IAIST      AT %B2 : Word;   // Absolute actual current
      WARN_CODE  AT %B4 : Word;   // Alarm code
      FAULT_CODE AT %B6 : Word;   // Fault code
      userPZD5   AT %B8 : Word;   // Freely interconnectable
      userPZD6   AT %B10 : Word;   // Freely interconnectable
      userPZD7   AT %B12 : Word;   // Freely interconnectable
      userPZD8   AT %B14 : Word;   // Freely interconnectable
   END_STRUCT;

END_TYPE

TYPE PDTel390In : STRUCT
      CU_ZSW1    AT %B0 : PDCUZSW1;   // Status word 1 for Control Unit
      E_DIGITAL  AT %B2 : PDEDigital;   // Digital input (16 Bit)
   END_STRUCT;

END_TYPE

TYPE PDTel391In : STRUCT
      CU_ZSW1    AT %B0  : PDCUZSW1;   // Status word 1 for Control Unit
      E_DIGITAL  AT %B2  : PDEDigital;   // Digital input (16 Bit)
      MT_ZSW     AT %B4  : PDMTZSW;   // Measuring probe status word
      MT1_ZS_F   AT %B6  : Word;   // Measuring probe 1 measuring time falling edge
      MT1_ZS_S   AT %B8  : Word;   // Measuring probe 1 measuring time rising edge
      MT2_ZS_F   AT %B10 : Word;   // Measuring probe 2 measuring time falling edge
      MT2_ZS_S   AT %B12 : Word;   // Measuring probe 2 measuring time rising edge
   END_STRUCT;

END_TYPE

TYPE PDTel370Out : STRUCT
      E_STW1 AT %B0 : PDESTW1;   // Control word 1 for Active Infeed (ALM, SMART)
   END_STRUCT;

END_TYPE

TYPE PDTel391Out : STRUCT
      CU_STW1    AT %B0 : PDCUSTW1;   // Control word 1, Control Unit 
      A_DIGITAL  AT %B2 : PDADigital;   // Digital output (16-bit)
      MT_STW     AT %B4 : PDMTSTW;   // Measuring probe control word
   END_STRUCT;

END_TYPE

TYPE PDTel393Out : STRUCT
      CU_STW1      AT %B0  : PDCUSTW1;   // Control word 1, Control Unit 
      A_DIGITAL    AT %B2  : PDADigital;   // Digital output (16-bit)
      A_DIGITAL_1  AT %B4  : PDADigital1;   // Digital output (16-bit)
      MT_STW       AT %B6  : PDMTSTW;   // Measuring probe control word
   END_STRUCT;

END_TYPE

TYPE PDTel371Out : STRUCT
      E_STW1_BM  AT %B0 : PDESTW1BM;   // Control word 1, variant for BM
      userPZD2   AT %B2 : Word;   // Freely interconnectable
      userPZD3   AT %B4 : Word;   // Freely interconnectable
      userPZD4   AT %B6 : Word;   // Freely interconnectable
      userPZD5   AT %B8 : Word;   // Freely interconnectable
   END_STRUCT;

END_TYPE

TYPE PDTel370In : STRUCT
      E_ZSW1  AT %B0 : PDEZSW1;   // Status word 1 for Active Infeed
   END_STRUCT;

END_TYPE

TYPE PDTel392Out : STRUCT
      CU_STW1    AT %B0 : PDCUSTW1;   // Control word 1, Control Unit 
      A_DIGITAL  AT %B2 : PDADigital;   // Digital output (16-bit)
      MT_STW     AT %B4 : PDMTSTW;   // Measuring probe control word
   END_STRUCT;

END_TYPE

TYPE PDTel116Out : STRUCT
      STW1    AT %B0 : PD_STW1_611UMode;   // Control word 1
      NSOLL_B AT %B2 : DWord;   // Speed setpoint B (32-bit)
      STW2    AT %B6 : PD_STW2_611UMode;   // Control word 2
      MOMRED  AT %B8 : Word;   // Torque reduction
      G1_STW  AT %B10 : PD_Gx_STW;   // Encoder 1 control word
      G2_STW  AT %B12 : PD_Gx_STW;   // Encoder 2 control word
      XERR    AT %B14 : DWord;   // Position deviation
      KPC     AT %B18 : DWord;   // Position controller gain factor
   END_STRUCT;

END_TYPE

TYPE PDTel118In : STRUCT
      ZSW1        AT %B0  : PD_ZSW1_611UMode;   // Status word 1
      NIST_B      AT %B2  : DWord;   // Speed setpoint B (32 bit)
      ZSW2        AT %B6  : PD_ZSW2_611UMode;   // Status word 2
      MELDW       AT %B8  : PD_MELDW;   // Message word
      G2_ZSW      AT %B10 : PD_Gx_ZSW;   // Encoder 2 status word
      G2_XIST1    AT %B12 : DWord;   // Encoder 2 actual position 1
      G2_XIST2    AT %B16 : DWord;   // Encoder 2 actual position 2
      G3_ZSW      AT %B20 : PD_Gx_ZSW;   // Encoder 3 status word
      G3_XIST1    AT %B22 : DWord;   // Encoder 3 actual position 1
      G3_XIST2    AT %B26 : DWord;   // Encoder 3 actual position 2
      AIST_GLATT  AT %B30 : Word;   // Torque utilization smoothed
      MSOLL_GLATT AT %B32 : Word;   // Actual Torque setpoint smoothed
      PIST_GLATT  AT %B34 : Word;   // Power factor, smoothed
      ITIST_GLATT AT %B36 : Word;   // Current actual value, torque-generating
   END_STRUCT;

END_TYPE

TYPE PDTel118Out : STRUCT
      STW1       AT %B0  : PD_STW1_611UMode;   // Control word 1
      NSOLL_B    AT %B2  : DWord;   // Speed setpoint B (32-bit)
      STW2       AT %B6  : PD_STW2_611UMode;   // Control word 2
      MOMRED     AT %B8  : Word;   // Torque reduction
      G2_STW     AT %B10 : PD_Gx_STW;   // Encoder 2 control word
      G3_STW     AT %B12 : PD_Gx_STW;   // Encoder 3 control word
      XERR       AT %B14 : DWord;   // Position deviation
      KPC        AT %B18 : DWord;   // Position controller gain factor
   END_STRUCT;

END_TYPE

TYPE PDTel125In : STRUCT
      ZSW1     AT %B0  : PD_ZSW1_611UMode;   // Status word 1
      NIST_B   AT %B2  : DWord;   // Speed setpoint B (32 bit)
      ZSW2     AT %B6  : PD_ZSW2_611UMode;   // Status word 2
      MELDW    AT %B8  : PD_MELDW;   // Message word
      G1_ZSW   AT %B10 : PD_Gx_ZSW;   // Encoder 1 status word
      G1_XIST1 AT %B12 : DWord;   // Encoder 1 actual position 1
      G1_XIST2 AT %B16 : DWord;   // Encoder 1 actual position 2
   END_STRUCT;

END_TYPE

TYPE PDTel125Out : STRUCT
      STW1     AT %B0  : PD_STW1_611UMode;   // Control word 1
      NSOLL_B  AT %B2  : DWord;   // Speed setpoint B (32-bit)
      STW2     AT %B6  : PD_STW2_611UMode;   // Control word 2
      MOMRED   AT %B8  : Word;   // Torque reduction
      G1_STW   AT %B10 : PD_Gx_STW;   // Encoder 1 control word
      XERR     AT %B12 : DWord;   // Position deviation
      KPC      AT %B16 : DWord;   // Position controller gain factor
      M_VST    AT %B20 : Word;   // Torque pre-control value
      DSC_STW  AT %B22 : Word;   // DSC control word
      res      AT %B24 : Word;   // Reserved
      T_SYMM   AT %B26 : Word;   // DSC Symmetrizing time constant
   END_STRUCT;

END_TYPE

TYPE PDTel126In : STRUCT
      ZSW1     AT %B0  : PD_ZSW1_611UMode;   // Status word 1
      NIST_B   AT %B2  : DWord;   // Speed setpoint B (32 bit)
      ZSW2     AT %B6  : PD_ZSW2_611UMode;   // Status word 2
      MELDW    AT %B8  : PD_MELDW;   // Message word
      G1_ZSW   AT %B10 : PD_Gx_ZSW;   // Encoder 1 status word
      G1_XIST1 AT %B12 : DWord;   // Encoder 1 actual position 1
      G1_XIST2 AT %B16 : DWord;   // Encoder 1 actual position 2
      G2_ZSW   AT %B20 : PD_Gx_ZSW;   // Encoder 2 status word
      G2_XIST1 AT %B22 : DWord;   // Encoder 2 actual position 1
      G2_XIST2 AT %B26 : DWord;   // Encoder 2 actual position 2
   END_STRUCT;

END_TYPE

TYPE PDTel126Out : STRUCT
      STW1    AT %B0  : PD_STW1_611UMode;   // Control word 1
      NSOLL_B AT %B2  : DWord;   // Speed setpoint B (32-bit)
      STW2    AT %B6  : PD_STW2_611UMode;   // Control word 2
      MOMRED  AT %B8  : Word;   // Torque reduction
      G1_STW  AT %B10 : PD_Gx_STW;   // Encoder 1 control word
      G2_STW  AT %B12 : PD_Gx_STW;   // Encoder 2 control word
      XERR    AT %B14 : DWord;   // Position deviation
      KPC     AT %B18 : DWord;   // Position controller gain factor
      M_VST   AT %B22 : Word;   // Torque pre-control value
      DSC_STW AT %B24 : Word;   // DSC control word
      res     AT %B26 : Word;   // Reserved
      T_SYMM  AT %B28 : Word;   // DSC Symmetrizing time constant
   END_STRUCT;

END_TYPE

TYPE PDTel136In : STRUCT
      ZSW1         AT %B0  : PD_ZSW1_611UMode;   // Status word 1
      NIST_B       AT %B2  : DWord;   // Speed setpoint B (32 bit)
      ZSW2         AT %B6  : PD_ZSW2_611UMode;   // Status word 2
      MELDW        AT %B8  : PD_MELDW;   // Message word
      G1_ZSW       AT %B10 : PD_Gx_ZSW;   // Encoder 1 status word
      G1_XIST1     AT %B12 : DWord;   // Encoder 1 actual position 1
      G1_XIST2     AT %B16 : DWord;   // Encoder 1 actual position 2
      G2_ZSW       AT %B20 : PD_Gx_ZSW;   // Encoder 2 status word
      G2_XIST1     AT %B22 : DWord;   // Encoder 2 actual position 1
      G2_XIST2     AT %B26 : DWord;   // Encoder 2 actual position 2
      AIST_GLATT   AT %B30 : Word;   // Torque utilization smoothed
      MSOLL_GLATT  AT %B32 : Word;   // Actual Torque setpoint smoothed
      PIST_GLATT   AT %B34  : Word;   // Power factor, smoothed
      ITIST_GLATT  AT %B36  : Word;   // Current actual value, torque-generating
   END_STRUCT;

END_TYPE

TYPE PDTel392In : STRUCT
      CU_ZSW1  AT %B0  : PDCUZSW1;   // Status word 1 for Control Unit
      E_DIGITA AT %B2  : PDEDigital;   // Digital input (16 Bit)
      MT_ZSW   AT %B4  : PDMTZSW;   // Measuring probe status word
      MT1_ZS_F AT %B6  : Word;   // Measuring probe 1 measuring time falling edge
      MT1_ZS_S AT %B8  : Word;   // Measuring probe 1 measuring time rising edge
      MT2_ZS_F AT %B10 : Word;   // Measuring probe 2 measuring time falling edge
      MT2_ZS_S AT %B12 : Word;   // Measuring probe 2 measuring time rising edge
      MT3_ZS_F AT %B14 : Word;   // Measuring probe 3 measuring time falling edge
      MT3_ZS_S AT %B16 : Word;   // Measuring probe 3 measuring time rising edge
      MT4_ZS_F AT %B18 : Word;   // Measuring probe 4 measuring time falling edge
      MT4_ZS_S AT %B20 : Word;   // Measuring probe 4 measuring time rising edge
      MT5_ZS_F AT %B22 : Word;   // Measuring probe 5 measuring time falling edge
      MT5_ZS_S AT %B24 : Word;   // Measuring probe 5 measuring time rising edge
      MT6_ZS_F AT %B26 : Word;   // Measuring probe 6 measuring time falling edge
      MT6_ZS_S AT %B28 : Word;   // Measuring probe 6 measuring time rising edge
   END_STRUCT;

END_TYPE

TYPE PDTel350Out : STRUCT
      STW1     AT %B0 : PD_STW1;   // Control word 1
      NSOLL_A  AT %B2 : Word;   // Speed setpoint A (16-bit)
      M_LIM    AT %B4 : Word;   // Torque limit
      STW3     AT %B6 : PDSTW3;   // Control word 3
   END_STRUCT;

END_TYPE

TYPE PDTel136Out : STRUCT
      STW1     AT %B0  : PD_STW1_611UMode;   // Control word 1
      NSOLL_B  AT %B2  : DWord;   // Speed setpoint B (32-bit)
      STW2     AT %B6  : PD_STW2_611UMode;   // Control word 2
      MOMRED   AT %B8  : Word;   // Torque reduction
      G1_STW   AT %B10 : PD_Gx_STW;   // Encoder 1 control word
      G2_STW   AT %B12 : PD_Gx_STW;   // Encoder 2 control word
      XERR     AT %B14 : DWord;   // Position deviation
      KPC      AT %B18 : DWord;   // Position controller gain factor
      M_VST    AT %B22 : Word;   // Torque pre-control value
      DSC_STW  AT %B24 : Word;   // DSC control word
      res      AT %B26 : Word;   // Reserved
      T_SYMM   AT %B28 : Word;   // DSC Symmetrizing time constant
   END_STRUCT;

END_TYPE

TYPE PDTel352In : STRUCT
      ZSW1          AT %B0  : PD_ZSW1;   // Status word 1
      NIST_A_GLATT  AT %B2  : Word;   // Actual speed, smoothed
      IAIST_GLATT   AT %B4  : Word;   // Absolute actual current, smoothed
      MIST_GLATT    AT %B6  : Word;   // Actual torque smoothed
      WARN_CODE     AT %B8  : Word;   // Alarm code
      FAULT_CODE    AT %B10 : Word;   // Fault code
   END_STRUCT;

END_TYPE

TYPE PDTel7In : STRUCT
      ZSW1    AT %B0 : PDZSW1Pos;   // Status word 1
      AKTSATZ AT %B2 : PDAktsatz;   // Pos selected block
   END_STRUCT;

END_TYPE

TYPE PDTel7Out : STRUCT
      STW1    AT %B0 : PDSTW1Pos;   // Control word 1
      SATZANW AT %B2 : PDSatzanw;   // Pos block selection
   END_STRUCT;

END_TYPE

TYPE PDTel352Out : STRUCT
      STW1     AT %B0  : PD_STW1;   // Control word 1
      NSOLL_A  AT %B2  : Word;   // Speed setpoint A (16-bit)
      userPZD3 AT %B4  : Word;   // Freely interconnectable
      userPZD4 AT %B6  : Word;   // Freely interconnectable
      userPZD5 AT %B8  : Word;   // Freely interconnectable
      userPZD6 AT %B10 : Word;   // Freely interconnectable
   END_STRUCT;

END_TYPE

TYPE PDTel394In : STRUCT
      CU_ZSW1      AT %B0  : PDCUZSW1;   // Status word 1 for Control Unit
      E_DIGITAL    AT %B2  : PDEDigital;   // Digital input (16 Bit)
      E_DIGITAL_1  AT %B4  : PDEDigital1;   // Digital input (16 Bit)
   END_STRUCT;

END_TYPE

TYPE PDTel138Out : STRUCT
      STW1       AT %B0  : PD_STW1_611UMode;   // Control word 1
      NSOLL_B    AT %B2  : DWord;   // Speed setpoint B (32-bit)
      STW2       AT %B6  : PD_STW2_611UMode;   // Control word 2
      MOMRED     AT %B8  : Word;   // Torque reduction
      G2_STW     AT %B10 : PD_Gx_STW;   // Encoder 2 control word
      G3_STW     AT %B12 : PD_Gx_STW;   // Encoder 3 control word
      XERR       AT %B14 : DWord;   // Position deviation
      KPC        AT %B18 : DWord;   // Position controller gain factor
      M_VST      AT %B22 : Word;   // Torque pre-control value
      DSC_STW    AT %B24 : Word;   // DSC control word
      res        AT %B26 : Word;   // Reserved
      T_SYMM     AT %B28 : Word;   // DSC Symmetrizing time constant
   END_STRUCT;

END_TYPE

TYPE PDTel393In : STRUCT
      CU_ZSW1     AT %B0    : PDCUZSW1;   // Status word 1 for Control Unit
      E_DIGITAL   AT %B2    : PDEDigital;   // Digital input (16 Bit)
      E_DIGITAL_1 AT %B4    : PDEDigital1;   // Digital input (16 Bit)
      MT_ZSW      AT %B6    : PDMTZSW;   // Measuring probe status word
      MT1_ZS_F    AT %B8    : Word;   // Measuring probe 1 measuring time falling edge
      MT1_ZS_S    AT %B10   : Word;   // Measuring probe 1 measuring time rising edge
      MT2_ZS_F    AT %B12   : Word;   // Measuring probe 2 measuring time falling edge
      MT2_ZS_S    AT %B14   : Word;   // Measuring probe 2 measuring time rising edge
      MT3_ZS_F    AT %B16   : Word;   // Measuring probe 3 measuring time falling edge
      MT3_ZS_S    AT %B18   : Word;   // Measuring probe 3 measuring time rising edge
      MT4_ZS_F    AT %B20   : Word;   // Measuring probe 4 measuring time falling edge
      MT4_ZS_S    AT %B22   : Word;   // Measuring probe 4 measuring time rising edge
      MT5_ZS_F    AT %B24   : Word;   // Measuring probe 5 measuring time falling edge
      MT5_ZS_S    AT %B26   : Word;   // Measuring probe 5 measuring time rising edge
      MT6_ZS_F    AT %B28   : Word;   // Measuring probe 6 measuring time falling edge
      MT6_ZS_S    AT %B30   : Word;   // Measuring probe 6 measuring time rising edge
      MT7_ZS_F    AT %B32   : Word;   // Measuring probe 7 measuring time falling edge
      MT7_ZS_S    AT %B34   : Word;   // Measuring probe 7 measuring time rising edge
      MT8_ZS_F    AT %B36   : Word;   // Measuring probe 8 measuring time falling edge
      MT8_ZS_S    AT %B38   : Word;   // Measuring probe 8 measuring time rising edge
      E_ANALOG    AT %B40   : Word;   // Analog inputs
   END_STRUCT;

END_TYPE

TYPE PDTel350In : STRUCT
      ZSW1         AT %B0 : PD_ZSW1;   // Status word 1
      NIST_A_GLATT AT %B2 : Word;   // Actual speed, smoothed
      IAIST_GLATT  AT %B4 : Word;   // Absolute actual current, smoothed
      ZSW3         AT %B6 : PDZSW3;   // Status word 3
   END_STRUCT;

END_TYPE

TYPE PDTel394Out : STRUCT
      CU_STW1     AT %B0 : PDCUSTW1;   // Control word 1, Control Unit 
      A_DIGITAL   AT %B2 : PDADigital;   // Digital output (16-bit)
      A_DIGITAL_1 AT %B4 : PDADigital1;   // Digital output (16-bit)
   END_STRUCT;

END_TYPE

TYPE PDTel860In : STRUCT
      G1_XIST1   AT %B0 : DWord;   // Sensor position actual value 1
      NIST_B     AT %B4 : DWord;   // Velocity value B
   END_STRUCT;

END_TYPE

TYPE PDTel139In : STRUCT
      ZSW1        AT %B0  : PD_ZSW1_611UMode;   // Status word 1
      NIST_B      AT %B2  : DWord;   // Speed setpoint B (32 bit)
      ZSW2        AT %B6  : PD_ZSW2_611UMode;   // Status word 2
      MELDW       AT %B8  : PD_MELDW;   // Message word
      G1_ZSW      AT %B10 : PD_Gx_ZSW;   // Encoder 1 status word
      G1_XIST1    AT %B12 : DWord;   // Encoder 1 actual position 1
      G1_XIST2    AT %B16 : DWord;   // Encoder 1 actual position 2
      SP_ZSW      AT %B20 : Word;   // Clamping System Status word
      SP_XIST_A   AT %B22 : Word;   // Clamping System: Position (analog actual value)
      SP_XIST_D   AT %B24 : Word;   // Clamping System: Position (digital measuring information value)
      SP_KONFIG   AT %B26 : Word;   // Clamping System: Sensor configuration
      res         AT %B28 : Word;   // Reserved
      AIST_GLATT  AT %B30 : Word;   // Torque utilization smoothed
      MSOLL_GLATT AT %B32 : Word;   // Actual Torque setpoint smoothed
      PIST_GLATT  AT %B34 : Word;   // Power factor, smoothed
      ITIST_GLATT AT %B36 : Word;   // Current actual value, torque-generating
   END_STRUCT;

END_TYPE

TYPE PDTel105In : STRUCT
      ZSW1       AT %B0   : PD_ZSW1_611UMode;
      NIST_B     AT %B2   : DWORD;
      ZSW2       AT %B6   : PD_ZSW2_611UMode;
      MELDW      AT %B8   : PD_MELDW;
      G1_ZSW     AT %B10  : PD_Gx_ZSW;
      G1_XIST1   AT %B12  : DWORD;
      G1_XIST2   AT %B16  : DWORD;
   END_STRUCT;

END_TYPE

TYPE PDTel105Out : STRUCT
      STW1    AT %B0   : PD_STW1_611UMode;
      NSOLL_B AT %B2   : DWORD;
      STW2    AT %B6   : PD_STW2_611UMode;
      MOMRED  AT %B8   : WORD;
      G1_STW  AT %B10  : PD_Gx_STW;
      XERR    AT %B12  : DWORD;
      KPC     AT %B16  : DWORD;
   END_STRUCT;

END_TYPE

TYPE PDTel110Out : STRUCT
      STW1          AT %B0  : PDSTW1Pos;   // Control word 1
      SATZANW       AT %B2  : PDSatzanw;   // Pos block selection
      POS_STW       AT %B4  : PDPOSSTW;   // Pos control word
      STW2          AT %B6  : PD_STW2;   // Control word 2
      VelOVERRIDE   AT %B8  : Word;   // Pos velocity override
      MDI_TARPOS    AT %B10 : DWord;   // MDI position
      MDI_VELOCITY  AT %B14 : DWord;   // MDI velocity
      MDI_ACC       AT %B18 : Word;   // MDI acceleration override
      MDI_DEC       AT %B20 : Word;   // MDI deceleration override
      MDI_MOD       AT %B22 : PDMDIMOD;   // MDI mode
   END_STRUCT;

END_TYPE

TYPE PDTel20In : STRUCT
      ZSW1          AT %B0  : PDZSW1VIK;   // Status word 1
      NIST_A_GLATT  AT %B2  : Word;   // Actual speed, smoothed
      IAIST_GLATT   AT %B4  : Word;   // Absolute actual current, smoothed
      MIST_GLATT    AT %B6  : Word;   // Actual torque smoothed
      PIST_GLATT    AT %B8  : Word;   // Power factor, smoothed
      MELD_NAMUR    AT %B10 : PDMeldNamur;   // VIK-NAMUR message bit bar
   END_STRUCT;

END_TYPE

TYPE PDTel20Out : STRUCT
      STW1    AT %B0 : PDSTW1VIK;   // Control word 1
      NSOLL_A AT %B2 : Word;   // Speed setpoint A (16-bit)
   END_STRUCT;

END_TYPE

TYPE PDTel110In : STRUCT
      ZSW1     AT %B0  : PDZSW1Pos;   // Status word 1
      AKTSATZ  AT %B2  : PDAktsatz;   // Pos selected block
      POS_ZSW  AT %B4  : PDPOSZSW;   // Pos status word
      ZSW2     AT %B6  : PD_ZSW2;   // Status word 2
      MELDW    AT %B8  : PD_MELDW;   // Message word
      XIST_A   AT %B10 : DWord;   // Position actual value A
   END_STRUCT;

END_TYPE

TYPE PDTel111In : STRUCT
      ZSW1       AT %B0  : PDZSW1Pos;   // Status word 1
      POS_ZSW1   AT %B2  : PDPOSZSW1;   // Pos status word 1
      POS_ZSW2   AT %B4  : PDPOSZSW2;   // Pos status word 2
      ZSW2       AT %B6  : PD_ZSW2;   // Status word 2
      MELDW      AT %B8  : PD_MELDW;   // Message word
      XIST_A     AT %B10 : DWord;   // Position actual value A
      NIST_B     AT %B14 : DWord;   // Speed setpoint B (32 bit)
      FAULT_CODE AT %B18 : Word;   // Fault code
      WARN_CODE  AT %B20 : Word;   // Alarm code
      userPZD12  AT %B22 : Word;   // Freely interconnectable.
   END_STRUCT;

END_TYPE

TYPE PDTel111Out : STRUCT
      STW1          AT %B0  : PDSTW1Pos;   // Control word 1
      POS_STW1      AT %B2  : PDPOSSTW1;   // Pos control word 1
      POS_STW2      AT %B4  : PDPOSSTW2;   // Pos control word 2
      STW2          AT %B6  : PD_STW2;   // Control word 2
      VelOVERRIDE   AT %B8  : Word;   // Pos velocity override
      MDI_TARPOS    AT %B10 : DWord;   // MDI position
      MDI_VELOCITY  AT %B14 : DWord;   // MDI velocity
      MDI_ACC       AT %B18 : Word;   // MDI acceleration override
      MDI_DEC       AT %B20 : Word;   // MDI deceleration override
      userPZD12     AT %B22 : Word;   // Freely interconnectable.
   END_STRUCT;

END_TYPE

TYPE PDTel166Out : STRUCT
      STW1       AT %B0 : PD_STW1_611UMode;   // Control word 1
      NSOLL_B    AT %B2 : DWord;   // Speed setpoint B (32-bit)
      STW2       AT %B6 : PD_STW2_611UMode;   // Control word 2
      MOMRED     AT %B8 : Word;   // Torque reduction
      G1_STW     AT %B10 : PD_Gx_STW;   // Encoder 1 control word
      G2_STW     AT %B12 : PD_Gx_STW;   // Encoder 2 control word
      XERR       AT %B14 : DWord;   // Position deviation
      KPC        AT %B18 : DWord;   // Position controller gain factor
      G1_MP      AT %B22 : DWord;   // Reference value machine position for piston calibration
      G1_MP_ZSW  AT %B26 : Word;   // Status machine position for piston calibration
   END_STRUCT;

END_TYPE

TYPE PDTel82Out : STRUCT
      STW2_ENC   AT %B0 : PD_STW2_ENC;   // Encoder control word
      G1_STW     AT %B2 : PD_Gx_STW;   // Sensor control word
   END_STRUCT;

END_TYPE

TYPE PDTel166In : STRUCT
      ZSW1          AT %B0  : PD_ZSW1;   // Status word 1
      NIST_B        AT %B2  : DWord;   // Speed setpoint B (32 bit)
      ZSW2          AT %B6  : PD_ZSW2_611UMode;   // Status word 2
      MELDW         AT %B8  : PD_MELDW;   // Message word
      G1_ZSW        AT %B10 : PD_Gx_ZSW;   // Encoder 1 status word
      G1_XIST1      AT %B12 : DWord;   // Encoder 1 actual position 1
      G1_XIST2      AT %B16 : DWord;   // Encoder 1 actual position 2
      G2_ZSW        AT %B20 : PD_Gx_ZSW;   // Encoder 2 status word
      G2_XIST1      AT %B22 : DWord;   // Encoder 2 actual position 1
      G2_XIST2      AT %B26 : DWord;   // Encoder 2 actual position 2
      VA_VALVELIFT  AT %B30 : Word;   // Valve spool value
      VA_TORQUE     AT %B32 : Word;   // Force actual value
      VA_POWER      AT %B34 : Word;   // Active power
      VA_PRESSURE_A AT %B36 : Word;   // Cylinder pressure A
      VA_PRESSURE_B AT %B38 : Word;   // Cylinder pressure B
   END_STRUCT;

END_TYPE

TYPE PDTel9In : STRUCT
      ZSW1    AT %B0 : PDZSW1Pos;   // Status word 1
      AKTSATZ AT %B2 : PDAktsatz;   // Pos selected block
      ZSW2    AT %B4 : PD_ZSW2;   // Status word 2
      XIST_A  AT %B6 : DWord;   // Position actual value A
   END_STRUCT;

END_TYPE

TYPE PDTel395In : STRUCT
      CU_ZSW1      AT %B0  : PDCUZSW1;   // Status word 1 for Control Unit
      E_DIGITAL    AT %B2  : PDEDigital;   // Digital input (16 Bit)
      E_DIGITAL_1  AT %B4  : PDEDigital1;   // Digital input (16 Bit)
      MT_ZSW       AT %B6  : PDMTZSW;   // Measuring probe status word
      MT_DIAG      AT %B8  : Word;   // Measuring probe (stage 3) diagnostics word
      MT_ZS_1      AT %B10  : Word;   // Measuring probe (stage 3) measuring time 1
      MT_ZS_2      AT %B12  : Word;   // Measuring probe (stage 3) measuring time 2
      MT_ZS_3      AT %B14  : Word;   // Measuring probe (stage 3) measuring time 3
      MT_ZS_4      AT %B16  : Word;   // Measuring probe (stage 3) measuring time 4
      MT_ZSB1      AT %B18  : Word;   // Measuring probe (stage 3) measuring time reference 1
      MT_ZS_5      AT %B20  : Word;   // Measuring probe (stage 3) measuring time 5
      MT_ZS_6      AT %B22  : Word;   // Measuring probe (stage 3) measuring time 6
      MT_ZS_7      AT %B24  : Word;   // Measuring probe (stage 3) measuring time 7
      MT_ZS_8      AT %B26  : Word;   // Measuring probe (stage 3) measuring time 8
      MT_ZSB2      AT %B28  : Word;   // Measuring probe (stage 3) measuring time reference 2
      MT_ZS_9      AT %B30  : Word;   // Measuring probe (stage 3) measuring time 9
      MT_ZS_10     AT %B32  : Word;   // Measuring probe (stage 3) measuring time 10
      MT_ZS_11     AT %B34  : Word;   // Measuring probe (stage 3) measuring time 11
      MT_ZS_12     AT %B36  : Word;   // Measuring probe (stage 3) measuring time 12
      MT_ZSB3      AT %B38  : Word;   // Measuring probe (stage 3) measuring time reference 3
      MT_ZS_13     AT %B40  : Word;   // Measuring probe (stage 3) measuring time 13
      MT_ZS_14     AT %B42  : Word;   // Measuring probe (stage 3) measuring time 14
      MT_ZS_15     AT %B44  : Word;   // Measuring probe (stage 3) measuring time 15
      MT_ZS_16     AT %B46  : Word;   // Measuring probe (stage 3) measuring time 16
      MT_ZSB4      AT %B48  : Word;   // Measuring probe (stage 3) measuring time reference 4
   END_STRUCT;

END_TYPE

TYPE PDTel84Out : STRUCT
      STW2_ENC  AT %B0  : PD_STW2_ENC;   // Encoder control word
      G1_STW    AT %B2  : PD_Gx_STW;   // Sensor control word
   END_STRUCT;

END_TYPE

TYPE PDTel82In : STRUCT
      ZSW2_ENC   AT %B0  : PD_ZSW2_ENC;   // Encoder status word
      G1_ZSW     AT %B2  : PD_Gx_ZSW;   // Sensor status word
      G1_XIST1   AT %B4  : DWord;   // Sensor position actual value 1
      G1_XIST2   AT %B8  : DWord;   // Sensor position actual value 2
      NIST_A     AT %B12 : Word;   // Velocity value A
   END_STRUCT;

END_TYPE

TYPE PDTel9Out : STRUCT
      STW1          AT %B0  : PDSTW1Pos;   // Control word 1
      SATZANW       AT %B2  : PDSatzanw;   // Pos block selection
      STW2          AT %B4  : PD_STW2;   // Control word 2
      MDI_TARPOS    AT %B6  : DWord;   // MDI position
      MDI_VELOCITY  AT %B10 : DWord;   // MDI velocity
      MDI_ACC       AT %B14 : Word;   // MDI acceleration override
      MDI_DEC       AT %B16 : Word;   // MDI deceleration override
      MDI_MOD       AT %B18 : PDMDIMOD;   // MDI mode specification
   END_STRUCT;

END_TYPE

TYPE PDTel396In : STRUCT
      CU_ZSW1       AT %B0  : PDCUZSW1;   // Status word 1 for Control Unit
      E_DIGITAL     AT %B2  : PDEDigital;   // Digital input (16 Bit)
      E_DIGITAL_1   AT %B4  : PDEDigital1;   // Digital input (16 Bit)
      MT_ZSW        AT %B6  : PDMTZSW;   // Measuring probe status word
      MT1_ZS_F      AT %B8  : Word;   // Measuring probe 1 measuring time falling edge
      MT1_ZS_S      AT %B10 : Word;   // Measuring probe 1 measuring time rising edge
      MT2_ZS_F      AT %B12 : Word;   // Measuring probe 2 measuring time falling edge
      MT2_ZS_S      AT %B14 : Word;   // Measuring probe 2 measuring time rising edge
      MT3_ZS_F      AT %B16 : Word;   // Measuring probe 3 measuring time falling edge
      MT3_ZS_S      AT %B18 : Word;   // Measuring probe 3 measuring time rising edge
      MT4_ZS_F      AT %B20 : Word;   // Measuring probe 4 measuring time falling edge
      MT4_ZS_S      AT %B22 : Word;   // Measuring probe 4 measuring time rising edge
      MT5_ZS_F      AT %B24 : Word;   // Measuring probe 5 measuring time falling edge
      MT5_ZS_S      AT %B26 : Word;   // Measuring probe 5 measuring time rising edge
      MT6_ZS_F      AT %B28 : Word;   // Measuring probe 6 measuring time falling edge
      MT6_ZS_S      AT %B30 : Word;   // Measuring probe 6 measuring time rising edge
      MT7_ZS_F      AT %B32 : Word;   // Measuring probe 7 measuring time falling edge
      MT7_ZS_S      AT %B34 : Word;   // Measuring probe 7 measuring time rising edge
      MT8_ZS_F      AT %B36 : Word;   // Measuring probe 8 measuring time falling edge
      MT8_ZS_S      AT %B38 : Word;   // Measuring probe 8 measuring time rising edge
      E_ANALOG      AT %B40 : Word;   // Analog inputs
   END_STRUCT;

END_TYPE

TYPE PDTel84In : STRUCT
      ZSW2_ENC   AT %B0 : PD_ZSW2_ENC;   // Encoder status word
      G1_ZSW     AT %B2 : PD_Gx_ZSW;   // Sensor status word
      G1_XIST3   AT %B4 : LWord;   // Sensor position actual value 3
      G1_XIST2   AT %B12 : DWord;   // Sensor position actual value 2
      NIST_B     AT %B16 : DWord;   // Velocity value B
   END_STRUCT;

END_TYPE

TYPE PDTel396Out : STRUCT
      CU_STW1       AT %B0  : PDCUSTW1;   // Control word 1, Control Unit 
      A_DIGITAL     AT %B2  : PDADigital;   // Digital output (16-bit)
      A_DIGITAL_1   AT %B4  : PDADigital1;   // Digital output (16 bit)
      MT_STW        AT %B6  : Word;   // Measuring probe control word
      NOCKEN1_ZS_F  AT %B8  : Word;   // Cam_0 switching instant for a falling edge
      NOCKEN1_ZS_S  AT %B10 : Word;   // Cam_0 switching instant for a rising edge
      NOCKEN2_ZS_F  AT %B12 : Word;   // Cam_1 switching instant for a falling edge
      NOCKEN2_ZS_S  AT %B14 : Word;   // Cam_1 switching instant for a rising edge
      NOCKEN3_ZS_F  AT %B16 : Word;   // Cam_2 switching instant for a falling edge
      NOCKEN3_ZS_S  AT %B18 : Word;   // Cam_2 switching instant for a rising edge
      NOCKEN4_ZS_F  AT %B20 : Word;   // Cam_3 switching instant for a falling edge
      NOCKEN4_ZS_S  AT %B22 : Word;   // Cam_3 switching instant for a rising edge
      NOCKEN5_ZS_F  AT %B24 : Word;   // Cam_4 switching instant for a falling edge
      NOCKEN5_ZS_S  AT %B26 : Word;   // Cam_4 switching instant for a rising edge
      NOCKEN6_ZS_F  AT %B28 : Word;   // Cam_5 switching instant for a falling edge
      NOCKEN6_ZS_S  AT %B30 : Word;   // Cam_5 switching instant for a rising edge
      NOCKEN7_ZS_F  AT %B32 : Word;   // Cam_6 switching instant for a falling edge
      NOCKEN7_ZS_S  AT %B34 : Word;   // Cam_6 switching instant for a rising edge
      NOCKEN8_ZS_F  AT %B36 : Word;   // Cam_7 switching instant for a falling edge
      NOCKEN8_ZS_S  AT %B38 : Word;   // Cam_7 switching instant for a rising edge
   END_STRUCT;

END_TYPE

TYPE PDTel139Out : STRUCT
      STW1       AT %B0  : PD_STW1_611UMode;   // Control word 1
      NSOLL_B    AT %B2  : DWord;   // Speed setpoint B (32-bit)
      STW2       AT %B6  : PD_STW2_611UMode;   // Control word 2
      MOMRED     AT %B8  : Word;   // Torque reduction
      G1_STW     AT %B10  : PD_Gx_STW;   // Encoder 1 control word
      res7       AT %B12 : Word;   // Reserved
      XERR       AT %B14 : DWord;   // Position deviation
      KPC        AT %B18 : DWord;   // Position controller gain factor
      M_VST      AT %B22 : Word;   // Torque pre-control value
      DSC_STW    AT %B24 : Word;   // DSC control word
      res14      AT %B26 : Word;   // Reserved
      T_SYMM     AT %B28 : Word;   // DSC Symmetrizing time constant
   END_STRUCT;

END_TYPE

TYPE PDTel138In : STRUCT
      ZSW1        AT %B0  : PD_ZSW1_611UMode;   // Status word 1
      NIST_B      AT %B2  : DWord;   // Speed setpoint B (32 bit)
      ZSW2        AT %B6  : PD_ZSW2_611UMode;   // Status word 2
      MELDW       AT %B8  : PD_MELDW;   // Message word
      G2_ZSW      AT %B10 : PD_Gx_ZSW;   // Encoder 2 status word
      G2_XIST1    AT %B12 : DWord;   // Encoder 2 actual position 1
      G2_XIST2    AT %B16 : DWord;   // Encoder 2 actual position 2
      G3_ZSW      AT %B20 : PD_Gx_ZSW;   // Encoder 3 status word
      G3_XIST1    AT %B22 : DWord;   // Encoder 3 actual position 1
      G3_XIST2    AT %B26 : DWord;   // Encoder 3 actual position 2
      AIST_GLATT  AT %B30 : Word;   // Torque utilization smoothed
      MSOLL_GLATT AT %B32 : Word;   // Actual Torque setpoint smoothed
      PIST_GLATT  AT %B34 : Word;   // Power factor, smoothed
      ITIST_GLATT AT %B36 : Word;   // Current actual value, torque-generating
   END_STRUCT;

END_TYPE

TYPE PDTel860Out : STRUCT
      G1_XIST_PRESET_A : DWord;   // Sensor position preset control word 32 bit
   END_STRUCT;

END_TYPE

TYPE PDTel395Out : STRUCT
      CU_STW1       AT %B0  : PDCUSTW1;   // Control word 1, Control Unit 
      A_DIGITAL     AT %B2  : PDADigital;   // Digital output (16-bit)
      A_DIGITAL_1   AT %B4  : PDADigital1;   // Digital output (16-bit)
      MT_STW        AT %B6  : PDMTSTW;   // Measuring probe control word
   END_STRUCT;

END_TYPE

TYPE PDTel220In : STRUCT
      ZSW1_BM             AT %B0  : PDZSW1BM;   // Status word 1, variant for BM
      NIST_A_NIST_A_GLATT AT %B2  : Word;   // Speed setpoint A (16 bit);  Values smoothed at VECTOR, Values unsmoothed at SERVO
      IAIST_IAIST_GLATT   AT %B4  : Word;   // Absolute actual current;  Values smoothed at VECTOR, Values unsmoothed at SERVO
      MIST_MIST_GLATT     AT %B6  : Word;   // Actual torque;  Values smoothed at VECTOR, Values unsmoothed at SERVO
      WARN_CODE           AT %B8  : Word;   // Alarm code
      FAULT_CODE          AT %B10 : Word;   // Fault code
      ZSW2_BM             AT %B12 : PDZSW2BM;   // Status word 2, variant for BM
      r1482_userPZD8      AT %B14 : Word;   // CO: Speed controll I-partl output; Freely interconnectable
      userPZD9            AT %B16 : Word;   // Freely interconnectable
      userPZD10           AT %B18 : Word;   // Freely interconnectable
   END_STRUCT;

END_TYPE

TYPE PDTel116In : STRUCT
      ZSW1        AT %B0  : PD_ZSW1_611UMode;   // Status word 1
      NIST_B      AT %B2  : DWord;   // Speed setpoint B (32 bit)
      ZSW2        AT %B6  : PD_ZSW2_611UMode;   // Status word 2
      MELDW       AT %B8  : PD_MELDW;   // Message word
      G1_ZSW      AT %B10 : PD_Gx_ZSW;   // Encoder 1 status word
      G1_XIST1    AT %B12 : DWord;   // Encoder 1 actual position 1
      G1_XIST2    AT %B16 : DWord;   // Encoder 1 actual position 2
      G2_ZSW      AT %B20 : PD_Gx_ZSW;   // Encoder 2 status word
      G2_XIST1    AT %B22 : DWord;   // Encoder 2 actual position 1
      G2_XIST2    AT %B26 : DWord;   // Encoder 2 actual position 2
      AIST_GLATT  AT %B30 : Word;   // Torque utilization smoothed
      MSOLL_GLATT AT %B32 : Word;   // Actual Torque setpoint smoothed
      PIST_GLATT  AT %B34 : Word;   // Power factor, smoothed
      ITIST_GLATT AT %B36 : Word;   // Current actual value, torque-generating
   END_STRUCT;

END_TYPE

TYPE PDTel220Out : STRUCT
      STW1_BM    AT %B0 : PDSTW1BM;   // Control word 1, variant for BM
      NSOLL_B    AT %B2 : DWord;   // Speed setpoint B (32-bit)
      STW2_BM    AT %B6 : PDSTW2BM;   // Control word 2, variant for BM
      M_ADD      AT %B8 : Word;   // Additional torque
      M_LIM      AT %B10 : Word;   // Torque limit
      userPZD7   AT %B12 : Word;   // Freely interconnectable.
      userPZD8   AT %B14 : Word;   // Freely interconnectable.
      userPZD9   AT %B16 : Word;   // Freely interconnectable.
      userPZD10  AT %B18 : Word;   // Freely interconnectable.
   END_STRUCT;

END_TYPE

   TYPE PD_Gx_STW : STRUCT
      Reserved_Bit08          AT %X0.0 : BOOL;       
      Reserved_Bit09          AT %X0.1 : BOOL;       
      Reserved_Bit10          AT %X0.2 : BOOL;       
      Reserved_Bit11          AT %X0.3 : BOOL;       
      Reserved_Bit12          AT %X0.4 : BOOL;       
      AbsoluteValueCyclically AT %X0.5 : BOOL;                
      RequestParkingEncoder   AT %X0.6 : BOOL;                
      AcknowledgeError        AT %X0.7 : BOOL;          
      Function1Request        AT %X1.0 : BOOL;          
      Function2Request        AT %X1.1 : BOOL;          
      Function3Request        AT %X1.2 : BOOL;          
      Function4Request        AT %X1.3 : BOOL;          
      Command0Request         AT %X1.4 : BOOL;          
      Command1Request         AT %X1.5 : BOOL;          
      Command2Request         AT %X1.6 : BOOL;          
      Mode                    AT %X1.7 : BOOL;

   END_STRUCT;

END_TYPE

TYPE PD_Gx_ZSW : STRUCT
   Probe1Deflected                 AT %X0.0 : BOOL;       
   Probe2Deflected                 AT %X0.1 : BOOL;       
   Reserved_Bit10                  AT %X0.2 : BOOL;       
   EncoderFaultAcknowledgeActive   AT %X0.3 : BOOL;       
   HomePositionExecuted            AT %X0.4 : BOOL;       
   AbsoluteValueCyclicallyExecuted AT %X0.5 : BOOL;                
   ParkingSensorExecuted           AT %X0.6 : BOOL;                
   SensorError                     AT %X0.7 : BOOL;          
   Function1Active                 AT %X1.0 : BOOL;          
   Function2Active                 AT %X1.1 : BOOL;          
   Function3Active                 AT %X1.2 : BOOL;          
   Function4Active                 AT %X1.3 : BOOL;          
   Value1Available                 AT %X1.4 : BOOL;          
   Value2Available                 AT %X1.5 : BOOL;          
   Value3Available                 AT %X1.6 : BOOL;          
   Value4Available                 AT %X1.7 : BOOL;

END_STRUCT;

END_TYPE

TYPE PD_MELDW : STRUCT
   SpeedTolerance             AT %X0.0 : BOOL;         
   Reserved_Bit09             AT %X0.1 : BOOL;         
   Reserved_Bit10             AT %X0.2 : BOOL;         
   ControllerEnable           AT %X0.3 : BOOL;            
   DriveReady                 AT %X0.4 : BOOL;      
   PulsesEnabled              AT %X0.5 : BOOL;                  
   Reserved_Bit14             AT %X0.6 : BOOL;                  
   Reserved_Bit15             AT %X0.7 : BOOL;            
   RampUpDownCompleted        AT %X1.0 : BOOL;                  
   TorqueUtilizationOk        AT %X1.1 : BOOL;                  
   ActSpeedValue3Ok           AT %X1.2 : BOOL;               
   ActSpeedValue2Ok           AT %X1.3 : BOOL;               
   Reserved_Bit04             AT %X1.4 : BOOL;            
   VariableFunctionality      AT %X1.5 : BOOL;                     
   NoWarningMotorTemperature  AT %X1.6 : BOOL;                        
   NoPowerUnitOvertemperature AT %X1.7 : BOOL;               

END_STRUCT;

END_TYPE

TYPE PD_STW1_611UMode : STRUCT
   Reserved_Bit08                 AT %X0.0 : BOOL;                    
   EnableESRReaction              AT %X0.1 : BOOL;                       
   ControlByPlc                   AT %X0.2 : BOOL;                    
   RampFunctionGeneratorActive    AT %X0.3 : BOOL;                                      
   OpenHoldingBrake               AT %X0.4 : BOOL;                    
   Reserved_Bit13                 AT %X0.5 : BOOL;                             
   ClosedLoopTorqueControl        AT %X0.6 : BOOL;                                      
   Reserved_Bit15                 AT %X0.7 : BOOL;                       
   SwitchOn                       AT %X1.0 : BOOL;                 
   NoCoastStop                    AT %X1.1 : BOOL;                          
   NoQuickStop                    AT %X1.2 : BOOL;                       
   EnableOperation                AT %X1.3 : BOOL;                             
   EnableRampGenerator            AT %X1.4 : BOOL;                             
   UnfreezeRampGenerator          AT %X1.5 : BOOL;                                         
   EnableSetpoint                 AT %X1.6 : BOOL;                                   
   FaultAcknowledge               AT %X1.7 : BOOL;                             

END_STRUCT;

END_TYPE

TYPE PD_STW2_611UMode : STRUCT
   TravelToFixedEndstop             AT %X0.0 : BOOL;                   
   DriveDataSetSelectionBit3        AT %X0.1 : BOOL;                            
   DriveDataSetSelectionBit4        AT %X0.2 : BOOL;                         
   MotorSwitchoverFinished          AT %X0.3 : BOOL;                                        
   MasterSignOfLifeBit0             AT %X0.4 : BOOL;                   
   MasterSignOfLifeBit1             AT %X0.5 : BOOL;                            
   MasterSignOfLifeBit2             AT %X0.6 : BOOL;                                     
   MasterSignOfLifeBit3             AT %X0.7 : BOOL;                      
   DriveDataSetSelectionBit0        AT %X1.0 : BOOL;                      
   DriveDataSetSelectionBit1        AT %X1.1 : BOOL;                               
   DriveDataSetSelectionBit2        AT %X1.2 : BOOL;                            
   Reserved_Bit03                   AT %X1.3 : BOOL;                      
   BypassRampFunctionGenerator      AT %X1.4 : BOOL;                                     
   Reserved_Bit05                   AT %X1.5 : BOOL;                                  
   IntegratorInhibit                AT %X1.6 : BOOL;                               
   ParkingAxisSelection             AT %X1.7 : BOOL;                            

END_STRUCT;

END_TYPE


TYPE PD_ZSW1_611UMode : STRUCT
   NoSpeedDeviation                    AT %X0.0 : BOOL;                
   ControlRequested                    AT %X0.1 : BOOL;                         
   SpeedComparisonValusReachedExeeded  AT %X0.2 : BOOL;                                        
   AlarmClassBit0                      AT %X0.3 : BOOL;                                  
   AlarmClassBit1                      AT %X0.4 : BOOL;             
   Reserved_Bit13                      AT %X0.5 : BOOL;                      
   ClosedLoopTorqueControlActive       AT %X0.6 : BOOL;                                              
   Reserved_Bit15                      AT %X0.7 : BOOL;                
   ReadyToSwitchOn                     AT %X1.0 : BOOL;                   
   ReadyToOperate                      AT %X1.1 : BOOL;                         
   OperationEnabled                    AT %X1.2 : BOOL;                         
   FaultPresent                        AT %X1.3 : BOOL;                
   NoCoastStopActivated                AT %X1.4 : BOOL;                                     
   NoQuickStopActivated                AT %X1.5 : BOOL;                                  
   SwitchingOnInhibited                AT %X1.6 : BOOL;                               
   AlarmPresent                        AT %X1.7 : BOOL;                      

END_STRUCT;

END_TYPE

TYPE PD_ZSW2_611UMode : STRUCT
   TravelToFixedEndStopActive    AT %X0.0 : BOOL;                    
   DriveDataSetEffectiveBit3     AT %X0.1 : BOOL;                             
   DriveDataSetEffectiveBit4     AT %X0.2 : BOOL;                                            
   MotorDataSetChangeoverActive  AT %X0.3 : BOOL;                                         
   SlaveSignOfLifeBit0           AT %X0.4 : BOOL;           
   SlaveSignOfLifeBit1           AT %X0.5 : BOOL;                    
   SlaveSignOfLifeBit2           AT %X0.6 : BOOL;                                            
   SlaveSignOfLifeBit3           AT %X0.7 : BOOL;              
   DriveDataSetEffectiveBit0     AT %X1.0 : BOOL;                       
   DriveDataSetEffectiveBit1     AT %X1.1 : BOOL;                             
   DriveDataSetEffectiveBit2     AT %X1.2 : BOOL;                             
   Reserved_Bit03                AT %X1.3 : BOOL;        
   RampFunctionGeneratorInactive AT %X1.4 : BOOL;                                            
   OpenHoldingBrake              AT %X1.5 : BOOL;                             
   IntegratorInhibit             AT %X1.6 : BOOL;                          
   ParkingAxisActive             AT %X1.7 : BOOL;                 

END_STRUCT;

END_TYPE


TYPE PD_ZSW1 : STRUCT
   NoSpeedDeviation                   AT %X0.0 : BOOL;                          
   ControlRequested                   AT %X0.1 : BOOL;                                   
   SpeedComparisonValusReachedExeeded AT %X0.2 : BOOL;                                                                    
   TorqueLimitNotReached              AT %X0.3 : BOOL;                                                     
   OpenHoldingBrake                   AT %X0.4 : BOOL;                 
   NoMotorOvertemperature             AT %X0.5 : BOOL;                                
   ActualSpeedPositive                AT %X0.6 : BOOL;                                                     
   NoPowerUnitOvertemperature         AT %X0.7 : BOOL;                             
   ReadyToSwitchOn                    AT %X1.0 : BOOL;                             
   ReadyToOperate                     AT %X1.1 : BOOL;                                
   OperationEnabled                   AT %X1.2 : BOOL;                                   
   FaultPresent                       AT %X1.3 : BOOL;           
   NoCoastStopActivated               AT %X1.4 : BOOL;                                                     
   NoQuickStopActivated               AT %X1.5 : BOOL;                                      
   SwitchingOnInhibited               AT %X1.6 : BOOL;                                   
   AlarmPresent                       AT %X1.7 : BOOL;                    

END_STRUCT;

END_TYPE

TYPE PD_ZSW2 : STRUCT
   TravelToFixedEndStopActive    AT %X0.0 : BOOL;                              
   Reserved_Bit09                AT %X0.1 : BOOL;                           
   PulsesEnabled                 AT %X0.2 : BOOL;                                          
   MotorDataSetChangeoverActive  AT %X0.3 : BOOL;                                                      
   SlaveSignOfLifeBit0           AT %X0.4 : BOOL;               
   SlaveSignOfLifeBit1           AT %X0.5 : BOOL;                        
   SlaveSignOfLifeBit2           AT %X0.6 : BOOL;                                                
   SlaveSignOfLifeBit3           AT %X0.7 : BOOL;                  
   DriveDataSetEffectiveBit0     AT %X1.0 : BOOL;                                 
   DriveDataSetEffectiveBit1     AT %X1.1 : BOOL;                                       
   DriveDataSetEffectiveBit2     AT %X1.2 : BOOL;                                       
   DriveDataSetEffectiveBit3     AT %X1.3 : BOOL;                  
   DriveDataSetEffectiveBit4     AT %X1.4 : BOOL;                                                      
   AlarmClassBit0                AT %X1.5 : BOOL;                           
   AlarmClassBit1                AT %X1.6 : BOOL;                        
   ParkingAxisActive             AT %X1.7 : BOOL;                  

END_STRUCT;

END_TYPE

TYPE PD_ZSW2_ENC : STRUCT
   Reserved_Bit08    AT %X0.0 : BOOL;                            
   ControlRequested  AT %X0.1 : BOOL;                            
   Reserved_Bit10    AT %X0.2 : BOOL;                                        
   Reserved_Bit11    AT %X0.3 : BOOL;                                                    
   SlaveLifeSignBit0 AT %X0.4 : BOOL;                
   SlaveLifeSignBit1 AT %X0.5 : BOOL;                         
   SlaveLifeSignBit2 AT %X0.6 : BOOL;                                                 
   SlaveLifeSignBit3 AT %X0.7 : BOOL;                   
   Reserved_Bit00    AT %X1.0 : BOOL;                               
   Reserved_Bit01    AT %X1.1 : BOOL;                                     
   Reserved_Bit02    AT %X1.2 : BOOL;                                     
   FaultPresent      AT %X1.3 : BOOL;                
   Reserved_Bit04    AT %X1.4 : BOOL;                                                    
   Reserved_Bit05    AT %X1.5 : BOOL;                         
   Reserved_Bit06    AT %X1.6 : BOOL;                      
   AlarmPresent      AT %X1.7 : BOOL;                

END_STRUCT;

END_TYPE


TYPE PD_STW1 : STRUCT
   Reserved_Bit08                      AT %X0.0 : BOOL;                               
   Reserved_Bit09                      AT %X0.1 : BOOL;                                        
   ControlByPlc                        AT %X0.2 : BOOL;                                                       
   SetpointInversion                   AT %X0.3 : BOOL;                                                       
   OpenHoldingBrake                    AT %X0.4 : BOOL;                         
   RaiseMotorizedPotentiometerSetpoint AT %X0.5 : BOOL;                                                    
   LowerMotorizedPotentiometerSetpoint AT %X0.6 : BOOL;                                                                            
   Reserved_Bit15                      AT %X0.7 : BOOL;                         
   SwitchOn                            AT %X1.0 : BOOL;                            
   NoCoastStop                         AT %X1.1 : BOOL;                                     
   NoQuickStop                         AT %X1.2 : BOOL;                                     
   EnableOperation                     AT %X1.3 : BOOL;                      
   EnableRampGenerator                 AT %X1.4 : BOOL;                                                             
   UnfreezeRampGenerator               AT %X1.5 : BOOL;                                                 
   EnableSetpoint                      AT %X1.6 : BOOL;                                     
   FaultAcknowledge                    AT %X1.7 : BOOL;                               

END_STRUCT;

END_TYPE

TYPE PD_STW2 : STRUCT
   TravelToFixedEndstop      AT %X0.0 : BOOL;                         
   Reserved_Bit09            AT %X0.1 : BOOL;                            
   Reserved_Bit10            AT %X0.2 : BOOL;                                           
   MotorSwitchoverFinished   AT %X0.3 : BOOL;                                                 
   MasterSignOfLifeBit0      AT %X0.4 : BOOL;                
   MasterSignOfLifeBit1      AT %X0.5 : BOOL;                         
   MasterSignOfLifeBit2      AT %X0.6 : BOOL;                                                 
   MasterSignOfLifeBit3      AT %X0.7 : BOOL;                   
   DriveDataSetSelectionBit0 AT %X1.0 : BOOL;                                  
   DriveDataSetSelectionBit1 AT %X1.1 : BOOL;                                        
   DriveDataSetSelectionBit2 AT %X1.2 : BOOL;                                        
   DriveDataSetSelectionBit3 AT %X1.3 : BOOL;                   
   DriveDataSetSelectionBit4 AT %X1.4 : BOOL;                                                       
   Reserved_Bit05            AT %X1.5 : BOOL;                            
   Reserved_Bit06            AT %X1.6 : BOOL;                         
   ParkingAxisSelection      AT %X1.7 : BOOL;                      

END_STRUCT;

END_TYPE

TYPE PD_STW2_ENC : STRUCT
   Reserved_Bit08       AT %X0.0 : BOOL;                             
   Reserved_Bit09       AT %X0.1 : BOOL;                                
   ControlByPlc         AT %X0.2 : BOOL;                                               
   Reserved_Bit11       AT %X0.3 : BOOL;                                                     
   MasterSignOfLifeBit0 AT %X0.4 : BOOL;                          
   MasterSignOfLifeBit1 AT %X0.5 : BOOL;                                   
   MasterSignOfLifeBit2 AT %X0.6 : BOOL;                                                           
   MasterSignOfLifeBit3 AT %X0.7 : BOOL;                             
   Reserved_Bit00       AT %X1.0 : BOOL;                                      
   Reserved_Bit01       AT %X1.1 : BOOL;                                            
   Reserved_Bit02       AT %X1.2 : BOOL;                                            
   Reserved_Bit03       AT %X1.3 : BOOL;                       
   Reserved_Bit04       AT %X1.4 : BOOL;                                                           
   Reserved_Bit05       AT %X1.5 : BOOL;                                
   Reserved_Bit06       AT %X1.6 : BOOL;                             
   FaultAcknowledge     AT %X1.7 : BOOL;                             

END_STRUCT;

END_TYPE

END_NAMESPACE
