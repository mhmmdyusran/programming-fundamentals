unit Operators;

interface

procedure DemonstrateOperators;

implementation

procedure DemonstrateOperators;
var
  A, B: Integer;
  X, Y: Boolean;
  Result: Real;
begin
  WriteLn;
  WriteLn('=== Operators ===');
  
  A := 10;
  B := 3;
  
  { Arithmetic operators }
  WriteLn('Arithmetic Operators:');
  WriteLn('Addition: ', A + B);
  WriteLn('Subtraction: ', A - B);
  WriteLn('Multiplication: ', A * B);
  Result := A / B;
  WriteLn('Division: ', Result:0:2);
  WriteLn('Integer Division: ', A div B);
  WriteLn('Modulus: ', A mod B);
  
  { Comparison operators }
  WriteLn;
  WriteLn('Comparison Operators:');
  WriteLn('Is A > B? ', A > B);
  WriteLn('Is A = B? ', A = B);
  
  { Logical operators }
  X := True;
  Y := False;
  WriteLn;
  WriteLn('Logical Operators:');
  WriteLn('X AND Y: ', X and Y);
  WriteLn('X OR Y: ', X or Y);
  WriteLn('NOT X: ', not X);
end;

end.