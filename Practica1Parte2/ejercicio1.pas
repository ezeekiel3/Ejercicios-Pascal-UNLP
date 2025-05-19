program ejercicio1;
var
    Suma, i, Numero, NumerosMayores: integer;
begin
    Suma:= 0;
    NumerosMayores:= 0;
    for i:= 1 to 10 do begin
        write('ingrese un numero: ');
        readln(Numero);

        if (Numero > 5) then NumerosMayores:= NumerosMayores + 1;
        Suma:= Suma + Numero;
    end;
    writeln('la suma de todos los numeros ingresados es: ', Suma);
    writeln('cantidad de numeros mayores a 5: ', NumerosMayores);
end.