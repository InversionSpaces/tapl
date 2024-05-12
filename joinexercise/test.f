/* Examples for testing */

 lambda x:Top. x;
  (lambda x:Top. x) (lambda x:Top. x);
 (lambda x:Top->Top. x) (lambda x:Top. x);


(lambda r:{x:Top->Top}. r.x r.x)
  {x=lambda z:Top.z, y=lambda z:Top.z};


lambda x:Bool. x;
(lambda x:Bool->Bool. if x false then true else false)
  (lambda x:Bool. if x then false else true);

{x=true, y=false};
{x=true, y=false}.x;
{true, false};
{true, false}.1;


if true then {x=true,y=false,a=false} else {y=false,x={},b=false};

/* More Examples for Testing */

(lambda x:Bool->Bool. lambda y:Bool. x y) (lambda x:Bool. if x then false else true) true;

lambda x:Bool. (lambda y:Bool. if x then y else false) (if x then true else false);
(lambda x:Bool. (lambda y:Bool. if y then x else false) true) false;
{x=if true then lambda z:Top. z else lambda z:Top. z, y=(lambda x:Bool. if x then false else true) true};

{a={x=true, y=false}, b={x=false, y=true}}.a.x;

(lambda r:{f:Bool->Bool, val:Bool}. r.f r.val) {f=lambda x:Bool. x, val=true};
{
  a=if {true, false}.1 then {x=(lambda x:Top. x) true, y=false} else {x=false, y=true},
  b=if (lambda x:Bool->Bool. x false) (lambda x:Bool. if x then false else true) then true else false
};

(lambda r:{x:Bool, y:Bool}. {x=r.y, y=r.x}) {x=true, y=false};
