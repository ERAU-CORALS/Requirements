# Testbed Operating System {#SDD-001 }

The testbed will have an operating system made up of nested libraries. It will be built off  of FreeRTOS, wrapping it into more useable methods specific to Arduino AVR applications. This will then again be wrapped by a C++ Class-Based Operating System.

FreeRTOS will be wrapped by the FreeRTOS Wrapper Module.

The FreeRTOS Wrapper Module will be wrapped by the AVRduinOS Module.

## FreeRTOS Wrapper Module {#SDD-002 }

### FreeRTOS Wrapper Description <small>SDD-003</small> {#SDD-003 }

The FreeRTOS Wrapper Module will be thread-centric. It will make use of threads (a wrapper of tasks from FreeRTOS). It will constrain the usable FreeRTOS functions to easier-to-understand methods.

### Configure Thread {#SDD-004 }

#### Name Does Not Exist <small>SDD-005</small> {#SDD-005 }

If the thread name does not exist, then the ConfigureThread method **SHALL** return an error.

#### Name Too Long <small>SDD-006</small> {#SDD-006 }

If the thread name is longer than allowed by FreeRTOS, then the ConfigureThread method **SHALL** return an error.

#### Function Does Not Exist <small>SDD-007</small> {#SDD-007 }

If the thread loop function does not exist, then the ConfigureThread method **SHALL** return an error.

#### Priority Invalid <small>SDD-008</small> {#SDD-008 }

If the thread priority is not LOW, MED, or HIGH, then the ConfigureThread method **SHALL** return an error.

#### Stack Size Invalid <small>SDD-009</small> {#SDD-009 }

If the thread stack size is zero, then the ConfigureThread method **SHALL** return an error.

#### Thread Output <small>SDD-010</small> {#SDD-010 }

If the thread name is valid, and if the thread loop function exists, and if the thread priority is valid, and if the thread stack size is valid, then the ConfigureThread method **SHALL** return a valid thread function object.

#### Thread Function Components <small>SDD-011</small> {#SDD-011 }

If the thread name is valid, and if the thread loop function exists, and if the thread priority is valid, and if the thread stack size is valid, then the ConfigureThread method **SHALL** return a valid thread function object containing the cooresponding name, function pointer, priority, and stack size.

### Create Thread {#SDD-012 }

#### NULL Handle Pointer <small>SDD-013</small> {#SDD-013 }

If the thread handle pointer is NULL, then the ConfigureThread method **SHALL** return an error.

#### NULL Handle <small>SDD-014</small> {#SDD-014 }

If the thread handle is not NULL, then the ConfigureThread method **SHALL** return an error.

#### Invalid Thread Configuration <small>SDD-015</small> {#SDD-015 }

If the thread configuration is not valid, then the ConfigureThread method **SHALL** return an error.

#### Thread Task Creation Failure <small>SDD-016</small> {#SDD-016 }

If the thread task fails to initialize, then the ConfigureThread method **SHALL** return an error.

#### Task Creation Return Success <small>SDD-017</small> {#SDD-017 }

If the thread handle pointer is not NULL, and if the thread handle is NULL, and if the thread configuration is valid, and if the thread task is created successfully, then the ConfigureThread method **SHALL** return successfully.

#### Thread Handle Assignment <small>SDD-018</small> {#SDD-018 }

If the thread handle pointer is not NULL, and if the thread handle is NULL, and if the thread configuration is valid, and if the thread task is created successfully, then the ConfigureThread method **SHALL** set the thread handle to the thread task handle.

