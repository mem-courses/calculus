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

= 级数

== 级数的敛散性及基本性质

#definition[
	给定数列 ${a_n}$，将其每一项依次用“$+$”号连接起来的表达式 $a_1 + a_2 + dots.c + a_n + dots.c = display(sum_(n=1)^oo a_n)$ 称为#bb[无穷级数]，
]

#definition[
	在级数 $display(sum_(n=1)^(+oo) a_n)$ 中，前 $n$ 项的和 $display(S_n = a_1 + a_2 + dots.c + a_n)$ 	称为它的第 $n$ 个#bb[部分和]。所得到的数列 ${S_n}$ 称为#bb[部分和数列]。
]

#definition[
	对于级数 $display(sum_(n=1)^oo u_n)$，若它的部分和数列 ${S_n}$ 收敛，则称该无穷级数#bb[收敛]。且称 $S=display(lim_(n->oo) S_n = S)$ 为该级数的#bb[和]；若数列 ${S_n}$ 发散，则称该无穷级数#bb[发散]。
]

#theorem(name: "级数收敛的必要条件")[
	若级数 $display(sum_(n=1)^(+oo)) a_n$ 收敛，则 $display(lim_(n->+oo) a_n) = 0$。
]

#proof[
	中文测试中文测试中文测试中文测试中文测试
]

#note[
	这里是笔记字体，可以注意到字体颜色并不是纯黑色哦 XD
	123
]
