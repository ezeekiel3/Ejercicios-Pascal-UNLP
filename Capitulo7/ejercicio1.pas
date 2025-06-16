program ejercicio1;
type
    generosArr = array[1..5] of integer;
    Persona = record
        dni: string;
        apellido: string;
        nombre: string;
        edad: integer;
        CodigoGenero: integer;
    end;

    lista = ^nodo;
    nodo = record
        val: Persona;
        sig: lista;
    end;

procedure LeerPersonas(var l: lista; datosPersona: Persona);
var
    aux: lista;
begin
    new(aux);
    aux^.val:= datosPersona;
    aux^.sig:= l;

    l:= aux;
end;
procedure recorrerLista(l: lista);
var
    aux: lista;
begin
    aux:= l;
    while (aux <> nil) do begin
        writeln('{ dni:', aux^.val.dni, ' apellido: ', aux^.val.apellido, ' nombre: ', aux^.val.nombre, ' edad: ', aux^.val.edad, ' codigoGenero: ', aux^.val.CodigoGenero, ' }');
        aux:= aux^.sig
    end;
end;
procedure borrarDni(var l: lista; dni: string);
var
    actual, anterior: lista;
begin
    actual:= l;
    while ((actual <> nil) and (actual^.val.dni <> dni)) do begin
        anterior:= actual;
        actual:= actual^.sig;
    end;
    if (actual <> nil) then
        if (actual = l) then
            l:= l^.sig
        else
            anterior^.sig:= actual^.sig;
    Dispose(actual);
end;
function dniConMasPares(dni: string): boolean;
var
    i: integer;
    cantPar, cantImpar: integer;
begin
    dniConMasPares:= false;
    cantPar:= 0;
    cantImpar:= 0;
    for i:= 1 to 8 do begin
        if ((dni[i] = '0') or (dni[i] = '2') or (dni[i] = '4') or (dni[i] = '6') or (dni[i] = '8')) then cantPar:= cantPar + 1;
        if ((dni[i] = '1') or (dni[i] = '3') or (dni[i] = '5') or (dni[i] = '7') or (dni[i] = '9')) then cantImpar:= cantImpar + 1;
    end;
    if (cantPar > cantImpar) then dniConMasPares:= true;
end;
procedure generosMasElegidos(l: lista);
var
    generos: generosArr;
    aux: lista;
    maximo, maximo2, maxIndex, maxIndex2: integer;
    i: integer;
begin
    for i:= 1 to 5 do
        generos[i]:= 0;
    maximo:= -1;
    maximo2:= -1;
    maxIndex:= -1;
    maxIndex2:= -1;
    aux:= l;
    while (aux <> nil) do begin
        generos[aux^.val.CodigoGenero]:= generos[aux^.val.CodigoGenero] + 1;
        aux:= aux^.sig
    end;
    for i:= 1 to 5 do begin
        if (generos[i] >= maximo) then begin
            maximo2:= maximo; 
            maxIndex2:= maxIndex;
            maximo:= generos[i];
            maxIndex:= i;
        end
    end;
    writeln('generos mas elegidos: ', maxIndex, ' y ', maxIndex2)
end;
var
    testPersona: Persona;
    testLista: lista;
    cantPersonasPar: integer;
begin
    cantPersonasPar:= 0;
    testLista:= nil;
    repeat
        write('dni: ');
        readln(testPersona.dni);
        write('apellido: ');
        readln(testPersona.apellido);
        write('nombre: ');
        readln(testPersona.nombre);
        write('edad: ');
        readln(testPersona.edad);
        write('codigoGenero: ');
        readln(testPersona.CodigoGenero);

        if ((testPersona.CodigoGenero >= 1) and (testPersona.CodigoGenero <= 5)) then
        begin
            if (dniConMasPares(testPersona.dni)) then cantPersonasPar:= cantPersonasPar + 1;
            LeerPersonas(testLista, testPersona);
        end
        else
        begin
            write('error, ingrese un genero de 1 a 5: ');
            readln(testPersona.CodigoGenero);
        end;
    until (testPersona.dni = '33555444');
    generosMasElegidos(testLista);
    recorrerLista(testLista);
    borrarDni(testLista, '44259913');
    recorrerLista(testLista);
    writeln('cantidad de personas cuyo DNI contiene mas digitos pares que impares: ', cantPersonasPar);
end.