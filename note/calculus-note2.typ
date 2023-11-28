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

设 $f(x)$ 在点 $x_0$ 的邻域有定义，若 $display(lim_(x->x_0)frac(f(x)-f(x_0),x-x_0) = lim_(Delta x->0)frac(Delta y,Delta x))$ 存在，则称 $f(x)$ 在点 $x_0$ 处可导，并称此极限为 $y=f(x)$ 在点 $x_0$ 的导数．

若函数在开区间 $I$ 内的每点都可导，就称函数在 $I$ 内可导．此时函数值构成的新函数称导函数．

#def[定理1]函数 $y=f(x)$ 在点 $x_0$ 可导的充分必要条件是其在点 $x_0$ 处的左右导数存在且相等（$f'_-(x_0) = f'_+(x_0)$）．

#def[定理2]可导一定连续，连续不一定可导．
#note[重要反例：$y=|x|$ 在 $x=0$ 处连续，但不可导．]

== 导数的几何意义

- 切线方程：$y-y_0 = f'(x_0)(x-x_0)$；

- 法线方程：$y-y_0 = display(-1/(f'(x_0)) (x-x_0)) sp (f'(x_0) != 0)$（与切线垂直）．

若 $f'(x_0) = 0$，切线与 $x$ 轴平行，且称 $x_0$ 为驻点．

== 高阶导数

若函数 $y=f(x)$ 的导数 $y'=f'(x)$ 可导，则称 $f'(x)$ 的导数为 $f(x)$ 的二阶导数，记作 $y''$ 或 $display(ddy/(dx^2))$．

函数 $y=f(x)$ 的 $n$ 阶导数可以记为 $y^((n))$ 或 $display(dny/(dx^n))$．

= 求导

== 基本初等函数的求导公式

$
& (C)'=0 quad quad quad quad quad quad quad quad quad quad && (x^mu)' = mu x^(mu - 1)\
& (sin x)' = cos x && (cos x)' = -sin x\
& (tan x)' = sec^2 x && (cot x)' = -csc^2 x\
& (sec x)' = sec x tan x && (csc x)' = -csc x cot x\
& (a^x)' = a^x ln a && (e^x)' = e^x\
& (log_a x)' = display(1/(x ln a)) && (ln x)' = display(1/x)\
& (arcsin x)' = display(1/sqrt(1-x^2)) && (arccos x)' = -display(1/sqrt(1-x^2))\
& (arctan x)' = display(1/(1+x^2)) && (arccot x)' = -display(1/(1+x^2))\
$

#note[#def[定理]初等函数在定义区间内可导，且导数仍为初等函数．]

#prof[
  #def[证明思路]通过构造性定义和两个重要极限得到 $(C)'=0$、$(sin x)' = cos x$、$(ln x)' = 1/x$，再利用求导法则得到其他基本初等函数的求导公式．
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

#note[
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

若 $u=g(x)$ 在点 $x$ 可导，$y=f(u)$ 在点 $u=g(x)$ 可导 $=>$ 复合函数 $y=f[g(x)]$ 在点 $x$ 可导，且 $display(dy/dx = f'(u) g'(x))$．

多层复合函数求导的情形：由外向内逐层求导．

#prof[
  #def[证明] $y=f(u)$ 在点 $u$ 可导 $=>$ $display(lim_(Du -> 0) Dy/Du = f'(u))$

  $=>$ $Dy = f'(u) Du + alpha Du$（当 $Du->0$ 时 $alpha->0$）

  $=>$ $display(Dy / Dx = f'(u) Du/Dx + alpha Du/Dx) quad (Delta x!=0)$

  由于 $u=g(x)$ 在点 $x$ 可导，所以 $u=g(x)$ 在点 $x$ 连续 $=>$ 当 $Dx->0$ 时 $Du->0$，同时有 $alpha->0$．

  $=> display(Dy/Dx = lim_(Dx->0) Dy/Dx = lim)$

  我们可以用类似 $display(Dy/Dx = Dy/Du dot Du/Dx)$ 的语言来表述，但这不严谨（有可能 $Du=0$）．
]

== 高阶导数的求导法则

=== 常用的高阶导数公式

$
& (1/(a+x))^((n)) = (-1)^n (n!)/(a+x)^(n+1) quad quad quad quad
&& (1/(a-x))^((n)) = (n!)/(a-x)^(n+1)\
$

=== 莱布尼茨（Leibniz）公式

设函数 $u=u(x)$ 及 $v=v(x)$ 均有 $n$ 阶导数，则有：

$
(u v)^((n))
= & u^((n)) v
+ n u^((n-1)) v'
+ (n(n-1))/2 u^((n-2)) v''
+ dots.c
+\ &(n(n-1)dots.c(n-k+1))/(k!) u^((n-k)) v^((k))
+ dots.c
+ u v^((n))
$

= 微分

设 $y=f(x)$ 在 $x$ 的某邻域 $U(x)$ 内有定义，若 $Dy=f(x+Dx)-f(x)$ 可表示为：

$ Dy=A Dx+o(Dx) quad (Dx->0) $

其中 $A$ 是与 $Dx$ 无关的量，则称 $y=f(x)$ 在点 $x$ 处可微．$A Dx$ 是 $Dy$ 的 *线性主部*，并称其为 $y=f(x)$ 在点 $x$ 处的微分，记为 $dy=A Dx$．

== 可微与可导的关系

函数 $y=f(x)$ 在点 $x_0$ 可微的 *充要条件* 是 $y=f(x)$ 在点 $x_0$ 可导，且 $A=f'(x_0)$，即

$ dy=f'(x)dx <==> dy/dx=f'(x) $

所以导数又称微商，可以将 $display(dy/dx)$ 看作 $dy$ 和 $dx$ 的商．

#prof[
  #def[充分性证明]已知 $y=f(x)$ 在点 $x_0$ 可导，那么：
  $ lim_(x->x_0) Dy/Dx=f'(x_0) => Dy/Dx=f'(x_0)+alpha $  

  且 $display(lim_(Dx->0) alpha=0)$，故
  $ Dy = f'(x_0) Dx+alpha Dx=f'(x_0) Dx+ o(Dx) $

  #def[必要性证明]已知 $y=f(x)$ 在点 $x_0$ 可微，那么：
  $ Dy=f(x_0+Dx)-f(x_0) = A Dx+o(Dx)\
  => lim_(Dx->0) Dy/Dx=lim_(Dx->0) (A+(o(Dx))/Dx) = A $

  故 $f'(x)$ 在 $x_0$ 可导且 $f'(x_0) = A$．
]

