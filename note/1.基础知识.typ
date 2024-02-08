#import "../template.typ": *

#show: project.with(
	course: "Calculus I",
  title: "Note #1 基础知识",
  authors: ((
		name: "memset0",
		email: "memset0@outlook.com",
		phone: "3230104585"
	),),
  date: "October 22, 2023",
)

= 常用公式

== 三角恒等变换

#[
	#set text(size: 11.5pt)
	#table(
		columns: (1fr, auto),
		inset: 11pt,
		stroke: 0.5pt,
		align: center + horizon,
		[和差角公式], [$
			sin(u pm v) = sin u cos v pm cos u sin v quad quad
			cos(u pm v) = cos u cos v mp sin u sin v
		$],
		[倍角公式], [$
			sin 2theta &= 2 sin theta cos theta quad quad 
			cos 2theta &= cos^2 theta - sin^2 theta = 2 cos^2 theta - 1 = 1 - 2 sin^2 theta\
		$],
		[半角公式], [$
			sin theta/2 = pm sqrt((1-cos theta)/2) quad quad 
			cos theta/2 = pm sqrt((1+cos theta)/2) quad quad 
			tan theta/2 = (sin theta)/(1 + cos theta) = (1 - cos theta)/(sin theta)
		$],
		[和差化积], [$
			sin u + sin v = 2 sin (u+v)/2 cos (u-v)/2 quad quad 
			sin u - sin v = 2 cos (u+v)/2 sin (u-v)/2\
			cos u + cos v = 2 cos (u+v)/2 cos (u-v)/2 quad quad 
			cos u - cos v = -2 sin (u+v)/2 sin (u-v)/2\
		$],
		[积化和差], [$
			sin u cos v = 1/2(sin(u+v) + sin(u-v)) quad quad 
			cos u sin v = 1/2(sin(u+v) - sin(u-v))\
			cos u cos v = 1/2(cos(u+v) + cos(u-v)) quad quad 
			sin u sin v = -1/2(cos(u+v) + cos(u-v))\
		$],
		[万能公式], [$
			sin u = display(2 tan u/2) / display(1 + tan^2 u/2) quad quad 
			cos u = display(1 - tan^2 u/2) / display(1 + tan^2 u/2) quad quad 
			tan u = display(2 tan u/2) / display(1 - tan^2 u/2)\
		$],
		[辅助角公式], [
			设 $A,B != 0$，那么 $A sin x + B cos x = sqrt(A^2 + B^2) sin(x + phi)$
			
			其中 $phi$ 满足：$display(sin phi = display(B/sqrt(A^2 + B^2)\, sp cos phi = display(A/sqrt(A^2 + B^2))))$	。
		],
	)
]


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

设 $x>-1$，$alpha$ 是大于 $0$ 的有理数。

1. 如果 $alpha>1$，那么 $(1+x)^alpha >= 1 + alpha x$，当且仅当 $x=0$ 时取等；
2. 如果 $0<alpha<1$，那么 $(1+x)^alpha <= 1 + alpha x$，当且仅当 $x=0$ 时取等。

= 有界集、确界原理

== 有界集

#definition[
	既有上界，又有下界的数集称为*有界集*。因此 $ A "有界" quad <==> quad exists M_1, M_2 in RR,sp st forall x in A,sp M_2 <= x <= M_1 . $

	等价于 $ A "有界" quad<==>quad exists M>0,sp st forall x in A ,sp |x|<=M. $

	若 $A$ 不是有界集，则称 $A$ 为*无界集*。因此 $ A "无界" quad<==>quad forall M>0,sp exists x_0 in A,sp st |x_0| >M. $
]

== 确界

#definition[
	设 $A subset RR, A != emptyset$，若存在常数 $alpha$，满足：

	1. $forall x in A,sp x <= alpha.$（$alpha$ 是 $A$ 的一个上界）

	2. $forall eps>0,sp exists x_0 in A,sp st x_0>alpha-eps$（即 $alpha$ 是 $A$ 的最小上界）

	则称 $alpha$ 为数集 $A$ 的*上确界*，记为 $alpha=sup A$。同理可定义数集 $A$ 的*下确界*，记为 $beta=inf A$。
]

== 有界集确界原理

#theorem(name: "有界集确界原理")[
	
	1. 非空有上界的数集，必有上确界。非空有下界的数集，必有下确界。

	2. 非空有界数集，必有上、下确界。
	
	#note[
		有界集确界原理告诉我们，在判断是否数集是否存在确界时，不需要找出确界，只需要证明有界性即可说明确界存在。
	]
]
