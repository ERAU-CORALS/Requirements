# 1.0 Testbed Operating System {#SDD-001 }

The testbed will have an operating system made up of nested libraries. It will be built off  of FreeRTOS, wrapping it into more useable methods specific to Arduino AVR applications. This will then again be wrapped by a C++ Class-Based Operating System.

FreeRTOS will be wrapped by the FreeRTOS Wrapper Module.

The FreeRTOS Wrapper Module will be wrapped by the AVRduinOS Module.

## 1.1 FreeRTOS Wrapper Module {#SDD-002 }

### 1.1.1 FreeRTOS Wrapper Description <small>SDD-003</small> {#SDD-003 }

The FreeRTOS Wrapper Module will be thread-centric. It will make use of threads (a wrapper of tasks from FreeRTOS). It will constrain the usable FreeRTOS functions to easier-to-understand methods.

### 1.1.2 Configure Thread {#SDD-004 }

#### 1.1.2.1 Name Does Not Exist <small>SDD-005</small> {#SDD-005 }

If the thread name does not exist, then the ConfigureThread method **SHALL** return an error.

#### 1.1.2.2 Name Too Long <small>SDD-006</small> {#SDD-006 }

If the thread name is longer than allowed by FreeRTOS, then the ConfigureThread method **SHALL** return an error.

#### 1.1.2.3 Function Does Not Exist <small>SDD-007</small> {#SDD-007 }

If the thread loop function does not exist, then the ConfigureThread method **SHALL** return an error.

#### 1.1.2.4 Priority Invalid <small>SDD-008</small> {#SDD-008 }

If the thread priority is not LOW, MED, or HIGH, then the ConfigureThread method **SHALL** return an error.

#### 1.1.2.5 Stack Size Invalid <small>SDD-009</small> {#SDD-009 }

If the thread stack size is zero, then the ConfigureThread method **SHALL** return an error.

#### 1.1.2.6 Thread Output <small>SDD-010</small> {#SDD-010 }

If the thread name is valid, and if the thread loop function exists, and if the thread priority is valid, and if the thread stack size is valid, then the ConfigureThread method **SHALL** return a valid thread function object.

#### 1.1.2.7 Thread Function Components <small>SDD-011</small> {#SDD-011 }

If the thread name is valid, and if the thread loop function exists, and if the thread priority is valid, and if the thread stack size is valid, then the ConfigureThread method **SHALL** return a valid thread function object containing the cooresponding name, function pointer, priority, and stack size.

### 1.1.3 Create Thread {#SDD-012 }

#### 1.1.3.1 NULL Handle Pointer <small>SDD-013</small> {#SDD-013 }

If the thread handle pointer is NULL, then the ConfigureThread method **SHALL** return an error.

#### 1.1.3.2 NULL Handle <small>SDD-014</small> {#SDD-014 }

If the thread handle is not NULL, then the ConfigureThread method **SHALL** return an error.

#### 1.1.3.3 Invalid Thread Configuration <small>SDD-015</small> {#SDD-015 }

If the thread configuration is not valid, then the ConfigureThread method **SHALL** return an error.

#### 1.1.3.4 Thread Task Creation Failure <small>SDD-016</small> {#SDD-016 }

If the thread task fails to initialize, then the ConfigureThread method **SHALL** return an error.

#### 1.1.3.5 Task Creation Return Success <small>SDD-017</small> {#SDD-017 }

If the thread handle pointer is not NULL, and if the thread handle is NULL, and if the thread configuration is valid, and if the thread task is created successfully, then the ConfigureThread method **SHALL** return successfully.

#### 1.1.3.6 Thread Handle Assignment <small>SDD-018</small> {#SDD-018 }

If the thread handle pointer is not NULL, and if the thread handle is NULL, and if the thread configuration is valid, and if the thread task is created successfully, then the ConfigureThread method **SHALL** set the thread handle to the thread task handle.

