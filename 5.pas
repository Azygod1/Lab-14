var
 S:String;
 F_in: File of Real;
 El2,El1,El,LocMax:Real;
 i:integer;
 a:real;
 
begin
  Assign(F_in,'D:\text.txt');
  rewrite(F_in);
  writeln ('Введите вещественные числа');
  for i:=1 to 5 do begin
      read(a);
      write(F_in,a); {заполняем исходный файл числами}
  end;
  close(F_in);
  Reset(F_in); 
  Read(F_in,El1);
  Read(F_in,El);
  El2:=El1;
 
  if (El1>El) then LocMax:=El1;
  while (not eof(F_in)) do
   begin
    El2:=El1;
    El1:=El;
    Read(F_in,El);
    if (El<El1) and (El1>El2) then LocMax:=El1;
   end;
  if El1<El then LocMax:=El;
  Writeln(LocMax);
  Close(F_in);
end.