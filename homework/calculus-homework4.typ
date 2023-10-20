#import "../template.typ": *

#show: project.with(
  title: "Calculus Homework #4",
  authors: ((
		name: "Yulun Wu (#47)",
		email: "memset0@outlook.com",
		phone: "3230104585"
	),),
  date: "October 20, 2023",
)

= 课堂例题 10.17

#prob[求极限：$ lim_(x->pi)(sin m x)/(sin n x) $]

*（细节有点多的）*

= P55 习题1-3 11

#prob[
	1. 由 $display(lim_(x->-oo)(sqrt(x^2-x+1) - a_1 x - b_1) = 0)$，求常数 $a_1$，$b_1$．
	2. 由 $display(lim_(x->+oo)(sqrt(x^2-x+1) - a_2 x - b_2) = 0)$，求常数 $a_2$，$b_2$．
]

1. 已知
  
  $
  lim_(x->-oo) sqrt(x^2-x+1)/(-x)
  = lim_(x->-oo) sqrt((x^2-x+1)/x^2)
  = lim_(x->-oo) sqrt(1 - 1/x + 1/x^2)
  = 1
  $
  
  所以 $x->-oo$ 时，$sqrt(x^2-x+1) sim -x$．已知 $display(lim_(x->-oo)(-x - a_1 x - b_1) = 0)$，可得 $a_1 = -1$，$b_1 = 0$．

2. 同理可得 $x->+oo$ 时，$sqrt(x^2-x+1) sim x$．已知 $display(lim_(x->+oo)(x - a_2 x - b_2) = 0)$，可得 $a_2 = 1$，$b_2 = 0$．
  
*（注意符号）*

= P55 习题1-3 12(1)

#prob[证明关系：$ cos x = 1 - 1/2 x^2 + o(x^2) quad (x->0) $]

即证：$ cos x - 1 + 1/2 x^2 = o(x^2) quad (x->0) $

已知

$
lim_(x->0) (cos x - 1 + 1/2 x^2)/(x^2)
= lim_(x->0) (sum_(n>=2)((-1)^n x^(2n))/((2n)!))/x^2
= lim_(x->0) sum_(n>=2)((-1)^n x^(2(n-1)))/((2n)!)
= 0
$

故原命题得证．

= P55 习题1-3 12(2)

#prob[证明关系：$ sqrt(x+sqrt(x+sqrt(x))) sim root(8,x) quad (x->0^+) $]

令 $u=root(4,x)$，已知 $display(lim_(x->0^+) u=0^+)$．

$
& lim_(x->0^+) sqrt(x+sqrt(x+sqrt(x)))/root(8,x)
= sqrt(lim_(x->0^+) (x+sqrt(x+sqrt(x)))/root(4,x))\
=& sqrt(lim_(u->0^+) (u^4 + sqrt(u^4 + u^2)) / u)
= sqrt(lim_(u->0^+) (u^3 + sqrt(u^2 + 1)))
= 1
$

= P55 习题1-3 12(5)

#prob[证明关系：$ o(x^n) + o(x^m) = o(x^m) quad (x->0,space n>m>0) $]

$
lim_(x->0) frac(o(x^n) + o(x^m), x^m)
= x^(n-m) lim_(x->0) frac(o(x^n), x^n) + lim_(x->0) frac(o(x^m), x^m) = 0
$

故原命题得证．

= P55 习题1-3 16(1)

#prob[利用等价量替换计算极限：$ lim_(x->0)(sqrt(1+tan^2 x)-1)/(x sin x) $]

已知：$x->0$ 时，$x sim sin x sim tan x$．

$
lim_(x->0)(sqrt(1+tan^2 x)-1)/(x sin x)
= lim_(x->0)(tan^2 x)/(x^2(sqrt(1+tan^2 x)+1))
= lim_(x->0)1/(sqrt(1+tan^2 x)+1)
= 1/2
$

= P55 习题1-3 16(2)

#prob[利用等价量替换计算极限：$ lim_(x->0)(sin(tan^2 x))/(root(n,1+x^2)-1) $]

令 $u=root(n,1+x^2)$，故 $x^2=u^n-1$．已知：$dp(lim_(n->0) u=1)$．

