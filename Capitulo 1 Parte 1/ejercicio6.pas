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

    while (legajo <> -1) do begin
        cantAlumnos:= cantAlumnos + 1;
        write('promedio: ');
        readln(promedio);

        if (promedio > 6.5) then
            alumnosPromedio:= alumnosPromedio + 1;
        
        if ((promedio > 8.5) and (legajo < 2500)) then
            cantPorcentaje:= cantPorcentaje + 1;

        write('legajo: ');
        readln(legajo);
    end;

    if (legajo = -1) then begin
        writeln('cantidad de alumnos: ', cantAlumnos);
        writeln('cantidad de alumnos superando 6.5: ', alumnosPromedio);
        writeln('porcentaje de alumnos destacados: ', (cantPorcentaje / cantAlumnos) * 100, '%')
    end;
end.