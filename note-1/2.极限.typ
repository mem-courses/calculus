#import "../template.typ": *

#show: project.with(
	course: "Calculus I",
	course_fullname: "Calculus (A) I",
	course_code: "821T0150",
	semester: "Autumn-Winter 2023",
	title: "Note #2 极限",
	authors: ((
		name: "memset0",
		email: "memset0@outlook.com",
		id: "3230104585"
	),),
	date: "October 22, 2023",
)


= 数列的极限

#definition[
	设 ${a_n}$ 是一个数列，如果存在 $A in RR$，使得对于任意 $eps>0$ 都有 $N in N_+$ 使得对于任意 $n>N$ 都有 $|a_n-A|<eps$。那么称 ${a_n}$ 收敛于 $A$，并把 $A$ 称作#bb[数列的极限]。

	$
	lim_(n->oo) a_n = A
	quad <==> quad
	forall eps>0,sp exists N in NN_+,sp st forall n>N,sp |a_n-A|<eps.
	$
]

#definition[
	如果存在 $A in RR$ 使得数列 ${a_n}$ 收敛于 $A$，则称数列 ${a_n}$ #bb[收敛]，否则称其#bb[发散]。
	
	#note[
		【证明数列收敛的方法】对于任意 $eps$ 先要求 $|a_n-A|<eps$ $=>$ 解不等式或利用其他性质得出 $N(eps)$ $=>$ 说明对于 $n>N(eps)$ 都成立 $=>$ 得证。
	]
]

== 数列极限的性质

#property(name: "唯一性")[
	如果数列 ${a_n}$ 收敛，那么它的极限是唯一的。

	#proof[
		（反证法）设 $display(lim_(n->oo) x_n = a)$ 且 $display(lim_(n->oo) x_n=b)quad (a<b)$。取 $eps=(b-a)/2$。
		- 因 $display(lim_(n->oo) x_n = a)$，$exists N_1 in NN_+,sp st |x_n-a|<eps => x_n<(a+b)/2$；
		- 因 $display(lim_(n->oo) x_n = b)$，$exists N_2 in NN_+,sp st |x_n-b|<eps => x_n>(a+b)/2$；
		取 $N=max{N_1,N_2}$，则当 $n>N$ 时，$x_n$ 满足的不等式矛盾。故原命题为假。
	]
]

#property(name: "保号性")[
	设 $display(lim_(n->oo) a_n = A)$，$display(lim_(n->oo) b_n = B)$。

	1. 如果 $A>B$，那么存在 $N in NN_+$ 使得 $forall n>N,sp a_n>b_n$。（取不到等号）

	2. 如果存在 $N in NN_+$ 使得 $forall n>N,sp a_n>=b_n$，那么 $A>=B$。

	#proof[
		1. 取 $eps=(A-B)/2$，于是存在 $N_1,N_2 in NN_+$，使得
			$ cases(
				forall n>N_1\,sp |a_n-A|<eps => a_n>A-eps = (A+B)/2,
				forall n>N_2\,sp |b_n-B|<eps => b_n<B+eps = (A+B)/2,
			) $
			取 $N=max{N_1,N_2}$，当 $n>N$ 时，有 $a_n>(A+B)/2>b_n$。

		2. 证明：（反证法）假设 $A<B$，根据前面的结论 $exists N' in NN_+,sp st forall n>N',sp b_n>a_n$，矛盾。故假设不成立，应有 $A>=B$。
	]
]

#property(name: "列与子列的性质")[

	1. 如果极限存在，那么任何一个子列都有相同的极限。

	2. 要证明一个数列极限不存在，只需要找到两个子列不相等或者至少一个子列极限不存在。
]

#note[常用于证明极限不存在的问题。]

#property(name: "四则运算法则")[
	已知 $display(lim_(n->oo) a_n = A\,sp lim_(n->oo) b_n=B)$，那么

	1. （加减法）$display(lim_(n->oo) (a_n pm b_n) = A pm B)$；

	2. （乘法）$display(lim_(n->oo) a_n b_n = A B)$；

	3. （除法）若 $b_n != 0$ 且 $B != 0$，则 $display(lim_(n->oo) a_n/b_n = A/B)$。
	
	#caution[
		1. 这里要求各部分的极限都存在，故不能直接从 $display(lim_(n->oo) (a_n-b_n) = 0)$ 推出 $display(lim_(n->oo) a_n = lim_(n->oo) b_n)$，有可能两个极限都不存在。

		2. 四则运算法只允许被*有限次*嵌套使用，反例如 $display(lim_(n->oo) sum_(i=1)^n 1/n = 1 != lim_(n->oo) sum_(i=1)^n 0)$。
	]
]

