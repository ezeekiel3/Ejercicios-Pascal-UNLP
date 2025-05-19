program ejercicio7;
var
    codigo, precio_actual, nuevo_precio, porcentaje: integer;
    codigo_especial: boolean;
begin
    codigo:= 0;
    precio_actual:= 0;
    nuevo_precio:= 0;
    porcentaje:= 0;
    codigo_especial:= false;

    write('codigo: ');
    readln(codigo);
    
    while (((codigo <> 32767) or (codigo = 32767)) and (codigo_especial = false)) do begin
        if (codigo = 32767) then
            codigo_especial:= true;

        write('precio actual: ');
        readln(precio_actual);
        write('nuevo precio: ');
        readln(nuevo_precio);
        
        porcentaje:= (precio_actual * 110) div 100;
        if (nuevo_precio > porcentaje) then
            writeln('El aumento del producto ', codigo, ' es superior al 10%')
        else
            writeln('El aumento del producto ', codigo, ' no supera el 10%');

        if ((codigo_especial = false) and (codigo <> 32767)) then begin
            write('codigo: ');
            readln(codigo);
        end;
    end;
end.