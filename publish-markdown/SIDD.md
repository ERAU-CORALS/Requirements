# Introduction {#SIDD-001 }

The CORALS Software Interface Design document was developed by Team CORALS as a design standard and reference for the Software Communication Protocols used on the CORALS Testbed. It is meant to replace the need for requirements specifying the format and breadth of command/data transmission to and from the CORALS Testbed with the client, as the requirements were not derivable from the customer objectives; the customer did not stipulate a standard. This document will serve as a source of design truth for the CORALS Software Communication interfaces.

## Scope <small>SIDD-006</small> {#SIDD-006 }

This document contains the software interface design decisions for the CORALS Testbed Control Software and the Host Data Acquisition and Routing Script. This includes decisions on message format, parameters, keywords, valid ranges, and transmission rates.

## Background <small>SIDD-007</small> {#SIDD-007 }

TBC

# Related Documents {#SIDD-002 }

This document is related to the CORALS System Requirements Specification, and links will be made as necessary to the relevant System Level Requirements and Subsystem Level Requirements.

# General Command Structure {#SIDD-003 }

The CORALS Software and the Data Acquisition and Remote Telecommand Script (DARTS) will follow a common defined protocol for serial data transmission.

## Bluetooth Communication Protocol {#SIDD-008 }

DARTS and the CORALS Testbed communicate using a Bluetooth Serial connection. This means that loss is possible, and data could be corrupted in transmission. To detect and prevent this, the CORALS Testbed and HDARS will use a restricted, keyword-based communication protocol to minimize error passthrough.

### Message Format <small>SIDD-009</small> {#SIDD-009 }

The Bluetooth Serial Bus shall use the following communication format:

```
TARGET . LEN PACKET_TYPE, KEY VALUE, KEY VALUE ..., KEY VALUE . CRC32 0xABCDEF01
```

### Valid Targets (TARGET) <small>SIDD-010</small> {#SIDD-010 }

The Bluetooth Communication bus shall support two targets:

| Valid Targets |
| ------------- |
| DARTS         |
| CORALS        |

### Valid Length (LEN) <small>SIDD-011</small> {#SIDD-011 }

LEN shall be an unsigned integer decimal numeric value which accounts for the entire message length.

### CRC32 Checksum <small>SIDD-012</small> {#SIDD-012 }

The message shall be proofed by the CRC32 Checksum attached to the end of the message. The checksum will be unique for all messages less than 2^32 characters in length.

The checksum shall be run on all characters before the CRC32 Keyword.

The checksum shall be computed on both sides using the following algorithm:

```c
uint32_t crc32(const uint8_t *data, uint32_t length)
{
    uint32_t crc = 0xFFFFFFFF;

    for (uint32_t i = 0; i < length; ++i)
    {
        crc ^= data[i];
        for (uint8_t j = 0; j < 8; ++j)
        {
            uint32_t mask = -(crc & 1);
            crc = (crc >> 1) ^ (0xEDB88320 & mask);
        }
    }

    return crc;
}

```

### Telemetry and Telecommands <small>SIDD-013</small> {#SIDD-013 }

Considering format, there is little difference between Telemetry Requests, Telemetry Responses, and Telecommands. However, Telemetry Responses are always sent to the DARTS target. Telecommands and Telemetry Requests are always set to the CORALS Target. Telemetry Requests do not include values in their key value pairs; they only contain lists of keys for which they request values.

# Available Commands {#SIDD-004 }

There are commands available depending on the target selected. They are enumerated in this section:

## DARTS Telecommands <small>SIDD-014</small> {#SIDD-014 }

DARTS shall support the following telecommands:

* SET
* ECHO
* TARGET_ADD
* HALT
* SET_POWER
* SET_INERTIA
* SET_CONTROL
* SET_SINGULARITY
* SET_ERROR
* CLEAR_ERRORS

## DARTS Telemetry Requests <small>SIDD-015</small> {#SIDD-015 }

DARTS shall support the following telemetry requests:

* GET
* GET_TARGET
* GET_TARGETS
* GET_HALT
* GET_POWER
* GET_INERTIA
* GET_CONTROL
* GET_SINGULARITY
* GET_STATE
* GET_ATTITUDE
* GET_ERROR
* GET_ERRORS

## CORALS Telemetry Replies <small>SIDD-019</small> {#SIDD-019 }

