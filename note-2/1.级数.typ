#import "../template.typ": *

#show: project.with(
	course: "Calculus II",
	course_fullname: "Calculus (A) II",
	course_code: "821T0160",
	semester: "Spring-Summer 2024",
	title: "Note #1 级数",
	authors: ((
		name: "Yulun WU",
		email: "memset0@outlook.com",
		id: "3230104585"
	),),
	date: "January 24, 2024",
)

#let ss = [$display(attach(inline(sum), t: +oo, b: n=1))$]
#let sss = [$display(attach(sum, t: +oo, b: n=1))$]
#let int = math.integral
#let dx = [$dif x$]
#let dy = [$dif y$]

= 级数

#definition[
	给定数列 ${a_n}$，将其每一项依次用“$+$”号连接起来的表达式 $a_1 + a_2 + dots.c + a_n + dots.c = ss a_n$ 称为#bb[无穷级数]，
]

#definition[
	在级数 $ss a_n$ 中，前 $n$ 项的和 $display(S_n = a_1 + a_2 + dots.c + a_n)$ 	称为它的第 $n$ 个#bb[部分和]。所得到的数列 ${S_n}$ 称为#bb[部分和数列]。
]

== 级数收敛的定义与判别

#definition[
	对于级数 $ss a_n$，若它的部分和数列 ${S_n}$ 收敛，则称该无穷级数#bb[收敛]。且称 $S=display(lim_(n->oo) S_n = S)$ 为该级数的#bb[和]；若数列 ${S_n}$ 发散，则称该无穷级数#bb[发散]。
]

#theorem(name: "柯西收敛准则")[
	级数 $ss a_n$ 收敛的充要条件是：$forall eps > 0,sp exists N>0$，当 $n>N$ 时，$forall p in NN_+$，均有
	$ |S_(n+p) - S_n| = |a_(n+1) + a_(n+2) + dots.c + a_(n+p)| < eps $
]

#example[
	#problem[
		证明级数 $sss display(1/(n^2))$ 收敛。
	]

	#solution(tag: "证明")[
		当 $k>=2$ 且 $k in NN_+$ 时，有 $display(1/(k^2) < 1/((k-1)k) = 1/(k-1) - 1/k)$，对任意 $p in NN_+$ 有
		$
		sum_(k=n+1)^(n+p) 1/(k^2) < sum_(k=n+1)^(n+p) 1/((k-1)k) = sum_(k=n+1)^(n+p) (1/(k-1) - 1/k) = 1/n - 1/(n+p) < 1/n
		$
		所以 $forall eps >0,sp exists N = display([1/eps])$ 满足当 $n>N$ 时，$forall p in NN_+$ 均有 $display(sum_(k=n+1)^(n+p) 1/(k^2) < 1/n < eps)$，则根据柯西收敛准则，级数 $display(sum_(n=1)^(+oo) 1/(n^2))$ 收敛。
	]
]

== 收敛级数的基本性质

#theorem[
	若级数 $ss a_n, ss b_n$ 均收敛，则对任意 $k_1,k_2 in RR$，$ss (k_1 a_n + k_2 b_n)$ 也收敛，且
	$
	sss (k_1 a_n + k_2 b_n) = k_1 sss a_n + k_2 sss b_n
	$
]

#corollary[
	若级数 $ss a_n$ 收敛且级数 $ss b_n$ 发散，则级数 $ss (a_n + b_n)$ 发散。
]

#theorem[
	去掉、添加或修改级数中的有限项，不影响级数的敛散性。

	#proof[
		由柯西收敛准则可知级数的敛散性与其前有限项无关。
	]
]

#theorem(name: "收敛级数的结合性")[
	收敛级数任意添加括号后所得级数仍然收敛，且其和不变。

	#proof[
		原级数收敛，故其部分和数列 ${S_n}$ 收敛。而添加括号后的级数的部分和数列 ${sigma_n}$ 是 ${S_n}$ 的一个子列，故 ${sigma_n}$ 收敛，且极限与 ${S_n}$ 的极限相同。
	]

	#caution[
		这一结论对于发散级数并不成立，如 $(1-1)+(1-1)+dots.c$ 收敛但原级数发散。
	]
]

#theorem(name: "级数收敛的必要条件")[
	若级数 $ss a_n$ 收敛，则 $display(lim_(n->+oo) a_n) = 0$。

	#caution[
		这是必要条件而非充分条件，例： 级数 $sss display(ln(1+1/n))$ 的一般项趋于 $0$ 而级数发散。
	]
]

== 正项级数

#definition[
	若级数 $ss a_n$ 中的各项均有 $a_n>0$，则该级数为#bb[正项级数]。
]

