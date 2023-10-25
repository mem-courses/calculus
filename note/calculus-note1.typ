#import "../template.typ": *

#show: project.with(
  title: "Calculus Note #1",
  authors: ((
		name: "Yulun Wu (#47)",
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

既有上界，又有下界的数集称为 *有界集*．因此 $ A "有界" quad<==>quad exists M_1,M_2 in RR,sp st forall x in A ,sp M_2<=x<=M_1. $

等价于 $ A "有界" quad<==>quad exists M>0,sp st forall x in A ,sp |x|<=M. $

若 $A$ 不是有界集，则称 $A$ 为无界集．因此 $ A "无界" quad<==>quad forall M>0,sp exists x_0 in A,sp st |x_0| >M. $

== 确界

设 $A subset RR, A != emptyset$，若存在常数 $alpha$，满足：

1. $forall x in A,sp x <= alpha.$（$alpha$ 是 $A$ 的一个上界）
2. $forall eps>0,sp exists x_0 in A,sp st x_0>alpha-eps$（即 $alpha$ 是 $A$ 的最小上界）

则称 $alpha$ 为数集 $A$ 的 *上确界*，记为 $alpha=sup A$．同理可定义数集 $A$ 的 *下确界*，记为 $beta=inf A$．

== 确界原理

- 非空有上界的数集，必有上确界．非空有下界的数集，必有下确界．
- 非空有界数集，必有上、下确界．

（不需要找出确界，只需要证明有界性即可说明确界存在）

= 数列的极限

== 定义

设 ${a_n}$ 是一个数列，如果存在 $A in RR$，使得对于任意 $eps>0$ 都有 $N in N_+$ 使得对于任意 $n>N$ 都有 $|a_n-A|<eps$．那么称 ${a_n}$ 收敛于 $A$，并把 $A$ 称作数列的极限．

$
lim_(n->oo) a_n = A
quad <==> quad
forall eps>0,sp exists N in NN_+,sp st forall n>N,sp |a_n-A|<eps.
$

如果存在 $A in RR$ 使得数列 ${a_n}$ 收敛于 $A$，则称数列 ${a_n}$ *收敛*，否则称其 *发散*．

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
	1. 证明：取 $eps=(A-B)/2$，于是存在 $N_1,N_2 in NN_+$，使得
		#block(width: 100%)[$ cases(
			forall n>N_1\,sp |a_n-A|<eps => a_n>A-eps=(A+B)/2,
			forall n>N_2\,sp |b_n-B|<eps => b_n<B+eps=(A+B)/2,
		) $]
		取 $N=max{N_1,N_2}$，当 $n>N$ 时，有 $a_n>(A+B)/2>b_n$．
]

#prof[
	2. 证明：（反证法）假设 $A<B$，根据前面的结论 $exists N' in NN_+,sp st forall n>N',sp b_n>a_n$，矛盾．故假设不成立，应有 $A>=B$．
]

=== 四则运算法则

已知 $display(lim_(n->oo) a_n = A\,sp lim_(n->oo) b_n=B)$，那么

1. （加减法）$display(lim_(n->oo) (a_n pm b_n) = A pm B)$；

2. （乘法）$display(lim_(n->oo) a_n b_n = A B)$；

3. （除法）若 $b_n != 0$ 且 $B != 0$，则 $display(lim_(n->oo) a_n/b_n = A/B)$．

#warn[四则运算法则可以被有限次嵌套使用．注意要求极限都存在，故不能直接从 $display(lim_(n->oo) (a_n-b_n) = 0)$ 推出 $display(lim_(n->oo) a_n = lim_(n->oo) b_n)$。]

=== 夹逼定理

设数列 ${a_n}, {x_n}, {y_n}$，如果存在 $N in NN_+$ 使得：$ forall n>N, x_n<=a_n<=y_n $ 并且 $ lim_(n->oo)x_n = lim_(n->oo)y_n = c $ 那么 ${a_n}$ 收敛于 $c$．

