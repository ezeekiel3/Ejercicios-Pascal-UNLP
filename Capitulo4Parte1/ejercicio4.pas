program ejercicio4;
type
    vnum = array [1..100] of integer;
function posicion(elemento: integer; vector: vnum): integer;
var
    i, elementoPosicion: integer;
begin
    elementoPosicion:= 0;
    for i:= 1 to 100 do begin
        if (vector[i] = elemento) then elementoPosicion:= i;
    end;
    if (vector[elementoPosicion] = elemento) then
        posicion:= elementoPosicion
    else
        posicion:= -1;
end;
procedure intercambio(x, y: integer; var vector: vnum);
begin
    if (((x >= 1) and (x <= 100)) and ((y >= 1) and (y <= 100))) then begin
        vector[x]:= y;
        vector[y]:= x;
    end;
end;
function sumaVector(vector: vnum): integer;
var
    i: integer;
    suma: integer;
begin
    suma:= 0;
    for i:= 1 to 100 do begin
        suma:= suma + vector[i]
    end;
    sumaVector:= suma;
end;
function promedio(vector: vnum): real;
var
    i, suma: integer;
begin
    suma:= 0;
    for i:= 1 to 100 do begin
        suma:= suma + vector[i];
    end;
    promedio:= suma / 100;
end;
function elementoMaximo(vector: vnum): integer;
var
    max, posMaxima, i: integer;
begin
    posMaxima:= 0;
    max:= -1;
    for i:= 1 to 100 do begin
        if (vector[i] > max) then begin
            max:= vector[i];
            posMaxima:= i;
        end;
    end;
    elementoMaximo:= posMaxima;
end;
function elementoMinimo(vector: vnum): integer;
var
    i, min, posMinima: integer;
begin
    min:= 9999;
    posMinima:= 0;
    for i:= 1 to 100 do begin
        if (vector[i] < min) then begin
            min:= vector[i];
            posMinima:= i;
        end;
    end;
    elementoMinimo:= posMinima;
end;
var
    vectorNumeros: vnum;
    i: integer;
begin
    for i:= 1 to 100 do begin
        vectorNumeros[i]:= i;
    end;
    writeln('el valor buscado esta en la posicion: ', posicion(10, vectorNumeros));
    intercambio(2, 4, vectorNumeros);
    writeln('la suma de todos los elementos es de ', sumaVector(vectorNumeros));
    writeln('el promedio es ', promedio(vectorNumeros):0:2);
    writeln('posicion del elemento maximo: ', elementoMaximo(vectorNumeros));
    writeln('posicion del elemento minimo: ', elementoMinimo(vectorNumeros));
end.