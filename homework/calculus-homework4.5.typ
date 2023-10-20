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

= 课堂例题 10.19

#prob[求极限：$ lim_(x->0)(frac(display(e^(1/x)+2),display(e^(2/x))+1)+(sin x)/(|x|)) $]

令 $u=e^(1/x)$，已知 $display(lim_(x->0^+) u=lim_(t->+oo) e^x = +oo)$，$display(lim_(x->0^-) u=lim_(t->-oo) e^x = 0)$。所以有：

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

$x=0$ 处为原函数的跳跃间断点。

= P71 习题1-4 3(6)

#prob[指出下列函数的间断点，并指出间断点是属于哪一类型：$ f(x) = x/((4-x^2)(1+x^2)) $]

$x=2$ 和 $x=-2$ 处是原函数的无穷间断点。

= P71 习题1-4 3(8)

#prob[指出下列函数的间断点，并指出间断点是属于哪一类型：$ f(x) = cases(2x+1\,quad x>=0,x\,quad x<0) $]

$x=0$ 处是原函数的跳跃间断点。

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

故 $x=1$ 处是原函数的跳跃间断点。

= P71 习题1-4 4

#prob[
	设 $display(f(x) = cases(
		e^x (sin x + cos x)\,quad& x>0,
		2x+a\,quad& x<=0
	))$ 在 $(-oo,+oo)$ 上连续，求常数 $a$。
]

由于原函数在 $RR$ 上连续，应有：$ f(0) = f(0^+) quad <=> quad a = lim_(x->0^+) e^x (sin x + cos x) = 1 $

= P71 习题1-4 6

#prob[
	若 $display(f(x) = cases(
		display((sin 2x+e^(2a x)-1)/x)\,quad& x!=0,
		a\,quad& x=0
	))$ 在 $x=0$ 处连续，求常数 $a$。
]

根据函数的连续性要求，即需 $display(lim_(x->0) f(x))$ 存在且 $display(lim_(x->0) f(x)) = a$。

$
lim_(x->0) (sin 2x+e^(2a x)-1)/x
= 2 lim_(x->0) (sin 2x)/(2x) + lim_(x->0) (e^(2a x)-1)/x
= 2 + lim_(x->0) (2a x+o(x))/x
= 2 + 2a
$

所以 $a=-2$。