= 参数式函数的导数

若曲线上任一点的直角坐标 $(x,y)$ 分别可被表示为关于某第三变量 $t$ 的函数，即$display(cases(x=phi(t),y=psi(t)))$，则有以下结论．

1. 若 $x=phi(t),y=psi(t)$ 均可导且 $phi(t)!=0$，则：
  $ dy/dx
  = (dd psi(t))/(dd phi(t))
  = (psi'(t) dt)/(phi(t) dt)
  = (psi'(t))/(phi'(t))
  $

2. 若 $x=phi(t),y=psi(t)$ 均二阶可导且 $phi(t)!=0$，则：
  $ ddy/(dx^2)
  = (dd (display(dy/dx)))/dx
  = (dd (display((psi'(t))/(phi'(t)))))/(dd phi(t))
  = display((psi''(t)phi'(t) - psi'(t)phi''(t))/((phi'(t))^2)dt)/(phi'(t)dt)
  = (psi''(t)phi'(t) - psi'(t)phi''(t))/((phi'(t))^3)
  $

#warn[注意到与 $display(dy/dx)$ 不同，$display(ddy/(dx^2))$ 须看成整体的记号，如果认为是 $(dx)^2$ 而直接进行与其他微分相消的话就可能出现错误．]

= 极坐标方程确定函数的导数

同一点的直角坐标 $(x,y)$ 与极坐标 $(r,theta)$ 满足以下关系：

$
x=r cos theta,sp y=r cos theta\
r^2 = x^2+y^2, sp tan theta=y/x sp (x!=0)
$

#prob[
  #def[例题]求曲线 $r=a sin 2 theta$（$a$ 是常数）在 $theta=display(pi/4)$ 处的法线方程．

  令 $display(cases(
    x=r cos theta=a sin 2theta cos theta=2a sin theta cos^2 theta,
    y=r sin theta=a sin 2theta sin theta=2a sin^2 theta cos theta,
  ))$，所以

  $ dy/dx
  = display(dy/(dd theta))/display(dx/(dd theta))
  = display(2a cos^3 theta - 4a sin^2 theta cos theta)/display(4a sin theta cos^2 theta - 2a sin^3 theta)
  $

  代入 $display(theta=pi/4)$ 得 $display(dy/dx = -1)$，所以法线方程为 $display(y-sqrt(2)/2 a = x-sqrt(2)/2 a) => y=x$．
]

= 近似与误差

== 近似计算

若 $y=f(x)$ 在点 $x_0$ 处可微，则有$ Dy=f(x_0+Dx)-f(x_0) = f'(x_0)Dx+o(Dx) quad(Dx->0) $

TBD（添加课件里的一些近似计算公式）

== 误差估计
