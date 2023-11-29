#import "../template.typ": *

#show: project.with(
  title: "Calculus Note #3",
  authors: ((
    name: "memset0",
    email: "memset0@outlook.com",
    phone: "3230104585"
  ),),
  date: "November 28, 2023",
)

= 中值定理

== 费马引理

如果 $y=f(x)$ 在 $x_0$ 的零域有定义，且 $f(x)<=f(x_0)$（或 $f(x)>=f(x_0)$），$f'(x_0)$ 存在，那么 $f'(x_0) = 0$。

#prof[
  #def[证明]设 $forall x_0 + Dx in union.big (x_0),sp f(x_0 + Dx) <= f(x_0)$。则
  $
  f'(x_0) = lim_(Dx->0) (f(x_0+Dx) - f(x_0))/Dx
  => cases(
    f'_-(x_0) >= 0 (Dx->0^-),
    f'_+(x_0) <= 0 (Dx->0^+),
  )
  $
  由于 $f'(x_0)$ 存在，故只能有 $f'(x_0) = 0$。
]

== 罗尔定理

如果 $y=f(x)$ 满足在区间 $[a,b]$ 上连续，在区间 $(a,b)$ 内可导，且 $f(a)=f(b)$，那么至少存在一点 $xi in (a,b)$ 使得 $f'(xi) = 0$。

#prof[
  #def[证明]因为 $f'(x)$ 在 $[a,b]$ 连续，所以 $f'(x)$ 在 $[a,b]$ 上存在最大值 $M$ 和最小值 $m$。
  
  - 若 $M=m$，则 $f(x)$ 恒等于 $M$，$forall xi in (a,b),sp f'(xi)=0$；

  - 若 $M>m$，则其中至少有一个不在 $x=a$ 或 $x=b$ 时取到，不妨设 $M!=f(a)$，则至少存在一点 $xi in (a,b) st f(xi) = M$。根据费马引理，有 $f'(xi) = 0$。
]

#note[定理条件只是充分的，本定理可推广为：如果 $y=f(x)$ 在 $(a,b)$ 内可导且 $display(lim_(x->a^+) f(x))$ $=$ $display(lim_(x->b^-) f(x))$，那么 $exists xi in (a,b) st f'(xi) = 0$。]

== 拉格朗日中值定理

如果 $y=f(x)$ 满足在区间 $[a,b]$ 上连续，在区间 $(a,b)$ 上可导，那么至少存在一点 $xi in (a,b)$ 使得 $f'(xi) = display((f(b) - f(a))/(b-a))$。

#prof[
  #def[证明]问题转化为证 $f'(xi) = display((f(b) - f(a))/(b-a)) = 0$，作辅助函数
  $
  F(x) = f(x) - (f(b)-f(a))/(b-a) x
  $
  显然 $F(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 上可导，且 $F(a) = F(b)$。由罗尔定理知至少存在一点 $xi in (a,b)$ 使 $F'(xi) = 0$，即定理结论成立。

  或者考虑弦 $(a,f(a)),sp (b,f(b))$ 的方程：$display(f(a) + (f(b)-f(a))/(b-a) (x-a))$，作辅助函数：
  $
  F(x) = f(x) - f(a) - (f(b)-f(a))/(b-a) (x-a)
  $
  也可以证得同样的结论。
]

== 柯西中值定理

如果 $f(x)$ 及 $F(x)$ 满足在 $[a,b]$ 上连续，在 $(a,b)$ 内可导，且在 $(a,b)$ 内 $F'(x) != 0$，那么至少存在一点 $xi in (a,b)$ 使得 $display((f(b)-f(a))/(F(b)-F(a)) = (f'(xi))/(F'(xi)))$。

#prof[
  #def[证明]要证 $display((f(b)-f(a))/(F(b)-F(a)) F'(xi) - f'(xi) = 0)$，构造辅助函数
  $
  phi(x) = (f(b)-f(a))/(F(b)-F(a)) F(x) - f(x)
  $

  显然 $phi(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 上可导，且
  $
  phi(a) - phi(b)
  &= (f(b)-f(a))/(F(b)-F(a)) F(a) - f(a) - (f(b)-f(a))/(F(b)-F(a)) F(b) + f(a)\
  &= (f(b)-f(a))((F(a)-F(b))/(F(b)-F(a)) + 1) = 0
  $

  由罗尔定理知至少存在一点 $xi in (a,b)$ 使 $phi'(xi) = 0$，即定理结论成立。
]

= 洛必达法则

== 例题

#def[例1]求 $display(lim_(x->+oo) (x^n)/(e^(lambda x))) sp (n>0,lambda >0)$。

#prof[
  (1) $n in NN^+$ 的情形：
  $ "原式"
  &= lim_(x->+oo) (n x^(n-1))/(lambda e^(lambda x)) = lim_(x->+oo) (n(n-1) x^(n-2))/(lambda^2 e^(lambda x)) = dots.c = lim_(x->+oo) (n!)/(lambda^n e^(lambda x)) = 0
  $

  (2) $n in.not NN^+$ 的情形：
  
  存在正整数 $k$，使当 $x>1$ 时 $x^k < x^n < x^(k+1)$。从而
  $
  (x^k)/(e^(lambda x)) < (x^n)/(e^(lambda x)) < (x^(k+1))/(e^(lambda x))
  $
  由 $(1)$ 可得 $display(lim_(x->+oo) (x^k)/(e^(lambda x)) = lim_(x->+oo) (x^(k+1))/(e^(lambda x)) = 0)$。
]

