#import "../template.typ": *

#show: project.with(
  title: "Calculus II\nNote #1 级数",
  authors: ((
		name: "memset0",
		email: "memset0@outlook.com",
		phone: "3230104585"
	),),
  date: "January 24, 2024",
)

= 级数

== 数项级数的基本概念

（数项）级数的*定义*：
$
sum_(n=1)^oo u_n = u_1 + u_2 + dots.c + u_n + dots.c
$

第 $n$ 个*部分和*：
$
S_n = u_1 + u_2 + dots.c + u_n = sum_(i=1)^n u_i
$

== 级数的发散与收敛

#def[定义]对于级数 $display(sum_(n=1)^oo u_n)$，若它的部分和数列 ${S_n}$ 收敛，则称该无穷级数收敛。且称 $S=display(lim_(n->oo) S_n = S)$ 为该级数的*和*；若数列 ${S_n}$ 发散，则称该无穷级数发散。 