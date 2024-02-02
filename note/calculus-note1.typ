#import "../template.typ": *

#show: project.with(
  title: "Calculus Note #1",
  authors: ((
		name: "memset0",
		email: "memset0@outlook.com",
		phone: "3230104585"
	),),
  date: "October 22, 2023",
)

= 常用公式

== 三角恒等变换

=== 和差角公式

$
sin(u pm v) = sin u cos v pm cos u sin v quad quad
cos(u pm v) = cos u cos v mp sin u sin v
$

=== 倍角公式

$
sin 2theta &= 2 sin theta cos theta\
cos 2theta &= cos^2 theta - sin^2 theta = 2 cos^2 theta - 1 = 1 - 2 sin^2 theta\
$

=== 半角公式

$
sin theta/2 = pm sqrt((1-cos theta)/2) quad quad 
cos theta/2 = pm sqrt((1+cos theta)/2)\
tan theta/2 = (sin theta)/(1 + cos theta) = (1 - cos theta)/(sin theta)
$

=== 和差化积

$
sin u + sin v = 2 sin (u+v)/2 cos (u-v)/2 quad quad
sin u - sin v = 2 cos (u+v)/2 sin (u-v)/2\
cos u + cos v = 2 cos (u+v)/2 cos (u-v)/2 quad quad
cos u - cos v = -2 sin (u+v)/2 sin (u-v)/2\
$

=== 积化和差

$
sin u cos v = 1/2(sin(u+v) + sin(u-v)) quad quad
cos u sin v = 1/2(sin(u+v) - sin(u-v))\
cos u cos v = 1/2(cos(u+v) + cos(u-v)) quad quad
sin u sin v = -1/2(cos(u+v) + cos(u-v))\
$

=== 万能公式

$
sin u = display(2 tan u/2) / display(1 + tan^2 u/2) quad quad
cos u = display(1 - tan^2 u/2) / display(1 + tan^2 u/2) quad quad
tan u = display(2 tan u/2) / display(1 - tan^2 u/2)
$

=== 辅助角公式

设 $A,B != 0$，那么 $A sin x + B cos x = sqrt(A^2 + B^2) sin(x + phi)$，其中 $phi$ 满足：

$ cases(
	sin phi = display(B/sqrt(A^2 + B^2)),
	cos phi = display(A/sqrt(A^2 + B^2)),
) $

== 二项式定理

$ (a+b)^n = sum_(i=0)^n binom(n,i) a^(n-i) b^i $

== 均值不等式

$
a
< 2/display(1/a+1/b)
< sqrt(a b)
< (a-b) / (ln a - ln b)
< (a+b)/2
< sqrt((a^2 + b^2) / 2)
< b
$

== 柯西不等式

== 伯努利不等式

设 $x>-1$，$alpha$ 是大于 $0$ 的有理数．

1. 如果 $alpha>1$，那么 $(1+x)^alpha >= 1 + alpha x$，当且仅当 $x=0$ 时取等；
2. 如果 $0<alpha<1$，那么 $(1+x)^alpha <= 1 + alpha x$，当且仅当 $x=0$ 时取等．

= 有界集、确界原理

== 有界集

#definition[
	既有上界，又有下界的数集称为*有界集*．因此 $ A "有界" quad <==> quad exists M_1, M_2 in RR,sp st forall x in A,sp M_2 <= x <= M_1 . $

	等价于 $ A "有界" quad<==>quad exists M>0,sp st forall x in A ,sp |x|<=M. $

	若 $A$ 不是有界集，则称 $A$ 为*无界集*．因此 $ A "无界" quad<==>quad forall M>0,sp exists x_0 in A,sp st |x_0| >M. $
]

== 确界

#definition[
	设 $A subset RR, A != emptyset$，若存在常数 $alpha$，满足：

	1. $forall x in A,sp x <= alpha.$（$alpha$ 是 $A$ 的一个上界）
	2. $forall eps>0,sp exists x_0 in A,sp st x_0>alpha-eps$（即 $alpha$ 是 $A$ 的最小上界）

	则称 $alpha$ 为数集 $A$ 的*上确界*，记为 $alpha=sup A$．同理可定义数集 $A$ 的*下确界*，记为 $beta=inf A$．
]

