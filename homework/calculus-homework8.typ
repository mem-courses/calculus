#import "../template.typ": *

#show: project.with(
  title: "Calculus Homework #7",
  authors: ((
    name: "Yulun Wu (#47)",
    email: "memset0@outlook.com",
    phone: "3230104585"
  ),),
  date: "November 23, 2023",
)

= P129 习题3-1 3
#prob[设 $f(x)=e^x$，求满足 $f(x+Dx)-f(x)=f'(x+theta Dx)Dx sp (0<theta<1)$ 的 $theta$ 的值。]

= P129 习题3-1 4
#prob[
	证明：若 $x>=0$，则
	
	(1) $display(sqrt(x+1)-sqrt(x)=1/(2sqrt(x+theta(x))))$，其中 $display(1/4<=theta(x)<=1/2)$；

	(2) $display(lim_(x->0^+) theta(x)=1/4\,sp lim_(x->+oo)theta(x)=1/2)$。
]

= P129 习题3-1 5(2)
#prob[利用中值定理证明不等式：$display(p y^(p-1)(x-y) < x^p - y^p < p x^(p-1) (x-y))$。]

= P129 习题3-1 5(4)
#prob[利用中值定理证明不等式：$display((a-b)/a < ln a/b < (a-b)/b)$，其中 $0<b<a$。]

= P129 习题3-1 7
#prob[
	设函数 $f(x)$ 在闭区间 $[x_1,x_2]$ 上可微，并且 $x_1 x_2>0$，证明：
	$ 1/(x_1-x_2)[x_1 f(x_2) - x_2 f(x_1)] = f(xi)-xi f'(xi) $
	其中 $x_1<xi<x_2$。
]

= P129 习题3-1 10
#prob[证明：方程 $x^3-3x+b=0$（$b$ 为常数）在区间 $(-1,1)$ 内至多只有一个实根。]

= P130 习题3-1 18
#prob[
	设函数 $f(x)$ 和 $g(x)$ 在 $[a,b]$ 上存在二阶导数，并且 $g''(x)!=0$，$f(a)=f(b)=g(a)$=$g(b)=0$，试证：

	(1) 在开区间 $(a,b)$ 内，$g(x)!=0$；
	
	(2) 在开区间 $(a,b)$ 内，至少存在一点 $xi$，使 $display(f(xi)/g(xi) = (f''(xi))/(g''(xi)))$。
]

= P130 习题3-1 22
#prob[
	设 $f(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 内可导，且 $f(a) = f(b) = 0$，则至少存在一点 $xi in (a,b)$，使 $k f(xi) = f'(xi)$（$k$ 为给定实数）。
]

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
= lim_(x->0) (ln(1+x) - ln(x+sqrt(1+x^2)))/(ln(1+x) ln(x+sqrt(1+x^2)))
= lim_(x->0) (ln(1+x) - ln(x) - ln(1+sqrt(1+1/(x^2))))/(x(ln x+))
$

= P139 习题3-2 3(5)
#prob[求极限：$display(lim_(x->+oo) x^2 e^(-0.1x))$。]
= P139 习题3-2 3(7)
#prob[求极限：$display(lim_(x->1^-) ln x ln (1-x))$。]
= P139 习题3-2 4(2)
#prob[求极限：$display(lim_(x->pi/4) (tan x)^(tan (pi x)/2))$。]
= P139 习题3-2 4(4)
#prob[求极限：$display(lim_(x->+oo) (2/pi arctan x)^x)$。]
= P139 习题3-2 4(5)
#prob[求极限：$display(lim_(x->0) [(1+x)^(1/x)/e]^(1/x))$。]
= P139 习题3-2 6(1)
#prob[求极限：$display(lim_(n->oo) tan^n (pi/4 + 2/n))$。]
= P139 习题3-2 6(4)
#prob[求极限：$display(lim_(x->0) [a/x - (1/(x^2)-a^2) ln(1+a x)])$。]