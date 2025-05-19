program ejercicio9;
var
    signo: char;
    numero, contador: integer;
begin
    numero:= 1;
    contador:= 0;
    write('signo: ');
    readln(signo);

    if ((signo <> '+') or (signo <> '-')) then
        writeln('error, signo desconocido');

    while (((signo = '+') or (signo = '-')) and (numero <> 0)) do begin
        write('ingrese un numero: ');
        readln(numero);

        
    end;
end.