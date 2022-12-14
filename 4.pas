var
  S, s1: String;
  F_in, F_out, f: file of real;
  p, su: real;
  k,  i: integer;
  a: array[1..10] of real;

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
  for i := 1 to k do
    if i mod 2 = 0 then
      su := su + a[i];
  close(F_in);
  write('сумма элементов с чётными номерами = ');
  write(su);
end.