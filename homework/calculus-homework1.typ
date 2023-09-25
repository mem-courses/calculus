#import "../template.typ": *

#show: project.with(
  title: "Calculus Homework #1",
  authors: (
  (name: "Yulun Wu", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "September 20, 2023",
)

= 习题1-1 5(1)

#prob[求函数的定义域 $y = (x-2) sqrt(display((1 + x) / (1 - x)))$．]

应满足：

- $1-x != 0 arrow.r.double x != 1$
- $d(1+x)(1-x) >= 0 arrow.r.double -1<=x<=1$

综上，$-1<=x<1$．

= 习题1-1 5(3)

#prob[求函数的定义域 $y = display(sqrt(x) / sin(pi x))$．]

应满足：

- $x >= 0$
- $sin(pi x) != 0 arrow.r.double x in.not ZZ$

综上，$x in {x | x > 0 and x in.not ZZ}$．

= 习题1-1 5(5)

#prob[求函数的定义域 $y = arcsin(1-x) + lg(lg x)$．]

应满足

- $x>0$
- $lg x > 0 arrow.r.double x>1$
- $1 - x arrow.r.double -1 <= 1-x <= 1 arrow.r.double 0 <= x <= 2$

综上，$1 < x <= 2$．

= 习题1-1 19(1)

#prob[求下列函数的反函数 $y=display((1-x)/(1+x))$．]

易证明原函数是 $(-oo, -1) union (-1, oo)$ 到 $(-oo, -1) union (-1, oo)$ 的单射，故反函数存在．

令 $x = y', y = x'$，则有

$
x' = (1 - y') / (1 + y')
arrow.r.double
x' (1 + y') = 1 - y'
arrow.r.double
x' + x' dot y' = 1 - y' \
arrow.r.double
(x' + 1) y' = 1 - x'
arrow.r.double
y' = (1 - x') / (1 + x')
$

故原函数的反函数为 $display(y = (1 - x) / (1 + x))$．

= 习题1-1 19(3)

#prob[求下列函数的反函数 $y=display(cases(
	x\, quad& x<1,
	x^2\, quad& 1<=x<=4,
	2^x\, quad& x>4,
))$]

当 $x in (-oo, 1)$ 时，$y = x in (-oo, 1)$；故这一部分的反函数为 $y = x,space x in (-oo, 1)$．

当 $x in [1, 4]$ 时，$y = x^2 in [1, 16]$；故这一部分的反函数为 $y = sqrt(x),space x in [1, 16]$．

当 $x in (4, +oo)$ 时，$y = 2^x in (16, oo)$；故这一部分的反函数为 $y = log_2(x),space x in (16, oo)$．

综上，原函数是 $RR$ 到 $RR$ 的单射，故反函数存在，为 $ y = cases(
	x\, quad& x<1,
	sqrt(x)\, quad& 1<=x<=16,
	log_2(x)\, quad& x>16
) $

= 习题1-1 20

#prob[设 $phi(x) = display(cases(
	0\, quad& x<=0,
	x\, quad& x>0,
))$ 及 $psi(x) = display(cases(
	0\, quad& x<=0,
	-x^2\, quad& x>0, 
))$．求 $phi(phi(x))$，$psi(psi(x))$，$phi(psi(x))$，$psi(phi(x))$．]

$
phi(phi(x))
&= cases(phi(0)\, quad& x<=0, phi(x)\, quad& x>0) quad
&&= cases(0\, quad& x<=0, x\, quad& x>0) quad
&&= phi(x) \

psi(psi(x))
&= cases(psi(0)\, quad& x<=0, psi(-x^2)\, quad& x>0) quad
&&= cases(0\, quad& x<=0, 0\, quad& x>0) quad
&&= 0 \

phi(psi(x))
&= cases(phi(0)\, quad& x<=0, phi(-x^2)\, quad& x>0) quad
&&= cases(0\, quad& x<=0, 0\, quad& x>0) quad
&&= 0 \

