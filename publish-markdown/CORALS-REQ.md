# Telemetry Data Stream <small>CORALS-REQ-001</small> {#CORALS-REQ-001 }

The testbed should continuously stream telemetry data wirelessly throughout its operation.


## Telecommands <small>CORALS-REQ-005</small> {#CORALS-REQ-005 }

The testbed shall store attitude telemetry data on the host computer.


### Data Acquisition and Remote Telecommand Script <small>CORALS-REQ-009</small> {#CORALS-REQ-009 }

The Data Acquisition and Remote Telecommand Script (DARTS) shall be used to communicate with the testbed.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Demonstration |


### DARTS Bluetooth Telecommand Tx <small>CORALS-REQ-010</small> {#CORALS-REQ-010 }

DARTS shall transmit telecommand packets to the testbed over Bluetooth.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Demonstration |


### DARTS Telecommand Protocol <small>CORALS-REQ-011</small> {#CORALS-REQ-011 }

DARTS shall transmit telecommand packets to the testbed using a well-defined communication protocol.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Inspection |


### CORALS Bluetooth Telecommand Rx <small>CORALS-REQ-012</small> {#CORALS-REQ-012 }

The control software shall receive telecommand packets from DARTS over Bluetooth.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Demonstration |


### CORALS Telecommand Protocol Adherence <small>CORALS-REQ-013</small> {#CORALS-REQ-013 }

The control software shall process telecommands from DARTS if the packet structure and content is valid according to a well-defined communication protocol.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Automated Test |


### DARTS Bluetooth Telemetry Request Tx <small>CORALS-REQ-014</small> {#CORALS-REQ-014 }

DARTS shall transmit telemetry request packets to the testbed over Bluetooth.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Demonstration |


### DARTS Telemetry Request Protocol <small>CORALS-REQ-015</small> {#CORALS-REQ-015 }

DARTS shall transmit telemetry request packets to the testbed using a well-defined communication protocol.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Inspection |


### CORALS Bluetooth Telemetry Request Rx <small>CORALS-REQ-016</small> {#CORALS-REQ-016 }

The control software shall receive telemetry request packets from DARTS over Bluetooth.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Demonstration |


### CORALS Telemetry Request Protocol Adherence <small>CORALS-REQ-017</small> {#CORALS-REQ-017 }

The control software shall process telemetry requests from DARTS if the packet structure and content is valid according to a well-defined communication protocol.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Automated Test |


## Telemetry <small>CORALS-REQ-006</small> {#CORALS-REQ-006 }


### DARTS Bluetooth Rx <small>CORALS-REQ-018</small> {#CORALS-REQ-018 }

DARTS shall receive telemetry response packets from the testbed over Bluetooth.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Demonstration |


### DARTS Telemetry Structure <small>CORALS-REQ-019</small> {#CORALS-REQ-019 }

DARTS shall process telemetry response packets from the testbed if the packet structure and content is valid according to a well-defined communication protocol.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Automated Test |


### CORALS Telemetry Tx <small>CORALS-REQ-020</small> {#CORALS-REQ-020 }

The control software shall transmit telemetry response packets from DARTS over Bluetooth.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Demonstration |


### CORALS Telemetry Structure <small>CORALS-REQ-021</small> {#CORALS-REQ-021 }

The control software shall transmit telemetry response packets to DARTS using a well-defined communication protocol.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Automated Test |


### Attitude Telemetry Packet Structure <small>CORALS-REQ-022</small> {#CORALS-REQ-022 }

The control software shall periodically transmit attitude state telemetry response packets from the testbed to DARTS.

| Attribute | Value |
| --------- | ----- |
| Metric | TBD |
| Range | TBD |
| Subsystem | Command and Control |
| Verification | Automated Test |


### Testbed Telemetry Packet Structure <small>CORALS-REQ-023</small> {#CORALS-REQ-023 }

The control software shall periodically transmit testbed state telemetry response packets from the testbed to DARTS.

| Attribute | Value |
| --------- | ----- |
| Metric | TBD |
| Range | TBD |
| Subsystem | Command and Control |
| Verification | Automated Test |


### IMU Roll <small>CORALS-REQ-024</small> {#CORALS-REQ-024 }

The IMU shall measure current testbed roll.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Electrical |
| Verification | Manual Test |


### IMU Pitch <small>CORALS-REQ-025</small> {#CORALS-REQ-025 }

The IMU shall measure current testbed pitch.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Electrical |
| Verification | Manual Test |


### IMU Yaw <small>CORALS-REQ-026</small> {#CORALS-REQ-026 }

The IMU shall measure current testbed yaw.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Electrical |
| Verification | Manual Test |


### IMU Angular Rate <small>CORALS-REQ-027</small> {#CORALS-REQ-027 }

The IMU shall measure current testbed angular rate.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Electrical |
| Verification | Manual Test |


### IMU Angular Acceleration <small>CORALS-REQ-028</small> {#CORALS-REQ-028 }

