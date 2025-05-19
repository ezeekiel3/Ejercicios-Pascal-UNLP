program ejercicio4;
var
    numeroX: real;
    dobleNumeroX: real;
begin
    write('ingrese un numero: ');
    readln(numeroX);
    dobleNumeroX:= numeroX * 2;

    while (numeroX <> dobleNumeroX) do begin
        write('ingrese un numero: ');
        readln(numeroX);
    end;
end.