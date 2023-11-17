#import "../template.typ": *

#show: project.with(
  title: "Calculus Correction #1",
  authors: ((
		name: "memset0",
		email: "memset0@outlook.com",
		phone: "3230104585"
	),),
  date: "November 17, 2023",
)

= 微积分甲2019-2020学年秋冬学期期中 3 #wa

#prob[求极限 $display(lim_(x->oo) (cos 1/x + sin 1/(x^2))^(x^2))$．]

由 $display(lim_(x->oo) 1/x=0)$，令 $u=display(1/x^2)$，可得

$ "原式"
&= lim_(u->0) (1+sin u)^(1/u)
= exp lim_(u->0) 1/u ln(1+sin u)
= exp lim_(u->0) 1/u sin u\
&= exp lim_(u->0) 1/u dot u
= e
$

#warn[
	#def[错因]直接进行局部代换．局部代换的本质是极限的四则运算法则，故要参考相应的适用条件．

	#def[正解]

	$ "原式"
	&= exp lim_(x->oo) x^2 ln (cos 1/x + sin 1/(x^2))
	= exp lim_(x->oo) x^2 (cos 1/x - 1 + sin 1/(x^2))\
	&= exp (lim_(x->oo) x^2 (cos 1/x-1)  + lim_(x->oo) x^2 sin 1/(x^2))
	= exp (-1/2 + 1) = sqrt(e)
	$
]

= 微积分甲2019-2020学年秋冬学期期中 12(2) #wa

#prob[设 $f(x) = display(cases(display(x^alpha sin 1/x^2\,quad& x>0),0\,quad&x<=0))$，问 $alpha$ 满足什么条件时，$f(x)$ 是可导函数．]

#warn[
	#def[错因]混淆 $f(x)$ 可导、$f(x)$ 的导函数连续的概念．

  #def[正解]由于 $f(x)$ 在 $(-oo,0)$ 和 $(0,+oo)$ 上显然可导，只需要求 $f(x)$ 在点 $x=0$ 可导，即要求 $f'_+(0) = f'_-(0) = 0$．根据极限的定义，有（注意这里只能通过极限的定义式得到）

	$ f'_+(0)
	= lim_(x->0^+) (f(x) - f(0))/(x-0)
	= lim_(x->0^+) f(x)/x
	= lim_(x->0^+) x^(alpha-1) sin 1/x^2
	$

	故只需 $alpha>1$，那么 $display(lim_(x->0^+) x^(alpha-1)) = 0$，且 $display(sin 1/x^2)$ 有界．此时极限存在且为 $0$，满足要求．

	#def[补充]如果要使 $f'(x)$ 连续，那么还要求 $display(lim_(x->0^+)) f'(x) = 0$，可以解得 $alpha>3$．
]