The IMU shall measure testbed angular acceleration.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Electrical |
| Verification | Manual Test |


## Data Storage <small>CORALS-REQ-007</small> {#CORALS-REQ-007 }


### Data Log File <small>CORALS-REQ-029</small> {#CORALS-REQ-029 }

DARTS shall initialize a new formatted attitude data file on session startup.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Demonstration |


### Telemetry Log File <small>CORALS-REQ-030</small> {#CORALS-REQ-030 }

DARTS shall initialize a telemetry/telecommand log file on session startup.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Demonstration |


### Telemetry Logging <small>CORALS-REQ-031</small> {#CORALS-REQ-031 }

DARTS shall write all received testbed attitude telemetry data to a formatted session data file.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Inspection |


### DARTS Telecommand Logging <small>CORALS-REQ-032</small> {#CORALS-REQ-032 }

DARTS shall write all transmitted telecommands and telemetry requests to a session telemetry/telecommand log file.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Inspection |


### DARTS Telemetry Logging <small>CORALS-REQ-033</small> {#CORALS-REQ-033 }

DARTS shall write all received telemetry responses to a session telemetry/telecommand log file.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Inspection |


# Range of Motion <small>CORALS-REQ-002</small> {#CORALS-REQ-002 }

The testbed should be capable of controlled movement in roll and yaw to ±180°, and in pitch to ±30°.


## Onboard Control System <small>CORALS-REQ-034</small> {#CORALS-REQ-034 }

The testbed shall have a common onboard control system.


### Battery Capacity <small>CORALS-REQ-040</small> {#CORALS-REQ-040 }

The EPS battery shall have a capacity of at least 2000mAh.

| Attribute | Value |
| --------- | ----- |
| Metric | Battery Capacity |
| Range | [2000, inf) mAh |
| Subsystem | Electrical |
| Verification | Manual Test |


### Primary Rail <small>CORALS-REQ-041</small> {#CORALS-REQ-041 }

The EPS shall have a primary (high current) rail.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Electrical |
| Verification | Inspection |


### Primary Rail Voltage <small>CORALS-REQ-043</small> {#CORALS-REQ-043 }

The EPS Primary Rail shall provide 6.0 V ± 0.1 V.

| Attribute | Value |
| --------- | ----- |
| Metric | Primary Rail Voltage |
| Range | [5.9, 6.1] V |
| Subsystem | Electrical |
| Verification | Automated Test |


### Primary Rail Startup Current <small>CORALS-REQ-044</small> {#CORALS-REQ-044 }

The EPS Primary Rail shall provide at least 2500 mA during CMG startup.

| Attribute | Value |
| --------- | ----- |
| Metric | Primary Rail Current |
| Range | [2500, inf) mA |
| Subsystem | Electrical |
| Verification | Automated Test |


### Primary Rail Typical Current <small>CORALS-REQ-045</small> {#CORALS-REQ-045 }

The EPS Primary Rail shall provide at most 500 mA during normal operation.

| Attribute | Value |
| --------- | ----- |
| Metric | Primary Rail Current |
| Range | [0, 500] mA |
| Subsystem | Electrical |
| Verification | Automated Test |


### Secondary Rail <small>CORALS-REQ-042</small> {#CORALS-REQ-042 }

The EPS shall have a secondary (low current) rail.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Electrical |
| Verification | Inspection |


### Secondary Rail Voltage <small>CORALS-REQ-046</small> {#CORALS-REQ-046 }

The EPS Secondary Rail shall provide 8.5 V ± 1.5 V.

| Attribute | Value |
| --------- | ----- |
| Metric | Secondary Rail Voltage |
| Range | [7, 10] V |
| Subsystem | Electrical |
| Verification | Automated Test |


### Secondary Rail Current <small>CORALS-REQ-047</small> {#CORALS-REQ-047 }

The EPS Secondary Rail shall provide at most 750 mA during normal operation.

| Attribute | Value |
| --------- | ----- |
| Metric | Secondary Rail Current |
| Range | [0, 750] mA |
| Subsystem | Electrical |
| Verification | Automated Test |


## Testbed Roll <small>CORALS-REQ-035</small> {#CORALS-REQ-035 }

The testbed shall be capable of roll to ±180°.

| Attribute | Value |
| --------- | ----- |
| Metric | Roll Range |
| Range | [-180°, 180°] |
| Verification | Automated Test |


## Testbed Pitch <small>CORALS-REQ-036</small> {#CORALS-REQ-036 }

The testbed shall be capable of pitch to ±30°.

| Attribute | Value |
| --------- | ----- |
| Metric | Pitch Range |
| Range | [-30°, 30°] |


### Software Pitch Monitoring <small>CORALS-REQ-048</small> {#CORALS-REQ-048 }

If current testbed pitch exceeds ±27°, CORALS Software shall transmit Pitch Warning telemetry messages.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Automated Test |


## Testbed Yaw <small>CORALS-REQ-037</small> {#CORALS-REQ-037 }

The testbed shall be capable of yaw to ±180°.

