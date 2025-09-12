unit Conditionals;

interface

procedure DemonstrateConditionals;

implementation

procedure DemonstrateConditionals;
var
  Number: Integer;
  Grade: Char;
  IsRaining: Boolean;
begin
  WriteLn;
  WriteLn('=== Conditional Statements ===');
  
  { If-Then-Else statement }
  Number := 15;
  
  if Number > 0 then
    WriteLn(Number, ' is positive')
  else if Number < 0 then
    WriteLn(Number, ' is negative')
  else
    WriteLn('The number is zero');
    
  { Case statement }
  Grade := 'A';
  WriteLn;
  Write('Grade ', Grade, ' means: ');
  case Grade of
    'A': WriteLn('Excellent!');
    'B': WriteLn('Good job!');
    'C': WriteLn('Fair');
    else WriteLn('Invalid grade');
  end;
  
  { Boolean conditions }
  IsRaining := True;
  WriteLn;
  Write('Weather advice: ');
  if IsRaining then
    WriteLn('Bring an umbrella')
  else
    WriteLn('Enjoy the sun');
end;

end.