#note[
  这表明当 $x->+oo$ 时，$ln x,sp x^n (x>0),sp e^(lambda x) (lambda >0)$，后者比前者趋于 $+oo$ 更快。
]

= 泰勒公式

== 泰勒公式与泰勒中值定理

若 $f(x)$ 在包含 $x_0$ 的某开区间 $(a,b)$ 内具有直到 $n+1$ 阶的导数，则当 $x in (a,b)$ 时，有
$
f(x) = f(x_0) + f'(x_0)(x-x_0) + (f''(x_0))/(2!) (x-x_0)^2 + dots.c + (f^((n))(x_0))/(n!) (x-x_0)^n + R_n (x) quad ①
$

其中 $display(R_n (x) = (f^((n+1))(xi))/((n+1)!) (x-x_0)^(n+1w)) sp (xi in (x_0,x)) quad ②$。注意到 $R_n (x) = o[(x-x_0)^n]$。

$①$ 式称为 $f(x)$ 的 $n$ 阶 *泰勒公式*，$②$ 式称为 $n$ 阶泰勒公式的 *拉格朗日余项*。

== 麦克劳林公式

在泰勒公式中若取 $x_0=0,sp xi = theta x sp (0<theta<1)$，则有
$
f(x) = f(0) + f'(0) x + (f''(0))/(2!) x^2 + dots.c + (f^((n))(x))/(n!) x^n + (f^((n+1))(theta x))/((n+1)!) x^(n+1)
$

称为 $f(x)$ 的 $n$ 阶 *麦克劳林公式*。

=== 常见函数的麦克劳林公式

$ e^x = 1 + x + x^2/(2!) + x^3/(3!) + dots.c + x^n/(n!) + R_n (x) $
其中 $R_n (x) = display((e^(theta x))/((n+1)!)) x^(n+1)$。

$ ln(1+x) = x - x^2/2 + x^3/3 - dots.c + (-1)^(n-1) x^n/(n) + R_n (x) $
其中 $display(R_n(x) = ((-1)^n x^(n+1))/((n+1) (1+theta x)^(n+1)) sp (0<theta<1))$。

$ sin x = x - x^3/(3!) + x^5/(5!) - dots.c + (-1)^(m-1) (x^(2m-1))/((2m-1)!) + R_(2m) (x) $
其中 $R_(2m) (x) = display((sin(theta x + (2m+1)/2 pi))/((2m+1)!)) x^(2m+1) = display(((-1)^m cos(theta x))/((2m+1)!) x^(2m+1)) sp (0<theta<1)$。

$ cos x = 1 - (x^2)/(2!) + (x^4)/(4!) + dots.c + (-1)^m (x^(2m))/((2m)!) + R_(2m+1) (x) $
其中 $R_(2m+1) (x) = display(((-1)^(m+1) cos (theta x))/((2m+2)!)) x^(2m+2) sp (0<theta<1)$。

$ (1+x)^alpha = 1 + alpha x + (alpha(alpha-1))/(2!) x^2 + dots.c + (alpha(alpha-1)dots.c(alpha-n+1))/(n!) x^n + R_n(x) quad (x> -1) $

其中 $R_(n) = display((alpha(alpha-1)dots.c(alpha-n))/((n+1)!) (1+theta x)^(alpha-n-1) x^(n+1))$。


= 函数的单调性

== 函数单调性的判定法

#def[定理1]设函数 $f(x)$ 在区间 $I$ 上连续，在区间 $I^O$ 内可导，则
#deft[定理1] (1) 若 $f'(x)>=0,sp x in I^O$，则 $f(x)$ 在 $I$ 上递增；
#deft[定理1] (2) 若 $f'(x)<=0,sp x in I^O$，则 $f(x)$ 在 $I$ 上递减；
#deft[定理1] (3) 若 $f'(x)=0,sp x in I^O$，则 $f(x)$ 在 $I$ 上恒等于常数 $c$；

#prof[
  #def[证明]任取 $x_1,x_2 in I sp (x_1<x_2)$，由拉格朗日中值定理得
  $ f(x_2) - f(x_1) = f'(xi) (x_2-x_1),quad xi in (x_1,x_2) in I $
  依次代入 (1)(2)(3) 的条件，可以得到对应结论。
]