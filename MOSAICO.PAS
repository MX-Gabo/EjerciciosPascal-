program MosaicoMatriz;
uses Crt;

var
  tablero: array[1..8, 1..8] of string;
  i, j: integer;

begin
  { llenar matriz }
  for i := 1 to 8 do
  begin
    for j := 1 to 8 do
    begin
      if (i + j) mod 2 = 1 then
        tablero[i, j] :=  ' * '
      else
        tablero[i, j] := '   ';
    end;
  end;

  { imprimir matriz }
  for i := 1 to 8 do
  begin
    for j := 1 to 8 do
      write(tablero[i, j]);
    writeln;
  end;

  readln;
end.
