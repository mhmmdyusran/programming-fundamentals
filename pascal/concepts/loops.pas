unit Loops;

interface

procedure DemonstrateLoops;

implementation

procedure DemonstrateLoops;
var
  I, Count: Integer;
begin
  WriteLn;
  WriteLn('=== Loops ===');
  
  { For loop }
  WriteLn('For loop:');
  for I := 1 to 4 do
    Write(I, ' ');
  WriteLn;
  
  { While loop }
  WriteLn;
  WriteLn('While loop:');
  Count := 1;
  while Count < 5 do
  begin
    Write(Count, ' ');
    Count := Count + 1;
  end;
  WriteLn;
  
  { Repeat-Until loop }
  WriteLn;
  WriteLn('Repeat-Until loop:');
  Count := 1;
  repeat
    Write(Count, ' ');
    Count := Count + 1;
  until Count >= 5;
  WriteLn;
  
  { Counting backwards }
  WriteLn;
  WriteLn('Counting backwards:');
  for I := 4 downto 1 do
    Write(I, ' ');
  WriteLn;
end;

end.