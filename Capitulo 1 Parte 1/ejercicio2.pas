program ejercicio2;
var
    numReal: real;
begin
    write('ingrese un numero: ');
    readln(numReal);

    if (numReal > 0) then numReal:= numReal - numReal;

    if (numReal < 0) then numReal:= numReal + (numReal * -1);

    writeln('el valor absoluto es: ', numReal);
end.