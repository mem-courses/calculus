#import "../template.typ": *

#show: project.with(
  title: "Calculus Homework #7",
  authors: ((
    name: "Yulun Wu (#47)",
    email: "memset0@outlook.com",
    phone: "3230104585"
  ),),
  date: "November 11, 2023",
)

= P100 习题2-1 75
#prob[设 $x^2+x y+y^3=0$，求 $display(dy/dx)$．]

$ "原式"
=> 2x + y + x dy/dx + 3 y^2 dy/dx = 0
=> dy/dx = -(2x+y)/(x+3y^2)
$

= P100 习题2-1 79
#prob[设 $e^x cos y - e^(-y) cos x = 0$，求 $display(dy/dx)$．]
$ "原式"
&=> e^x cos y + e^x (-sin y) dy/dx - e^(-y) (-dy/dx) cos x - e^(-y) (-sin x) = 0\
&=> e^x cos y - e^x sin y dy/dx + e^(-y) cos x dy/dx + e^(-y) sin x = 0\
&=> dy/dx = (e^x cos y + e^(-y) sin x)/(e^x sin y - e^(-y) cos x)
$

= P100 习题2-1 80
#prob[设 $e^(x y) - x^2 + y^3 = 0$，求 $lr(display(dy/dx)|)_(x=0)$．]

$
=> (dd e^(x y))/dx - (dd x^2)/dx + (dd y^3)/dx = 0
=> e^(x y) (y + x dy/dx)- 2x + 3 y^2 dy/dx = 0
$

当 $x=0$ 时，$y=-1$，解得 $display(lr(dy/dx|)_(x=0) = 1/3)$．

= P100 习题2-1 85
#prob[已知 $y = x^(sin x) dot e^x$，求 $display(dy/dx)$．]

$
dy/dx = (e^(sin x ln x + x))' = x^(sin x) dot e^(x) (cos x ln x + (sin x)/x + 1)
$

= P100 习题2-1 87
#prob[
  设 $f(x) = phi_1(x) phi_2(x) dots.c phi_n (x)$，其中 $phi_i(x) sp (i=1,2,dots.c,n)$ 可导且 $phi_i(x) != 0$，证明：
  $ f'(x) = f(x) [(phi_1^' (x))/(phi_1(x)) + (phi_2^' (x))/(phi_2(x)) + dots.c + (phi_n^' (x))/(phi_n(x))] $
]

① 当 $n=1$ 时，$f(x) = phi_1(x)$，$f'(x) = phi'_1(x) = f(x) dot display(frac(phi'_1(x),phi(x)))$．

② 下证当 $n=k$ 时成立，则 $n=k+1$ 也成立：
  $
  f'(x) &= phi_1(x) phi_2(x) dots.c phi_k (x) [frac(phi'_1(x),phi_1(x)) + frac(phi'_2(x),phi_2(x)) + dots.c + frac(phi'_k (x),phi_k (x))] dot phi_(k+1) (x)\
  &quad  + phi_1(x) phi_2(x) dots.c phi_k (x) phi'_(k+1) (x) \
  &= phi_1(x) phi_2(x) dots.c phi_k (x) phi_(k+1) (x) [frac(phi'_1(x),phi_1(x)) + frac(phi'_2(x),phi_2(x)) + dots.c + frac(phi'_k (x),phi_k (x)) + frac(phi'_(k+1) (x),phi_(k+1) (x))]
  $

由 ① ② 得，原命题成立．

= P101 习题2-1 90
#prob[证明：双曲线族 $x^2-y^2 = a$ 及 $x y=b$（$a,b$ 为任意常数）形成正交曲线网，即这两个曲线族中的曲线成直角相交．]

对于任意交点 $(x_0,y_0)$，应满足两双曲线的切线垂直，即在点 $x_0$ 的导数之积为负一．当 $y>0$ 时：

$
y'_1 = x/sqrt(x^2 - a),quad quad
y'_2 = -b/x^2
$

$
=> y'_1 dot y'_2
&= (x/sqrt(x^2 - a))(-b/x^2)
= (x/sqrt(x^2 - (x^2 - y^2)))(-(x y)/x)\
&= (x/y) (-y/x) = -1
$

当 $y<0$ 时同理可证．当 $y=0$ 时应有 $x=b=0$，$x^2=a$ 与 $x=0$ 在 $x=0$ 处显然也是正交的．

综上所述，原命题得证．

= P101 习题2-1 94
#prob[试证：曲线 $x^(1/2) + y^(1/2) = a^(1/2)$ 上任意点的切线在两坐标轴上的截距之和等于 $a$．]

$
sqrt(x) + sqrt(y) = sqrt(a)
=> 1/(2 sqrt(x)) + 1/(2 sqrt(y)) dot dy/dx = 0
=> dy/dx = -sqrt(y)/sqrt(x) = (sqrt(x) - sqrt(a))/sqrt(x) = 1-sqrt(a/x)
$

可以对于任意点 $(x_0,y_0)$，可以写出其切线方程：

$
y - x_0 - a + 2sqrt(a x_0) = (1-sqrt(a/x_0)) (x - x_0)
$

令 $x=0$ 可解得：

$ y|_(x=0) = x_0 + a - 2sqrt(a x_0) + (1-sqrt(a/x_0)) (-x_0) = a - sqrt(a x_0) $

令 $y=0$ 可解得：

$ x|_(y=0) = x_0 + (2 sqrt(a x_0) - x_0 - a)/(1-sqrt(a/x_0)) = sqrt(a x_0) $

截距之和等于 $display(y|_(x=0) + x|_(y=0) = a)$，故命题得证．

= P101 习题2-1 99
#prob[设 $y=x f(ln x)$，求 $display(dy/dx)$，$display(ddy/(dx^2))$．]

$
dy/dx &= f(ln x) + x f'(ln x) (1/x) = f(ln x) + f'(ln x)\
ddy/dx^2 &= f'(ln x) (1/x) + f''(ln x) (1/x) = (f'(ln x) + f''(ln x))/x
$

