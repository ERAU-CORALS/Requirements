# Communication and Control Subsystem {#SSLR_2.1.1 }

## Data Acquisition and Remote Telecommand Script <small>SSLR_2.1.2</small> {#SSLR_2.1.2 }

The Data Acquisition and Remote Telecommand Script (DARTS) shall be used to communicate with the testbed.

*Parent links:* [SLR_2.1 Telecommand Reception](SLR_2.html#SLR_2.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Inspection |


## DARTS-CORALS Telecommands {#SSLR_2.1.6 }

### DARTS Bluetooth Telecommand Tx <small>SSLR_2.1.7</small> {#SSLR_2.1.7 }

DARTS shall transmit telecommand packets to the testbed over Bluetooth.

*Parent links:* [SLR_2.1 Telecommand Reception](SLR_2.html#SLR_2.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Demonstration |


### DARTS Telecommand Protocol <small>SSLR_2.1.8</small> {#SSLR_2.1.8 }

DARTS shall transmit telecommand packets to the testbed using a standard communication protocol.

*Parent links:* [SLR_2.1 Telecommand Reception](SLR_2.html#SLR_2.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


### CORALS Bluetooth Telecommand Rx <small>SSLR_2.1.11</small> {#SSLR_2.1.11 }

The control software shall receive telecommand packets from DARTS over Bluetooth.

*Parent links:* [SLR_2.1 Telecommand Reception](SLR_2.html#SLR_2.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Demonstration |


### CORALS Telecommand Protocol Adherence <small>SSLR_2.1.12</small> {#SSLR_2.1.12 }

The control software shall process telecommands from DARTS if the packet structure and content is valid according to a standard communication protocol.

*Parent links:* [SLR_2.1 Telecommand Reception](SLR_2.html#SLR_2.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


## DARTS-CORALS Telemetry Requests {#SSLR_2.1.20 }

### DARTS Bluetooth Telemetry Request Tx <small>SSLR_2.1.16</small> {#SSLR_2.1.16 }

DARTS shall transmit telemetry request packets to the testbed over Bluetooth.

*Parent links:* [SLR_2.1 Telecommand Reception](SLR_2.html#SLR_2.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Demonstration |


### DARTS Telemetry Request Protocol <small>SSLR_2.1.17</small> {#SSLR_2.1.17 }

DARTS shall transmit telemetry request packets to the testbed using a standard communication protocol.

*Parent links:* [SLR_2.1 Telecommand Reception](SLR_2.html#SLR_2.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


### CORALS Bluetooth Telemetry Request Rx <small>SSLR_2.1.18</small> {#SSLR_2.1.18 }

The control software shall receive telemetry request packets from DARTS over Bluetooth.

*Parent links:* [SLR_2.1 Telecommand Reception](SLR_2.html#SLR_2.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Demonstration |


### CORALS Telemetry Request Protocol Adherence <small>SSLR_2.1.19</small> {#SSLR_2.1.19 }

The control software shall process telemetry requests from DARTS if the packet structure and content is valid according to a standard communication protocol.

*Parent links:* [SLR_2.1 Telecommand Reception](SLR_2.html#SLR_2.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


