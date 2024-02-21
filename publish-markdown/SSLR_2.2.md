# Software Subsystem {#SSLR_2.2.1 }

## Telemetry Forwarding <small>SSLR_2.2.2</small> {#SSLR_2.2.2 }

CORALS **SHALL** use HDARS to forward CORALS telemetry to the SIMULINK simulation.

*Parent links:* [SLR_2.2 Telemetry Transmission](SLR_2.html#SLR_2.2)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Demonstration |


## HDARS Telemetry Response <small>SSLR_2.2.3</small> {#SSLR_2.2.3 }

CORALS **SHALL** use HDARS to respond to CORALS Testbed telecommands with telemetry responses as described in the CORALS Software Interface Design Document.

*Parent links:* [SLR_2.2 Telemetry Transmission](SLR_2.html#SLR_2.2)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | Test |
| Verification | Automated Test |


## HDARS-Simulink Communication {#SSLR_2.2.4 }

### HDARS IP Tx <small>SSLR_2.2.5</small> {#SSLR_2.2.5 }

HDARS **SHALL** transmit telemetry data to the SIMULINK simulation over IP:Port 127.0.0.1:4071.

*Parent links:* [SLR_2.2 Telemetry Transmission](SLR_2.html#SLR_2.2)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


### HDARS Data Structure <small>SSLR_2.2.6</small> {#SSLR_2.2.6 }

HDARS **SHALL** transmit telemetry data to the SIMULINK simulation as described in the CORALS Software Interface Design Document.

*Parent links:* [SLR_2.2 Telemetry Transmission](SLR_2.html#SLR_2.2)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


## CORALS-HDARS Communication {#SSLR_2.2.7 }

### HDARS Bluetooth Rx <small>SSLR_2.2.8</small> {#SSLR_2.2.8 }

HDARS **SHALL** receive telemetry packets from the CORALS Testbed over Bluetooth.

*Parent links:* [SLR_2.2 Telemetry Transmission](SLR_2.html#SLR_2.2)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


### HDARS Telemetry Structure <small>SSLR_2.2.9</small> {#SSLR_2.2.9 }

HDARS **SHALL** process telemetry packets from the CORALS Testbed if the command structure and content is valid as described in the CORALS Software Interface Design Document.

*Parent links:* [SLR_2.2 Telemetry Transmission](SLR_2.html#SLR_2.2)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


### HDARS Telecommand Rx <small>SSLR_2.2.10</small> {#SSLR_2.2.10 }

HDARS **SHALL** receive telecommand packets from the CORALS Testbed over Bluetooth.

*Parent links:* [SLR_2.2 Telemetry Transmission](SLR_2.html#SLR_2.2)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


### HDARS Telecommand Structure <small>SSLR_2.2.11</small> {#SSLR_2.2.11 }

HDARS **SHALL** process telecommand packets from the CORALS Testbed if the command structure and content is valid as described in the CORALS Software Interface Design Document.

*Parent links:* [SLR_2.2 Telemetry Transmission](SLR_2.html#SLR_2.2)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


## CORALS Reported Telemetry {#SSLR_2.2.12 }

### Attitude Telemetry Packet Structure <small>SSLR_2.2.13</small> {#SSLR_2.2.13 }

CORALS Software **SHALL** transmit attitude state telemetry packets from the CORALS Testbed to HDARS as described in the CORALS Software Interface Design Document.

*Parent links:* [SLR_2.2 Telemetry Transmission](SLR_2.html#SLR_2.2)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


### Attitude Telemetry Period <small>SSLR_2.2.15</small> {#SSLR_2.2.15 }

CORALS Software **SHALL** transmit an attitude state telemetry packet every 0.5s±0.1s.

*Parent links:* [SLR_2.2 Telemetry Transmission](SLR_2.html#SLR_2.2)

| Attribute | Value |
| --------- | ----- |
| Metric | Attitude Telemetry Period |
| Range | [0.4s, 0.6s] |
| Verification | Automated Test |


### Testbed Telemetry Packet Structure <small>SSLR_2.2.14</small> {#SSLR_2.2.14 }

CORALS Software SHALL transmit Testbed state telemetry packets from the CORALS Testbed to HDARS as described in the CORALS Software Interface Design Document.

*Parent links:* [SLR_2.2 Telemetry Transmission](SLR_2.html#SLR_2.2)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


### Testbed Telemetry Period <small>SSLR_2.2.16</small> {#SSLR_2.2.16 }

CORALS Software **SHALL** transmit an attitude state telemetry packet every 15s±2s.

*Parent links:* [SLR_2.2 Telemetry Transmission](SLR_2.html#SLR_2.2)

| Attribute | Value |
| --------- | ----- |
| Metric | Testbed Telemetry Period |
| Range | [13s, 17s] |
| Verification | Automated Test |


# Electrical Subsystem {#SSLR_2.2.17 }

## Inertial Measurement Unit (IMU) <small>SSLR_2.2.18</small> {#SSLR_2.2.18 }

CORALS **SHALL** have an Inertial Measurement Unit (IMU).

*Parent links:* [SLR_2.2 Telemetry Transmission](SLR_2.html#SLR_2.2)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Inspection |


## IMU Roll <small>SSLR_2.2.19</small> {#SSLR_2.2.19 }

The IMU **SHALL** measure current testbed roll.

*Parent links:* [SLR_2.2 Telemetry Transmission](SLR_2.html#SLR_2.2)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


## IMU Pitch <small>SSLR_2.2.20</small> {#SSLR_2.2.20 }

The IMU **SHALL** measure current testbed pitch.

*Parent links:* [SLR_2.2 Telemetry Transmission](SLR_2.html#SLR_2.2)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


## IMU Yaw <small>SSLR_2.2.21</small> {#SSLR_2.2.21 }

The IMU **SHALL** measure current testbed yaw.

*Parent links:* [SLR_2.2 Telemetry Transmission](SLR_2.html#SLR_2.2)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


## IMU Angular Rate <small>SSLR_2.2.22</small> {#SSLR_2.2.22 }

The IMU **SHALL** measure current testbed angular rate.

*Parent links:* [SLR_2.2 Telemetry Transmission](SLR_2.html#SLR_2.2)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


## IMU Angular Acceleration <small>SSLR_2.2.23</small> {#SSLR_2.2.23 }

The IMU **SHALL** measure testbed angular acceleration.

*Parent links:* [SLR_2.2 Telemetry Transmission](SLR_2.html#SLR_2.2)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


