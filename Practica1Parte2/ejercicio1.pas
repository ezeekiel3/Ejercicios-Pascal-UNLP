program ejercicio1;
var
    suma, i, numero: integer;
begin
    suma:= 0;
    for i:= 1 to 10 do begin
        write('ingrese un numero: ');
        readln(numero);

        suma:= suma + numero;
    end;
    writeln('la suma de todos los numeros ingresados es: ', suma);
end.