#import "../template.typ": *

#show: project.with(
	course: "Calculus I",
	course_fullname: "Calculus (A) I",
	course_code: "821T0150",
	semester: "Autumn-Winter 2023",
	title: "Note #4 中值定理",
	authors: ((
		name: "memset0",
		email: "memset0@outlook.com",
		id: "3230104585"
	),),
	date: "November 28, 2023",
)

= 函数的极值与单调性

== 极值点

=== 极值点的定义

#definition[
	设 $y=f(x) sp (x in D), sp x_0 in D$，若 $exists delta > 0$，当 $0<|x-x_0|<delta$ 时，有 $f(x)<f(x_0)$ 则称 $x=x_0$ 为 $f(x)$ 的#bb[极大值点]，$f(x_0)$ 为#bb[极大值]。
]

#definition[
	设 $y=f(x) sp (x in D), sp x_0 in D$，若 $exists delta > 0$，当 $0<|x-x_0|<delta$ 时，有 $f(x)>f(x_0)$ 则称 $x=x_0$ 为 $f(x)$ 的#bb[极小值点]，$f(x_0)$ 为#bb[极小值]。
]

#caution[
	1. 极值点处的导数可能不存在，但不可能为一个非零实数。
	2. 注意“极值点”的概念，是用 $x=x_0$ 的形式表示的，而不是 $f(x_0)$ 或 $(x_0,f(x_0))$。
]

=== 极值点的必要条件

#theorem(name: "费马引理")[
	设 $x_0$ 是 $f(x)$ 的极值点。若 $f'(x_0)$ 存在，则 $f'(x_0) = 0$。

	#proof[
		设 $forall x_0 + Dx in union.big (x_0),sp f(x_0 + Dx) <= f(x_0)$．则
		$ f'(x_0) = lim_(Dx->0) (f(x_0+Dx) - f(x_0))/Dx
		=> cases(
			f'_-(x_0) >= 0 (Dx->0^-),
			f'_+(x_0) <= 0 (Dx->0^+),
		) $
		由于 $f'(x_0)$ 存在，故只能有 $f'(x_0) = 0$．
	]
]

#theorem[
	设 $x_0$ 是 $f(x)$ 的极值点。若 $f(x)$ 在 $x=x_0$ 的去心领域内导函数存在且不为零，则两侧导函数必须异号。
]

=== 极值点的充分条件

#theorem(name: "极值的第一充分条件")[
	设 $f(x)$ 在点 $x_0$ 的邻域内连续，且在空心邻域内有导数，则

	1. 若 $f'(x)$ 在左邻域为正，右邻域为负，则 $f(x)$ 在点 $x_0$ 取极大值；

	2. 若 $f'(x)$ 在左邻域为负，右邻域为正，则 $f(x)$ 在点 $x_0$ 取极小值；

	3. 否则，则说明 $f(x_0)$ 不是极值．
]

#theorem(name: "极值的第二充分条件")[
	设 $f(x)$ 在点 $f(x_0)$ 处具有二阶导数且 $f'(x_0),sp f''(x_0) != 0$．若 $f''(x_0)<0$（$f''(x_0)>0$）则 $f(x)$ 在点 $x_0$ 处取极大值（极小值）．
	
	进一步的，若 $f(x)$ 在点 $x_0$ 有直到 $n$ 阶导数，且 $f'(x_0)=f''(x_0)=dots.c=f^((n-1))(x_0) = 0$，$f^((n))(x_0)!=0$．当 $n$ 为*偶数*时，$x_0$ 是极值点；否则，$x_0$ 不是极值点．
]

#proof[
	利用泰勒公式：
	$ f(x) - f(x_0) = (f^((n))(x_0))/(n!) (x-x_0)^n + o((x-x_0)^n)) $
	可知则当 $x->x_0$ 时，$f(x)-f(x_0)$ 的符号应由 $display((f^((n))(x_0))/(n!)) (x-x_0)^n$ 的符号决定．
]

== 函数的单调性

