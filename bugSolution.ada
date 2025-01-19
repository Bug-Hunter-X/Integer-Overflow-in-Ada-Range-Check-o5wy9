```ada
function Check_Range(Num : Integer) return Boolean is
begin
   if Num < Integer'First or Num > Integer'Last then
      raise Constraint_Error;
   elsif Num < 10 or Num > 20 then
      return False;
   else
      return True;
   end if;
end Check_Range;

procedure Main is
   Num : Integer := 15;
begin
   begin
      if Check_Range(Num) then
         Put_Line("Number is within range");
      else
         Put_Line("Number is out of range");
      end if;
   exception
      when Constraint_Error =>
         Put_Line("Integer overflow detected.");
   end;
end Main;
```