program ejercicio5;
var
    numeroX, dobleNumeroX: real;
    numLeidos: integer;
begin
    numLeidos:= 1;
    write('ingrese un numero: ');
    readln(numeroX);
    dobleNumeroX:= numeroX * 2;

    while (numLeidos < 10) do begin
        write('ingrese un numero: ');
        readln(numeroX);

        if (numeroX = dobleNumeroX) then
            numLeidos:= 10;

        numLeidos:= numLeidos + 1;
    end;
    if (numeroX <> dobleNumeroX) then
        writeln('No se ha ingresado el doble de X')
end.