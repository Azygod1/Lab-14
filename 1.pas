var
 S: String;
 F_in, F_out: file of string;
 MinLen,MaxLen: integer;
  i:integer;
begin
  Assign(F_in,'D:\text.txt');
  Reset(F_in);
  Assign(F_out,'D:\text1.txt');
  Rewrite(F_out);
 
 MaxLen:=1;
 

 while (not eof(F_in)) do
  begin
   Read(F_in,S);
   if (Length(S)>MaxLen) or (MaxLen=1) then
   MaxLen:=Length(S);
   
  end;
 
 Close(F_in);
 Reset(F_in);
 
 
 while (not eof(F_in)) do
  begin
   Read(F_in,S);
   if Length(S)=MaxLen then
   Write(F_out,S);
  end;

 Close(F_in);
 Close(F_out);
end.