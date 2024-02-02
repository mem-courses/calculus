#import "../template.typ": *

#show: project.with(
  title: "Calculus II  Note #1 级数",
  authors: ((
		name: "memset0",
		email: "memset0@outlook.com",
		phone: "3230104585"
	),),
  date: "January 24, 2024",
)

#let ss = [$display(sum_(n=1)^(+oo))$]

= 级数

== 级数及级数收敛的定义

#definition[
	给定数列 ${a_n}$，将其每一项依次用“$+$”号连接起来的表达式 $a_1 + a_2 + dots.c + a_n + dots.c = display(sum_(n=1)^oo a_n)$ 称为#bb[无穷级数]，
]

#definition[
	在级数 $display(sum_(n=1)^(+oo) a_n)$ 中，前 $n$ 项的和 $display(S_n = a_1 + a_2 + dots.c + a_n)$ 	称为它的第 $n$ 个#bb[部分和]。所得到的数列 ${S_n}$ 称为#bb[部分和数列]。
]

#definition[
	对于级数 $display(sum_(n=1)^oo u_n)$，若它的部分和数列 ${S_n}$ 收敛，则称该无穷级数#bb[收敛]。且称 $S=display(lim_(n->oo) S_n = S)$ 为该级数的#bb[和]；若数列 ${S_n}$ 发散，则称该无穷级数#bb[发散]。
]

#theorem(name: "柯西收敛准则")[
	级数 $display(sum_(n=1)^(+oo) a_n)$ 收敛的充要条件式：$forall eps > 0,sp exists N>0$，当 $n>N$ 时，$forall p in NN_+$，均有
	$ |S_(n+p) - S_n| = |a_(n+1) + a_(n+2) + dots.c + a_(n+p)| < eps $
]

#example[
	#problem[
		证明级数 $display(sum_(n=1)^(+oo) 1/(n^2))$ 收敛。
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
	ss (k_1 a_n + k_2 b_n) = k_1 ss a_n + k_2 ss b_n
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

#theorem(name: "收敛级数的可结合性")[
	收敛级数任意添加括号后所得级数仍然收敛，且其和不变。

	#proof[
		原级数收敛，故其部分和数列 ${S_n}$ 收敛。而添加括号后的级数的部分和数列 ${sigma_n}$ 是 ${S_n}$ 的一个子列，故 ${sigma_n}$ 收敛，且极限与 ${S_n}$ 的极限相同。
	]

	#warning[
		这一结论对于发散级数并不成立，如 $(1-1)+(1-1)+dots.c$ 收敛但原级数发散。
	]
]

#theorem(name: "级数收敛的必要条件")[
	若级数 $ss a_n$ 收敛，则 $display(lim_(n->+oo) a_n) = 0$。

	#warning[
		这是必要条件而非充分条件，例： 级数 $ss display(ln(1+1/n))$ 的一般项趋于 $0$ 而级数发散。
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

#theorem(name: "比较判别法")[
	设 $ss a_n,ss b_n$ 均为正项级数，且 $a_n<=k b_n (k>0,sp n=1,2,dots)$，则：

	(1) 若 $ss b_n$ 收敛，则 $ss a_n$ 必收敛。

	(2) 若 $ss a_n$ 发散，则 $ss b_n$ 必发散。
]

$ \ $比较判别法也可用极限形式表示。

#theorem(name: "极限判别法")[

]