#theorem(name: "夹逼定理")[
	设数列 ${a_n}, {x_n}, {y_n}$，如果存在 $N in NN_+$ 满足：
	$
	forall n>N,sp x_n<=a_n<=y_n
	quad and quad
	lim_(n->oo)x_n = lim_(n->oo)y_n = c
	$
	那么 ${a_n}$ 收敛于 $c$。

	#note[这是常用的计算数列极限的手段，特别是能猜出这个极限的时候。]
]

#theorem(name: "单调有界定理")[
	如果数列 ${a_n}$ 单增有上界或者单减有下界，那么 ${a_n}$ 收敛。

	#note[这是常用的证明数列存在的证据，特别是不方便直接求出或者暂不知道这个极限的时候。]
]

= 函数的极限

#definition[
	函数在无穷处的极限 $display(lim_(x->+oo) f(x) = A)$ 的定义：设 $f(x)$ 的定义域为 $RR$。如果对于任意 $eps>0$，存在实数 $X$ 使得 $forall x>X$，$|f(x)-A|<eps$，那么称 $f(x)$ 当 $x$ 趋于正无穷时收敛与 $A$ 处的极限，也记作 $f(+oo)$。（$display(lim_(x->-oo) f(x) = A)$ 的定义同理）

	$
	lim_(x->oo) f(x) = A <==>
	lim_(x->+oo) f(x) = A and lim_(x->-oo) f(x) = A
	$
]

#definition[
	函数在单点处的极限 $display(lim_(x->x_0^+) f(x) = A)$ 的定义：设 $f(x)$ 在 $x_0$ 的右领域内有定义。如果对于任意 $eps>0$，存在 $delta>0$ 使得 $forall x in (x_0,x_0 +delta)$，$|f(x)-A| < eps$，那么称 $f(x)$ 当 $x$ 从右侧趋于 $x_0$ 时收敛于 $A$，也记作 $f(x_0^+)$

	$
	lim_(x->x_0) f(x) = A <==>
	lim_(x->x_0^+) f(x) = A and lim_(x->x_0^-) f(x) = A
	$
]

== 两个重要极限

#lemma[$display(lim_(x->0) (sin x) / x = 1)$。]

#lemma[$display(lim_(x->oo) (1 + 1/x)^x = e)$。]

#caution[需要注意取到极限的位置，如实际上有 $display(lim_(x->oo) (sin x) / x = 0 != 1)$。]

== 函数极限的性质

函数极限的唯一性、局部有界性、局部保号性、单调有界定理、夹逼定理，可以类比数列极限，这里省略不记。

#property(name: "四则运算、复合运算法则")[
	如果 $display(lim_(x->x_0)f(x) = A),sp display(lim_(x->x_0) f(x) = B)$，那么：

	1. $display(lim_(x->x_0) (f(x) pm g(x)) = A pm B)$；
	2. $display(lim_(x->x_0) f(x) g(x) = A B)$；
	3. 若 $B!=0$ 且 $g$ 在 $x_0$ 的一个领域内不为 $0$，则 $display(lim_(x->x_0) f(x)/g(x) = A/B)$；
	4. 如果 $display(lim_(y->A) F(y) = C)$，并且存在 $x_0$ 的一个邻域使得 $f(x) != A$，那么我们有 $display(lim_(x->x_0) F(f(x)) = C)$。
]

#property(name: "海涅定理，归结定理")[
	$display(lim_(x->a) f(x) = A)$ 的充分必要条件是：对于任意满足 $display(lim_(n->oo) x_n) = a$ 且 $x_n != a sp (n=1,2,dots.c)$ 的数列 ${x_n}$，相应的函数值数列 ${f(x_n)}$ 满足 $display(lim_(n->oo) f(x_n) = A)$。

	#note[
		海涅定理是连接数列极限和函数极限的桥梁：

		1. 求数列极限时，可以将 $n$ 换为 $x$，将 $n->oo$ 换为 $x->+oo$，如果能够算出 $display(lim_(x->+oo) f(x) = A)$，那么原数列极限 $display(lim_(n->oo) a_n)$ 一定存在且等于 $A$。

		2. 判断函数极限 $display(lim_(x->a) f(x))$ 不存在：找两个不等于 $a$ 的子列 ${x_n},{y_n}$，他们的极限均为 $a$，但 $display(lim_(n->oo) f(x_n))$ 和 $display(lim_(n->oo) f(y_n))$ 不相等或至少一个不存在，那么 $display(lim_(x->a) f(x))$ 一定不存在。
	]
]

