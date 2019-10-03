# Shark on the wire 1 

## Problem
We found this [packet capture](https://2019shell1.picoctf.com/static/ae9ca8cff43ed638ed5d137f9ece7455/capture.pcap). Recover the flag. You can also find the file in /problems/shark-on-wire-1_0_13d709ec13952807e477ba1b5404e620.

## Solution
Opened up the pcap in Wireshark.  Started trying to slice the data.  Searched for picoCTF with no luck.  Noticed that there was a slew of single byte data UDP packets to 10.0.0.12.  Reading them together comes out to this.

picoCTF{StaT31355_636f6e6e}

Had to manually transcribe this so need to figure out how to read it as a stream.