CORALS shall support the following telemetry replies:

* REGISTER
* ECHO_REPLY
* CURRENT_TARGET
* TARGET_LIST
* HALT_STATE
* POWER_STATE
* INERTIA_MATRIX
* CONTROL_STATE
* SINGULARITY_STATE
* CORALS_STATE
* ATTITUDE
* ERROR_STATE

# Telecommand/Telemetry Details {#SIDD-005 }

## Telecommand/Telemetry Keywords <small>SIDD-016</small> {#SIDD-016 }

The valid keywords for CORALS communication are listed below with possible value pairs and packet coorelations.

*Note: All Keywords supported by SET, GET, and REGISTER*

| Keyword | Valid Values | Valid Packet Types |
| ------- | ------------ | ------------------ |
| ARGUMENT_ERROR | 'ON', 'OFF' | SET_ERROR, GET_ERROR, ERROR_STATE |
| COMM_LR | decimal frequency (Hz) | SET_CONTROL, GET_CONTROL, CONTROL_STATE |
| CONTROL_LR | decimal frequency (Hz) | SET_CONTROL, GET_CONTROL, CONTROL_STATE |
| ENABLE_OVERRIDE | 'ON', 'OFF' | SET_SINGULARITY, GET_SINGULARITY, SINGULARITY_STATE |
| GAIN11 | decimal | SET_CONTROL, GET_CONTROL, CONTROL_STATE |
| GAIN12 | decimal | SET_CONTROL, GET_CONTROL, CONTROL_STATE |
| GAIN13 | decimal | SET_CONTROL, GET_CONTROL, CONTROL_STATE |
| GAIN21 | decimal | SET_CONTROL, GET_CONTROL, CONTROL_STATE |
| GAIN22 | decimal | SET_CONTROL, GET_CONTROL, CONTROL_STATE |
| GAIN23 | decimal | SET_CONTROL, GET_CONTROL, CONTROL_STATE |
| GAIN31 | decimal | SET_CONTROL, GET_CONTROL, CONTROL_STATE |
| GAIN32 | decimal | SET_CONTROL, GET_CONTROL, CONTROL_STATE |
| GAIN33 | decimal | SET_CONTROL, GET_CONTROL, CONTROL_STATE |
| GM_MASTER_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| GM0_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| GM1_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| GM2_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| GM3_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| GM4_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| GM5_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| GM6_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| GM7_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| GM8_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| GM9_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| GMA_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| GMB_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| GMC_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| GMD_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| GME_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| GMF_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| HALT_STATUS | 'ACTIVE', 'INACTIVE' | HALT_STATE |
| Q0 | decimal [0, 1] | TARGET_ADD, GET_TARGET, CURRENT_TARGET |
| Q1 | decimal [0, 1] | TARGET_ADD, GET_TARGET, CURRENT_TARGET |
| Q2 | decimal [0, 1] | TARGET_ADD, GET_TARGET, CURRENT_TARGET |
| Q3 | decimal [0, 1] | TARGET_ADD, GET_TARGET, CURRENT_TARGET |
| Q4 | decimal [0, 1] | TARGET_ADD, GET_TARGET, CURRENT_TARGET |
| QUAT_DISAGREE_ERROR | 'ON', 'OFF' | SET_ERROR, GET_ERROR, ERROR_STATE |
| QUAT_FORMAT | 'Q0', 'Q4' | TARGET_ADD, GET_TARGET, CURRENT_TARGET |
| SINGULARITY_HALTING | 'ON', 'OFF' | SET_SINGULARITY, GET_SINGULARITY, SINGULARITY_STATE |
| SINGULARITY_OVERRIDE_ERROR | 'ON', 'OFF' | SET_ERROR, GET_ERROR, ERROR_STATE |
| SINGULARITY_THOLD | decimal [0, 1] | SET_SINGULARITY, GET_SINGULARITY, SINGULARITY_STATE |
| SINGULARITY_TRIP | 'SET', 'RESET' | SET_SINGULARITY, GET_SINGULARITY, SINGULARITY_STATE |
| SM_MASTER_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| SM0_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| SM1_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| SM2_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| SM3_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| SM4_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| SM5_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| SM6_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| SM7_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| SM8_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| SM9_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| SMA_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| SMB_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| SMC_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| SMD_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| SME_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| SMF_POWER | 'ON', 'OFF' | SET_POWER, GET_POWER, POWER_STATE |
| TARGET_NUM | integer | TARGET_LIST |

