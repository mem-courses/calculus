#import "../template.typ": *

#show: project.with(
  title: "Calculus Homework #8",
  authors: ((
    name: "Yulun Wu (#47)",
    email: "memset0@outlook.com",
    phone: "3230104585"
  ),),
  date: "November 23, 2023",
)

= P129 习题3-1 3
#prob[设 $f(x)=e^x$，求满足 $f(x+Dx)-f(x)=f'(x+theta Dx)Dx sp (0<theta<1)$ 的 $theta$ 的值。]

代入 $f(x) = e^x,sp f'(x) = e^x$ 得：

$
e^(x + Dx) - e^x = e^(x + theta Dx) Dx
=> e^(theta Dx) = (e^Dx - 1)/(Dx)
=> theta = (ln(e^Dx - 1) - ln(Dx))/Dx
$

另拉格朗日中值定理，必定存在 $theta in (0,1)$ 满足条件，故此处解得的 $theta in (0,1)$。

= P129 习题3-1 4
#prob[
	证明：若 $x>=0$，则
	
	(1) $display(sqrt(x+1)-sqrt(x)=1/(2sqrt(x+theta(x))))$，其中 $display(1/4<=theta(x)<=1/2)$；

	(2) $display(lim_(x->0^+) theta(x)=1/4\,sp lim_(x->+oo)theta(x)=1/2)$。
]

(1) 由已知：

$
&2sqrt(x+theta(x))=1/(sqrt(x+1)-sqrt(x))=sqrt(x+1)+sqrt(x)\
=> &4(x+theta(x)) = 2x+1+2sqrt(x(x+1))\
=> &theta(x)=1/4+1/2(sqrt(x(x+1))-x)
$

其中 $theta(x)>=display(1/4)$ 显然成立，下证明 $theta(x)<=display(1/2)$：

$
theta(x)<=1/2
arrow.l.double sqrt(x(x+1))-x<=1/2
arrow.l.double sqrt(x(x+1))<=1/2+x
arrow.l.double x^2+x<=x^2+x+1/4
$

(2) 考虑 $g(x)=sqrt(x(x+1))-x$，有 $g'(x) = display((2x+1)/(2sqrt(x(x+1))) - 1)$，下证明 $g'(x)>0$：

$
g'(x) > 0
arrow.l.double 2x+1>2sqrt(x(x+1))
arrow.l.double 4x^2+4x+1>4x^2+4x
$

所以 $g(x)$ 在 $[0,+oo)$ 上单调增且是连续函数。考虑：

$
lim_(x->0^+) theta(x) &= theta(0) = 1/2\
lim_(x->+oo) theta(x)
&= lim_(x->+oo) x(sqrt(1+1/x)-1)
= lim_(x->0) (sqrt(1+x)-1)/x
= lim_(x->0) (1/2 x)/x
= 1/2
$

= P129 习题3-1 5(2)
#prob[利用中值定理证明不等式：$display(p y^(p-1)(x-y) < x^p - y^p < p x^(p-1) (x-y))$。]

由于 $f(x) = x^p$ 在 $RR$ 上满足拉格朗日条件，所以 $exists xi in (x,y) st x^p - y^p = (x-y) p xi^(p-1)$。其中

$
x<xi<y
=>& x^(p-1) < xi^(p-1) < y^(p-1)\
=>& (x-y)p x^(p-1) < (x-y)p xi^(p-1) < (x-y)p y^(p-1)\
=>& (x-y)p x^(p-1) < x^p - y^p < (x-y)p y^(p-1)\
$

= P129 习题3-1 5(4)
#prob[利用中值定理证明不等式：$display((a-b)/a < ln a/b < (a-b)/b)$，其中 $0<b<a$。]

由于 $f(x) = ln x$ 在 $[b,a]$ 上满足拉格朗日条件，所以 $exists xi in [b,a] st ln b - ln a = (b - a)/xi$。其中

$
b<xi<a
=> 1/a < 1/xi < 1/b
=> (a-b)/b < (a-b)/xi < (a-b)/a
=> (a-b)/b < ln(a/b) < (a-b)/a
$

即原命题得证。

