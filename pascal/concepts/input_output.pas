unit InputOutput;

interface

procedure DemonstrateIO;

implementation

procedure DemonstrateIO;
var
  UserInput: string;
begin
  WriteLn;
  WriteLn('=== Input and Output ===');
  
  { Output }
  Write('Enter your name: ');
  
  { Input }
  ReadLn(UserInput);
  
  { Using the input }
  WriteLn('Hello, ', UserInput, '!');
  WriteLn('You entered ', Length(UserInput), ' characters');
end;

end.