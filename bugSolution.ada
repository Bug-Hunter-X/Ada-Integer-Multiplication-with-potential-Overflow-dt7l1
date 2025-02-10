```ada
function Multiply(X, Y : Integer) return Integer is
   Result : Integer;
begin
   if X * Y > Integer'Last or X * Y < Integer'First then
      raise Constraint_Error;
   else
      Result := X * Y;
   end if;
   return Result;
exception
   when Constraint_Error =>
      Ada.Text_IO.Put_Line("Error: Integer overflow occurred");
      return 0; -- or handle error as needed
end Multiply;

procedure TestMultiply is
A, B, C : Integer := 10;
begin
  C := Multiply(A, B);
  Ada.Text_IO.Put_Line("Result: " & Integer'Image(C));
   --test for overflow
  C := Multiply(Integer'Last, 2); --this will raise exception
  Ada.Text_IO.Put_Line("Result: " & Integer'Image(C));
exception
   when Constraint_Error =>
      Ada.Text_IO.Put_Line("Exception handled successfully");
end TestMultiply;
```