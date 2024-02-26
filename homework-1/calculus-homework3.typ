#import "../template.typ": *

#show: project.with(
  title: "Calculus Homework #3",
  authors: ((
		name: "Yulun Wu (#47)",
		email: "memset0@outlook.com",
		phone: "3230104585"
	),),
  date: "October 18, 2023",
)

= P53 习题1-3 1(1)

#prob[按定义证明：$ lim_(x->1)(3x-1)=2 $]

任给 $eps>0$，要求 $|(3x-1)-2|<eps <=> |x-1|<display(eps/3)$．只需取 $delta=display(eps/3)$，那么对于任意 $|x-1|<delta$，都有 $|(3x-1)-2|<eps$ 成立，得证．

= P53 习题1-3 1(4)

#prob[按定义证明：$ lim_(x->+oo)1/2^x=0 $]

任给 $eps>0$，要求 $display(|1/2^x|<eps <=> 2^(-x)<eps)$．取 $delta=-ln(eps)+1$，那么对于任意 $x>delta$，都有：

$
1/2^x<1/2^delta=1/2^(-ln(eps)+1)=eps/2<eps
$

成立，得证．

= P54 习题1-3 3

#prob[研究 $f(x) = display(cases(x\,quad&x<1,x^2+1\,quad&x>=1))$ 在 $x=1$ 处的极限．]

$
lim_(x->1^-) f(x) = 1\
lim_(x->1^+) f(x) = 1^1+1=2
$

因为 $display(lim_(x->1^-) f(x) != lim_(x->1^+) f(x))$，所以 $f(x)$ 在 $x=1$ 处的极限不存在．

= P54 习题1-3 4

#prob[若 $f(x) = display(cases(x+a\,quad&x<0,x^3+2\,quad&x>=0))$ 在 $x=0$ 处的极限存在，求常数 $a$．]

要使 $f(x)$ 在 $x=0$ 处的极限存在，有 $display(lim_(x->0^-) f(x) = lim_(x->0^+) f(x))$，可得 $a=2$．

= P54 习题1-3 5(3)

#prob[证明极限不存在：$ lim_(x->-oo)x sin x $]

对于任意 $x_0=-(2k+1)pi space(k in ZZ_(>0))$，都存在 $x=-(2k+3)pi$，满足 $x<x_0$ 且

$
x sin x = x < x_0 = x_0 sin x_0
$

故 $x sin x$ 在 $x->-oo$ 时无界，不存在极限．

= P54 习题1-3 5(4)

#prob[证明极限不存在：$ lim_(x->0)e^(1/x) $]

对于任意 $x_0>0$，都存在 $display(x=x_0/(1+x_0))$，满足 $0<x<x_0$ 且

$
e^(1/x) = e^(1/x_0 + 1) = e dot e^(1/x_0) > e^(1/x_0)
$

故 $e^(1/x)$ 在 $x->0^+$ 时无界，不存在极限．

= P54 习题1-3 8(2)

#prob[利用极限性质求极限：$ lim_(x->0)((1+x)^5-(1+5x))/(x^2+x^5) $]

$
lim_(x->0)((1+x)^5-(1+5x))/(x^2+x^5)
&= lim_(x->0)(x^2(10+10x+5x^2+x^3))/(x^2(1+x^3))
= lim_(x->0)(10+10x+5x^2+x^3)/(1+x^3)
= 10
$

= P54 习题1-3 8(4)

#prob[利用极限性质求极限：$ lim_(x->oo)((2x-3)^20 (3x+2)^30)/((2x+1)^50) $]

$
lim_(x->oo)((2x-3)^20 (3x+2)^30)/((2x+1)^50)
= (lim_(x->oo)(2x-3)/(2x+1))^20 (lim_(x->oo)(3x+2)/(2x+1))^30
= (3/2)^20
$

= P54 习题1-3 8(8)

#prob[利用极限性质求极限：$ lim_(x->1)(x^(n+1)-(n+1)x+n)/((x-1)^2) quad (n in ZZ_+) $]

令 $u=x-1$，已知 $display(lim_(x->1) u=0)$．

$
& lim_(x->1)(x^(n+1)-(n+1)x+n)/((x-1)^2)
= lim_(u->0)((u+1)^(n+1)-(n+1)u-1)/(u^2)\
=& lim_(u->0) sum_(i=2)^(n+1) binom(n+1,i) u^(i-2)
= binom(n+1,2) = n(n+1)/2
$

= P54 习题1-3 8(11)

#prob[利用极限性质求极限：$ lim_(x->a^+)(sqrt(x)-sqrt(a)+sqrt(x-a))/sqrt(x^2-a^2) quad (a>0) $]

