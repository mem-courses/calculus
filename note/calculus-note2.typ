#import "../template.typ": *

#show: project.with(
  title: "Calculus Note #2",
  authors: ((
    name: "memset0",
    email: "memset0@outlook.com",
    phone: "3230104585"
  ),),
  date: "October 31, 2023",
)

= 导数

== 导数的定义

设 $f(x)$ 在点 $x_0$ 的邻域有定义，若 $display(lim_(x->x_0)frac(f(x)-f(x_0),x-x_0) = lim_(Delta x->0)frac(Delta y,Delta x))$ 存在，则称 $f(x)$ 在点 $x_0$ 处可导，并称此极限为 $y=f(x)$ 在点 $x_0$ 的导数。

若函数在开区间 $I$ 内的每点都可导，就称函数在 $I$ 内可导。此时函数值构成的新函数称导函数。

#def[定理1]函数 $y=f(x)$ 在点 $x_0$ 可导的充分必要条件是其在点 $x_0$ 处的左右导数存在且相等（$f'_-(x_0) = f'_+(x_0)$）。

#def[定理2]可导一定连续，连续不一定可导。
#note[重要反例：$y=|x|$ 在 $x=0$ 处连续，但不可导。]

== 导数的几何意义

- 切线方程：$y-y_0 = f'(x_0)(x-x_0)$；

- 法线方程：$y-y_0 = display(-1/(f'(x_0)) (x-x_0)) sp (f'(x_0) != 0)$（与切线垂直）。

若 $f'(x_0) = 0$，切线与 $x$ 轴平行，且称 $x_0$ 为驻点。

= 求导

== 基本初等函数的求导公式

TBD

#note[
  #def[证明思路]通过构造性定义和两个重要极限得到 $(C)'=0$、$(sin x)' = cos x$、$(ln x)' = 1/x$，再利用求导法则得到其他基本初等函数的求导公式。
]


== 四则运算求导法则

函数 $u(x)$ 和 $v(x)$ 都在 $x$ 具有导数 $=>$ $u(x)$ 与 $v(x)$ 的和、差、积、商（$v(x)=0$ 的除外）都在点 $x$ 可导，且：

1. $[u(x) pm v(x)]' = u'(x) pm v'(x)$

2. $[u(x) v(x)]' = u'(x) v(x) + u(x) v'(x)$

3. $display([u(x)/v(x)]' = (u'(x) v(x) - u(x) v'(x))/(v^2(x))) quad (v(x) != 0)$

#prof[
  乘法求导法则的证明：设 $f(x) = u(x) v(x)$，则有
  $ f'(x)
  &= lim_(h->0)(f(x+h)-f(x))/h
  = lim_(h->0)(u(x+h) v(x+h) - u(x) v(x)) / h\
  &= lim_(h->0) [frac(u(x+h)-u(x),h) v(x+h) + u(x) frac(v(x+h) - v(x), h)]\
  &= u'(x) v(x) + u(x) v'(x)\
  $
  除法求导法则的证明：设 $f(x) = display(u(x)/v(x))$，则有
  $ f'(x)
  &= lim_(h->0)(f(x+h) - f(x))/h
  = lim_(h->0)(frac(u(x+h),v(x+h))-frac(u(x),v(x)))/(h)\
  &= lim_(h->0) [ frac(
    (u(x+h)-u(x))/h v(x) - u(x) (v(x+h) - v(x))/h
  ,v(x+h) v(x)) ]\
  &= (u'(x) v(x) - u(x) v'(x))/(v^2(x))
  $
]

== 反函数的求导法则

设 $y=f(x)$ 为 $x=f^(-1)(y)$ 的反函数，$f^(-1)(y)$ 在 $y$ 的某领域内单调可导，且 $[f^(-1)(y)]!=0$：

$
f'(x) = 1/([f^(-1)(y)]') sp "或表示为" sp dy/dx = 1/(sp dx/dy sp)
$

#prof[
  1. 设 $y = arcsin x$，则 $x = sin y,sp y in (display(-pi/2\,pi/2))$，则：

  $
  (arcsin x)' &= 1/((sin y)') = 1/(cos y) = 1/(sqrt(1 - sin^2 y)) = 1/sqrt(1-x^2)\
  (arccos x)' &= (pi/2 - arcsin x)' = -1/sqrt(1-x^2)\
  (arctan x)' &= 1/((tan y)') = cos^2 y = 1/(1 + tan^2 y) = 1/(1+x^2)\
  (arccot x)' &= (pi/2 - arctan x)' = -1/(1+x^2)\
  $

  2. 设 $y=a^x$，则 $x = log_a y,sp y in (0,+oo)$，则：

  $
  (a^x)' = 1/((log_a y)') = y ln a = a^x ln a
  $
]

== 复合函数的求导法则

若 $u=g(x)$ 在点 $x$ 可导，$y=f(u)$ 在点 $u=g(x)$ 可导 $=>$ 复合函数 $y=f[g(x)]$ 在点 $x$ 可导，且 $display(dy/dx = f'(u) g'(x))$。

多层复合函数求导的情形：由外向内逐层求导。

#prof[
  #def[证明] $y=f(u)$ 在点 $u$ 可导 $=>$ $display(lim_(Du -> 0) Dy/Du = f'(u))$

  $=>$ $Dy = f'(u) Du + alpha Du$（当 $Du->0$ 时 $alpha->0$）

  $=>$ $display(Dy / Dx = f'(u) Du/Dx + alpha Du/Dx) quad (Delta x!=0)$

  由于 $u=g(x)$ 在点 $x$ 可导，所以 $u=g(x)$ 在点 $x$ 连续 $=>$ 当 $Dx->0$ 时 $Du->0$，同时有 $alpha->0$。

  $=> display(Dy/Dx = lim_(Dx->0) Dy/Dx = lim)$
]

#warn[
  不能直接用 $display(dy/dx = dy/du dot du/dx)$ 来证明，理由：可能 $du = 0$ 不能作分母。
]