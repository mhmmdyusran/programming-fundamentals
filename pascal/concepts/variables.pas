unit Variables;

interface

procedure DemonstrateVariables;

implementation

procedure DemonstrateVariables;
var
  Name: string;
  Age: Integer;
  Height: Real;
  IsStudent: Boolean;
begin
  WriteLn;
  WriteLn('=== Variables and Data Types ===');
  
  { Assigning values to variables }
  Name := 'John Doe';
  Age := 25;
  Height := 1.75;
  IsStudent := True;
  
  { Displaying variables and their types }
  WriteLn('Name: ', Name, ' (String)');
  WriteLn('Age: ', Age, ' (Integer)');
  WriteLn('Height: ', Height:0:2, ' (Real)');
  Write('Is Student: ');
  if IsStudent then
    WriteLn('True')
  else
    WriteLn('False');
  WriteLn(' (Boolean)');
end;

end.