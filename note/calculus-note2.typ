#import "../template.typ": *

#show: project.with(
  title: "Calculus Note #2",
  authors: ((
		name: "memset0",
		email: "memset0@outlook.com",
		phone: "3230104585"
	),),
  date: "October 31, 2023",
)

= 导数

= 求导

== 四则运算求导法则

函数 $u(x)$ 和 $v(x)$ 都在 $x$ 具有导数 $=>$ $u(x)$ 与 $v(x)$ 的和、差、积、商（$v(x)=0$ 的除外）都在点 $x$ 可导，且：

1. $[u(x) pm v(x)]' = u'(x) pm v'(x)$

2. $[u(x) v(x)]' = u'(x) v(x) + u(x) v'(x)$

3. $display([u(x)/v(x)]' = (u'(x) v(x) - u(x) v'(x))/(v^2(x))) quad (v(x) != 0)$

#prof[
	乘法求导法则的证明：设 $f(x) = u(x) v(x)$，则有
  $ f'(x)
	&= lim_(h->0)(f(x+h)-f(x))/h
	= lim_(h->0)(u(x+h) v(x+h) - u(x) v(x)) / h\
	&= lim_(h->0) [frac(u(x+h)-u(x),h) v(x+h) + u(x) frac(v(x+h) - v(x), h)]\
	&= u'(x) v(x) + u(x) v'(x)\
	$
	除法求导法则的证明：设 $f(x) = display(u(x)/v(x))$，则有
	$ f'(x)
	&= lim_(h->0)(f(x+h) - f(x))/h
	= lim_(h->0)(frac(u(x+h),v(x+h))-frac(u(x),v(x)))/(h)\
	&= lim_(h->0) [ frac(
		(u(x+h)-u(x))/h v(x) - u(x) (v(x+h) - v(x))/h
	,v(x+h) v(x)) ]\
	&= (u'(x) v(x) - u(x) v'(x))/(v^2(x)))
	$
]