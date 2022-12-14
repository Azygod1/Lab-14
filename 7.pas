var
  f: file of char;
  n: integer;

begin
  assign(f, 'D:\text.txt');
  reset(f);
  n := 1;
  while not eof(f) do
  begin
    
    seek(f, n);
    write(f, '!');
    n += 2;
  end;
  close(f);
end.