= P129 习题3-1 7
#prob[
	设函数 $f(x)$ 在闭区间 $[x_1,x_2]$ 上可微，并且 $x_1 x_2>0$，证明：
	$ 1/(x_1-x_2)[x_1 f(x_2) - x_2 f(x_1)] = f(xi)-xi f'(xi) $
	其中 $x_1<xi<x_2$。
]

令左式的分子分母同除 $x_1x_2 >0$ 可以得到：

$
(f(x_2)/x_2 - f(x_1)/x_1)/(1/x_2 - 1/x_1) = f(xi)-xi f'(xi)
$

取 $g(x) = display(x f(1/x))$，那么

$
g'(x) = f(1/x) + x f'(1/x) (-1/x^2) = f(1/x) - 1/x f'(1/x)
$

根据拉格朗日中值定理，必存在 $display(1/x_2 < mu < 1/x_1) st g'(mu) = "左式"$。令 $xi=display(1/mu)$，可以得到：

$
"左式"
= g'(1/xi) = f(xi) - xi f'(xi)
$

且 $x_1<xi<x_2$，故原命题得证。

= P129 习题3-1 10
#prob[证明：方程 $x^3-3x+b=0$（$b$ 为常数）在区间 $(-1,1)$ 内至多只有一个实根。]

设 $g(x) = x^3 - 3x$，则 $g'(x) = 3x^2 - 3 = 3(x-1)(x+1)$。所以 $forall x in (-1,1),sp g'(x) < 0$，故 $g(x)$ 在 $(-1,1)$ 上单调递减。所以 $g(x)=-b$ 在 $(-1,1)$ 上至多只有一个解，即原方程在 $(-1,1)$ 上至多只有一个实根。

= P130 习题3-1 18
#prob[
	设函数 $f(x)$ 和 $g(x)$ 在 $[a,b]$ 上存在二阶导数，并且 $g''(x)!=0$，$f(a)=f(b)=g(a)$=$g(b)=0$，试证：

	(1) 在开区间 $(a,b)$ 内，$g(x)!=0$；
	
	(2) 在开区间 $(a,b)$ 内，至少存在一点 $xi$，使 $display(f(xi)/g(xi) = (f''(xi))/(g''(xi)))$。
]

(1) 由于 $g(x)$ 在 $[a,b]$ 上存在二阶导数，所以 $g''(x)$ 在 $[a,b]$ 上连续，由于 $g''(x)!=0$，所以要么 $forall x in (a,b),sp g''(x)>0$；要么 $forall x in (a,b),sp g''(x)<0$。

对于第一种情况，由于 $g(a)=g(b)=0$，所以存在 $xi in (a,b) st g'(xi)=0$，那么 $g(x)$ 在 $(a,xi)$ 上单调递减，$g(x)$ 在 $(xi,b)$ 上单调递增。所以不存在 $x in (a,b) st g(x)$。对于第二种情况，同理可证。

(2) 由 (1) 可知，$forall x in [a,b],sp g(x) != 0$ 且 $g''(x) != 0$。那么有 

$
h(x) &= f(x) g'(x) - f'(x) g(x)\
=> h'(x) &= f'(x) g'(x) + f(x) g''(x) - f'(x) g'(x) - f''(x) g(x) = f(x) g''(x) - g(x) f''(x)\
$

其中，由于 $f(a)=f(b)=g(a)=g(b)=0$，所以 $h(a)=h(b)=0$，且 $h(x)$ 在 $[a,b]$ 上满足拉格朗日条件，故至少存在一个 $xi in (a,b) st$

$
h'(xi) = 0 <=> f(xi) g''(xi) - g(xi) f''(xi) <=> (f(xi))/(g(xi)) = (f''(xi))/(g''(xi))
$

= P130 习题3-1 22
#prob[
	设 $f(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 内可导，且 $f(a) = f(b) = 0$，则至少存在一点 $xi in (a,b)$，使 $k f(xi) = f'(xi)$（$k$ 为给定实数）。
]

令 $g(x) = e^(-k x)f(x)$，则 $g(a) = g(b) = 0$，且 $g(x)$ 也满足在 $[a,b]$ 上连续，在 $(a,b)$ 内可导。故存在 $xi in (a,b) st g'(xi) = 0$，其中