| Attribute | Value |
| --------- | ----- |
| Metric | Yaw Range |
| Range | [-180°, 180°] |


## Attitude Accuracy <small>CORALS-REQ-038</small> {#CORALS-REQ-038 }

The testbed shall be capable of attitude control within ±5°.

| Attribute | Value |
| --------- | ----- |
| Metric | Euler Angle Error |
| Range | [-5°, 5°] |
| Verification | Automated Test |


### Minimum Control Moment Gyroscopes <small>CORALS-REQ-049</small> {#CORALS-REQ-049 }

CORALS shall have at least four CMGs for attitude control.

| Attribute | Value |
| --------- | ----- |
| Metric | Gyroscope Count |
| Range | Boolean |
| Subsystem | Structures |
| Verification | Inspection |


### Even CMG Count <small>CORALS-REQ-050</small> {#CORALS-REQ-050 }

CORALS shall have an even number of CMGs for attitude control.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Electrical |
| Verification | Inspection |


### CMG Spin Motors <small>CORALS-REQ-051</small> {#CORALS-REQ-051 }

Each CMG shall have a spin motor.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Electrical |
| Verification | Inspection |


### CMG Gimbal Motor <small>CORALS-REQ-052</small> {#CORALS-REQ-052 }

Each CMG shall have a gimbal motor.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Electrical |
| Verification | Inspection |


### Gimbal Motor Max Rate <small>CORALS-REQ-053</small> {#CORALS-REQ-053 }

Each CMG gimbal motor shall rotate at up to ±3 rad/s.

| Attribute | Value |
| --------- | ----- |
| Metric | Gimbal Rate |
| Range | [-3, 3] rad/s |
| Subsystem | Electrical |
| Verification | Manual Test |


### Vibration Isolation <small>CORALS-REQ-054</small> {#CORALS-REQ-054 }

The structural subsystem shall vibrationally isolate each of the CMGs from the rest of the testbed.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Structures |
| Verification | Demonstration |


## Testbed Balance <small>CORALS-REQ-039</small> {#CORALS-REQ-039 }

The testbed shall operate with an imbalance torque less than 10E-3 Nm.

| Attribute | Value |
| --------- | ----- |
| Metric | Imbalance Torque |
| Range | [0, 10e-3] Nm |
| Subsystem | Structures |
| Verification | Manual Test |


### Balancing Masses <small>CORALS-REQ-055</small> {#CORALS-REQ-055 }

The Mass Balancing System shall have 3 counterweights.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Structures |
| Verification | Inspection |


### Mass Balance Adjustment <small>CORALS-REQ-056</small> {#CORALS-REQ-056 }

Each of the counterweights on CORALS shall have an adjustable position along an axis.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Structures |
| Verification | Demonstration |


# CMG Array <small>CORALS-REQ-003</small> {#CORALS-REQ-003 }

The testbed should use a Control Moment Gyroscope array that can escape gimbal lock.


## Roof Configuration <small>CORALS-REQ-057</small> {#CORALS-REQ-057 }

The testbed shall use a roof configuration CMG array.


### CMG Software Support <small>CORALS-REQ-060</small> {#CORALS-REQ-060 }

The control software shall support a dynamic number of CMGs.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Inspection |


### CMG Spin Motor Power Control <small>CORALS-REQ-061</small> {#CORALS-REQ-061 }

The control software shall support power toggle of a dynamic number of CMG spin motors.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Inspection |


### CMG Gimbal Motor Control <small>CORALS-REQ-062</small> {#CORALS-REQ-062 }

The control software shall support SPI control of a dynamic number of CMG gimbal motors.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Inspection |


### CMG Gimbal Position Tracking <small>CORALS-REQ-063</small> {#CORALS-REQ-063 }

The control software shall track the position of a dynamic number of CMG gimbal motors.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Inspection |


### CMG Mounting <small>CORALS-REQ-064</small> {#CORALS-REQ-064 }

The structural subsystem shall feature a structure capable of supporting at least four CMGs in a roof configuration.

| Attribute | Value |
| --------- | ----- |
| Metric | CMG Mount Points |
| Range | [4, inf) |
| Subsystem | Structures |
| Verification | Inspection |


## Singularity Detection <small>CORALS-REQ-058</small> {#CORALS-REQ-058 }

The testbed shall be capable of detecting a singular state.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Inspection |


## Singularity Halt <small>CORALS-REQ-059</small> {#CORALS-REQ-059 }

If a singularity state is detected, the testbed shall halt.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Command and Control |
| Verification | Demonstration |


# Pivot Point Endurance <small>CORALS-REQ-004</small> {#CORALS-REQ-004 }

The testbed should use a pivot point that is durable enough to operate the testbed for at least 1 hour before needing to be serviced or replaced.


## Air Bearing <small>CORALS-REQ-065</small> {#CORALS-REQ-065 }

The testbed shall use a spherical air bearing for controlled pivoting.

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Subsystem | Structures |
| Verification | Inspection |


