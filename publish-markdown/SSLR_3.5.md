# Electrical Subsystem {#SSLR_3.5.1 }

## Minimum Control Moment Gyroscopes <small>SSLR_3.5.2</small> {#SSLR_3.5.2 }

CORALS shall have at least four CMGs for attitude control.

*Parent links:* [SLR_3.5 Attitude Accuracy](SLR_3.html#SLR_3.5)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Inspection |


## Even CMG Count <small>SSLR_3.5.3</small> {#SSLR_3.5.3 }

CORALS shall have an even number of CMGs for attitude control.

*Parent links:* [SLR_3.5 Attitude Accuracy](SLR_3.html#SLR_3.5)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Inspection |


## CMG Spin Motors <small>SSLR_3.5.4</small> {#SSLR_3.5.4 }

Each CMG shall have a spin motor.

*Parent links:* [SLR_3.5 Attitude Accuracy](SLR_3.html#SLR_3.5)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Inspection |


## CMG Gimbal Motor <small>SSLR_3.5.5</small> {#SSLR_3.5.5 }

Each CMG shall have a gimbal motor.

*Parent links:* [SLR_3.5 Attitude Accuracy](SLR_3.html#SLR_3.5)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Inspection |


## Gimbal Motor Max Rate <small>SSLR_3.5.6</small> {#SSLR_3.5.6 }

Each CMG gimbal motor shall rotate at up to ±3 rad/s.

*Parent links:* [SLR_3.5 Attitude Accuracy](SLR_3.html#SLR_3.5)

| Attribute | Value |
| --------- | ----- |
| Metric | Max Gimbal Rate |
| Range | [-3, 3] rad/s |
| Verification | Demonstration |


## Vibration Isolation <small>SSLR_3.5.7</small> {#SSLR_3.5.7 }

The structural subsystem shall vibrationally isolate each of the CMGs from the rest of the testbed.

| Attribute | Value |
| --------- | ----- |
| Metric | Additional noise read by IMU |
| Range | 0-20 (degrees/hr)/sqrt(Hz) |
| Verification | Compare IMU noise when CMGs are spinning to when there are not spinning
 |


