contract C {
    uint public i;
    constructor(uint newI) {
        i = newI;
    }
}
contract D {
    C c;
    constructor(uint v) {
        c = new C(v);
    }
    function f() public returns (uint r) {
        return c.i();
    }
}
// ----
// constructor(): 2 ->
// gas irOptimized: 192703
// gas legacy: 241233
// gas legacyOptimized: 194257
// f() -> 2
