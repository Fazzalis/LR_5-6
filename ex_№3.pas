program pr3;
var a:ARRAY[1..20] of integer; i, max, maxn, min, minn, crat:integer;

begin
  randomize;
  for i:=1 to 20 do
  begin
    a[i]:=random(-52, 65);
    writeln('a[',i,'] = ',a[i]);
  end;
  max:=a[1];
  min:=66;
  maxn:=1;
  minn:=1;
  i:=1;
  while i<21 do
    begin
      if (a[i]<min) and (a[i]>0) then 
        begin min:=a[i]; minn:=i; end;
      if a[i]>max then
        begin max:=a[i]; maxn:=i; end;
      if (a[i] mod 5 = 0) and (a[i]<>0)
      then crat:=i;
      i+=1;
    end;
  writeln('наим + элем массива = ',min,' его номер - ', minn);
  writeln('наиб элем массива = ',max,' его номер - ', maxn);
  writeln('последний эл массива красный 5 под номером ',crat);
end.