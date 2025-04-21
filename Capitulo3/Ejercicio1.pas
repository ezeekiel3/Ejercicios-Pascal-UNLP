program Registros;
type
    str20 = string[20];
    alumno = record
        codigo: integer;
        nombre: str20;
        promedio: real;
    end;
procedure leer(var alu : alumno; var cantidad: integer);
var
    mejorPromedio: real;
    mejorPromedio2: real;
begin
    mejorPromedio:= 0;
    mejorPromedio2:= 0;
    repeat
        write('Ingrese el codigo del alumno ');
        readln(alu.codigo);
        if (alu.codigo <> 0) then begin
            cantidad:= cantidad + 1;
            write('Ingrese el nombre del alumno '); readln(alu.nombre);
            write('Ingrese el promedio del alumno '); readln(alu.promedio);
            mejorPromedio:= alu.promedio;
            if (mejorPromedio > mejorPromedio2) then mejorPromedio2:= mejorPromedio;
        end;
    until (alu.codigo = 0);
    writeln('el mejor promedio es ', mejorPromedio2:0:2);
end;
{ declaración de variables del programa principal }
var
    a: alumno;
    cantidadLeida: integer;
{ cuerpo del programa principal }
begin
    cantidadLeida:= 0;
    leer(a, cantidadLeida);
    writeln('se leyo ', cantidadLeida, ' estudiantes');
end.