#theorem(name: "正项级数收敛的充要条件")[
	正项级数收敛的充要条件是它的部分和数列 ${S_n}$ 有上界。

	#proof[
		可由单调有界定理导出。
	]
]


== 正项级数的敛散性判别

#theorem(name: "比较判别法")[
	对于正项级数 $ss a_n,ss b_n$，若存在 $N$ 使得当 $n>N$ 时 $a_n<=k b_n sp (k>0)$ 恒成立，则：

	(1) 若 $ss b_n$ 收敛，则 $ss a_n$ 必收敛。

	(2) 若 $ss a_n$ 发散，则 $ss b_n$ 必发散。
]

\

比较判别法也可用极限形式表示。

#theorem(name: "极限判别法")[
	对于正项级数 $ss a_n, ss b_n$，如果 $display(lim_(n->+oo) (a_n)/(b_n)) = l$，那么

	(1) 当 $0<l<+oo$ 时，级数 $ss a_n, ss b_n$ 具有相同的敛散性；
	
	(2) 当 $l=0$ 时，若 $ss b_n$ 收敛，则 $ss a_n$ 也收敛；
	
	(3) 当 $l=+oo$ 时，若 $ss b_n$ 发散，则 $ss a_n$ 也发散。

	#proof[
		(1) 123


		(3) 是 (2) 倒过来的情况，证明只需要注意到“若 $ss a_n$ 发散，则 $ss a_n$ 发散”是“若 $ss b_n$ 收敛，则 $ss b_n$ 收敛”的逆否命题。
	]
]

#note[
	这一定理的记忆可以类比无穷小的概念：若 $l=1$，则 $a_n$ 是 $b_n$ 的等价无穷小；若 $l=0$，则 $a_n$ 是 $b_n$ 的高阶无穷小。一般来说，我们找个同阶无穷小来判定敛散性会比较方便。
]

#example[
	#problem[
		判断级数 $sss display((1/n - ln(1+1/n)))$ 的敛散性。
	]

	#solution[
		因为当 $x->0$ 时，$display(x-ln(1+x) = x - (x - x^2/2 + o(x^2)) = x^2/2 + o(x^2))$。所以

		$ lim_(x->0) (x-ln(1+x))/(x^2) = 1/2 $
		
		从而有

		$ lim_(n->+oo) n^2 (1/n - ln(1+1/n)) = 1/2 $

		而级数 $sss display(1/(n^2))$ 收敛，因此级数 $sss display((1/n - ln(1+1/n)))$ 也收敛。
	]
]

\

#property[
	通常称 $sss display(1/(n^p))$ 为 #bb[$p$-级数]。当 $p<=1$ 时，$p$-级数发散；当 $p>1$ 时，$p$-级数收敛。

	#proof[
		当 $p<=1$ 时，$display(1/(n^p)>=1/n)$，而调和级数发散，因此当 $p<=1$ 时，级数 $sss display(1/(n^p))$ 发散。

		当 $p>1$ 时，对函数 $f(x)=display(1/(x^(p-1)) sp (x>=1))$ 在区间 $[n,n+1]$ 上应用拉格朗日中值定理，$exists theta_n in (0,1)$ 使得

		$ 1/((n+1)^(p-1)) - 1/(n^(p-1)) = f(n+1)-f(n) = f'(n+theta_n) = - (p-1)/(n+theta_n)^p $

		则

		$ 1/(p-1) (1/(n^(p-1)) - 1/((n+1)^(p-1))) = 1/((n+theta_n)^p) > 1/((n+1)^p) $

		又正项级数 $sss display((1/(n^(p-1)) - 1/((n+1)^(p-1))))$ 收敛，根据比较判别法，当 $p>1$ 时，级数 $sss display(1/(n^p))$ 收敛。
	]
]

#theorem(name: "比值判别法，达朗贝尔判别法")[
	对于正项级数 $ss a_n$，若 $display(lim_(n->+oo) (a_(n+1))/(a_n)) = l$，则

	(1) 当 $0<=l<1$ 时，级数 $ss a_n$ 收敛；
	
	(2) 当 $l>1$ 时，级数 $ss a_n$ 发散；

	(3) 当 $l=1$ 时，比值判别法失效。

	#proof[
	]
]


#theorem(name: "根值判别法，柯西判别法")[
	对于正项级数 $ss a_n$，若 $display(lim_(n->+oo) root(n,a_n)) = l$，则

	(1) 当 $0<=l<1$ 时，级数 $ss a_n$ 收敛；
	
	(2) 当 $l>1$ 时，级数 $ss a_n$ 发散；

	(3) 当 $l=1$ 时，比值判别法失效。

	#proof[
	]
]


