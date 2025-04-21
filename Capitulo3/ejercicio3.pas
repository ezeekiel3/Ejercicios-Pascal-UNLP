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
    resultado:= CantAlumnos / CantDocentes
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
    CantidadLeida, Cantidad, Cue, Cue2, i: integer;
    MejorEscuela, MejorEscuela2: string;
begin
    Cue:= 0;
    Cue2:= 0;
    Cantidad:= 0;
    CantidadLeida:= 0;
    while (CantidadLeida < 5) do begin
        LeerInfo(EscuelaVar);
        RelacionDocenteAlumno(EscuelaVar.docentes, EscuelaVar.alumnos, Cantidad);
        if ((Cue = 0) and (EscuelaVar.alumnos / EscuelaVar.docentes < 23.435)) then Cue:= EscuelaVar.cue;
        if ()
    end;
    writeln('Cantidad de escuelas de La Plata con una relación de alumnos por docente superior a la sugerida por UNESCO', Cantidad);

end.