$
lim_(x->0) (sin(tan^2 x))/(root(n,1+x^2)-1)
= lim_(x->0) x^2/(root(n,1+x^2)-1)
= lim_(u->1) (u^n-1)/(u-1)
= lim_(u->1) sum_(k=0)^(n-1) u^k
= n
$

= P55 习题1-3 16(3)

#prob[利用等价量替换计算极限：$ lim_(x->0^+)((1-sqrt(cos x)) tan x)/((1-cos x)^(3/2)) $]

已知：$x sim tan x$，$1-cos x sim 1/2 x^2$．

$
lim_(x->0^+)((1-sqrt(cos x)) tan x)/((1-cos x)^(3/2))
= lim_(x->0^+)(tan x)/(sqrt(1-cos x)(1+sqrt(cos x)))
= lim_(x->0^+)x/((1+sqrt(cos x)) sqrt(1/2 x^2))
= sqrt(2)/2
$

= 课堂例题 10.19

#prob[求极限：$ lim_(x->0)(frac(display(e^(1/x)+2),display(e^(2/x))+1)+(sin x)/(|x|)) $]

令 $u=e^(1/x)$，已知 $display(lim_(x->0^+) u=lim_(t->+oo) e^x = +oo)$，$display(lim_(x->0^-) u=lim_(t->-oo) e^x = 0)$．所以有：

$
lim_(x->0^+)(frac(display(e^(1/x)+2),display(e^(2/x))+1)+(sin x)/(|x|))
= lim_(u->+oo)(frac(u+2,u^2+1)+1)
= 1
$

$
lim_(x->0^-)(frac(display(e^(1/x)+2),display(e^(2/x))+1)+(sin x)/(|x|))
= lim_(u->0)(frac(u+2,u^2+1)-1)
= 1
$


= P71 习题1-4 3(5)

#prob[指出下列函数的间断点，并指出间断点是属于哪一类型：$ f(x) = (sin x)/(|x|) $]

$x=0$ 处为原函数的跳跃间断点．

= P71 习题1-4 3(6)

#prob[指出下列函数的间断点，并指出间断点是属于哪一类型：$ f(x) = x/((4-x^2)(1+x^2)) $]

$x=2$ 和 $x=-2$ 处是原函数的无穷间断点．

= P71 习题1-4 3(8)

#prob[指出下列函数的间断点，并指出间断点是属于哪一类型：$ f(x) = cases(2x+1\,quad x>=0,x\,quad x<0) $]

$x=0$ 处是原函数的跳跃间断点．

= P71 习题1-4 3(10)

#prob[指出下列函数的间断点，并指出间断点是属于哪一类型：$ f(x) = lim_(n->oo)(x^n)/(1+x^n)quad (x>=0) $]

$
f(x) = cases(
	0\,quad& x=0,
	display(lim_(n->oo)1/(1+x^(-n)))\,quad&x>0
) sp = cases(
	0\,quad&0<=x<1,
	1/2\,quad&x=1,
	1\,quad&x>1,
)
$

故 $x=1$ 处是原函数的跳跃间断点．

= P71 习题1-4 4

#prob[
	设 $display(f(x) = cases(
		e^x (sin x + cos x)\,quad& x>0,
		2x+a\,quad& x<=0
	))$ 在 $(-oo,+oo)$ 上连续，求常数 $a$．
]

由于原函数在 $RR$ 上连续，应有：$ f(0) = f(0^+) quad <=> quad a = lim_(x->0^+) e^x (sin x + cos x) = 1 $

= P71 习题1-4 6

#prob[
	若 $display(f(x) = cases(
		display((sin 2x+e^(2a x)-1)/x)\,quad& x!=0,
		a\,quad& x=0
	))$ 在 $x=0$ 处连续，求常数 $a$．
]

根据函数的连续性要求，即需 $display(lim_(x->0) f(x))$ 存在且 $display(lim_(x->0) f(x)) = a$．

$
lim_(x->0) (sin 2x+e^(2a x)-1)/x
= 2 lim_(x->0) (sin 2x)/(2x) + lim_(x->0) (e^(2a x)-1)/x
= 2 + lim_(x->0) (2a x+o(x))/x
= 2 + 2a
$

所以 $a=-2$．