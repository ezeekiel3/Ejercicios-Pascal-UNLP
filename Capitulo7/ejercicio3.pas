program ejercicio3;
type
    Viaje = record
        nroViaje: integer;
        codigoAuto: integer;
        direccionOrigen: string;
        direccionDestino: string;
        kms: integer;
    end;

    ListaViajes = ^nodo;
    nodo = record
        viaje: Viaje;
        sig: ListaViajes;
    end;
var
    testViaje: Viaje;
begin
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
        end;
    until (testViaje.nroViaje = 0);
end.