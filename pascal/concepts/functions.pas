unit Functions;

interface

procedure DemonstrateFunctions;

implementation

{ Function with return value }
function CalculateSquare(Number: Integer): Integer;
begin
  CalculateSquare := Number * Number;
end;

{ Procedure with default parameter }
procedure Greet(Name: string; Greeting: string = 'Hello');
begin
  WriteLn(Greeting, ', ', Name, '!');
end;

{ Function with var parameter (pass by reference) }
procedure SwapNumbers(var A, B: Integer);
var
  Temp: Integer;
begin
  Temp := A;
  A := B;
  B := Temp;
end;

{ Function with multiple return values using var parameters }
procedure DivideWithRemainder(Dividend, Divisor: Integer; var Quotient, Remainder: Integer);
begin
  Quotient := Dividend div Divisor;
  Remainder := Dividend mod Divisor;
end;

{ Main demonstration procedure }
procedure DemonstrateFunctions;
var
  X, Y: Integer;
  Q, R: Integer;
begin
  WriteLn;
  WriteLn('=== Functions ===');
  
  { Using function with return value }
  WriteLn('Square of 5 is: ', CalculateSquare(5));
  
  { Using procedure with default parameter }
  Greet('Yusran');
  Greet('Firmansyah', 'Hi');
  
  { Using procedure with var parameters }
  X := 10;
  Y := 20;
  WriteLn;
  WriteLn('Before swap: X = ', X, ', Y = ', Y);
  SwapNumbers(X, Y);
  WriteLn('After swap: X = ', X, ', Y = ', Y);
  
  { Using procedure with multiple return values }
  DivideWithRemainder(17, 5, Q, R);
  WriteLn;
  WriteLn('17 divided by 5:');
  WriteLn('Quotient: ', Q);
  WriteLn('Remainder: ', R);
end;

end.