## Telecommand Details {#SIDD-017 }

### SET Telecommand <small>SIDD-018</small> {#SIDD-018 }

The SET Telecommand supports use of ALL keywords. The SET Telecommand requires one or more keywords to be valid. The SET Telecommand always prompts a REGISTER Telemetry Response to confirm the updated register values.

### ECHO Telecommand <small>SIDD-021</small> {#SIDD-021 }

The ECHO Telecommand does not support any keywords. The ECHO Telecommand always prompts an ECHO_REPLY Telemetry Response to confirm reception of the ECHO Telecommand. This Telecommand is intended for connection confirmation purposes.

### TARGET_ADD Telecommand <small>SIDD-022</small> {#SIDD-022 }

The TARGET_ADD Telecommand supports use of the Quaternion Telecommand keywords. It requires the Q1, Q2, and Q3 keywords. It also requires the Q0 keyword if the QUAT_FORMAT is Q0; otherwise, it also requires the Q4 keyword. If QUAT_FORMAT is unknown to the user, the user may elect to include the QUAT_FORMAT of the message. If QUAT_FORMAT is included, the TARGET_ADD Telecommand always prompts a REGISTER Telemetry response to confirm the updated register values. If the QUAT_FORMAT is not included, and if the registered QUAT_FORMAT disagrees with the arguments supplied, then the command is invalid, prompting an ERROR_STATE Telemetry Response with ARGUMENT_ERROR and QUAT_DISAGREE_ERROR set 'ON' and included. Otherwise, the TARGET_ADD Telecommand always prompts a CURRENT_TARGET Telemetry Response to confirm the current target.

*Note: The CORALS Testbed supports multiple stacked targets. Therefore, the TARGET_ADD CURRENT_TARGET Telemetry Response may not represent the commanded data if there are queued targets. It will always include the current target data.*

### HALT Telecommand <small>SIDD-023</small> {#SIDD-023 }

The HALT Telecommand does not support any keywords. The HALT Telecommand always prompts a HALT_STATE Telemetry Response to confirm the halt. The HALT Telecommand always causes motor master power off. Therefore, the HALT Telecommand prompts a POWER_STATE Telemetry Response including GM_MASTER_POWER and SM_MASTER_POWER to confirm CMG power discontinuity.

### SET_POWER Telecommand <small>SIDD-024</small> {#SIDD-024 }

The SET_POWER Telecommand supports use of the Power Control keywords. It requires inclusion of one or more keywords to be valid. The SET_POWER Telecommand always prompts a POWER_STATE Telemetry Response including the changed keywords.

### SET_INERTIA Telecommand <small>SIDD-025</small> {#SIDD-025 }

The SET_INERTIA Telecommand supports use of the Inertia keywords. The SET_INERTIA Telecommand always prompts a INERTIA_MATRIX Telemetry Response including the changed keywords.

### SET_CONTROL Telecommand <small>SIDD-026</small> {#SIDD-026 }

The SET_CONTROL Telecommand supports use of the CORALS Control Parameter keywords. It requires including of one or more loop rate keywords or all gain keywords to be valid (if a non-zero number of gain keywords are included, all gain keywords must be included regardless of loop rate keywords). The SET_CONTROL Telecommand always prompts a CONTROL_STATE Telemetry Response including the changed keywords.

### SET_SINGULARITY Telecommand <small>SIDD-027</small> {#SIDD-027 }

The SET_SINGULARITY Telecommand supports use of the Singularity keywords. It requires one or more keywords to be valid. If the SINGULARITY_HALTING or SINGULARITY_TRIP keywords are included, then the ENABLE_OVERRIDE keyword must be included and 'ON'. If either aforementioned keyword is included, and if ENABLE_OVERRIDE is not included or explicitly 'OFF', then the setting of those particular keywords will be ignored, prompting an ERROR_STATE Telemetry Response with ARGUMENT_ERROR and SINGULARITY_OVERRIDE_ERROR set 'ON' and included. Otherwise, or if other keywords are included, the SET_SINGULARITY prompts a SINGULARITY_STATE Telemetry Response including the changed keywords.

