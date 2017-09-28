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

For the increasing (and decreasing) gradient scales, the following code was used
```pascal
pivotGradient := 0;
writeln('REPRODUCING...');
for counter:= 0 to 40 do
begin
	pivotGradient := pivotGradient + 100;
	sound(pivotGradient);
	delay(100);
end;
nosound;
read;
```
The previous code basically increases the pitch by 100 in each iteration.

Finally, for the random sounds, the random function
```pascal
Random()
```
was used. To use this function, at the beggingin of the code, you must use the command
```pascal
Randomize;
```
and to produce a random sound, just use do it as
```pascal
sound(Random(4000));
delay(100);
```

### Notes

The line
```pascal
sound(3000);
```
indicates the frequency of the output sound. A high value will produce a high pitch, while a low value will produce a low pitch.

It is worth to mention that the lines
```pascal
nosound;
read;
```
are needed to stop the sound. If they are not added, the sound will keep going until the program is finished.

## Menu jumps

The menu jumps were obtained by the use of **labels**. At the beggining of the code, the labes have to be defined as
```pascal
program soun;
uses crt;
label menu, highpitch, lowpitch, gradient_up_label, gradient_down_label, random_label, correction_label, exitlabel;
```
Later, for defining a section of code that will be identified by a label, you use
```pascal
lowpitch:

{all your code here}

goto menu;
```
where
```pascal
goto menu;
```
makes it to jump to the label called **menu**.