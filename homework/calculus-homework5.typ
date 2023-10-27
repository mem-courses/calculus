#import "../template.typ": *

#show: project.with(
  title: "Calculus Homework #5",
  authors: ((
    name: "Yulun Wu (#47)",
    email: "memset0@outlook.com",
    phone: "3230104585"
  ),),
  date: "October 27, 2023",
)

= P71 习题1-4 9(1)

#prob[求证：方程 $2^x-4x=0$ 在 $display((0,1/2))$ 内必有一实根．]

$f(x) = 2^x - 4x$ 是初等函数，在 $RR$ 上连续．已知 $f(0) = 1>0,sp f(1/2) = sqrt(2)-2<0$．根据 *零点定理*，$f(x)=0$ 在 $display((0,1/2))$ 上必有一实根．

= P72 习题1-4 10(1)

#prob[若 $f(x)$ 在 $[a,b]$ 上连续，$x_1,x_2,dots.c,x_n in [a,b]$，证明至少存在一点 $xi in [a,b]$，使 $ f(xi) = (f(x_1)+f(x_2)+dots.c+f(x_n))/n $]

设 $M = min{f(x_1),f(x_2),dots.c,f(x_n)},sp N = max{f(x_1),f(x_2),dots.c,f(x_n)}$．所以 $M<=f(xi)<=N$．而由于 $f(x)$ 在 $[a,b]$ 上连续，根据 *介值定理*，对于 $f(x)$ 在 $M$ 到 $N$ 的任意实数 $c$ 都有至少存在一个 $xi$ 使得 $f(xi)=c$．故一定存在 $xi in [a,b]$ 满足题意．

= P72 习题1-4 12(1)

#prob[求极限：$ lim_(x->0) frac((1+alpha x)^a-(1+beta x)^b,x) $]

$
lim_(x->0) frac((1+alpha x)^a-(1+beta x)^b,x)
= lim_(x->0) frac((1+a alpha x) - (1+b beta x)+o(x),x)
= a alpha - b beta
$

= P72 习题1-4 12(2)

#prob[求极限：$ lim_(x->a) frac(x^alpha-a^alpha,x^beta-a^beta) quad(a>0,beta!=0) $]

令 $u=x-a$．当 $x->a$ 时，$u->0$．

$
lim_(x->a) frac(x^alpha-a^alpha,x^beta-a^beta)
= lim_(u->0) frac((a+u)^alpha-a^alpha,(a+u)^beta-a^beta)
= display(lim_(u->0) frac((a+u)^alpha-a^alpha,(a+u)-a))/display(lim_(u->0) frac((a+u)^beta-a^beta,(a+u)-a))
= frac(alpha a^(alpha-1),beta a^(beta-1)) = (alpha a^(alpha-beta))/beta
$

= P72 习题1-4 12(4)

#prob[求极限：$ lim_(x->-oo) frac(ln(1+3^x),ln(1+2^x)) $]

已知 $x->-oo$ 时，$2^x->0$ 且 $3^x->0$．

$
lim_(x->-oo) frac(ln(1+3^x),ln(1+2^x))
= lim_(x->-oo) frac(3^x,2^x)
= 0
$

= P72 习题1-4 12(5)

#prob[求极限：$ lim_(x->+oo) frac(ln(1+3^x),ln(1+2^x)) $]

$
lim_(x->+oo) frac(ln(1+3^x),ln(1+2^x))
= lim_(x->+oo) frac(ln(3^x),ln(2^x))
= lim_(x->+oo) frac(x ln 3,x ln 2)
= (ln 3) / (ln 2)
$

= P72 习题1-4 12(7)

#prob[求极限：$ lim_(x->+oo) (2 e^(x/(x^2+1)) - 1)^((x^2+1)/x) $]

令 $u=display(x/(x^2+1))$．已知 $x->+oo$ 时，$u->0$．

$
& lim_(x->+oo) (2 e^(x/(x^2+1)) - 1)^((x^2+1)/x)
= lim_(u->0) (2 e^u - 1)^(1/u)
= lim_(u->0) e^(1/u ln(2 e^u - 1))
= lim_(u->0) e^((2(e^u - 1))/u)
= e^2
$

= P72 第一章综合题 2

#prob[若 $display(lim_(n->oo) (n^a)/(n^b-(n-1)^b) = 1995)$，求常数 $a,b$．]

$
lim_(n->oo) (n^a)/(n^b-(n-1)^b) = 1995
==> lim_(n->oo) (n^b-(n-1)^b)/(n^a) = 1/1995
==> lim_(n->oo) (b n^(b-1) + o(n^(b-1)))/n^a = 1/1995
$