== 无穷小

#definition[
	设 $alpha,beta$ 是同一变化过程中的无穷小。

	- 若 $lim display(beta/alpha) = 0$，则称 $beta$ 是 $alpha$ 的#bb[高阶无穷小]，记作 $beta = o(alpha)$；

	- 若 $lim display(beta/alpha) = oo$，则称 $beta$ 是 $alpha$ 的#bb[低阶无穷小]；

	- 若 $lim display(beta/alpha) = C != 0$，则称 $beta$ 是 $alpha$ 的#bb[同阶无穷小]；

	- 若 $lim display(beta/alpha^k) = C != 0$，则称 $beta$ 是 $alpha$ 的 #bb[$k$ 阶无穷小]；

	- 若 $lim display(beta/alpha) = 1$，则称 $beta$ 是 $alpha$ 的#bb[等价无穷小]，记作 $alpha sim beta$。
]

#theorem(name: "等价代换")[
	若当 $x->x_0$ 时，$f(x) sim g(x)$ 且 $display(lim_(x->x_0) f(x)/h(x) = A)$ 或 $oo$；那么 $display(lim_(x->x_0) g(x)/h(x) = A)$ 或 $oo$。
]

#note[
	【总结】常用的等价无穷小。当 $x->0$ 时：
	$
	(1+x)^a - 1 sim a x quad quad sin x sim x sim tan x sim arcsin x sim arctan x sim ln(1+x) sim e^x-1\
	1 - cos x sim 1/2 x^2 quad quad 1-cos^a x = (a x^2)/2 quad quad x-sin x sim x^3/6 quad quad tan x - x sim x^3/3
	$
]


= 连续与间断

== 函数的连续性

#definition[
	如果 $display(lim_(x->a) f(x) = f(a))$，则称 $f(x)$ 在 $x=a$ 处#bb[连续]。如果左极限、右极限和 $f(x)$ 中有一个不存在或不相等，则称 $f(x)$ 在 $x=a$ 处#bb[间断]。
]

#definition[
	如果 $f(x)$ 在区间 $(a,b)$ 内每一个点都连续，且 $display(lim_(x->a^+) f(x) = f(a) \, lim_(x->b^-) f(x) = f(b))$，则称 $f(x)$ 在区间 $[a,b]$ 上连续，记 $f(x) in C[a,b]$。
]

== 间断点

#definition[
	若 $f(x)$ 在 $x=a$ 处间断且 $f(a^+)$ 和 $f(a^-)$ 都存在，满足：

	1. $f(a^+) = f(a^-) != f(a)$，称 $x=a$ 为 $f(x)$ 的#bb[可去间断点]。

	2. $f(a^+) != f(a^-)$，称 $x=a$ 为 $f(x)$ 的#bb[跳跃间断点]。

	#fake_par
	
	可去间断点和跳跃间断点都是#bb[第一类间断点]。
]

#definition[
	若 $f(x)$ 在 $x=a$ 处间断，且 $f(a^+)$ 与 $f(a^-)$ 中至少一个不存在，满足：

	1. $display(lim_(x->a) f(x) = oo)$，则称 $x=a$ 为 $f(x)$ 的#bb[无穷间断点]。

	2. 除1以外的其他情况，则称 $x=a$ 为 $f(x)$ 的#bb[跳跃间断点]。

	#fake_par
	
	无穷间断点和跳跃间断点都是#bb[第二类间断点]。
]

#note[
	判断间断点是第一类还是第二类，关键在于判断 $f(a^+)$ 和 $f(a^-)$ 是否都存在。
]


== 性质

#theorem(name: "最值定理")[
	若 $f(x) in C[a,b]$，则 $f(x)$ 在 $[a,b]$ 上一定存在最小值 $m$ 和最大值 $M$。
]

#theorem(name: "有界定理")[
	若 $f(x) in C[a,b]$，则 $f(x)$ 在 $[a,b]$ 上一定有界。
]

#theorem(name: "零点定理")[
	若 $f(x) in C[a,b]$ 且 $f(a) f(b) < 0$，则 $exists xi in (a,b) st f(xi) = 0$。
]

#theorem(name: "介值定理")[
	若 $f(x) in C[a,b]$，则 $forall eta in [m,M],sp exists xi in [a,b] st f(xi) = eta$。
]