$
g'(xi) = -k e^(-k xi) f(xi) + e^(-k xi) f'(xi) = 0
<=> f'(xi) - k f(xi) = 0 <=> k f(xi) = f'(xi)
$

故原命题得证。

= P138 习题3-2 1(2)
#prob[求极限：$display(lim_(x->0) (x cot x-1)/(x^2))$。]

$ "原式"
&= lim_(x->0) (x cos x - sin x)/(x^2 sin x)
= lim_(x->0) (-x sin x)/(2x sin x + x^2 cos x)\
&= lim_(x->0) (-sin x)/(2 sin x + x cos x)
= lim_(x->0) (-cos x)/(3 cos x - x sin x)
= -1/3
$

= P138 习题3-2 1(4)
#prob[求极限：$display(lim_(x->0) (a^x - a^(sin x))/(x^3)) sp(a>0,a!=1)$。]

$ "原式"
&= lim_(x->0) (a^x ln a - a^(sin x) ln a cos x)/(3 x^2)\
&= lim_(x->0) (a^x ln^2 a - a^(sin x) ln^2 a cos^2 x + a^(sin x) ln a sin x)/(6 x)\
&= lim_(x->0) (a^x ln^2 a - a^(sin x) ln^2 a cos^2 x + a^(sin x) ln a sin x)/(6 x)\
&= lim_(x->0) (a^x ln^3 a - a^(sin x) ln^3 a cos^3 x - a^(sin x) ln^2 a sin x cos x + a^(sin x) ln a cos x)/6\
&= (ln^3 a - ln^3 a - 0 + ln a)/6 = (ln a)/6
$


= P139 习题3-2 1(6)
#prob[求极限：$display(lim_(x->0) (cos(sin x) - cos x)/(x^4))$。]
$ "原式"
&= lim_(x->0) ((1-1/2 sin^2 x + 1/24 sin^4 x + o(sin^4 x)) - (1-1/2 x^2 + 1/24 x^4 + o(x^4)))/(x^4)\
&= lim_(x->0) (1/2 (x^2 - sin^2 x) + 1/24 (sin^4 x - x^4))/(x^4)\
&= lim_(x->0) (1/2 (x^2 - (x - 1/6 x^3 + o(x^3))^2) + 1/24 ((x + o(x))^4 - x^4))/(x^4)\
&= lim_(x->0) (1/2 (x^2 - x^2 + 2 dot (1/6 x^4) + o(x^4)))/(x^4)
=1/6
$

= P139 习题3-2 2(3)
#prob[求极限：$display(lim_(x->pi/2) (tan x)/(tan 3x))$。]
$ "原式"
&= lim_(x->pi/2) (tan x)/(tan 3x)
= lim_(x->pi/2) (sin x cos 3x)/(cos x sin 3x)
= - lim_(x->pi/2) (cos 3x)/(cos x)\
&= - lim_(x->pi/2) (sin (pi/2 - 3x))/(sin (pi/2 - x))
= lim_(x->0) (sin 3x)/(sin x)
= lim_(x->0) (3x)/x
= 3
$

= P139 习题3-2 2(4)
#prob[求极限：$display(lim_(x->0^+) (ln x)/(cot x))$。]
$ "原式"
= lim_(x->0^+) (1/x)/(-1/(sin^2 x))
= lim_(x->0^+) (sin^2 x)/x
= 0
$

= P139 习题3-2 2(5)
#prob[求极限：$display(lim_(x->0^+) (ln sin m x)/(ln sin x))$。]
$ "原式"
= lim_(x->0^+) ((m cos m x)/(sin m x))/((cos x)/(sin x))
= lim_(x->0^+) (m cos m x sin x)/(cos x sin m x)
= lim_(x->0^+) (m sin x)/(sin m x)
= 1
$

= P139 习题3-2 3(1)
#prob[求极限：$display(lim_(x->1) (1/(ln x) - 1/(x-1)))$。]
$ "原式"
= lim_(x->1) ((x-1) - ln x)/(ln x(x-1))
= lim_(x->1) (1-1/x)/(1/x (x-1) + ln x)
= lim_(x->1) (x-1)/((x-1) + x ln x)
= lim_(x->1) 1/(ln x + 2)
= 1/2
$

