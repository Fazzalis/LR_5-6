program pr9;
var a:ARRAY[1..20] of integer; i, min, minn, n:integer;

begin
  randomize;
  for i:=1 to 20 do
  begin
    a[i]:=random(-100, 100); // неправильно
    writeln('a[',i,'] = ',a[i]);
  end;
  min:=a[1]; i:=1; 
  
  while i<20 do
  begin
    if a[i]>0 then
    begin
      for n:=i to 19 do
        a[i]:=a[i+1];
    end;
  i+=1;
  end;
  
  for i:=1 to 20 do
  begin
    if a[i]<min then begin min:=a[i]; minn:=i; end;
  end;
  
  writeln;
  for i:=1 to 20 do
  begin
    writeln('a[',i,'] = ',a[i]);
  end;
  
 
  
  writeln;
  for i:=1 to 20 do
  begin
    writeln('a[',i,'] = ',a[i]);
  end;
end.
  