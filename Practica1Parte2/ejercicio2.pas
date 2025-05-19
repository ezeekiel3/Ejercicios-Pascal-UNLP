program ejercicio2;
var
    i, Numero, Maximo, Posicion: integer;
begin
    Maximo:= -1;
    for i:= 1 to 10 do begin
        write('ingrese un numero: ');
        readln(Numero);

        if (Numero > Maximo) then begin
            Maximo:= Numero;
            Posicion:= i;
        end;
    end;
    writeln('El mayor número leído fue el ', Maximo, ' en la posición ', Posicion);
end.