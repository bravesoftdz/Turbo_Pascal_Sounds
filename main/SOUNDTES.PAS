program soun;
uses crt;
label menu, highpitch, exitlabel;
var
   menuOption: Integer;
begin
     menu:
     clrscr;
     writeln('This is a test of sounds: Input the type of sound you would like to hear');
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