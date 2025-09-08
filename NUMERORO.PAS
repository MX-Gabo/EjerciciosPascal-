program DecimalARomanoLoop;

const
  N = 13;
  valores: array[1..N] of integer =
    (1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1);
  simbolos: array[1..N] of string[2] =
    ('M', 'CM', 'D', 'CD', 'C', 'XC', 'L', 'XL', 'X', 'IX', 'V', 'IV', 'I');

var
  entrada: string;
  num, i, code: integer;

function ToLowerCase(s: string): string;
var
  j: integer;
begin
  for j := 1 to Length(s) do
    if (s[j] >= 'A') and (s[j] <= 'Z') then
      s[j] := Chr(Ord(s[j]) + 32); 
  ToLowerCase := s;
end;

begin
  repeat
    Write('Introduce un numero decimal (1 - 3999) o "exit" para salir: ');
    ReadLn(entrada);

    if ToLowerCase(entrada) <> 'exit' then
    begin
      Val(entrada, num, code);   

      if code <> 0 then
        Writeln('Entrada invalida, intenta de nuevo.')
      else if (num < 1) or (num > 3999) then
        Writeln('Numero fuera de rango (1-3999).')
      else
      begin
        i := 1;
        Write('En romano: ');
        while (num > 0) and (i <= N) do
        begin
          if num >= valores[i] then
          begin
            Write(simbolos[i]);
            num := num - valores[i];
          end
          else
            Inc(i);
        end;
        Writeln;
      end;
    end;
  until ToLowerCase(entrada) = 'exit';
end.