$
lim_(x->a^+)(sqrt(x)-sqrt(a))/sqrt(x-a)
= ((sqrt(x)-sqrt(a))(sqrt(x)+sqrt(a)))/(sqrt(x-a)(sqrt(x)+sqrt(a)))
= (sqrt(x-a))/(sqrt(x)+sqrt(a))
= 0
$

$
lim_(x->a^+)(sqrt(x)-sqrt(a)+sqrt(x-a))/sqrt(x^2-a^2)
= lim_(x->a^+)(sqrt(x-a)(1+(sqrt(x)-sqrt(a))/sqrt(x-a)))/(sqrt(x-a)sqrt(x+a))
= lim_(x->a^+)1/sqrt(x+a)=1/sqrt(2a)
$

= P54 习题1-3 8(13)

#prob[利用极限性质求极限：$ lim_(x->0)(sqrt(1+x)-sqrt(1-x))/(root(3,1+x)-root(3,1-x)) $]

令 $u=root(6,1+x)$，$v=root(6,1-x)$．已知 $display(lim_(x->0)u = lim_(x->0)v = 1)$．

$
lim_(x->0)(u^3-v^3)/(u^2-v^2) = lim_(x->0)((u-v)(u^2+u v+v^2))/((u-v)(u+v)) = 3/2
$

= P54 习题1-3 8(15)

#prob[利用极限性质求极限：$ lim_(x->+oo) [sqrt((x+a)(x+b)) - x] $]

$
& lim_(x->+oo) [sqrt((x+a)(x+b)) - x]
= lim_(x->+oo) ((x+a)(x+b)-x^2)/(sqrt((x+a)(x+b))+x) \
=& lim_(x->+oo) ((a+b)x + a b)/(sqrt((x+a)(x+b)) + x)
= lim_(x->+oo) (a+b+(a b)/x)/(sqrt((1+a/x)(1+b/x)) + 1)
= (a+b)/2
$

= P54 习题1-3 8(17)

#prob[利用极限性质求极限：$ lim_(x->0)(1+cos^2 1/x)^x $]

已知 $cos^2 1/x in [0,1]$，故 $1+cos^2 1/x$ 有界．

根据 $display(lim_(x->0) a^x = 1)$，有 $display(lim_(x->0)(1+cos^2 1/x)^x) = 1$．

= P54 习题1-3 9(2)

#prob[利用两个重要极限求极限：$ lim_(x->0)(sin 5x-sin 3x)/(sin x) $]

$
& lim_(x->0)(sin 5x-sin 3x)/(sin x)
= lim_(x->0)(sin x cos 4x + sin 4x cos x - sin x cos 2x - sin 2x cos x)/(sin x) \
=& lim_(x->0)(cos 4x - cos 2x + (cos x)(sin 4x - sin 2x) / (sin x))
= (sin 4x - sin 2x) / (sin x) \
=& lim_(x->0)(2sin x cos x (2 cos 2x - 1)) / (sin x)
= lim_(x->0)(2 cos x (2 cos 2x - 1))
= 2
$

= P54 习题1-3 9(5)

#prob[利用两个重要性质求极限：$ lim_(x->0)sqrt(1-cos x^2)/(1-cos x) $]

$
lim_(x->0)sqrt(2 sin^2 (x^2/2))/(2 sin^2 (x/2))
= lim_(x->0)sin(x^2/2)/(sqrt(2) sin^2(x/2))
= lim_(x->0)(sin(x^2/2) dot (x/2)^2 dot 2)/(sqrt(2) sin^2(x/2) dot x^2/2) = sqrt(2)
$

= P54 习题1-3 9(7)

#prob[利用两个重要性质求极限：$ lim_(x->0)(1-2x)^(1/x) $]

令 $u=display(1/x)$，已知 $display(lim_(x->0) u=oo)$．

$
lim_(x->0) (1-2x)^(1/x)
= lim_(u->oo) (1-2/u)^u 
= (lim_(u->oo) (1+1/(-u/2))^(-u/2))^(-2)
= 1/e^2
$

= P54 习题1-3 9(8)

#prob[利用两个重要性质求极限：$ lim_(x->oo)((x+a)/(x-a))^x $]

令 $display(u=x/(2a)+1/2)$，已知 $display(lim_(x->oo) u = oo)$．

$
lim_(x->oo)((x+a)/(x-a))^x
= lim_(x->oo)(1+2a/(x-a))^x
= lim_(x->oo)(1+1/u)^(a(2u-1))
= e^(2a)
$

= P55 习题1-3 10

#prob[由 $display(lim_(x->oo)((x^2+1)/(x+1)-a x-b)=0)$，求常数 $a$、$b$．]

$
lim_(x->oo)((x^2+1)/(x+1)-a x-b)
= lim_(x->oo)((x-1)+2/(x+1)-a x-b)
= lim_(x->oo)((1-a)x-(1+b)) = 0
$

那么有 $a=1$，$b=-1$．