var
  S, s1: String;
  F_in, F_out, f: file of real;
  min, max, q: real;
  k, p,  i, imin, imax: integer;
  a: array[1..10] of real;
  a1: array[1..10] of real;

begin
  S := 'D:\text.txt';
  Assign(F_in, S);
  
  rewrite(F_in);
  write('введите 10 чисел: ');
  for i := 1 to 10 do
  begin
    read(p);
    write(F_in, p);
    
  end;
  writeln;
  close(F_in);
  Reset(F_in);
  
  
  k := 1;
  
  while (not eof(F_in)) do
  begin
    Read(F_in, a[k]);
    k := k + 1;
  end;
  imax := 1;
  for i := 2 to 10 do
  begin
    if a[i] > a[imax] then
    begin
      imax := i;
    end;
  end;
  max := a[imax];
  
  imin := 1;
  for i := 2 to 10 do
  begin
    if a[i] < a[imin] then
    begin
      imin := i;
    end;
  end;
  min := a[imin];
  close(f_in);
  rewrite(F_in);
  
  for i := 1 to 10 do
  begin
    if i = imax  then
      write(F_in, min)
    else
     begin
      if i = imin then
        write(F_in, max)
      else
        write(F_in, a[i]);
    end;
  end;
  close(F_in);
  
  
  
  write('Результат: ');
  reset(F_in);
  while (not eof(F_in)) do
  begin
    read(F_in, q);
    write(q, ' ');
  end;
  close(F_in);
end.