#theorem(name: "积分判别法")[
	设函数 $f(x)$ 在 $[1, +oo)$ 上单调递减，则级数 $ss f(n)$ 与反常积分 $display(int_1^(+oo) f(x) dx)$ 具有相同的敛散性。

	#proof[
	]
]

== 一般项级数的敛散性判别

=== 交错级数与莱布尼茨判别法

#definition[
	若 $a_n>0 sp(n=1,2,dots.c)$，则称 $ss (-1)^(n-1) a_n$ 为#bb[交错级数]。
]

#theorem(name: "莱布尼茨判别法")[
	若交错级数 $ss (-1)^(n-1) a_n sp(a_n>0)$ 满足

	(1) 数列 ${a_n}$ 单调递减，即 $a_(n+1)<=a_n sp (n=1,2,dots.c)$；

	(2) $display(lim_(n->+oo) a_n = 0)$。

	则交错级数 $ss (-1)^(n-1) a_n$ 收敛且其和 $S<=a_1$。

	#proof[
		根据条件有 $forall eps>0$，当 $n$ 足够大时有 $0<a_n<eps$。根据 $n$ 的奇偶性讨论后可用柯西收敛准则判别。
	]
]

#example[
	#problem[
		判断级数 $display(sum_(n=2)^(+oo) ((-1)^n)/(sqrt(n) + (-1)^n))$ 的敛散性。
	]\

	#solution[
		由于 $display(((-1)^n)/(sqrt(n) + (-1)^n) = ((-1)^n (sqrt(n) - (-1)^n))/(n-1) = (-1)^n sqrt(n)/(n-1) - 1/(n-1))$。根据莱布尼茨判别法可知级数 $display(sum_(n=2)^(+oo) (-1)^n sqrt(n)/(n-1))$ 收敛，而调和级数 $display(sum_(n=2)^(+oo) 1/(n-1))$ 发散。故原级数发散。 
	]
]

=== 利用级数绝对收敛的性质

#definition[
	若级数 $ss |a_n|$ 收敛，则称级数 $ss a_n$ #bb[绝对收敛]，若级数 $ss a_n$ 收敛而级数 $ss |a_n|$ 发散，则称级数 $ss a_n$ #bb[条件收敛]。
]

#theorem[
	如果级数 $ss a_n$ 绝对收敛，则级数 $ss a_n$ 必收敛。

	#proof[
		（*法一*）如果级数 $ss a_n$ 绝对收敛，由柯西收敛准则，$forall eps > 0$，$exists N > 0$，当 $n>N$ 时，$forall p in NN_+$ 有
		$ |a_(n+1)| + |a_(n+2)| + dots.c + |a_(n+p)| < eps $
		因此
		$ |a_(n+1) + a_(n+2) + dots.c + a_(n+p)| < |a_(n+1)| + |a_(n+2)| + dots.c + |a_(n+p)| < eps $
		故根据柯西收敛准则，级数 $ss a_n$ 收敛。

		（*法二*）令 $b_n = display(1/2(a_n + |a_n|))$，显然 $b_n>=0$ 且 $b_n<=|a_n|$。根据比较判别法知 $ss b_n$ 收敛。又因为 $ss a_n = ss (2 b_n - |a_n|)$，两个级数都收敛，故  $ss a_n$ 也收敛。
	]
]

通过这一性质，我们可将级数 $ss a_n$ 的判别转化为对 $ss |a_n|$ 的判别。 

\

这种方法常常与比值判别法、根治判别法等方法连用，来解决一般级数的敛散性判别问题。

#theorem(name: "绝对值的比值判别法")[
	对于一般级数 $ss a_n$，若 $display(lim_(n->+oo) abs(a_(n+1))/abs(a_n) = l)$ 存在，则：

	(1) $l < 1$ 时，级数绝对收敛；

	(2) $l > 1$（包括 $l = +oo$）时，级数发散；

	(3) $l = 1$ 时，绝对值的比值判别法失效。

	#note[
		第 (1), (3) 条都可以由比值判别法和绝对收敛的性质直接导出。第 (2) 条成立主要是因为 $l>1$ 时，$display(lim_(n->+oo) |a_n| = +oo) != 0$，故 $display(lim_(n->+oo) a_n)!=0$ 也成立，级数必不收敛。
	]
]

#theorem(name: "绝对值的根值判别法")[
	对于一般级数 $ss a_n$，若 $display(lim_(n->+oo) root(n,abs(u_n)) = l)$，则：

	(1) $l<1$ 时，级数绝对收敛；

	(2) $l>1$（包括 $l=+oo$ 时），级数发散；

	(3) $l=1$ 时，绝对值的根值判别法失效。
]

