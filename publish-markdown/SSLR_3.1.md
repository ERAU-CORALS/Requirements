# Electrical Subsystem {#SSLR_3.1.1 }

## Battery Capacity <small>SSLR_3.1.3</small> {#SSLR_3.1.3 }

The EPS battery shall have a capacity of at least 2000mAh.

*Parent links:* [SLR_3.1 Onboard Control System](SLR_3.html#SLR_3.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Capacity |
| Range | [2000, inf) mAh |
| Verification | Manual Test |


## Electrical Power Rails {#SSLR_3.1.4 }

### Primary Rail <small>SSLR_3.1.5</small> {#SSLR_3.1.5 }

The EPS shall have a primary (high current) rail.

*Parent links:* [SLR_3.1 Onboard Control System](SLR_3.html#SLR_3.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Inspection |


### Secondary Rail <small>SSLR_3.1.6</small> {#SSLR_3.1.6 }

The EPS shall have a secondary (low current) rail.

*Parent links:* [SLR_3.1 Onboard Control System](SLR_3.html#SLR_3.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Boolean |
| Range | True |
| Verification | Inspection |


### EPS Primary Rail {#SSLR_3.1.7 }

#### Primary Rail Voltage <small>SSLR_3.1.8</small> {#SSLR_3.1.8 }

The EPS Primary Rail shall provide 6.0 V ± 0.1 V.

*Parent links:* [SLR_3.1 Onboard Control System](SLR_3.html#SLR_3.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Primary Rail Voltage |
| Range | [5.9, 6.1] V |
| Verification | Automated Test |


#### Primary Rail Startup Current <small>SSLR_3.1.9</small> {#SSLR_3.1.9 }

The EPS Primary Rail shall provide at least 2500 mA during CMG startup.

*Parent links:* [SLR_3.1 Onboard Control System](SLR_3.html#SLR_3.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Primary Rail Current |
| Range | [2500, inf) mA |
| Verification | Automated Test |


#### Primary Rail Typical Current <small>SSLR_3.1.10</small> {#SSLR_3.1.10 }

The EPS Primary Rail shall provide at most 500 mA during normal operation.

*Parent links:* [SLR_3.1 Onboard Control System](SLR_3.html#SLR_3.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Primary Rail Current |
| Range | [0, 500] mA |
| Verification | Automated Test |


### EPS Secondary Rail {#SSLR_3.1.11 }

#### Secondary Rail Voltage <small>SSLR_3.1.12</small> {#SSLR_3.1.12 }

The EPS Secondary Rail shall provide 8.5 V ± 1.5 V.

*Parent links:* [SLR_3.1 Onboard Control System](SLR_3.html#SLR_3.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Secondary Rail Voltage |
| Range | [7, 10] V |
| Verification | Automated Test |


#### Secondary Rail Current <small>SSLR_3.1.13</small> {#SSLR_3.1.13 }

The EPS Secondary Rail shall provide at most 750 mA during normal operation.

*Parent links:* [SLR_3.1 Onboard Control System](SLR_3.html#SLR_3.1)

| Attribute | Value |
| --------- | ----- |
| Metric | Secondary Rail Current |
| Range | [0, 750] mA |
| Verification | Automated Test |


