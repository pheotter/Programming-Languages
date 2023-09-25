program Drop;
Uses math;

const
  size = 30;
type
  arr = array of integer;
var
  getValue, index: integer;
  list: arr;
  res: arr;

function dropEveryOther(var list: arr; num: integer): arr;
var
  newNum: integer;
  res: arr;
  j: integer;
begin
  newNum := Floor(num/2);
  index := 1;
  j := 1;
  SetLength(res, newNum);
  while index < num do
    begin
      res[j] := list[index];
      j := j + 1;
      index := index + 2;
    end;
   dropEveryOther := res;
end;

procedure printList(var list: arr; num: integer);
begin
  if num = 0 then
    writeln('[]')
  else
    begin
      write('[', list[1]);
      index := 2;
      while index <= num do
        begin
          write(', ', list[index]);
          index := index + 1;
        end;
      writeln(']');
    end;
end;

begin
  index := 1;
  SetLength(list, size);
  writeln('Enter a list, terminate the list with a negative number.');
  while true do
  begin
    write('Enter the next list element (negative value to terminate):');
    readln(getValue);
    if getValue < 0 then break;
    list[index] := getValue;
    index := index + 1;
  end;

  res := dropEveryOther(list, index);
  printList(res, Floor(index/2));
end.
