program pr4;
var a:ARRAY[1..30] of integer; b:ARRAY[1..30] of integer; i, k: integer;

begin
  randomize;
  for i:=1 to 30 do
  begin
    a[i]:=random(-100, 68);
    writeln('a[',i,'] = ',a[i]);
  end;
  writeln;
  k:=1;
  for i:=1 to 30 do
  begin
    if a[i] mod 2 = 0
    then 
      begin 
      b[k]:=a[i];
      writeln('b[',k,'] = ',b[k]); 
      k+=1; 
      end;
  end;
end.