### SET_ERROR Telecommand <small>SIDD-038</small> {#SIDD-038 }

The SET_ERROR Telecommand supports use of the Error keywords. It requires one or more keywords to be valid. If any errors are set to 'ON', then the ENABLE_OVERRIDE keyword must be included and 'ON'. If an error is set to 'ON', and if ENABLE_OVERRIDE is not included or is explicitly 'OFF', then the setting of those particular keywords will be ignored, prompting an ERROR_STATE Telemetry Response with ARGUMENT_ERROR set 'ON' and included. Otherwise, or if other keywords are included, the SET_ERROR prompts a ERROR_STATE Telemetry Response including the changed keywords.

### CLEAR_ERRORS Telecommand <small>SIDD-039</small> {#SIDD-039 }

The CLEAR_ERRORS Telecommand does not support any keywords. The CLEAR_ERRORS Telecommand always prompts an ERROR_STATE Telemetry Response.

## Telemetry Request Details {#SIDD-028 }

### GET Telemetry Request <small>SIDD-020</small> {#SIDD-020 }

The GET Telemetry Request supports use of ALL keywords. The GET Telemetry Request requires one or more keywords to be valid. The GET Telemetry Request always prompts a REGISTER Telemetry Response containing the requested register values.

### GET_TARGET Telemetry Request <small>SIDD-029</small> {#SIDD-029 }

The GET_TARGET Telemetry Request does not support any keywords. The GET_TARGET Telemetry Request always prompts an CURRENT_TARGET Telemetry Response.

### GET_TARGETS Telemetry Request <small>SIDD-030</small> {#SIDD-030 }

The GET_TARGETS Telemetry Request does not support any keywords. The GET_TARGETS Telemetry Request always prompts a TARGET_NUM Telemetry Response.

### GET_HALT Telemetry Request <small>SIDD-031</small> {#SIDD-031 }

The GET_HALT Telemetry Request does not support any keywords. The GET_HALT Telemetry Request always prompts an HALT_STATE Telemetry Response.

### GET_POWER Telemetry Request <small>SIDD-032</small> {#SIDD-032 }

The GET_POWER Telemetry Request supports use of the Power Control keywords. If keywords are included, the GET_POWER Telemetry Request always prompts a POWER_STATE Telemetry Response inncluding the requested data. Otherwise, the GET_POWER Telemetry Request always prompts a POWER_STATE Telemetry Response including all Power Control data.

### GET_INERTIA Telemetry Request <small>SIDD-033</small> {#SIDD-033 }

The GET_INERTIA Telemetry Request supports use of the Inertial keywords. If keywords are included, the GET_INERTIA Telemetry Request always prompts a INERTIA_MATRIX Telemetry Response including the requested data. Otherwise, the GET_INERTIA Telemetry Request always prompts a INERTIA_MATRIX Telemetry Response including all Inertia data.

### GET_CONTROL Telemetry Request <small>SIDD-034</small> {#SIDD-034 }

The GET_CONTROL Telemetry Request supports use of the Control keywords. The GET_CONTROL Telemetry Request requires one or more keywords to be valid.  The GET_CONTROL Telemetry Request always prompts a CONTROL_STATE Telemetry Response.

### GET_SINGULARITY Telemetry Request <small>SIDD-035</small> {#SIDD-035 }

The GET_SINGULARITY Telemetry Request does not support any keywords. The GET_SINGULARITY Telemetry Request always prompts an SINGULARITY_STATE Telemetry Response.

### GET_STATE Telemetry Request <small>SIDD-036</small> {#SIDD-036 }

The GET_STATE Telemetry Request does not support any keywords. The GET_STATE Telemetry Request always prompts an CORALS_STATE Telemetry Response.

### GET_ATTITUDE Telemetry Request <small>SIDD-037</small> {#SIDD-037 }

The GET_ATTITUDE Telemetry Request does not support any keywords. The GET_ATTITUDE Telemetry Request always prompts an ATTITUDE Telemetry Response.

## Telemetry Response Details <small>SIDD-040</small> {#SIDD-040 }

### REGISTER Telemetry Response <small>SIDD-041</small> {#SIDD-041 }

The REGISTER Telemetry response is sent when requested containing any keywords requested.

### ECHO_REPLY Telemetry Response <small>SIDD-042</small> {#SIDD-042 }

