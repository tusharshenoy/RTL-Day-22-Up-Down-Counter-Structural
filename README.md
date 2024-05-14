# RTL-Day-22-Up-Down-Counter-Structural
### Problem Statement: Implementing 4-bit synchronous up/down counter in Structural Style of Modelling.
### Theory:
The counters which use clock signal to change their transition are called 
“Synchronous counters”. This means the synchronous counters depends on 
their clock input to change state values. In synchronous counters, all flip flops 
are connected to the same clock signal and all flip flops will trigger at the same 
time. The up and down counters can be implemented in a single counter called 
up/down counter. This can be selected from its input. The design of up/ down 
counter with JK flip flops is shown below.

![image](https://github.com/tusharshenoy/RTL-Day-22-Up-Down-Counter-Structural/assets/107348474/23249749-bb62-4c18-a58c-fe45c738c564)

#### FIG: Block Diagram of UP/DOWN Counter using JK FF

The up/ down counter has “Up” and “Down” count modes by having 2 input 
AND gates, which are used to detect the appropriate bit conditions for 
counting operation. OR gates are used to combine the outputs of AND gate, 
from each JK flip flop. We provide a up/ down control line which enables 
upper or lower series of AND gates to pass the outputs of JK flip flops, Q , Q’ 
to the next stage of flip flop, in the cascaded arrangement.
If the up /down control line is set to HIGH, then the top AND gates are in 
enable state and the circuit acts as UP counter. If the up /down control line is 
set to low, then the bottom AND gates are in enable state and the circuit acts 
as DOWN counter.

### Simulation Output:
####  UP Counting Sequence, ud=1
![image](https://github.com/tusharshenoy/RTL-Day-22-Up-Down-Counter-Structural/assets/107348474/11e21d0d-2417-4ce2-a854-df159cb1e3c0)

####  Control signal ud changes to 0,Down Counting starts
![image](https://github.com/tusharshenoy/RTL-Day-22-Up-Down-Counter-Structural/assets/107348474/26aac2d2-2205-4113-8b40-69346d31d5e8)

####  DOWN Counting Sequence, ud=0
![image](https://github.com/tusharshenoy/RTL-Day-22-Up-Down-Counter-Structural/assets/107348474/0d104842-22a0-41d3-8819-116acadc250a)
