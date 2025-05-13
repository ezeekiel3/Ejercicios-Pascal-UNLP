program ejercicio4;
type
    cliente = record
        codigo: integer;
        cantidadLineas: integer;
    end;
procedure leerClientes(var TelefoniaCliente: cliente);
begin
    write('codigo de cliente: ');
    readln(TelefoniaCliente.codigo);
    write('cantidad de lineas: ');
    readln(TelefoniaCliente.cantidadLineas);
    cantidad:= cantidad + 1;
end;
var
    ClienteVar: cliente;
    i, MinutosConsumidos, MbConsumidos, cantidad, ResultadoMb: integer;
    nroTelefono: string;
    ResultadoMinutos, ResultadoMb: real;
begin
    cantidad:= 0;
    repeat
        leerClientes(ClienteVar);
        for i := 1 to ClienteVar.cantidadLineas do begin
            write('nro de telefono: ');
            readln(nroTelefono);
            write('minutos consumidos: ');
            readln(MinutosConsumidos);
            write('Mb consumidos en el mes: ');
            readln(MbConsumidos);

            ResultadoMinutos:= ResultadoMinutos + (MinutosConsumidos * 3.40);
            ResultadoMb:= ResultadoMb + (MbConsumidos * 1.35);
        end;
        cantidad:= cantidad + 1;
    until (cantidad = 5);
end.