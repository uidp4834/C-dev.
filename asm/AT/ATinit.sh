#!/bin/sh

as -o helloAT.o $1
ld -o $2 helloAT.o

./$2
