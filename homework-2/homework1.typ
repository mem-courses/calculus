#import "../template.typ": *

#show: project.with(
	course: "Calculus II",
  title: "Homework #1",
  authors: ((
		name: "Yulun Wu",
		email: "memset0@outlook.com",
		phone: "3230104585"
	),),
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

$ "原式"
&= sss root(n,0.001)
$

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

== P243 2(2)

#prob[
	已知级数的部分和为 $S_n=display((3^n-1)/(3^n))$，写出该级数，并求其和。
]

$ a_n = S_n - S_(n-1) = (3^n - 1)/(3^n) - (3^(n) - 3)/(3^n) = 2/(3^n) $
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

== P253 2(3)
#prob[
	用比值判别法或根值判别法判定级数的敛散性：
	$ sss (n^2)/((2+1/n)^n) $
]

== P253 2(5)
#prob[
	用比值判别法或根值判别法判定级数的敛散性：
	$ sss n^2 dot.c sin pi/(2^n) $
]

== P253 3(1)
#prob[
	用比较判别法的极限形式研究级数的敛散性：
	$ sum_(n=2)^(+oo) (ln n)/(n^2) $
]

== P253 3(3)
#prob[
	用比较判别法的极限形式研究级数的敛散性：
	$ sum_(n=2)^(+oo) (sqrt(n+2) - sqrt(n-2))/(n^a) $
]

// == P253 4(2)
// == P253 5(1)
// == P253 5(3)