= P101 习题2-1 102
#prob[证明：$sqrt(1+y) dot sqrt(y) - ln(sqrt(y) + sqrt(1+y)) = x$ 满足 $display(ddy/(dx ^2) + 1/(2y^2) = 0)$．]

$ "原式"
&=> (sqrt(y)/(2 sqrt(1+y)) + sqrt(1+y)/(2 sqrt(y)) - (1/(2 sqrt(y)) + 1/(2 sqrt(1+y)))/(sqrt(y) + sqrt(1+y)))(dy/dx) = 1\
&=> (y + (1 + y) - 1) (dy/dx) = 2 sqrt(y) sqrt(y+1)\
&=> dy/dx = sqrt((y+1)/y)\
$

$ ddy/dx^2
&= display(-1/y^2)/(2display(sqrt((y+1)/y))) (dy/dx)
&= display(-1/y^2)/display(2sqrt((y+1)/y))sqrt((y+1)/y)
&= -1/(2 y^2)
$

故原命题得证．

= P102 习题2-1 107
#prob[令 $x=sin t$，化简方程 $display((1-x^2) ddy/(dx^2) - x dy/dx - y = 0)$．]

已知，$x = sin t$，那么 $dx = cos t dd t$．所以有，

- $display( dy/dx = dy/dx dot dx/dt = dy/dt dot 1/(cos t) )$；

- $display( ddy/(dx^2) = (dd(dy/dx))/dx = dd(1/(cos t) dot dy/dt)/(cos t dt) = 1/(cos t) ((sin t)/(cos^2 t) dot dy/dt + 1/(cos t) dot ddy/(dt^2)) )$．

代入得：

$
&(1-sin^2 t)/(cos t) ((sin t)/(cos^2 t) dot dy/dt + 1/(cos t) dot ddy/(dt^2)) - sin t dot dy/dt dot 1/(cos t) - y = 0\
=> &(ddy)/(dt^2) + tan t dy/dt - tan t dy/dt - y = 0 
quad quad => y = ddy/(dt^2)
$

= P113 习题2-2 17
#prob[设 $display(cases(x = a(t - sin t), y = a(1 - cos t)))$，求 $display(dy/dx)$，$display(ddy/(dx^2))$．]

由已知，$dx = a(1-cos t) dt,sp dy = a sin t dt$，所以

- $display(dy/dx = dy/dt dot dt/dx = (a sin t dt)/(a (1 - cos t) dt) = (sin t)/(1 - cos t) )$；

- $display(ddy/(dx^2) = (dd (dy/dx))/dx = (dd((sin t)/(1-cos t)))/(a(1-cos t) dt) = 1/(a (1-cos t)) dot (cos t(1 - cos t) - sin^2 t)/((1 - cos t)^2) = -1/(a (1-cos t)^2) )$．

= P113 习题2-2 19
#prob[设 $display(cases(x = e^(2t), y = e^(3t)))$，求 $display(dddy/(dx^3))$．]