#example[
	#problem[
		判断级数的敛散性：$display(sss ((-1)^(n-1))/n x^n)$。
	]
	#solution[
		$
		lim_(n->+oo) abs(u_(n+1)/u_n)
		= lim_(n->+oo) n/(n+1) abs(x) = abs(x)
		$
		可见，$|x|<1$ 时级数（绝对）收敛；$|x|>1$ 时级数发散；

		$x=1$ 时，级数 $display(sss ((-1)^(n-1))/n x^n = sss ((-1)^(n-1))/n)$ 收敛；

		$x=-1$ 时，级数 $display(sss ((-1)^(n-1))/n x^n = sss (-1)/n)$ 发散。

		总之，级数当 $|x|<1$ 时绝对收敛，当 $x=1$ 时条件收敛，$|x|>1$ 或 $x=-1$ 时发散。
	]
]

\

绝对收敛级数具有和普通有限项和数相仿的两个运算性质——交换律和分配律成立，请看下面的两个定理。

#definition[
	把自然数数列 ${1,2,dots.c,n,dots.c}$ 到它自身的一一映射 $f:n->k(n)$ 称为自然数数列的重排。
]

#theorem(name: "绝对收敛的条件下无限个数相加的加法交换律")[
	设级数 $ss a_n$ 绝对收敛，且其和等于 $S$，则任意重排得到的级数 $ss a_n'$ 也绝对收敛，且有相同的和数 $S$。

	#note[
		由条件收敛级数重排得到的新级数可能发散，即使收敛也不一定收敛于原来的和数，甚至可以收敛于任何事先指定的数。（黎曼定理）

		#example[
			如有结论 $ln 2 = display(1-1/2+1/3-1/4+1/5-1/6+dots.c)$。
			
			两边同乘 $display(1/2)$ 得 $dp(1/2 ln 2 = 1/2 - 1/4 + 1/6 - 1/8 + dots.c)$。
			
			两式相加有 $dp(3/2 ln 2 = 1+1/3 - 1/2 + 1/5 + 1/7 - 1/4 + dots.c)$。这是原级数的重排。虽然重拍后的级数仍然收敛，但是其和发生了变化。
		]
	]
]

#theorem(name: "柯西定理")[
	设级数 $ss a_n = A$ 和 $ss b_n = B$ 都绝对收敛，则它们的柯西乘积按任意顺序排列所得到的级数 $ss c_n$ 也绝对收敛，且其和为 $A B$。
	
	#corollary(name: "梅尔腾斯定理*")[
		若级数 $ss a_n = A$ 与 $ss b_n = B$ 中有一个绝对收敛，另一个条件收敛，则它们的柯西乘积（按照对角线顺序取）所组成的级数仍收敛，且其和为 $A B$。
	]
]


=== 阿贝尔判别法与狄利克雷判别法

#lemma(name: "阿贝尔变换")[
	设 ${a_n}$ 与 ${b_n}$ 是两数列，即 $B_n = display(sum_(k=1)^n b_k)$，则 
	$ sum_(k=1)^n a_k b_k = a_n B_n + sum_(k=1)^(n-1) (a_k-a_(k+1)) B_k $
]

#corollary(name: "阿贝尔引理")[
	若数列 ${a_n}$ 与级数 $ss b_n$ 的部分和数列 ${B_n}$ 满足：

	(1) 数列 ${a_n}$ 单调，且 $exists A>0$，$forall n in NN_+$ 均有 $|a_n| <= A$;

	(2) $exists eps>0$，$forall n in NN_+$，均有 $|B_n| < eps$；

	则 $forall n in NN_+$，有 $display(lr(| sum_(k=1)^n a_k b_k <= 3 A eps |))$。

	#proof[
		根据阿贝尔变换，
		$
		lr(|sum_(k=1)^n a_k b_k|)
		&= lr(| a_n B_n + sum_(k=1)^(n-1) (a_k - a_(k+1)) B_k |)
		&= lr(|a_n B_n|) + sum_(k=1)^(n-1) |a_k - a_(k+1)| dot.c |B_k|
		$
	]
]

= 幂级数

== 函数项级数

#definition[
	设 $u_1(x),u_2(x),dots.c,u_n(x),dots.c$ 是定义在 $I in RR$ 上的函数，则 
	$ ss u_n(x) = u_1(x)+u_2(x)+dots.c+u_n(x) + dots.c $
	称为定义在区间 $I$ 上的#bb[函数项级数]。
]

#definition[
	如果 $x_0 in I$，数项级数 $ss u_n(x_0)$ 收敛，则称 $x_0$ 为级数 $ss u_n(x)$ 的#bb[收敛点]，否则称为#bb[发散点]。
]

#definition[
函数项级数 $ss u_n(x)$ 的所有收敛点的全体称为#bb[收敛域]，所有发散点的全体称为#bb[发散域]。
]

#pagebreak()