#theorem[
	设函数 $f(x)$ 在区间 $I$ 上连续，在区间 $I$ 内可导，则

	(1) 若 $f'(x)>=0,sp x in I^o$，则 $f(x)$ 在 $I$ 上递增；

	(2) 若 $f'(x)<=0,sp x in I^o$，则 $f(x)$ 在 $I$ 上递减；

	(3) 若 $f'(x)=0,sp x in I^o$，则 $f(x)$ 在 $I$ 上恒等于常数 $c$；

	#proof[
		任取 $x_1,x_2 in I sp (x_1<x_2)$，由拉格朗日中值定理得
		$ f(x_2) - f(x_1) = f'(xi) (x_2-x_1),quad xi in (x_1,x_2) in I $
		依次代入 (1)(2)(3) 的条件，可以得到对应结论．
	]
]

#theorem[
	设函数 $f(x)$ 在区间 $I$ 上连续，在区间 $I$ 内可导．则当 $x in I^O,sp f'(x) >= 0$ 且 $f(x)$ 在 $I$ 的任何子区间上 $f'(x) equiv.not 0$ $<==>$ $f(x)$ 在区间 $I$ 上*严格*单调增加．
]

== 达布定理

#theorem(name: "达布定理")[
	设 $f(x)$ 在 $[a,b]$ 上可导，且 $f'_+(a) f'_-(b)<0$，则 $exists xi in (a,b) st f'(xi) = 0$．
]

#corollary[
	设 $f(x)$ 在 $[a,b]$ 上可导，且 $f(a)<c<f(b)$，则 $exists xi in (a,b) st  f'(xi) = c$． 
]

#corollary[
	设 $f(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 内可导，且 $forall x in (a,b),sp f(x) != 0$，则 $f(x)$ 在 $[a,b]$ 上严格单调．
]

#note[
	这指出了 $f(x)$ 的导数满足介值定理，但这并不意味着导函数连续，如 $f(x) = x^2 sin(display(1/x^2))$，但考虑
	$ f'(x) = 2x sin(display(1/x^2)) - display(2/x) cos(display(1/x^2)) $
	其在 $0$ 的邻域内振荡．导函数的值可以取到任意实数但并不连续．
]



= 函数的凹凸性、拐点与渐近线

== 凹凸性

#theorem(name: "曲线凹凸性的判定定理")[
	设函数 $f(x)$ 在区间 $(a,b)$ 内具有二阶导数，那么：

	1. 若 $x in (a,b)$ 有 $f''(x)>0$，则曲线 $y=f(x)$ 在 $(a,b)$ 内是凹的；

	2. 若 $x in (a,b)$ 有 $f''(x)<0$，则曲线 $y=f(x)$ 在 $(a,b)$ 内是凸的；

	#hint[本书中的凹函数是指下凸函数，凸函数是指上凸函数．]
]

== 拐点

拐点就是使连续函数的凹凸性发生改变的点．

#caution[拐点的表示方法是 $(x_0,f(x_0))$，与极值点不同。]

=== 拐点的必要条件

#theorem[
	设函数 $f(x)$ 在 $x_0$ 的邻域内存在二阶导数，若 $x_0$ 是 $y=f(x)$ 的拐点，则必有 $f''(x_0) = 0$．*反之不成立*．
]

=== 拐点的充分条件

#theorem[
	设函数 $f(x)$ 在 $x_0$ 的某邻域内具有二阶导数，若在 $x_0$ 的两侧 $f''(x_0)$ 异号，则 $(x_0,f(x_0))$ 是 $y=f(x)$ 的拐点；反之，$(x_0,f(x_0))$ 就不是曲线的拐点．
]

#corollary[
	设函数 $f(x)$ 在 $x_0$ 的某邻域内具有三阶导数，且满足 $f''(x_0)=0$，$f'''(x_0) != 0$，则 $(x_0,f	(x_0))$ 是 $y=f(x)$ 的拐点。（如果 $f'''(x_0)=0$，也可以将结论进一步推广）
]

== 渐近线

曲线的渐近线有且仅有斜渐近线和垂直渐近线两种．

=== 斜渐近线

$y=a x+b$ 是曲线 $y=f(x)$ 的#bb[斜渐近线]的充要条件是 $display(lim_(x->oo)(f(x)-a x-b)/x = 0)$．当 $a=0$ 时，该渐近线又可称为#bb[水平渐近线]．