可以得到 $b=display(1/1995)$，$a = b+1 = display(1996/1995)$．

= P72 第一章综合题 3(2)

#prob[求极限：$ lim_(x->0)((a_1^x+a_2^x+dots.c+a_n^x)/n)^(1/x) quad (a_1,a_2,dots.c,a_n"均为正数") $]

$
& lim_(x->0)((a_1^x+a_2^x+dots.c+a_n^x)/n)^(1/x)
= lim_(x->0)exp(1/x ln((a_1^x + a_2^x + dots.c + a_n^x)/n))\
=& lim_(x->0)exp(1/x ((a_1^x + a_2^x + dots.c + a_n^x)/n-1))\
=& lim_(x->0)exp(1/x (((a_1^x-1) + (a_2^x-1) + dots.c + (a_n^x-1))/n))\
=& lim_(x->0)exp(1/x ((ln(a_1^x) + ln(a_2^x) + dots.c + ln(a_n^x))/n))\
=& lim_(x->0)exp(1/x ((x ln(a_1) + x ln(a_2) + dots.c + x ln(a_n))/n))\
=& exp((ln(a_1) + ln(a_2) + dots.c + ln(a_n))/n)\
=& root(n,a_1a_2 dots.c a_n)
$

= P72 第一章综合题 3(3)

#prob[求极限：$ lim_(x->0)((a^(x+1)+b^(x+1)+c^(x+1))/(a+b+c))^(1/x) quad (a>0,b>0,c>0) $]

$
& lim_(x->0)((a^(x+1)+b^(x+1)+c^(x+1))/(a+b+c))^(1/x)
= lim_(x->0)exp(1/x ln((a^(x+1)+b^(x+1)+c^(x+1))/(a+b+c)))\
=& lim_(x->0)exp(1/x (((a^(x+1)-a)+(b^(x+1)-b)+(c^(x+1)-c))/(a+b+c)))\
=& lim_(x->0)exp(1/x ((a(a^(x)-1)+b(b^(x)-1)+c(c^(x)-1))/(a+b+c)))\
=& lim_(x->0)exp(1/x ((a x ln(a)+b x ln(b)+c x ln(c))/(a+b+c)))\
=& exp((a ln(a)+b ln(b)+c ln(c))/(a+b+c))\
=& root(a+b+c,a^a b^b c^c)\
$

= P73 第一章综合题 10

#prob[证明方程 $display(a_1/(x-b_1)+a_2/(x-b_2)+a_3/(x-b_3)=0)$（其中 $a_1,a_2,a_3>0$ 且 $b_1<b_2<b_3$）在 $(b_1,b_2)$，$(b_2,b_3)$ 内各有一个根．]

设 $f(x) = display(a_1/(x-b_1)+a_2/(x-b_2)+a_3/(x-b_3))$，已知

$
lim_(x->b_1^+) f(x)
= (lim_(x->b_1^+)a_1/(x-b_1)) + a_2/(x-b_2) + a_3/(x-b_3)
= +oo
$

同理可得：$f(b_2^-) = -oo,sp f(b_2^+) = +oo,sp f(b_3^-)=-oo$．

注意到 $display(a/(x-b)) sp (a>0)$ 在 $(-oo,b)$ 和 $(b,+oo)$ 上分别单调递减且连续，可以得到 $f(x)$ 在 $(b_1,b_2)$ 和 $(b_2,b_3)$ 上分别单调递减且连续．

根据零点定理可知在 $(b_1,b_2)$ 和 $(b_2,b_3)$ 中分别恰一个点使得 $f(x)=0$，即原方程在 $(b_1,b_2)$ 和 $(b_2,b_3)$ 上各有一根．

= P73 第一章综合题 11(2)

#prob[若 $f(x)$ 在 $[a,b]$ 上连续，$a<c<d<b$，证明：存在一个 $xi in (a,b)$，使得 $ m f(c) + n f(d) = (m+n) f(xi) $其中 $m,n$ 为正数．]

先证明：当 $x<=y$ 时，有 $display((m x + n y)/(m+n)) in [x,y]$．

$
x <= (m x+n y)/(m+n) <= y
<== m y + n y <= m x + n y <= m x + n x
<== n x < n y and m x < m y
$

已知 $display(f(xi) = (m f(c) + n f(d))/(m+n))$．根据介值定理，一定存在至少一个 $xi$ 使得 $min{f(c),f(d)}$ $<$ $f(xi)$ $<$ $max{f(c),f(d)}$．即原命题得证．

