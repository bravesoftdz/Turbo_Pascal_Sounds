program soun;
uses crt;
label menu, highpitch, lowpitch, gradient_up_label, gradient_down_label, random_label, correction_label, exitlabel;
var
   menuOption, pitchlength, gradientInitial, counter, pivotGradient: Integer;
begin
     Randomize;
     pitchlength := 1000; {Default length of pitch}

     menu:
     clrscr;
     writeln('===== PASCAL SOUND TESTS =====');
     writeln('Input the type of sound you would like to hear:');
     writeln('1. A high pitch sound example.');
     writeln('2. A low pitch sound example.');
     writeln('3. An increasing sound gradient example.');
     writeln('4. A decreasing sound gradient example.');
     writeln('5. Reproduce a random composition.');
     writeln('6. Modify length of pitch [currently ', pitchlength, ' ms].');
     writeln('0. Exit the program.');
     write('Type selected option: ');
     readln(menuOption);
     writeln('');

     case menuOption of
          1 : goto highpitch;
          2 : goto lowpitch;
          3 : goto gradient_up_label;
          4 : goto gradient_down_label;
          5 : goto random_label;
          6 : goto correction_label;
          0 : goto exitlabel;
          else goto menu;
     end;

     highpitch:
     writeln('REPRODUCING...');
     sound(3000);
     delay(pitchlength);
     nosound;
     read;
     goto menu;

     lowpitch:
     writeln('REPRODUCING...');
     sound(800);
     delay(pitchlength);
     nosound;
     read;
     goto menu;

     gradient_up_label:
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
     goto menu;


     gradient_down_label:
     pivotGradient := 4000;
     writeln('REPRODUCING...');
     for counter:= 0 to 40 do
     begin
          pivotGradient := pivotGradient - 100;
          sound(pivotGradient);
          delay(100);
     end;
     nosound;
     read;
     goto menu;

     random_label:
     writeln('REPRODUCING RANDOM COMPOSITION...');
     for counter:= 0 to 40 do
     begin
          sound(Random(4000));
          delay(100);
     end;
     nosound;
     read;
     goto menu;

     correction_label:
     writeln('');
     write('Input new length (in ms) for each pitch: ');
     readln(pitchlength);
     goto menu;

     exitlabel:

end.