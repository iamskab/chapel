var globalOne = 10;
var globalTwo = 20;

class Impl {
  iter these() {
    yield globalOne;
    yield globalTwo;
  }
}

record R {
  forwarding var impl:unmanaged Impl;
}

proc test() {
  var r = new R(new unmanaged Impl());
  for i in r.these() {
    writeln(i);
    globalOne += 1;
    globalTwo += 1;
  }
}

test();
