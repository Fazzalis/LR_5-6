program pr5;
var n, m, i, k, l: integer;
 a:ARRAY[1..20] of integer; b:ARRAY[1..20] of integer; 
begin
  randomize;
  k:=0; l:=0;
  for i:=1 to 20 do
  begin
    a[i]:=random(-100, 100);
    writeln('a[',i,'] = ',a[i]);
  end;
  writeln;
  for i:=1 to 20 do
  begin
    b[i]:=random(-100, 100);
    writeln('b[',i,'] = ',b[i]);
  end;
  for i:=1 to 20 do 
   begin
   if a[i]>0 then k:=k+a[i]; if b[i]>0 then l:=l+a[i]; end;
   writeln;
   writeln(k);
   writeln(l);
   writeln;
  if k<l then
  begin
    for i:=1 to 20 do
    begin
    a[i]:=a[i]*10;
    writeln('a[',i,'] = ',a[i]);
    end;
  end
  else
    for i:=1 to 20 do
    begin
    b[i]:=b[i]*10;
    writeln('b[',i,'] = ',b[i]);
    end;
end.