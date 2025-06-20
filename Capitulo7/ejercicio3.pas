program ejercicio3;
type
    Viaje = record
        nroViaje: integer;
        codigoAuto: integer;
        direccionOrigen: string;
        direccionDestino: string;
        kms: integer;
    end;

    AutoKm = record
        codigoAuto: integer;
        kms: integer;
    end;

    ListaAutoKm = ^nodo2
    nodo2 = record
        val: AutoKm;
        sig: ListaAutoKm;
    end;

    ListaViajes = ^nodo;
    nodo = record
        viaje: Viaje;
        sig: ListaViajes;
    end;
procedure cargarViajes(var viajes: ListaViajes; viaje: Viaje);
var
    aux: ListaViajes;
begin
   new(aux);

    aux^.viaje:= viaje;
    aux^.sig:= viajes;

    viajes:= aux;
end;
procedure autosQueMasRecorrieron(viajes: ListaViajes; var listaAutos: ListaAutoKm);
var
    aux: ListaViajes;
    autoObjeto: AutoKm;
    aux2: ListaAutoKm;
begin
    aux:= viajes;
    while (aux <> nil) do begin
        autoObjeto.codigoAuto:= aux^.viaje.codigoAuto;
        autoObjeto.kms:= aux^.viaje.kms;
        if (listaAutos = nil) then begin
            new(aux2);

            aux2^.val:= autoObjeto;
            aux2^.sig:= listaAutos;

            listaAutos:= aux2;
        end
        else
            while (aux2 <> nil) do begin
                
            end;
    end;
end;
var
    testViaje: Viaje;
    testLista: ListaViajes;
    testAutos: ListaAutoKm;
begin
    testLista:= nil;
    repeat
        write('numero viaje: ');
        readln(testViaje.nroViaje);
        
        if (testViaje.nroViaje <> 0) then begin
            write('codigo auto: ');
            readln(testViaje.codigoAuto);
            write('direccion origen: ');
            readln(testViaje.direccionOrigen);
            write('direccion destino: ');
            readln(testViaje.direccionDestino);
            write('kilometros recorridos: ');
            readln(testViaje.kms);

            cargarViajes(testLista, testViaje);
        end;
    until (testViaje.nroViaje = 0);
    testAutos:= nil;
    autosQueMasRecorrieron(testLista, testAutos)
end.