由已知，$display(cases(2t = ln x, 3t = ln y) => 3/2 ln x = ln y => y = x^(3/2))$．所以，$ dy/dx = 3/2 x^(1/2) quad => (ddy)/(dx^2) = 3/2 dot 1/2 x^(-1/2) quad => (dd^3 y)/(dx^3) = 3/2 dot 1/2 (-1/2) x^(-3/2) = -3/8 y^(-3/2) $

= P113 习题2-2 1
#prob[求微分：$ y = x/sqrt(1-x^2) $]

$
dy &= (x dd(sqrt(1-x^2)) - sqrt(1-x^2) dx)/(1-x^2)
= ((x d(1-x^2))/(2 sqrt(1-x^2)) - sqrt(1-x^2) dx)/(1-x^2)\
&= (-(2 x^2 dx)/(2 sqrt(1-x^2)) - sqrt(1-x^2) dx)/(1-x^2)
= (-x^2 dx - (1-x^2) dx)/((1-x^2)^(3/2))\
&= -(1-x^2)^(-3/2) dx
$

= P113 习题2-2 5
#prob[求微分：$ y = 1/(2a) ln (abs(x+a))/(abs(x-a)) $]

$
dy = abs(x-a)/(2a abs(x+a)) dd(abs(x+a)/abs(x-a))
= abs(x-a)/(2a abs(x+a)) (abs(x+a) dd(abs(x-a)) - abs(x-a) dd(abs(x+a)))/((x-a)^2)
$

此时需根据 $x+a$ 与 $x-a$ 的正负性进行分类讨论，若 $x+a$ 与 $x-a$ 符号相同，则

$
dy = (x-a)/(2a(x+a)) ((x+a)dx - (x-a)dx)/((x-a)^2) = dx/(x^2-a^2)
$

若 $x+a$ 与 $x-a$ 的符号不同，则

$
dy = -(x-a)/(2a(x+a)) (-(x+a) dx + (x-a) dx)/((x-a)^2) = dx/(x^2-a^2)
$

综上，解得微分为 $display(dy = dx/(x^2 - a^2))$。

= P113 习题2-2 10
#prob[设 $x^(2/3) + y^(2/3) = a^(2/3)$，求 $dy$．]

由已知，

$
2/3 x^(-1/3) dx + 2/3 y^(-1/3) dy = 0
quad => dy = -(x^(-1/3))/(y^(-1/3)) dx
quad => dy = -root(3,y/x) dx
$

= P113 习题2-2 11
#prob[求由方程 $y=f(x+y)$ 所确定的函数 $y=y(x)$ 的微分 $dy$，其中 $f$ 可微．]

由已知，

$
dy = f'(x+y) dd(x+y) = f'(x+y) (dx + dy)
quad => dy = (f'(x+y))/(1-f'(x+y)) dx
$

= P113 习题2-2 22
#prob[利用微分求近似值：$arctan 1.05$．]

