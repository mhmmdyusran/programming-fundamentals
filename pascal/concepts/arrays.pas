unit Arrays;

interface

procedure DemonstrateArrays;

implementation

procedure DemonstrateArrays;
const
  MaxSize = 4;
type
  NumberArray = array[1..MaxSize] of Integer;
  FruitArray = array[1..MaxSize] of string;
var
  Numbers: NumberArray;
  Fruits: FruitArray;
  I: Integer;
begin
  WriteLn;
  WriteLn('=== Arrays ===');
  
  { Initialize arrays }
  for I := 1 to MaxSize do
    Numbers[I] := I * 10;
    
  Fruits[1] := 'Apple';
  Fruits[2] := 'Banana';
  Fruits[3] := 'Orange';
  Fruits[4] := 'Grape';
  
  { Display number array }
  WriteLn('Number array:');
  for I := 1 to MaxSize do
    Write(Numbers[I], ' ');
  WriteLn;
  
  { Display fruit array }
  WriteLn;
  WriteLn('Fruit array:');
  WriteLn('First fruit: ', Fruits[1]);
  WriteLn('Last fruit: ', Fruits[MaxSize]);
  WriteLn('All fruits:');
  for I := 1 to MaxSize do
    WriteLn('  ', I, ': ', Fruits[I]);
end;

end.