== 确界原理

#theorem(name: "有界集确界原理")[
- 非空有上界的数集，必有上确界．非空有下界的数集，必有下确界．
- 非空有界数集，必有上、下确界．
]

（不需要找出确界，只需要证明有界性即可说明确界存在）

= 数列的极限

#definition[
	设 ${a_n}$ 是一个数列，如果存在 $A in RR$，使得对于任意 $eps>0$ 都有 $N in N_+$ 使得对于任意 $n>N$ 都有 $|a_n-A|<eps$．那么称 ${a_n}$ 收敛于 $A$，并把 $A$ 称作*数列的极限*．

	$
	lim_(n->oo) a_n = A
	quad <==> quad
	forall eps>0,sp exists N in NN_+,sp st forall n>N,sp |a_n-A|<eps.
	$
]

#definition[
	如果存在 $A in RR$ 使得数列 ${a_n}$ 收敛于 $A$，则称数列 ${a_n}$ *收敛*，否则称其 *发散*．
]

#note[【证明数列收敛的方法】对于任意 $eps$ 先要求 $|a_n-A|<eps$ $=>$ 解不等式或利用其他性质得出 $N(eps)$ $=>$ 说明对于 $n>N(eps)$ 都成立 $=>$ 得证．]

== 性质

=== 唯一性

如果数列 ${a_n}$ 收敛，那么它的极限是唯一的．

#prof[
	证明：（反证法）设 $display(lim_(n->oo) x_n = a)$ 且 $display(lim_(n->oo) x_n=b)quad (a<b)$．取 $eps=(b-a)/2$．
	- 因 $display(lim_(n->oo) x_n = a)$，$exists N_1 in NN_+,sp st |x_n-a|<eps => x_n<(a+b)/2$；
	- 因 $display(lim_(n->oo) x_n = b)$，$exists N_2 in NN_+,sp st |x_n-b|<eps => x_n>(a+b)/2$；
	取 $N=max{N_1,N_2}$，则当 $n>N$ 时，$x_n$ 满足的不等式矛盾．故原命题为假．
]

=== 保号性

设 $display(lim_(n->oo) a_n = A)$，$display(lim_(n->oo) b_n = B)$．

1. 如果 $A>B$，那么存在 $N in NN_+$ 使得 $forall n>N,sp a_n>b_n$．（取不到等号）

2. 如果存在 $N in NN_+$ 使得 $forall n>N,sp a_n>=b_n$，那么 $A>=B$．

#prof[
	#def[证明]
	1. 取 $eps=(A-B)/2$，于是存在 $N_1,N_2 in NN_+$，使得
	   $ cases(
	   	forall n>N_1\,sp |a_n-A|<eps => a_n>A-eps = (A+B)/2,
	   	forall n>N_2\,sp |b_n-B|<eps => b_n<B+eps = (A+B)/2,
	   ) $
	   取 $N=max{N_1,N_2}$，当 $n>N$ 时，有 $a_n>(A+B)/2>b_n$．

	2. 证明：（反证法）假设 $A<B$，根据前面的结论 $exists N' in NN_+,sp st forall n>N',sp b_n>a_n$，矛盾．故假设不成立，应有 $A>=B$．
]

=== 列与子列的性质

1. 如果极限存在，那么任何一个子列都有相同的极限。

2. 要证明一个数列极限不存在，只需要找到两个子列不相等或者至少一个子列极限不存在。

#note[常用于证明极限不存在的问题。]

=== 四则运算法则

已知 $display(lim_(n->oo) a_n = A\,sp lim_(n->oo) b_n=B)$，那么

1. （加减法）$display(lim_(n->oo) (a_n pm b_n) = A pm B)$；

2. （乘法）$display(lim_(n->oo) a_n b_n = A B)$；

3. （除法）若 $b_n != 0$ 且 $B != 0$，则 $display(lim_(n->oo) a_n/b_n = A/B)$．

