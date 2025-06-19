program ejercicio2;
type
    Cliente = record
        codigoCliente: string;
        dni: string;
        apellido: string;
        nombre: string;
        codigoPoliza: integer;
        montoBasico: integer;
    end;
    Lcliente = ^nodo;
    nodo = record
        val: Cliente;
        sig: Lcliente;
    end;
    Polizas = array[1..6] of integer;
procedure cargarLista(var l: Lcliente; cliente: Cliente);
var
    aux: Lcliente;
begin
    new(aux);
    aux^.val:= cliente;
    aux^.sig:= l;

    l:= aux;
end;
procedure informar(l: Lcliente; polizaArr: Polizas);
var
    aux: Lcliente;
begin
    aux:= l;
    while (aux <> nil) do begin
        writeln('dni:', aux^.val.dni, ' apellido:', aux^.val.apellido, ' nombre:', aux^.val.nombre,' monto completo:', aux^.val.montoBasico + polizaArr[aux^.val.codigoPoliza]);
        aux:= aux^.sig;
    end;
end;
procedure ClientesConDosNuevesEnDNI(l: Lcliente);
var
    aux: Lcliente;
    i, contadorNueve: integer;
begin
    aux:= l;
    while (aux <> nil) do begin
        contadorNueve:= 0;
        for i:= 1 to 8 do
            if (aux^.val.dni[i] = '9') then contadorNueve:= contadorNueve + 1;
        if (contadorNueve >= 2) then begin
            writeln('cliente con dos o mas 9 en el dni: ', aux^.val.apellido, ' ', aux^.val.nombre)
        end;
        aux:= aux^.sig;
    end;
end;
procedure EliminarCliente(var l: Lcliente; codigoCliente: string);
var
    anterior, actual: Lcliente
begin
    actual:= l;
    while ((actual <> nil) and (actual^.val.codigoCliente <> codigoCliente)) do begin
        anterior:= actual;
        actual:= actual^.sig;
    end;
    if (actual <> nil) then
        if (actual = l) then
            l:= l^.sig;
        else
            anterior^.sig:= actual^.sig;
    dispose(actual);
end;
var
    testCliente: Cliente;
    testPolizas: Polizas;
    lista: Lcliente;
    i: integer;
begin
    for i:= 1 to 6 do
        testPolizas[i]:= 100 * i;
    lista:= nil;
    repeat
        write('codigo de cliente: ');
        readln(testCliente.codigoCliente);
        write('dni: ');
        readln(testCliente.dni);
        write('apellido: ');
        readln(testCliente.apellido);
        write('nombre: ');
        readln(testCliente.nombre);
        write('codigo de poliza: ');
        readln(testCliente.codigoPoliza);
        write('monto basico: ');
        readln(testCliente.montoBasico);

        if ((testCliente.codigoPoliza >= 1) and (testCliente.codigoPoliza <= 6)) then begin
            cargarLista(lista, testCliente);
        end;
    until (testCliente.codigoCliente = '1122');
    informar(lista, testPolizas);
    ClientesConDosNuevesEnDNI(lista);
    EliminarCliente(lista, '1122')
end.