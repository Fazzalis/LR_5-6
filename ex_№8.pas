program pr8;
var a:ARRAY[1..50] of integer; i, n, k, l, ch, max:integer;

begin
  randomize;
  for i:=1 to 50 do
  begin
    a[i]:=random(-100, 100);
    writeln('a[',i,'] = ',a[i]);
  end;
  max:=0;
  for i:=1 to 50 do
  begin
    k:=a[i];
    l:=0;
    for n:=1 to 50 do
    begin
      if a[n]=k
      then l+=1;
      if l>max then begin max:=l; ch:=a[i]; end;
    end;
  end;
  write('число ',ch,' , повторений в массиве: ',max);
end.