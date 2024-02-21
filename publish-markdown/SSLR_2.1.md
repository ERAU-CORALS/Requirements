# Software Subsystem {#SSLR_2.1.1 }

## HDARS <small>SSLR_2.1.2</small> {#SSLR_2.1.2 }

CORALS **SHALL** use HDARS to covert SIMULINK commands to CORALS testbed telecommands.

*Parent links:* [SLR_2.1 Telecommand Reception](SLR_2.html#SLR_2.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Inspection |


## SIMULINK-HDARS Communication {#SSLR_2.1.3 }

### HDARS IP Rx <small>SSLR_2.1.4</small> {#SSLR_2.1.4 }

HDARS **SHALL** receive commands from the SIMULINK simulation on IP:Port 127.0.0.1:3920.

*Parent links:* [SLR_2.1 Telecommand Reception](SLR_2.html#SLR_2.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


### Simulink Command Structure <small>SSLR_2.1.5</small> {#SSLR_2.1.5 }

HDARS **SHALL** process commands from the SIMULINK simulation if the command structure and content is valid as described in the CORALS Software Interface Design Document

*Parent links:* [SLR_2.1 Telecommand Reception](SLR_2.html#SLR_2.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


## HDARS-CORALS Communicationa {#SSLR_2.1.6 }

### HDARS Bluetooth Tx <small>SSLR_2.1.7</small> {#SSLR_2.1.7 }

HDARS **SHALL** transmit telecommand packets to the CORALS Testbed over Bluetooth.

*Parent links:* [SLR_2.1 Telecommand Reception](SLR_2.html#SLR_2.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Demonstration |


### HDARS Telecommand Structure <small>SSLR_2.1.8</small> {#SSLR_2.1.8 }

HDARS **SHALL** transmit telecommand packets to the CORALS Testbed as described in the CORALS Software Interface Design Document.

*Parent links:* [SLR_2.1 Telecommand Reception](SLR_2.html#SLR_2.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


### HDARS Telemetry Response Tx <small>SSLR_2.1.9</small> {#SSLR_2.1.9 }

HDARS **SHALL** transmit telecommand response telemetry packets to the CORALS Testbed over Bluetooth.

*Parent links:* [SLR_2.1 Telecommand Reception](SLR_2.html#SLR_2.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


### HDARS Telemetry Response Structure <small>SSLR_2.1.10</small> {#SSLR_2.1.10 }

HDARS **SHALL** transmit telecommand response telemetry packets to the CORALS Testbed as described in the CORALS Software Interface Design Document.

*Parent links:* [SLR_2.1 Telecommand Reception](SLR_2.html#SLR_2.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


### CORALS Bluetooth Rx <small>SSLR_2.1.11</small> {#SSLR_2.1.11 }

CORALS **SHALL** receive telecommand packets from HDARS over Bluetooth.

*Parent links:* [SLR_2.1 Telecommand Reception](SLR_2.html#SLR_2.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


### CORALS Telecommand Structure <small>SSLR_2.1.12</small> {#SSLR_2.1.12 }

CORALS **SHALL** process commands from HDARS if the command structure and content is valid as described in the CORALS Software Interface Design Document.

*Parent links:* [SLR_2.1 Telecommand Reception](SLR_2.html#SLR_2.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


### CORALS Telemetry Response Rx <small>SSLR_2.1.13</small> {#SSLR_2.1.13 }

CORALS **SHALL** receive telemetry response packets from HDARS over Bluetooth.

*Parent links:* [SLR_2.1 Telecommand Reception](SLR_2.html#SLR_2.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


### CORALS Telemetry Response Structure <small>SSLR_2.1.14</small> {#SSLR_2.1.14 }

CORALS **SHALL** process telemetry response packets from HDARS if the command structure and content is valid as described in the CORALS Software Interface Design Document.

*Parent links:* [SLR_2.1 Telecommand Reception](SLR_2.html#SLR_2.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Automated Test |


## HDARS Command Interpretation <small>SSLR_2.1.15</small> {#SSLR_2.1.15 }

If HDARS received a command from the SIMULINK simulation, HDARS **SHALL** send the command as a telecommand packet formatted as described in the CORALS Software Interface Design Document.

*Parent links:* [SLR_2.1 Telecommand Reception](SLR_2.html#SLR_2.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Demonstration |


