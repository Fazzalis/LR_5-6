begin
  var a: array of integer;
  var kolvo:=0;
  var nomer:=0;
  
  randomize;
  for var i: integer:=1 to 20 do
  begin
    setlength(a, i+1);
    a[i]:=random(-100,100);
    print('a[',i,'] = ',a[i]);
    writeln;
    if a[i] mod 2 = 0 then kolvo+=1;
  end;
  for var i: integer:= 1 to 20 do
  begin
    if a[i] mod 2 = 0 then begin nomer:=i; break; end;
  end;
  setlength(a, length(a)+1);
  for var i: integer:=21 downto nomer+2 do
  begin
    a[i]:=a[i-1];
  end;
  a[nomer+1]:=kolvo;
  writeln;
  for var i: integer:=1 to 21 do
  begin
    print('a[',i,'] = ',a[i]);
    writeln;
  end;
end.