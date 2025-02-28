program ejercicio6;
var
    cantAlumnos, legajo, alumnosPromedio, cantPorcentaje: integer;
    promedio: real;
begin
    legajo:= 0;
    cantPorcentaje:= 0;
    cantAlumnos:= 0;
    alumnosPromedio:= 0;
    promedio:= 0;
    write('legajo: ');
    readln(legajo);

    while (legajo <> '-1') do begin
        cantAlumnos:= cantAlumnos + 1
        write('promedio: ');
        readln(promedio);

        if (promedio > 6.5) then
            alumnosPromedio:= alumnosPromedio + 1;
        
        if ((promedio > 8.5) and ())
    end;
end.