The ECHO_REPLY is sent in response to the ECHO Telecommand. It does not support any keywords.

### CURRENT_TARGET Telemetry Response <small>SIDD-043</small> {#SIDD-043 }

The CURRENT_TARGET Telemetry Response is sent in response to the TARGET_ADD Telecommand and the GET_TARGET Telemetry Request. It always contains the Q1, Q2, and Q3 keywords. If the QUAT_FORMAT is currently 'Q0', then it also contains Q0. Otherwise, it also contains Q4. If the CURRENT_TARGET Telemetry Response is prompted by a TARGET_ADD Telecommand which specified QUAT_FORMAT, then it also contains the current QUAT_FORMAT.

### TARGET_LIST Telemetry Response <small>SIDD-044</small> {#SIDD-044 }

The TARGET_LIST Telemetry Response is always sent in response to the GET_TARGETS Telecommand. The TARGET_LIST Telemetry Response always includes the current TARGET_NUM.

### HALT_STATE Telemetry Response <small>SIDD-045</small> {#SIDD-045 }

The HALT_STATE Telemetry Response is always sent in response to the HALT Telecommand and the GET_HALT Telemetry Request. The HALT_STATE Telemetry Response always includes the current HALT_STATUS.

### POWER_STATE Telemetry Response <small>SIDD-046</small> {#SIDD-046 }

The POWER_STATE Telemetry Response is always sent in response to the SET_POWER Telemcommand and the GET_POWER Telemetry Request. The POWER_STATE Telemetry Response always includes the keywords included in the prompting message. If the POWER_STATE Telemetry Response is prompted by the GET_POWER Telemetry Request, and if the GET_POWER Telemetry Request has no attributes, then the POWER_STATE Telemetry Response includes ALL Power State data.

### INERTIA_MATRIX Telemetry Response <small>SIDD-047</small> {#SIDD-047 }

The INERTIA_MATRIX Telemetry Response is always sent in response to the SET_INERTIA Telemcommand and the GET_INERTIA Telemetry Request. The INERTIA_MATRIX Telemetry Response always includes the keywords included in the prompting message. If the INERTIA_MATRIX Telemetry Response is prompted by the GET_INERTIA Telemetry Request, and if the GET_INERTIA Telemetry Request has no attributes, then the INERTIA_MATRIX Telemetry Response includes ALL Inertia data.

### CONTROL_STATE Telemetry Response <small>SIDD-048</small> {#SIDD-048 }

The CONTROL_STATE Telemetry Response is always sent in response to the SET_CONTROL Telemcommand and the GET_CONTROL Telemetry Request. The CONTROL_STATE Telemetry Response always includes the keywords included in the prompting message.

### SINGULARITY_STATE Telemetry Response <small>SIDD-049</small> {#SIDD-049 }

The SINGULARITY_STATE Telemetry Response is always sent in response to the GET_SINGULARITY Telemetry Request. The SINGULARITY_STATE Telemetry Response is sent in response to the SET_SINGULARITY Telecommand if the SET_SINGULARITY does not prompt an error or if the telecommand includes the SINGULARITY_THOLD keyword. If prompted by the GET_SINGULARITY Telemetry Request, the SINGULARITY_STATE Telemetry Response includes all Singularity Control keywords. If prompted by the SET_SINGULARITY Telecommand, the SINGULARITY_STATE Telemetry Response includes all keywords specified in the SET_SINGULARITY Telecommand, excepting the ENABLE_OVERRIDE keyword.

### CORALS_STATE Telemetry Response <small>SIDD-050</small> {#SIDD-050 }

The CORALS_STATE Telemetry Response is sent in response to the GET_STATE Telemetry Response. The CORALS_STATE Telmetry Response is sent automatically on a 5 second period. The CORALS_STATE Telemetry Response includes all Testbed State keywords.

### ATTITUDE Telemetry Repsonse <small>SIDD-051</small> {#SIDD-051 }

The ATTITUDE Telemetry Response is sent in response to the GET_ATTITUDE Telemetry Response. The ATTITUDE Telmetry Response is sent automatically on a 5 second period. It always contains the Q1, Q2, and Q3 keywords. If the QUAT_FORMAT is currently 'Q0', then it also contains Q0. Otherwise, it also contains Q4.

