program pr10;

const
  m = 20;

var
  a: ARRAY[1..m] of integer;
  i, k, n: integer;

begin
  randomize;
  for i := 1 to m do
  begin
    a[i] := random(-100, 100); 
    writeln('a[', i, '] = ', a[i]);
  end;
  n := m;
  while i <= n do 
  begin
    if a[i] < 0 then 
    begin
      for k := i to n - 1 do
      begin
        a[i] := a[i + 1];
        n := n - 1;
      end;
    end;
    i := i + 1;
  end;
  
  writeln;
  
  for i := 1 to n do
  begin
    writeln('a[', i, '] = ', a[i]);
  end;
end.