#warn[四则运算法则可以被 *有限次* 嵌套使用．注意这里要求各部分的极限都存在，故不能直接从 $display(lim_(n->oo) (a_n-b_n) = 0)$ 推出 $display(lim_(n->oo) a_n = lim_(n->oo) b_n)$．]

=== 夹逼定理

设数列 ${a_n}, {x_n}, {y_n}$，如果存在 $N in NN_+$ 满足：
$
forall n>N,sp x_n<=a_n<=y_n
quad and quad
lim_(n->oo)x_n = lim_(n->oo)y_n = c
$
那么 ${a_n}$ 收敛于 $c$．

#note[这是常用的计算数列极限的手段，特别是能猜出这个极限的时候．]

=== 单调有界定理

如果数列 ${a_n}$ 单增有上界或者单减有下界，那么 ${a_n}$ 收敛．

#note[这是常用的证明数列存在的证据，特别是不方便直接求出或者暂不知道这个极限的时候．]

= 函数的极限

== 定义

=== 函数在无穷处的极限

$display(lim_(x->+oo) f(x) = A)$ 的定义：设 $f(x)$ 的定义域为 $RR$．如果对于任意 $eps>0$，存在实数 $X$ 使得 $forall x>X$，$|f(x)-A|<eps$，那么称 $f(x)$ 当 $x$ 趋于正无穷时收敛与 $A$ 处的极限，也记作 $f(+oo)$．（$display(lim_(x->-oo) f(x) = A)$ 的定义同理）

$
lim_(x->oo) f(x) = A <==>
lim_(x->+oo) f(x) = A and lim_(x->-oo) f(x) = A
$

=== 函数在单点处的极限

$display(lim_(x->x_0^+) f(x) = A)$ 的定义：如果对于任意 $eps>0$，存在 $delta>0$ 使得 $forall x in (x_0,x_0 +delta)$，$|f(x)-A| < eps$，那么称 $f(x)$ 当 $x$ 从右侧趋于 $x_0$ 时收敛于 $A$，也记作 $f(x_0^+)$

$
lim_(x->x_0) f(x) = A <==>
lim_(x->x_0^+) f(x) = A and lim_(x->x_0^-) f(x) = A
$

=== 两个重要极限

$
lim_(x->0) (sin x) / x = 1
quad quad quad
lim_(x->oo) (1 + 1/x)^x = e
$

#warn[使用这两个重要极限时，注意 $x$ 趋向的值，实际上有 $display(lim_(x->oo) (sin x) / x = 0 != 1)$．]

== 性质

函数极限的唯一性、局部有界性、局部保号性、单调有界定理、夹逼定理，可以类比数列极限。

=== 海涅定理（归结定理）

$display(lim_(x->a) f(x) = A)$ 的充分必要条件是：对于任意满足 $display(lim_(n->oo) x_n) = a$ 且 $x_n != a sp (n=1,2,dots.c)$ 的数列 ${x_n}$，相应的函数值数列 ${f(x_n)}$ 满足 $display(lim_(n->oo) f(x_n) = A)$。

#note[
	海涅定理是连接数列极限和函数极限的桥梁：

	1. 求数列极限时，可以将 $n$ 换为 $x$，将 $n->oo$ 换为 $x->+oo$，如果能够算出 $lim_(x->+oo) f(x) = A$，那么原数列极限 $display(lim_(n->oo) a_n)$ 一定存在且等于 $A$。

	2. 判断函数极限 $display(lim_(x->a) f(x))$ 不存在：找两个不等于 $a$ 的子列 ${x_n},{y_n}$，他们的极限均为 $a$，但 $display(lim_(n->oo) f(x_n))$ 和 $display(lim_(n->oo) f(y_n))$ 不相等或至少一个不存在，那么 $display(lim_(x->a) f(x))$ 一定不存在。
]

=== 四则运算、复合运算性质

如果 $display(lim_(x->x_0)f(x) = A),sp display(lim_(x->x_0) f(x) = B)$，那么：