= P73 第一章综合题 16

#prob[试确定常数 $k,c$，使得当 $x->+oo$ 时，$arcsin(sqrt(x^2+sqrt(x))-x) sim display(c/(x^k))$．]

即要求 
$
lim_(x->+oo) arcsin(sqrt(x^2+sqrt(x))-x) / (c/(x^k)) = 1
$

当 $x->+oo$ 时，$sqrt(x^2+sqrt(x))-x -> 0$．所以

$
arrow.double.l& lim_(x->+oo) arcsin(sqrt(x^2+sqrt(x))-x) / (c/(x^k))
= lim_(x->+oo) (x^k (sqrt(x^2+sqrt(x))-x)) / c \
=& lim_(x->+oo) (x^k (x^2+sqrt(x)-x^2)) / c(sqrt(x^2+sqrt(x))+x)
= lim_(x->+oo) x^(k+1/2)/c(sqrt(x^2+sqrt(x))+x)=1
$

由于极限存在，故应有 $k=1/2$．可以得到

$
c=lim_(x->+oo) x/(sqrt(x^2+sqrt(x))+x) = 1/2
$

= P73 第一章综合题 17

#prob[设 $f(x) = display(frac(sqrt(1+sin x+sin^2 x)-(alpha + beta sin x),sin^2 x))$，且点 $x=0$ 是 $f(x)$ 的可去间断点，试求常数 $alpha,beta$．]

$
lim_(x->0)f(x)
&= lim_(x->0) frac(sqrt(1+sin x+sin^2 x)-(alpha + beta sin x),sin^2 x)\
&= lim_(x->0) (1+sin x+sin^2 x-(alpha+beta sin x)^2)/(sin^2 x (sqrt(1+sin x+sin^2 x)+(alpha + beta sin x)))\
$

由于极限存在，应有 $1+sin x+sin^2 x-(alpha+beta sin x)^2$ 与 $sin^2 x$ 同阶．所以，

$ cases(
	alpha^2 = 1,
	2alpha beta = 1
) $

解得 $alpha = 1,sp beta = 1/2$．代入验证 $f(x)$ 在 $x=0$ 处的左右极限相同，故此时 $x=0$ 确实为 $f(x)$ 的可去间断点．

= P98 习题2-1 7(3)

#prob[按定义求函数 $f(x)$ 在 $x=1$ 处的导数：$ f(x)=cases(
	3x^2\,quad& x<=1,
	2x^3+1\,quad& x>1,
) $]

$
lim_(x->1^+) frac(f(x)-f(1),x-1)
= lim_(Dx->0^+) frac(2(1+Dx)^3-2 times 1^3,Dx)
= lim_(Dx->0^+) frac(2 Dx^3+ 6 Dx^2 + 6 Dx,Dx)
= 6\
lim_(x->1^-) frac(f(x)-f(1),x-1)
= lim_(Dx->0^+) frac(3(1+Dx)^2-3 times 1^2,Dx)
= lim_(Dx->0^+) frac(3 Dx^2 + 6 Dx, Dx)
= 6
$

所以 $display(lim_(x->1^+) frac(f(x)-f(1),x-1) = lim_(x->1^-) frac(f(x)-f(1),x-1) = 6 ==> lim_(x->1) frac(f(x)-f(1),x-1) = 6 ==> f'(1) = 6)$．

= P98 习题2-1 7(4)

#prob[按定义求函数 $f(x)$ 在 $x=0$ 处的导数：$ f(x) = cases(
	x^2 sin display(1/x)\,quad& x!=0,
	0\,quad& x=0
) $]

$
f'(0)
= lim_(x->0) frac(f(x)-f(0),x-0)
= lim_(x->0) frac(f(x),x)
= lim_(x->0) frac(x^2 sin (1/x), x)
= lim_(x->0) frac(sin (1/x), 1/x)
$

当 $x->0$ 时，$1/x -> oo$．由于 $sin(1/x)$ 有界，所以 $display(lim_(x->0) frac(sin (1/x), 1/x)) = 0$．故 $f'(0) = 0$．

= P98 习题2-1 10

#prob[设 $f(x) = x+(x-1)arcsin sqrt(display(x/(x+1)))$，求 $f'(1)$．]

$
f'(x)
= 1 + arcsin sqrt(x/(x+1)) + (x-1)/sqrt(1-x/(x+1)) dot 1/(2sqrt(x/(x+1))) dot ((x+1)-x)/((x+1)^2)\
f'(1)
= 1 + arcsin sqrt(2)/2 = 1+pi/4
$