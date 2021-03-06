use datas;

proc multiply(arg1: int,  arg2: int)  { writeln("mul=", arg1*arg2); }
proc summify(arg1: int,   arg2: int)  { writeln("sum=", arg1+arg2); }
proc tuplify(arg1: 2*int, arg2: int)  { writeln("tup=", (arg1(1)+arg1(2))*arg2); }

forall IND in inst1SA do // works already without explicit borrow
  multiply(IND, 0);

forall IND in zip(inst1LF, inst2LF) do
  tuplify(IND, 0);
