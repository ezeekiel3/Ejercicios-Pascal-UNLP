program ejercicio2;
type
    CasamientoFecha = record
        day: integer;
        month: integer;
        year: integer;
    end;
procedure LeerFecha(var date: CasamientoFecha);
begin
    write('dia del casamiento ');
    readln(date.day);
    write('mes del casamiento ');
    readln(date.month);
    write('anio del casamiento ');
    readln(date.year);
end;
var
    date: CasamientoFecha;
    CantVerano: integer;
    CantPrimerosDias: integer;
begin
    CantVerano:= 0;
    CantPrimerosDias:= 0;
    LeerFecha(date);
    while (date.year = 2019) do begin
        if ((date.month < 1) or (date.month > 12)) then begin
            writeln('error, solo se puede introducir un mes del 1 hasta el 12');
            date.year:= 2020;
        end;
        if ((date.month >= 1) and (date.month <= 3)) then CantVerano:= CantVerano + 1;
        if ((date.day >= 1) and (date.day <= 10)) then CantPrimerosDias:= CantPrimerosDias + 1;
        LeerFecha(date);
    end;
    writeln('cantidad de casamientos en los meses de verano: ', CantVerano);
    writeln('cantidad de casamientos realizados en los primeros 10 dias de cada mes: ', CantPrimerosDias);
end.