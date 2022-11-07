program pr1;
var a:ARRAY[1..20] of integer;i:integer;
begin
  for i:=1 to 20 do
  begin
    write('a[',i,'] = ');
    readln(a[i]);
    if a[i] > 0
    then a[i]:=0
    else
    begin
      if a[i] < 0
      then a[i]:=a[i]*a[i];
    end;
  end;
  writeln;
  for i:=1 to 20 do
  writeln('a[',i,'] = ',a[i]);
end.