#hint[
	可以通过：
	$ a &= lim_(x->oo) (f(x))/x, quad b &= lim_(x->oo) (f(x) - a x) $
	计算得到函数的斜渐进线。
]

一个函数最多有*两条*斜渐进线，如果要检查斜渐近线是否存在，只需要分别判断 $display(lim_(x->+oo) (f(x))/x)$ 和 $display(lim_(x->-oo) (f(x))/x)$ 是否收敛到常数即可．

#proof[
	在曲线上任取一点 $M(x,f(x))$ 作到 $y=a x+b$ 的垂线，垂足为 $n$．若 $y=a x + b$ 是 $f(x)$ 的渐近线，则当 $x->oo$ 时 $|M N| -> 0$，其中 $display(|M N| = (|f(x) - a x - b|)/sqrt(a^2+1))$．由 $sqrt(a^2 + 1) != 0$，可以得到上面的判定条件．
]

=== 垂直渐近线

$x=x_0$ 是曲线 $y=f(x)$ 的#bb[垂直渐近线]的充分必要条件是 $display(lim_(x->x_0) f(x) = oo)$（可以两侧分别是 $+oo$ 和 $-oo$）．


= 中值定理

== 罗尔定理

如果 $y=f(x)$ 满足在区间 $[a,b]$ 上连续，在区间 $(a,b)$ 内可导，且 $f(a)=f(b)$，那么至少存在一点 $xi in (a,b)$ 使得 $f'(xi) = 0$．

#proof[
	因为 $f'(x)$ 在 $[a,b]$ 连续，所以 $f'(x)$ 在 $[a,b]$ 上存在最大值 $M$ 和最小值 $m$．
	
	- 若 $M=m$，则 $f(x)$ 恒等于 $M$，$forall xi in (a,b),sp f'(xi)=0$；

	- 若 $M>m$，则其中至少有一个不在 $x=a$ 或 $x=b$ 时取到，不妨设 $M!=f(a)$，则至少存在一点 $xi in (a,b) st f(xi) = M$．根据费马引理，有 $f'(xi) = 0$．
]

#warning[定理条件只是充分的，本定理可推广为：如果 $y=f(x)$ 在 $(a,b)$ 内可导且 $display(lim_(x->a^+) f(x))$ $=$ $display(lim_(x->b^-) f(x))$，那么 $exists xi in (a,b) st f'(xi) = 0$．]

== 拉格朗日中值定理

如果 $y=f(x)$ 满足在区间 $[a,b]$ 上连续，在区间 $(a,b)$ 上可导，那么至少存在一点 $xi in (a,b)$ 使得 $f'(xi) = display((f(b) - f(a))/(b-a))$．

#note[这可看作是拉格朗日定理的参数方程形式．]

#proof[
	#def[证明]问题转化为证 $f'(xi) = display((f(b) - f(a))/(b-a)) = 0$，作辅助函数
	$
	F(x) = f(x) - (f(b)-f(a))/(b-a) x
	$
	显然 $F(x)$ 在 $[a,b]$ 上连续，在 $(a,b)$ 上可导，且 $F(a) = F(b)$．由罗尔定理知至少存在一点 $xi in (a,b)$ 使 $F'(xi) = 0$，即定理结论成立．

	或者考虑弦 $(a,f(a)),sp (b,f(b))$ 的方程：$display(f(a) + (f(b)-f(a))/(b-a) (x-a))$，作辅助函数：
	$
	F(x) = f(x) - f(a) - (f(b)-f(a))/(b-a) (x-a)
	$
	也可以证得同样的结论．
]

== 柯西中值定理

如果 $f(x)$ 及 $F(x)$ 满足在 $[a,b]$ 上连续，在 $(a,b)$ 内可导，且在 $(a,b)$ 内 $F'(x) != 0$，那么至少存在一点 $xi in (a,b)$ 使得 $display((f(b)-f(a))/(F(b)-F(a)) = (f'(xi))/(F'(xi)))$．

#proof[
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

	由罗尔定理知至少存在一点 $xi in (a,b)$ 使 $phi'(xi) = 0$，即定理结论成立．
]

= 洛必达法则

== 例题

#def[例1]求 $display(lim_(x->+oo) (x^n)/(e^(lambda x))) sp (n>0,lambda >0)$．

