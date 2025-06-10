program JugamosConListas;
type
lista = ^nodo;
nodo = record
    num : integer;
    sig : lista;
end;
procedure armarNodo(var L: lista; v: integer);
var
    aux : lista;
begin
    new(aux);
    aux^.num := v;
    aux^.sig := L;
    L := aux;
end;
procedure aumentarValor(var L: lista; numero: integer);
var
    aux: lista;
begin
    aux:= L;
    while (aux <> nil) do begin
        aux^.num:= aux^.num + numero;
        aux:= aux^.sig;
    end;
end;
procedure recorrerLista(L: lista);
var
    aux: lista;
begin
    aux:= L;
    while (aux <> nil) do begin
        writeln(aux^.num);
        aux:= aux^.sig;
    end;
end;
var
    pri : lista;
    valor, numero : integer;
begin
    pri := nil;
    write('Ingrese un numero: ');
    read(valor);
    while (valor <> 0) do begin
        armarNodo(pri, valor);
        write('Ingrese un numero: ');
        read(valor);
    end;
    aumentarValor(pri, 1);
    recorrerLista(pri)
end.