#import "../template.typ": *

#show: project.with(
	course: "Calculus II",
	course_fullname: "Calculus (A) II",
	course_code: "821T0160",
	title: "Homework #1",
	authors: ((
		name: "Yulun WU",
		email: "memset0@outlook.com",
		id: "3230104585"
	),),
	semester: "Spring-Summer 2024",
	date: "January 24, 2024",
)

#let ss = [$display(attach(inline(sum), t: +oo, b: n=1))$]
#let sss = [$display(attach(sum, t: +oo, b: n=1))$]
#let int = math.integral
#let dx = [$dif x$]
#let dy = [$dif y$]

= 习题11-1

== P243 1(1)

#prob[
	判断级数敛散性，若收敛，则写出其和。
	$ sss (1/(2^n) + 1/(3^n)) $
]

$ "原式"
&= sss 1/(2^n) + sss 1/(3^n) 
&= (1/2)/(1-1/2) + (1/3)/(1-1/3) 
&= 1 + 1/2 
&= 3/2
$

== P243 1(2)

#prob[
	判断级数敛散性，若收敛，则写出其和。
	$ sss 1/((3n-2)(3n+1)) $
]

$ "原式"
&= sss 1/((3n-2)(3n+1))
&= sss 1/3(1/(3n-2) - 1/(3n+1))
&= 1/3 lim_(n->+oo) (1 - 1/(3n+1))
&= 1/3
$

== P243 1(4)

#prob[
	判断级数敛散性，若收敛，则写出其和。
	$ sss root(n,0.001) $
]

$
lim_(n->+oo) a_n
&= lim_(n->+oo) root(n,0.001)
= exp lim_(n->+oo) 1/n ln(0.001)
= e^0
= 1
!= 0
$

故该级数发散。 

== P243 1(5)

#prob[
	判断级数敛散性，若收敛，则写出其和。
	$ sss n/(2n-1) $
]

$
lim_(n->+oo) a_n
= lim_(n->+oo) n/(2n-1)
= lim_(n->+oo) 1/(2-1/n)
= 1/2 != 0
$

故该级数发散。

== P243 2(1)
#prob[
	已知级数的部分和为 $S_n=display((n+1)/(n))$，写出该级数，并求其和。
]

$
a_n = S_n - S_(n-1) = 1+1/n-(1-1/(n-1)) = 1/n - 1/(n-1) = -1/(n(n-1)) sp (n>=2)
$
当 $n=1$ 时，$a_1=S_1 =2$。
$
ss a_n = lim_(n->+oo) ((n+1)/n) = 1
$

== P243 2(2)

#prob[
	已知级数的部分和为 $S_n=display((3^n-1)/(3^n))$，写出该级数，并求其和。
]

$ a_n = S_n - S_(n-1) = (3^n - 1)/(3^n) - (3^(n) - 3)/(3^n) = 2/(3^n) sp (n>=2) $

容易验证 $n=1$ 也符合此通项。

$ sss a_n = sss 2/(3^n) = 2 times (1/3)/(1-1/3) = 1 $

== P243 3

#prob[
	求
	$ display( sss (ln 3)^(n-1)/(2^n) ) $
]

$ "原式"
&= 1/2 sss (ln 3)^(n-1)/(2^(n-1))
= 1/2 sss ((ln 3)/2)^(n-1)
= 1/2 times 2/(2 - ln 3)
= 1/(2 - ln 3)
$

= 习题11-2

== P253 1(1)
#prob[
	用比较判别法判定级数的敛散性：
	$ sss (n^(n-1))/((2n^2+n+1)^((n+1)/2)) $
]
$ "原式"
&= sss sqrt(((n^2)^(n-1))/((2n^2+n+1)^(n+1)))\
&= sss 1/(n^2) ((n^2)/(2n^2+n+1))^(n/2)
$

注意到 $dp(n^2/(2n+n+1)<1)$，所以
$
(n^(n-1))/((2n^2+n+1)^((n+1)/2)) < 1/n^2
$

根据 $p-$ 级数的性质可知 $sss dp(1/n^2)$ 收敛，故原级数也收敛。

== P253 1(2)
#prob[
	用比较判别法判定级数的敛散性：
	$ sss 1/(ln(n+1)) $
]

对于 $x>=2$，有 $ln x < x$，所以有
$
1/(ln x) > 1/x  ==> 1/(ln(n+1)) > 1/(n+1)
$
根据调和级数的敛散性，有级数 $sss display(1/(n+1))$ 发散。故根据比较判别法，级数 $display(sss 1/(ln(n+1)))$ 也发散。

== P253 1(3)
#prob[
	用比较判别法判定级数的敛散性：
	$ sss 1/((3n-1)^2) $
]

对于 $n>=2$，有
$
1/(3n-1^2) < 1/((3n-3)^2) = 1/9 times 1/(n-1)^2
$
由于自然数的倒数的平方和收敛于 $display((pi^2)/6)$，故级数
$
1/(3 times 1 -1) + 1/9 sum_(n=2)^(+oo) 1/((n-1)^2)
$
收敛。根据比较判别法，级数 $display(sss 1/((3n-1)^2))$ 也收敛。

== P253 2(1)
#prob[
	用比值判别法或根值判别法判定级数的敛散性：
	$ sss ((n!)^2)/((2n)!) $
]

