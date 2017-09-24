program soun;
uses crt;
label menu, highpitch, lowpitch, gradientlabel, exitlabel;
var
   menuOption, pitchlength, gradientInitial: Integer;
begin

     pitchlength := 1000; {Default length of pitch}

     menu:
     clrscr;
     writeln('===== PASCAL SOUND TESTS =====');
     writeln('Input the type of sound you would like to hear:');
     writeln('1. A high pitch sound example.');
     writeln('2. A low pitch sound example.');
     writeln('3. A sound gradient example.');
     writeln('4. A high pitch sound example.');
     writeln('5. Modify length of pitch [currently ', pitchlength, ' ms].');
     writeln('0. Exit the program.');
     write('Type selected option: ');
     readln(menuOption);
     writeln('');

     case menuOption of
          1 : goto highpitch;
          2 : goto lowpitch;
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

     gradientlabel:
     gradientInitial = 100


     goto menu;


     exitlabel:

end.