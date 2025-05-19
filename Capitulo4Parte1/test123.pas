program ejercicio3;
const
    dimF = 10;
type
    enteros = array[1..dimF] of integer;
procedure ImprimirNumeros(vnum: enteros; posX, posY: integer);
var
    i: integer;
begin
    if (posX < posY) then 
        for i:= posX to posY do
            writeln(vnum[i]);

    if (posX > posY) then
        for i:= posX downto posY do
            writeln(vnum[i]);
    
    if (posX = posY) then
        writeln(vnum[posX]);
end;
var
    posX, posY, dimL, numero: integer;
    NumArray: enteros;
begin
    numero:= 1;
    dimL:= 0;
    posX:= 0;
    posY:= 0;
    while ((dimL < dimF) and (numero <> 0)) do begin
        write('ingrese un numero: ');
        readln(numero);

        if (numero <> 0) then begin
            dimL:= dimL + 1;
            NumArray[dimL]:= numero;
        end;
    end;
    write('ingrese una posicion X: ');
    readln(posX);
    write('ingrese una posicion Y: ');
    readln(posY);
    if (((posX <= dimL) and (posY <= dimL)) or ((posX = dimL) or (posY = dimL))) then ImprimirNumeros(NumArray, posX, posY);
end.