$
lim_(n->+oo) (a_(n+1))/(a_n) 
&= lim_(n->+oo) (1 times 2 times dots.c times (n+1))/((n+2) times (n+3) times dots.c times (2n+2)) times ((n+1) times (n+2) times dots.c times (2n))/(1 times 2 times dots.c times n)\
&= lim_(n->+oo) (n+1)^2/((2n+1) (2n+2))
= 1/4 < 1
$

根据比值判别法可得，该级数收敛。

== P253 2(3)
#prob[
	用比值判别法或根值判别法判定级数的敛散性：
	$ sss (n^2)/((2+1/n)^n) $
]

$
lim_(n->+oo) root(n,a_n)
&= lim_(n->+oo) root(n,(n^2)/((2+1/n)^n))
= lim_(n->+oo) (root(n,n^2))/(2+1/n)
= 1/2 < 1
$

根据根值判别法可得，该级数收敛。

== P253 2(5)
#prob[
	用比值判别法或根值判别法判定级数的敛散性：
	$ sss n^2 dot.c sin (pi/(2^n)) $
]

当 $x>0$ 时，有 $sin x < x$ 成立，故
$
a_n = n^2 dot.c sin (pi/(2^n)) < (pi dot n^2)/(2^n)
$
同 2(3) 的思路，我们有
$
lim_(n->+oo) root(n,(pi dot n^2)/(2^n)) = 1/2 < 1
$
故根据根值判别法可得，级数 $sss display((pi dot n^2)/(2^n))$ 收敛。再根据比较判别法得，原级数收敛。

== P253 3(1)
#prob[
	用比较判别法的极限形式研究级数的敛散性：
	$ sum_(n=2)^(+oo) (ln n)/(n^2) $
]

注意到：
$
lim_(n->+oo) display((ln n)/(n^2))/display(1/(n^(3/2)))
&= lim_(n->+oo) (ln n)/(n^(1/2))
= 0
$

根据 $p-$ 级数的性质，有 $ss n^(-3/2)$ 收敛，故根据比较判别法的极限形式，原级数也收敛。

== P253 3(3)
#prob[
	用比较判别法的极限形式研究级数的敛散性：
	$ sum_(n=2)^(+oo) (sqrt(n+2) - sqrt(n-2))/(n^a) $
]

$
(sqrt(n+2) - sqrt(n-2))/(n^a) = ((n+2) - (n-2))/(n^a (sqrt(n+2) + sqrt(n-2))) = 4/(n^a (sqrt(n+2) + sqrt(n-2)))
$

注意到

$
lim_(n->+oo) display(4/(n^a (sqrt(n+2) + sqrt(n-2))))/display(n^(a+1/2))  = 2
$

故原级数与级数 $sss display(1/(n^(a+1/2)))$ 有相同的敛散性。根据 $p-$ 级数的性质，当 $a<=1/2$ 时原级数发散；当 $a>1/2$ 时原级数收敛。

== P253 4(2)
#prob[
	用积分判别法研究级数的敛散性：
	$ sum_(n=2)^(+oo) 1/(n ln n (ln ln n)) $
]

根据积分判别法，该级数的敛散性与反常积分
$
int_2^(+oo) 1/(x ln x (ln ln x)) dif x
$
相同。根据：
$
int_2^(+oo) 1/(x ln x (ln ln x)) dif x
&= int_2^(+oo) dif(ln x)/(ln x (ln ln x))\
&= int_(ln 2)^(+oo) (dif u)/(u ln u)\
&= int_(ln 2)^(+oo) dif(ln u)/(ln u)\
&= int_(ln ln 2)^(+oo) (dif v)/v\
&= (ln v)|_(ln ln 2)^(+oo)\
&= +oo
$
可知原级数发散。

== P253 5(1)
#prob[
	研究级数的敛散性：
	$ sss int_n^(n+1) e^(-sqrt(x)) dif x $
]
根据分段积分的定义，有
$
S = sss int_n^(n+1) e^(-sqrt(x)) dif x
= int_1^(+oo) e^(-sqrt(x)) dif x
$
令 $u=-sqrt(x)$，则 $dif x = 2 u dif u$。代入得
$
S
&= int_1^(+oo) e^(-u) dot 2 u dif u\
&= 2 int_(-1)^(-oo) u e^u dif u\
&= 2 (u-1) e^u |_(-1)^(-oo)\
$
是收敛的。所以原级数收敛。

== P253 5(3)
#prob[
	研究级数的敛散性：
	$ sss 1/(sqrt(3)^n) (1+1/n)^(n^2) $
]
注意到：
$
lim_(n->+oo) (1/sqrt(3))^n (1+1/n)^(n^2)
&= exp lim_(n->+oo) (-n/2 ln 3 + n^2 ln (1+1/n))\
&= exp lim_(x->0^+) (-(ln 3)/(2x) + ln(1+x)/(x^2))\
&= exp lim_(x->0^+) (2ln(1+x) - ln 3 dot x)/(2x^2)\
&= exp lim_(x->0^+) (2x-x^2+o(x^2) - ln 3 dot x)/(2x^2)\
&= exp lim_(x->0^+) (2-ln 3)/(2x)=+oo
$
由于级数的通项不趋于 $0$，故该级数发散。