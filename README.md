# Turbo_Pascal_Sounds

This is a project that shows how to implement sounds using Turbo Pascal.

![demo01](/images/demo.gif?raw=true)

## Installation

Just open the file **SOUNDTES.PAS** in Turbo Pascal. 

![demo02](/images/open.gif?raw=true)

## Execution

To execute the file, just do a normal **CTRL + F9** key stroke in the keyboard (or go to *Compile -> Run*).

The produced program has a menu that allows to reproduce different options:
1. A high pitch sound example.
2. A low pitch sound example.
3. An increasing sound gradient example.
4. A decreasing sound gradient example.
5. A random composition.

And the menu also has two extra options:
1. Modify the length of the produced pitches.
2. Exit the program.

![demo01](/images/demo.gif?raw=true)

## Code

There are two important sections to address in the code for this program: the sound generation and the jumps for the menu.

### Sound generation

For produce the sounds, the following code was used:

```pascal
writeln('REPRODUCING...');
sound(3000);
delay(pitchlength);
nosound;
read;
```
where **pitchlength** is an integer variable previously defined which indicates the length of the pitch.

#### Notes

The line
```pascal
sound(3000);
```
indicates the frequency of the output sound. A high value will produce a high pitch, while a low value will produce a low pitch.