设 $f(x)=arctan x$，有 $display(f'(x) = 1/(1+x^2))$。那么

$
arctan 1.05 = f(1.05) approx f(1) + 0.05 f'(1) = arctan 1 + 1/40 = pi/4 + 1/40
$

= P113 习题2-2 23
#prob[利用微分求近似值：$lg 11$．]

设 $f(x) = lg x$，有 $f'(x) = display(1/(x ln 10))$。那么

$
lg 11 = f(11) approx f(10) + f'(10) (11 - 10) = 1 + 1/(10 ln 10) approx 1.04
$

= P114 习题2-2 27
#prob[设测量出求得直径 $D_0 = 20 "cm"$，其绝对误差（限）$delta_D = 0.05 "cm"$，求算出的球的体积 $V_0$ 的绝度误差 $delta_V$ 和相对误差 $delta_V^*$．]

根据球体体积公式，$V = 4/3 pi D^3$，那么 $V' = 4 pi D^2$。所以

- $delta_V = V' delta_D = 4 pi D^2 delta_D = 80pi "cm"^3$；

- $display(delta_V^* = V'/V delta_D = D/3 delta_D = 1/3)$。

= P114 第二章综合题 3
#prob[
  设 $f(x)$ 在区间 $(a,b)$ 上有定义，又 $x_0 in (a,b)$，$f(x)$ 在 $x=x_0$ 处可导，设数列 ${x_n},{y_n}$ 满足 $a<x_n<x_0<y_n<b$，且 $display(lim_(n->oo) x_n = x_0)$，$display(lim_(n->oo) y_n = x_0)$，证明：
  $ lim_(n->oo) (f(y_n) - f(x_n))/(y_n-x_n) = f'(x_0) $
]

根据导数的定义，我们有：（当 $n->oo$ 时，$alpha->0$ 且 $beta->0$）

$
cases(display(lim_(n->oo) (f(x_n) - f(x_0))/(x_n - x_0) = f'(x_0)),
display(lim_(n->oo) (f(x_0) - f(y_n))/(x_0 - y_n) = f'(x_0)))
=> cases(f(x_n) - f(x_0) = f'(x_0) (x_n-x_0) + alpha(x_n -  x_0),
f(x_0) - f(y_n) = f'(x_0)(x_0 - y_n) + beta(x_0 - y_n))
quad (n->oo)
$

由已知，$n->oo$ 时，$(x_n-x_0) -> 0$ 且 $(x_0 - y_n) -> 0$。所以，

$
&lim_(n->oo) (f(x_n) - f(y_n))/(x_n - y_n)
= (f'(x_0)(x_n - y_n) + alpha(x_n-x_0) + beta(x_0-y_n))/(x_n-y_n)\
=& (f'(x_0)(x_n - y_n))/(x_n-y_n)
= f'(x_0)
$

故原命题得证。

= P114 第二章综合题 4
#prob[
  设 $phi(x)$ 在点 $a$ 连续，$f(x) = |x-a| phi(x)$，求 $f'_+(a)$，$f'_-(a)$．当满足什么条件时，$f'(a)$ 存在．
]

当 $x>a$ 时，$f'(x) = ((x-a)phi(x))' = phi(x) + (x-a) phi'(x)$；

当 $x<a$ 时，$f'(x) = ((a-x)phi(x))' = -phi(x) + (a-x) phi'(x)$；

所以 $f'_+(a) = phi(a),sp f'_-(a) = -phi(a)$。故当且仅当 $f'_+(a) = f'_(a) <=> phi(a) = 0$ 时，$f'(a)$ 存在。

= P114 第二章综合题 10
#prob[设函数 $f(x)$ 具有一阶连续导数，试证明：$F(x) = (1 + |sin x|) f(x)$ 在点 $x=0$ 处可导的充分必要条件是 $f(0) = 0$．]

当 $x$ 在 $x=0$ 的右邻域时，$F(x) = (1+sin x)f(x)$，所以

$ F'_+(x) = cos x f(x) + (1 + sin x)f'(x) $

当 $x$ 在 $x=0$ 的左邻域时，$F(x) = (1-sin x)f(x)$，所以

$ F'_-(x) = -cos x f(x) + (1 - sin x)f'(x) $

要使点 $x=0$ 处导数存在，当且仅当

$ F'_+(0) = F'_-(0) <=> f(0) + f'(0) = -f(0) + f'(0) <=> f(0) = 0 $

= P114 第二章综合题 11
#prob[设函数 $f(x)$ 对任何非零实数 $x,y$，均有 $f(x y) = f(x) + f(y)$，又 $f'(1)$ 存在，证明：当 $x!=0$ 时，$f(x)$ 可导．]

取 $x=1,y in RR$，有
$ f(y) = f(1) + f(y) => f(1) = 0 $

对于任意 $Dx -> 0$，有
$ f((1 + Dx)y) = f(1 + Dx) + f(y) $

那么
$
f'(1)
= lim_(Dx->0) (f(1+Dx) - f(1))/((1+Dx)-1)
= lim_(Dx->0) (f((1+Dx)y) - f(y))/(Dx)
$

对于任意 $y in RR and y != 0$，令 $Dy = y Dx$，那么

$
f'(y)
= lim_(Dy->0) (f(y+Dy) - f(y))/Dy
= lim_(Dx->0) (f((1+Dx)y) - f(y))/(y Dx)
= (f'(1))/y
$

由于 $f'(1)$ 存在，故 $f'(y)$ 存在故当 $x!=0$ 时，$f(x)$ 可导。

= P114 第二章综合题 14
#prob[
  试确定常数 $alpha,beta$ 的值，使函数
  $ f(x) = lim_(n->oo) (x^2 e^(n (x-1)) + alpha x + beta)/(1 + e^(n (x-1))) $
  连续且可导，并求出此时的 $f'(x)$．
]

= P128 习题3-1 1
#prob[检验罗尔定理对于函数 $f(x) = (x-1)(x-2)(x-3)$ 是否成立．]