#note[这是常用的计算数列极限的手段，特别是能猜出这个极限的时候。]

=== 单调有界定理

如果数列 ${a_n}$ 单增有上界或者单减有下界，那么 ${a_n}$ 收敛。

#note[这是常用的证明数列存在的证据，特别是不知道这个极限的时候。]

= 函数的极限

== 定义

=== 函数在无穷处的极限

$display(lim_(x->+oo) f(x) = A)$ 的定义：设 $f(x)$ 的定义域为 $RR$。如果对于任意 $eps>0$，存在实数 $X$ 使得 $forall x>X$，$|f(x)-A|<eps$，那么称 $f(x)$ 当 $x$ 趋于正无穷时收敛与 $A$ 处的极限，也记作 $f(+oo)$。（$display(lim_(x->-oo) f(x) = A)$ 的定义同理）

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

#warn[注意取到极限的位置。如其实 $display(lim_(x->oo) (sin x) / x = 0 != 1)$。]

== 性质

=== 唯一性
=== 局部有界性
=== 局部保号性
=== 四则运算+复合运算性质

如果 $display(lim_(x->x_0)f(x) = A),sp display(lim_(x->x_0) f(x) = B)$，那么：

1. $display(lim_(x->x_0) (f(x) pm g(x)) = A pm B)$；
2. $display(lim_(x->x_0) f(x) g(x) = A B)$；
3. 若 $B!=0$ 且 $g$ 在 $x_0$ 的一个领域内不为 $0$，则 $display(lim_(x->x_0) f(x)/g(x) = A/B)$；
4. 如果 $display(lim_(y->A) F(y) = C)$，并且存在 $x_0$ 的一个领域使得 $f(x) != A$，那么我们有 $display(lim_(x->x_0) F(f(x)) = C)$。

=== 夹逼定理

== 无穷大与无穷小

=== 阶与等价

设 $alpha,beta$ 是同一变化过程中的无穷小。

- 若 $lim display(beta/alpha) = 0$，则称 $beta$ 是比 $alpha$ *高阶* 的无穷小，记作 $beta = o(alpha)$；

- 若 $lim display(beta/alpha) = oo$，则称 $beta$ 是比 $alpha$ *低阶* 的无穷小；

- 若 $lim display(beta/alpha) = C != 0$，则称 $beta$ 是 $alpha$ 的 *同阶* 无穷小；

- 若 $lim display(beta/alpha^k) = C != 0$，则称 $beta$ 是 $alpha$ 的 *$k$ 阶* 无穷小；

- 若 $lim display(beta/alpha) = 1$，则称 $beta$ 是 $alpha$ 的 *等价* 无穷小，记作 $alpha sim beta$。


=== 等价替换

如果 $display(f(x) sim g(x)\,quad (x->x_0))$ 且 $display(lim_(x->x_0) f(x)/h(x) = A "或" oo)$；那么 $display(lim_(x->x_0) g(x)/h(x) = A "或" oo)$。

#note[
	【常用的等价无穷小】
	当 $x->0$ 时，$sin x sim x sim tan x,sp 1 - cos x sim 1/2 x^2,sp cos x sim 1$。
]

== 函数的连续性

设函数 $f(x)$ 在 $x_0$ 附近有定义：

1. 称 $f(x)$ 在 $x_0$ 处 *连续*，如果 $display(lim_(x->x_0) f(x)) = f(x_0)$；
2. 称 $f(x)$ 在 $x_0$ 处 *左连续*，如果 $display(lim_(x->x_0^-) f(x)) = f(x_0)$；
3. 称 $f(x)$ 在 $x_0$ 处 *右连续*，如果 $display(lim_(x->x_0^+) f(x)) = f(x_0)$；
4. 称 $f(x)$ 在集合 $D$ 上连续，如果 $f(x)$ 在 $D$ 上所有点都连续。