= P139 习题3-2 3(3)
#prob[求极限：$display(lim_(x->0) [(1)/(ln(x+sqrt(1+x^2)))-1/(ln(1+x))])$。]
$ "原式"
$

= P139 习题3-2 3(5)
#prob[求极限：$display(lim_(x->+oo) x^2 e^(-0.1x))$。]
$ "原式"
= lim_(x->+oo) (x^2)/(e^(0.1x))
= lim_(x->+oo) (2x)/(0.1 e^(0.1x))
= lim_(x->+oo) (2)/(0.01 e^(0.1x))
= 0
$

= P139 习题3-2 3(7)
#prob[求极限：$display(lim_(x->1^-) ln x ln (1-x))$。]
$ "原式"
&= lim_(x->1^-) (ln(1-x))/(1/(ln x))
= lim_(x->1^-) (-1/(1-x))/(-1/(x ln^2 x))
= lim_(x->1^-) (x ln^2 x)/(1-x)
= lim_(x->1^-) (ln^2 x + 2 ln x)/(-1)
= 0
$

= P139 习题3-2 4(2)
#prob[求极限：$display(lim_(x->pi/4) (tan x)^(tan 2x))$。]
$ "原式"
&= exp lim_(x->pi/4) (ln tan x)/(1/(tan 2x))
= exp lim_(x->pi/4) (1/(tan x cos^2 x))/((-2)/(tan^2 2x cos^2 2x))
= exp lim_(x->pi/4) (tan^2 2x cos^2 2x)/(-2 tan x cos^2 x)\
&= exp (- (lim_(x->pi/2) tan x cos x)^2)
= exp (- (lim_(x->0) tan (pi/2-x) sin x)^2)\
&= exp (- (lim_(x->0) (tan (pi/2-x))/(1/x))^2)
= exp (- (lim_(x->0) (-1/(cos^2 (pi/2-x)))/(-1/(x^2)))^2)\
&= exp (- (lim_(x->0) (x^2)/(sin^2 x))^2)
= 1/e
$

= P139 习题3-2 4(4)
#prob[求极限：$display(lim_(x->+oo) (2/pi arctan x)^x)$。]
$ "原式"
=
$

TBD

= P139 习题3-2 4(5)
#prob[求极限：$display(lim_(x->0) [(1+x)^(1/x)/e]^(1/x))$。]
$ "原式"
&= exp lim_(x->0) 1/x (1/x ln(1+x) - 1)
= exp lim_(x->0) (ln(1+x) - x)/(x^2)
= exp lim_(x->0) (1/(1+x) - 1)/(2x)\
&= exp lim_(x->0) (-x)/(2x(1+x))
= exp lim_(x->0) (-1)/(2(1+x))
= 1/sqrt(e)
$

= P139 习题3-2 6(1)
#prob[求极限：$display(lim_(n->oo) tan^n (pi/4 + 2/n))$。]
$ "原式"
&= exp lim_(n->oo) n ln(tan (pi/4 + 2/n))
= exp lim_(x->0) ln(tan (pi/4 + 2x))/x\
&= exp lim_(x->0) (2/(cos^2 (pi/4 + 2x)))/(tan (pi/4 + 2x))
= exp (2/(1/sqrt(2))^2)/1 = e^4
$

= P139 习题3-2 6(4)
#prob[求极限：$display(lim_(x->0) [a/x - (1/(x^2)-a^2) ln(1+a x)])$。]
$ "原式"
&= lim_(x->0) (a x-(1-a^2 x^2)ln(1+a x))/(x^2)
= a^2 lim_(x->0) (x-(1-x^2)ln(1+x))/(x^2)\
&= a^2 lim_(x->0) (1+2 x ln(1+x)-(1-x^2)/(1+x))/(2x)
= a^2 lim_(x->0) (2 x ln(1+x)+x)/(2x)\
&= a^2 lim_(x->0) (2ln(1+x)+1)/2
= 1/2 a^2
$