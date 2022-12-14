var
  S, s1: String;
  F_in, F_out, f: file of integer;
  k, i,p: integer;
  a: array[1..10] of integer;

begin
  S := 'D:\text.txt';
  Assign(F_in, S);
  Assign(f, 'D:\text2.txt');
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
  S1 := 'D:\text1.txt';
  Assign(F_out, S1);
  ReWrite(F_out);
  
  k := 1;
  
  while (not eof(F_in)) do
  begin
    Read(F_in, a[k]);
    k := k + 1;
  end;
  Close(F_in);
  rewrite(f);
  write('не чётные: ');
  for i := 1 to 10 do
  begin
    if a[i] mod 2 <> 0 then
    begin
      Write(F_out, a[i]);
      write(a[i], ' ');
    end;
  end;
  writeln;
  write('чётные: ');
  for i := 1 to 10 do
  begin
    if a[i] mod 2 = 0 then
    begin
      Write(f, a[i]);
      write(a[i], ' ');
    end;
  end;
  close(f);
  Close(F_out);
end.