1. $display(lim_(x->x_0) (f(x) pm g(x)) = A pm B)$；
2. $display(lim_(x->x_0) f(x) g(x) = A B)$；
3. 若 $B!=0$ 且 $g$ 在 $x_0$ 的一个领域内不为 $0$，则 $display(lim_(x->x_0) f(x)/g(x) = A/B)$；
4. 如果 $display(lim_(y->A) F(y) = C)$，并且存在 $x_0$ 的一个邻域使得 $f(x) != A$，那么我们有 $display(lim_(x->x_0) F(f(x)) = C)$．

== 无穷小

=== 阶与等价

设 $alpha,beta$ 是同一变化过程中的无穷小．

- 若 $lim display(beta/alpha) = 0$，则称 $beta$ 是比 $alpha$ *高阶* 的无穷小，记作 $beta = o(alpha)$；

- 若 $lim display(beta/alpha) = oo$，则称 $beta$ 是比 $alpha$ *低阶* 的无穷小；

- 若 $lim display(beta/alpha) = C != 0$，则称 $beta$ 是 $alpha$ 的 *同阶* 无穷小；

- 若 $lim display(beta/alpha^k) = C != 0$，则称 $beta$ 是 $alpha$ 的 *$k$ 阶* 无穷小；

- 若 $lim display(beta/alpha) = 1$，则称 $beta$ 是 $alpha$ 的 *等价* 无穷小，记作 $alpha sim beta$．

=== 等价替换

如果 $x->x_0$ 时，$f(x) sim g(x)$ 且 $display(lim_(x->x_0) f(x)/h(x) = A "或 " oo)$；那么 $display(lim_(x->x_0) g(x)/h(x) = A "或 " oo)$．

#note[
	#def[总结]*常用的等价无穷小*：当 $x->0$ 时
	$
	sin x sim x sim tan x sim arcsin x sim arctan x sim ln(1+x) sim e^x-1\
	1 - cos x sim 1/2 x^2 quad quad 1-cos^a x = (a x^2)/2 quad quad x-sin x sim x^3/6 quad quad tan x - x sim x^3/3\
	(1+x)^a - 1 sim a x
	$
]


= 连续与间断

=== 定义

如果 $display(lim_(x->a) f(x) = f(a))$，则称 $f(x)$ 在 $x=a$ 处 *连续*。如果左极限、右极限和 $f(x)$ 中有一个不存在或不相等，则称 $f(x)$ 在 $x=a$ 处 *间断*。

如果 $f(x)$ 在区间 $(a,b)$ 内每一个点都连续，且 $display(lim_(x->a^+) f(x) = f(a) \, lim_(x->b^-) f(x) = f(b))$，则称 $f(x)$ 在区间 $[a,b]$ 上连续，记 $f(x) in C[a,b]$。

=== 间断点

==== 第一类间断点 

若 $f(x)$ 在 $x=a$ 处间断且 $f(a^+)$ 和 $f(a^-)$ 都存在，满足

1. $f(a^+) = f(a^-) != f(a)$，称 $x=a$ 为 $f(x)$ 的可去间断点。
1. $f(a^+) != f(a^-)$，称 $x=a$ 为 $f(x)$ 的跳跃间断点。

==== 第二类间断点

若 $f(x)$ 在 $x=a$ 处间断，且 $f(a^+)$ 与 $f(a^-)$ 中至少一个不存在，满足：

1. $lim_(x->a) f(x) = oo$，则称 $x=a$ 为 $f(x)$ 的无穷间断点。

2. 除1以外的其他情况，则称 $x=a$ 为 $f(x)$ 的跳跃间断点。

=== 性质

1. （最值定理）若 $f(x) in C[a,b]$，则 $f(x)$ 在 $[a,b]$ 上一定存在最小值 $m$ 和最大值 $M$。

2. （有界定理）若 $f(x) in C[a,b]$，则 $f(x)$ 在 $[a,b]$ 上一定有界。

3. （零点定理）若 $f(x) in C[a,b]$，且 $f(a) f(b) < 0$，则 $exists xi in (a,b) st f(xi) = 0$。

4. （介值定理）若 $f(x) in C[a,b]$，$forall eta in [m,M],sp exists xi in [a,b] st f(xi) = eta$。