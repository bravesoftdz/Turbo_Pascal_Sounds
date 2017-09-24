program soun;
uses crt;
label menu, highpitch, exitlabel;
var
   menuOption, pitchlength: Integer;
begin

     pitchlength := 1000; {Default length of pitch}

     menu:
     clrscr;
     writeln('===== PASCAL SOUND TESTS =====');
     writeln('Input the type of sound you would like to hear');
     writeln('1. A high pitch sound example');
     writeln('2. A low pitch sound example');
     writeln('3. A sound gradient example');
     writeln('4. A high pitch sound example');
     writeln('5. Modify length of pitch [currently', pitchlength, ' ms].');
     writeln('6. Exit the program.');
     readln(menuOption);

     if(menuOption = 1) then
     goto highpitch
     else if(menuOption = 0) then
     goto exitlabel
     else
     goto menu;

     highpitch:
     sound(3000);
     delay(800);
     nosound;
     read;
     goto menu;

     exitlabel:

end.