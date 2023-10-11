#import "../template.typ": *

#show: project.with(
  title: "Calculus Homework #3",
  authors: ((
		name: "Yulun Wu (#47)",
		email: "memset0@outlook.com",
		phone: "3230104585"
	),),
  date: "October 11, 2023",
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