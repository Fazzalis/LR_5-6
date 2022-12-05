begin
  var a:ARRAY[1..20] of integer;
  var max, min,minn,maxn,i:integer;
  
  randomize;
  for i:=1 to 20 do
  begin
    a[i]:=random(-100, 100);
    writeln('a[',i,'] = ',a[i]);
  end;
  min:=a[1];
  max:=a[1];
  i:=1;
  for i:=1 to 20 do
  begin
    if a[i]<min then begin min:=a[i]; minn:=i; end;
    if a[i]>max then begin max:=a[i]; maxn:=i; end;
  end;
  a[minn]:=max;
  a[maxn]:=min;
  writeln;
  i:=1;
  for i:=1 to 20 do
  begin
    writeln('a[',i,'] = ',a[i]);
  end;
end.