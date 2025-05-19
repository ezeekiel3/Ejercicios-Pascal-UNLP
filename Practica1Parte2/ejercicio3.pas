program ejercicio3;
var
    Nombre: string;
    Nota, CantAprobados, AlumnosConSiete: integer;
begin
    Nota:= 0;
    CantAprobados:= 0;
    AlumnosConSiete:= 0;
    repeat
        write('nombre del alumno: ');
        readln(Nombre);
        write('nota del alumno: ');
        readln(Nota);

        if ((Nota < 1) or (Nota > 10)) then begin
            writeln('Error, La nota tiene ser entre 1 y 10');
            Nombre:= 'Zidane Zinedine';
        end;

        if (Nota >= 8) then CantAprobados:= CantAprobados + 1;

        if (Nota = 7) then AlumnosConSiete:= AlumnosConSiete + 1;
    until (Nombre = 'Zidane Zinedine');
    writeln('cantidad de alumnos aprobados (nota 8 o mayor): ', CantAprobados);
    writeln('cantidad de alumnos que obtuvieron un 7 como nota: ', AlumnosConSiete);
end.