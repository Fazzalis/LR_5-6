program pr2;

var
  a: ARRAY[1..20] of integer;
  i, k, m, n, c, b: int64;

begin
  randomize;
  writeln('задайте промежуток для эл.массива, которые хотите сложить: ');
  readln(c, b);
  k := 0; m := 0; n := 1;
  randomize;
  for i := 1 to 20 do
  begin
    write('a[', i, '] = ');
    a[i] := random(-22, 93);
    if (a[i] mod 2 = 0) and (i mod 2 <> 0)
      then k += 1;
    if (i <= b) and (i >= c)
      then m += a[i];
    if a[i] mod 2 <> 0
      then n *= a[i];
    writeln(a[i]);
  end;
  writeln('колличество чёт эл массива стоящих на нечёт местах = ', k);
  writeln('произведение нечёт эл = ', n);
  writeln('сумма эл массива, принадлежащих промежутку [', c, ',', b, '] = ', m);
end.