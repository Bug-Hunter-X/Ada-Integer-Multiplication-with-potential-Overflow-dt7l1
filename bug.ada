```ada
function Multiply(X, Y : Integer) return Integer is
begin
  return X * Y;
end Multiply;

procedure TestMultiply is
A, B, C : Integer := 10;
begin
  C := Multiply(A, B);
  Ada.Text_IO.Put_Line("Result: " & Integer'Image(C));
end TestMultiply;
```