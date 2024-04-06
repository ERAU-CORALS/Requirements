## Onboard Control System <small>SLR_3.1</small> {#SLR_3.1 }

The testbed shall have a common onboard control system.

*Parent links:* [OBJ-3 Range of Motion](OBJ.html#OBJ-3)

*Child links:* SSLR_3.1.2, [SSLR_3.1.3 Battery Capacity](SSLR_3.1.html#SSLR_3.1.3), [SSLR_3.1.4](SSLR_3.1.html#SSLR_3.1.4), [SSLR_3.1.5 Primary Rail](SSLR_3.1.html#SSLR_3.1.5), [SSLR_3.1.6 Secondary Rail](SSLR_3.1.html#SSLR_3.1.6), [SSLR_3.1.8 Primary Rail Voltage](SSLR_3.1.html#SSLR_3.1.8), [SSLR_3.1.9 Primary Rail Startup Current](SSLR_3.1.html#SSLR_3.1.9), [SSLR_3.1.10 Primary Rail Typical Current](SSLR_3.1.html#SSLR_3.1.10), [SSLR_3.1.12 Secondary Rail Voltage](SSLR_3.1.html#SSLR_3.1.12), [SSLR_3.1.13 Secondary Rail Current](SSLR_3.1.html#SSLR_3.1.13)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Inspection |


## Testbed Roll <small>SLR_3.2</small> {#SLR_3.2 }

The testbed shall be capable of roll to ±180°.

*Parent links:* [OBJ-3 Range of Motion](OBJ.html#OBJ-3)

| Attribute | Value |
| --------- | ----- |
| Metric | Hardware Roll |
| Range | [-180°, 180°] |
| Verification | Automated Testing |


## Testbed Pitch <small>SLR_3.3</small> {#SLR_3.3 }

The testbed shall be capable of pitch to ±30°.

*Parent links:* [OBJ-3 Range of Motion](OBJ.html#OBJ-3)

*Child links:* [SSLR_3.3.2 Software Pitch Monitoring](SSLR_3.3.html#SSLR_3.3.2)

| Attribute | Value |
| --------- | ----- |
| Metric | Hardware Pitch |
| Range | [-30°, 30°] |
| Verification | Automated Testing |


## Testbed Yaw <small>SLR_3.4</small> {#SLR_3.4 }

The testbed shall be capable of yaw to ±180°.

*Parent links:* [OBJ-3 Range of Motion](OBJ.html#OBJ-3)

| Attribute | Value |
| --------- | ----- |
| Metric | Hardware Yaw |
| Range | [-180°, 180°] |
| Verification | Automated Testing |


## Attitude Accuracy <small>SLR_3.5</small> {#SLR_3.5 }

CORALS **SHALL** be capable of attitude control within ±5°.

*Parent links:* [OBJ-3 Range of Motion](OBJ.html#OBJ-3)

*Child links:* [SSLR_3.5.2 Minimum Control Moment Gyroscopes](SSLR_3.5.html#SSLR_3.5.2), [SSLR_3.5.3 Even CMG Count](SSLR_3.5.html#SSLR_3.5.3), [SSLR_3.5.4 CMG Spin Motors](SSLR_3.5.html#SSLR_3.5.4), [SSLR_3.5.5 CMG Gimbal Motor](SSLR_3.5.html#SSLR_3.5.5), [SSLR_3.5.6 Gimbal Motor Max Rate](SSLR_3.5.html#SSLR_3.5.6)

| Attribute | Value |
| --------- | ----- |
| Metric | Attitude Control Accuracy |
| Range | [-5°, 5°] |
| Verification | Automated Test |


## Testbed Balance <small>SLR_3.6</small> {#SLR_3.6 }

The testbed shall operate with an imbalance torque less than 10E-6 Nm.

*Parent links:* [OBJ-3 Range of Motion](OBJ.html#OBJ-3)

*Child links:* SSLR_3.6.2, [SSLR_3.6.3 Balancing Masses](SSLR_3.6.html#SSLR_3.6.3), [SSLR_3.6.4 Mass Balance Adjustment](SSLR_3.6.html#SSLR_3.6.4)

| Attribute | Value |
| --------- | ----- |
| Metric | Imbalance Torque |
| Range | [0 Nm, 10E-6 Nm] |
| Verification | Manual Test |


