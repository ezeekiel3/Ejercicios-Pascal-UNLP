{ Cantidad de escuelas de La Plata con una relación de alumnos por docente superior a la sugerida por UNESCO.}
{ CUE y nombre de las dos escuelas con mejor relación entre docentes y alumnos.}
{ Un módulo para la lectura de la información de la escuela.}
{ CUE (código único de establecimiento), nombre del establecimiento, cantidad de docentes, cantidad de alumnos, localidad.}
{  Un módulo para determinar la relación docente-alumno (esa relación se obtiene del cociente entre la cantidad de alumnos y la cantidad de docentes).}


program ejercicio3;
type
    Escuela = record
        cue: integer;
        nombre: string;
        docentes: integer;
        alumnos: integer;
        localidad: string;
    end;
procedure RelacionDocenteAlumno(CantDocentes: integer; CantAlumnos: integer; var Cantidad: integer);
var
    resultado: real;
begin
    resultado:= CantAlumnos / CantDocentes;
    if (resultado > 23.435) then
        Cantidad:= Cantidad + 1;
end;
procedure LeerInfo(var EscuelaInfo: Escuela);
begin
    write('cue: ');
    readln(EscuelaInfo.cue);
    write('nombre del establecimiento: ');
    readln(EscuelaInfo.nombre);
    write('cantidad de docentes: ');
    readln(EscuelaInfo.docentes);
    write('cantidad de alumnos: ');
    readln(EscuelaInfo.alumnos);
    write('localidad del establecimiento: ');
    readln(EscuelaInfo.localidad);
end;
var
    EscuelaVar: Escuela;
    CantidadLeida, Cantidad, Cue, Cue2: integer;
    MejorEscuela, MejorEscuela2: string;
    Resultado, Maximo, Maximo2: real;
begin
    Cue:= 0;
    Cue2:= 0;
    Cantidad:= 0;
    CantidadLeida:= 0;
    Resultado:= 0;
    Maximo:= 23.435;
    Maximo2:= 23.435;
    while (CantidadLeida < 5) do begin
        LeerInfo(EscuelaVar);
        RelacionDocenteAlumno(EscuelaVar.docentes, EscuelaVar.alumnos, Cantidad);
        Resultado:= EscuelaVar.alumnos / EscuelaVar.docentes;
        if (Resultado < Maximo) then begin
            Maximo:= Resultado;
            MejorEscuela:= EscuelaVar.nombre;
            Cue:= EscuelaVar.cue;
        end
        else if ((Resultado < Maximo2) and (Resultado > Maximo)) then begin
            Maximo2:= Resultado;
            MejorEscuela2:= EscuelaVar.nombre;
            Cue2:= EscuelaVar.cue;
        end;
        CantidadLeida:= CantidadLeida + 1;
    end;
    writeln('Cantidad de escuelas de La Plata con una relación de alumnos por docente superior a la sugerida por UNESCO: ', Cantidad);
    writeln('Primer escuela con mejor relacion entre docentes y alumnos: ', Cue, ' ', MejorEscuela);
    writeln('Segunda escuela con mejor relacion entre docentes y alumnos: ', Cue2, ' ', MejorEscuela2);
end.