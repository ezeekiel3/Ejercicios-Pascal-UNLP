program ejercicio4;
var
    Minimo, Minimo2, Numero, i: integer;
begin
    Minimo:= 9999;
    Minimo2:= 9999;
    for i:= 1 to 5 do begin
        write('ingrese un numero: ');
        readln(Numero);

        if (Numero < Minimo) then Minimo:= Numero;

        if ((Numero < Minimo2) and (Numero > Minimo)) then Minimo2:= Numero;
    end;
    writeln('los dos numeros minimos leidos son ', Minimo, ' y ', Minimo2);
end.