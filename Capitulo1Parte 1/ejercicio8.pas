program ejercicio8;
var
    vocales: char;
    contador_vocales, contador_letras: integer;
begin
    contador_vocales:= 0;
    contador_letras:= 0;
    while (contador_letras < 3) do begin
        write('ingrese una letra: ');
        readln(vocales);
        
        if ((vocales = 'a') or (vocales = 'e') or (vocales = 'i') or (vocales = 'o') or (vocales = 'o')) then begin
            contador_vocales:= contador_vocales + 1;
            contador_letras:= contador_letras + 1;
        end     
        else
            contador_letras:= contador_letras + 1;
    end;

    if (contador_vocales = 3) then
        writeln('Los tres son vocales')
    else
        writeln('Al menos un caracter no era vocal')
end.