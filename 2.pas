var
  F_in, F_out: file of Char;
   s: Char;
   c, c1: integer;

begin
  Assign(F_in, 'D:\text.txt');
  
  Reset(F_in);
  Assign(F_out, 'D:\text1.txt');
  ReWrite(F_out);
  
  Read(F_in,s);
  while (not eof(F_in))  do
  begin
    if s = ' ' then
      c += 1;
    Read(F_in,s);
  end;
  c1:=0;
  close(F_in);
  Reset(F_in);
  Read(F_in,s);
  while (not eof(F_in))   do
  begin
    
    if s = ' ' then
      c1 += 1;
    if c1 <> c then
    begin
      Write(F_out, s);
      Read(F_in,s);
    end
    else
      break;
  end;
  
  Close(F_in);
  Close(F_out);
  Rewrite(F_in);
  Reset(F_out);
  while not eof(F_out) do
  begin
    Read(F_out, s);
    Write(F_in, s);
  end;
  Close(F_in);
  Close(F_out);
end.