#proof[
	(1) $n in NN^+$ 的情形：
	$ "原式"
	&= lim_(x->+oo) (n x^(n-1))/(lambda e^(lambda x)) = lim_(x->+oo) (n(n-1) x^(n-2))/(lambda^2 e^(lambda x)) = dots.c = lim_(x->+oo) (n!)/(lambda^n e^(lambda x)) = 0
	$

	(2) $n in.not NN^+$ 的情形：
	
	存在正整数 $k$，使当 $x>1$ 时 $x^k < x^n < x^(k+1)$．从而
	$
	(x^k)/(e^(lambda x)) < (x^n)/(e^(lambda x)) < (x^(k+1))/(e^(lambda x))
	$
	由 $(1)$ 可得 $display(lim_(x->+oo) (x^k)/(e^(lambda x)) = lim_(x->+oo) (x^(k+1))/(e^(lambda x)) = 0)$．
]

#note[
	这表明当 $x->+oo$ 时，$ln x,sp x^n (x>0),sp e^(lambda x) (lambda >0)$，后者比前者趋于 $+oo$ 更快．
]

= 泰勒公式

== 泰勒公式与泰勒中值定理

若 $f(x)$ 在包含 $x_0$ 的某开区间 $(a,b)$ 内具有直到 $n+1$ 阶的导数，则当 $x in (a,b)$ 时，有
$
f(x) = f(x_0) + f'(x_0)(x-x_0) + (f''(x_0))/(2!) (x-x_0)^2 + dots.c + (f^((n))(x_0))/(n!) (x-x_0)^n + R_n (x) quad ①
$

其中 $display(R_n (x) = (f^((n+1))(xi))/((n+1)!) (x-x_0)^(n+1)) sp (xi in (x_0,x)) quad ②$．注意到 $R_n (x) = o[(x-x_0)^n]$．

$①$ 式称为 $f(x)$ 的 $n$ 阶 *泰勒公式*，$②$ 式称为 $n$ 阶泰勒公式的 *拉格朗日余项*．

== 麦克劳林公式

在泰勒公式中若取 $x_0=0,sp xi = theta x sp (0<theta<1)$，则有
$
f(x) = f(0) + f'(0) x + (f''(0))/(2!) x^2 + dots.c + (f^((n))(x))/(n!) x^n + (f^((n+1))(theta x))/((n+1)!) x^(n+1)
$

称为 $f(x)$ 的 $n$ 阶 *麦克劳林公式*．

=== 常见函数的麦克劳林公式

$ e^x = 1 + x + x^2/(2!) + x^3/(3!) + dots.c + x^n/(n!) + R_n (x) $
其中 $R_n (x) = display((e^(theta x))/((n+1)!)) x^(n+1)$．

$ ln(1+x) = x - x^2/2 + x^3/3 - dots.c + (-1)^(n-1) x^n/(n) + R_n (x) $
其中 $display(R_n(x) = ((-1)^n x^(n+1))/((n+1) (1+theta x)^(n+1)) sp (0<theta<1))$．

$ sin x = x - x^3/(3!) + x^5/(5!) - dots.c + (-1)^(m-1) (x^(2m-1))/((2m-1)!) + R_(2m) (x) $
其中 $R_(2m) (x) = display((sin(theta x + (2m+1)/2 pi))/((2m+1)!)) x^(2m+1) = display(((-1)^m cos(theta x))/((2m+1)!) x^(2m+1)) sp (0<theta<1)$．

$ cos x = 1 - (x^2)/(2!) + (x^4)/(4!) + dots.c + (-1)^m (x^(2m))/((2m)!) + R_(2m+1) (x) $
其中 $R_(2m+1) (x) = display(((-1)^(m+1) cos (theta x))/((2m+2)!)) x^(2m+2) sp (0<theta<1)$．

$ (1+x)^alpha = 1 + alpha x + (alpha(alpha-1))/(2!) x^2 + dots.c + (alpha(alpha-1)dots.c(alpha-n+1))/(n!) x^n + R_n(x) quad (x> -1) $

其中 $R_(n) = display((alpha(alpha-1)dots.c(alpha-n))/((n+1)!) (1+theta x)^(alpha-n-1) x^(n+1))$．