psi(phi(x))
&= cases(psi(0)\, quad& x<=0, psi(x)\, quad& x>0) quad
&&= cases(0\, quad& x<=0, -x^2\, quad& x>0) quad
&&= psi(x) \
$

= 课堂例题 9/21 8:32

#prob[证明：$f(x) = display(1/x)$ 在 $(0,1)$ 上无界．]

$forall M_0 in R_(>0), quad exists x_1 = display(1 / (M_0 + 1)) in (0,1) > M_0$．

故 $f(x)$ 在 $(0,1)$ 上无界．

= 课堂例题 9/21 9:31

#prob[设 $f(0) = 0$ 且 $x != 0$ 时 $a f(x) + b f(display(1/x)) = display(c/x)$，其中 $a,b,c$ 为常数，且 $a != b$，证明 $f(x)$ 是奇函数．]

TBD

= 习题1-1 22

#prob[设 $f_n (x)$ 为连续 $n$ 个 $f(x)$ 的复合，若 $f(x) = display(x/sqrt(1+x^2))$，求 $f_n (x)$．]

下归纳证明 $f_n (x) = display(x / sqrt(1 + n x^2))$：

- 当 $n = 1$ 时显然成立；
- 假设 $n = k$ 时成立，下证明 $n=k+1$ 时也成立：

$
f_(k+1)(x) = (f_k (x)) / sqrt(1 + f_k^2 (x)) = display(x / sqrt(1 + k x^2)) / display(sqrt(1 + display(x^2 / (1 + k x^2)))) = display(x / sqrt(1 + k x^2)) / display(sqrt(display((1 + (k+1)x^2) / (1 + k x^2)))) = x / sqrt(1 + (k+1)x^2)
$

故原命题得证．

= 习题1-1 24

#prob[证明定义于对称区间 $(-tau, tau)$ 内的任何函数 $f(x)$ 可以表示成一个偶函数与一个奇函数之和的形式．]

构造偶函数 $g_(x)$ 和奇函数 $h_(x)$ 满足：

$
forall x>0\, &quad f(x) = g(x) + h(x) \
forall x<0\, &quad f(x) = g(-x) - h(-x) \
$

可以得到，$forall x>0$，

$
f(x) &= g(x) + h(x) \
f(-x) &= g(x) - h(x) \
$

解得

$
cases(
	g(x) &= 1/2 (f(x) + f(-x)),
	h(x) &= 1/2 (f(x) - f(-x)),
)\, quad quad x>0
$

根据奇偶函数的定义，可以得到 $g$ 和 $h$

$
g(x) &= cases(
	1/2 (f(x) + f(-x))\,quad&0<x<tau,
	0\,quad&x=0,
	1/2 (f(x) + f(-x))\,quad&-tau<x<0,
)\
h(x) &= cases(
	1/2 (f(x) - f(-x))\,quad&0<x<tau,
	f(0)\,quad&x=0,
	1/2 (f(x) - f(-x))\,quad&-tau<x<0,
)\
$

故原命题得证．

= 习题1-1 27 (2)

#prob[判断函数的有界性：$f(x) = display(x/(1+x^2))$]

下证明：$|f(x)|<=1/2$ 对 $x in RR$ 均成立．

$
|f(x)| = |x|/(1+x^2) <= 1/2
arrow.r.double
x^2 - 2|x| + 1 >= 0
arrow.r.double 
(|x| - 1)^2 >= 0
$

对于 $x in RR$ 显然成立．故 $f$ 为有界函数．


= 习题1-1 27 (4)

#prob[判断函数的有界性：$f(x) = e^(1/x)$]

对于任意正常数 $M$，取 $display(x_0 = 1/display(ln(M) + 1))$，则有

$
f(x_0) = e^display(ln(M)+1) = e dot M > M
$

故 $f$ 为无界函数．