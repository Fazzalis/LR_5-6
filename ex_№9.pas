begin
  var a: array of integer;
  var minn:=0;
  var min:=101;
  var plusn:=0;
  var plus:=0;
  
  randomize;
  for var i: integer:=1 to 20 do
  begin
    setlength(a, i+1);
    a[i]:=random(-100,100);
    print('a[',i,'] = ',a[i]);
    writeln;
    if a[i]<min then begin min:=a[i]; minn:=i; end;
  end;
  for var i: integer:= 1 to 20 do
  begin
    if a[i]>plus then begin plus:=a[i]; plusn:=i; break; end;
  end;
  
  if minn>plusn then
    begin
     for var i: integer:=minn to 19 do
     begin
      a[i]:=a[i+1];
     end;
     for var i: integer:=plusn to 18 do
     begin
      a[i]:=a[i+1];
     end;
    end
    
  else
  begin
    for var i: integer:=plusn to 19 do
     begin
      a[i]:=a[i+1];
     end;
     for var i: integer:=minn to 18 do
     begin
      a[i]:=a[i+1];
     end;
  end;
  
  writeln;
  
  for var i: integer:=1 to 18 do
  begin
    print('a[',i,'] = ',a[i]);
    writeln;
  end;
end.