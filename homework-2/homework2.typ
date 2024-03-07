#import "../template.typ": *

#show: project.with(
	course: "Calculus II",
	course_fullname: "Calculus (A) II",
	course_code: "821T0160",
	title: "Homework #2",
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

= 习题11-3

== P263 1(2)
#prob[
	判别级数绝对收敛，条件收敛，还是发散：
	$ sss ((-1)^n)/root(n,n) $
]

== P263 1(4)
#prob[
	判别级数绝对收敛，条件收敛，还是发散：
	$ sum_(n=2)^(+oo) sin(n pi - 1/(ln n)) $
]

== P263 2
#prob[
	设 $a_n>0 sp (n=1,2,dots.c)$，且 $ss a_n$ 绝对收敛，常数 $lambda in (0,dp(pi/2))$，证明级数 $dp(sss (-1)^n (n tan lambda/n) a_(2n))$ 绝对收敛。
]

== P263 4
#prob[
	证明：$ss |a_n|$ 收敛，则 $ss a_n^2$ 也收敛，反之不成立，试举例说明。
]


= 习题11-4
== P270 1(1)
#prob[
	求函数项级数的收敛域：
	$ sss n/(x^n) $
]

== P270 1(3)
#prob[
	求函数项级数的收敛域：
	$ sss (x^n)/(1+x^(2n)) $
]

= 习题11-5
== P281 1(1)
#prob[
	求幂级数的收敛半径、收敛区间及收敛域：
	$ sss (x^n)/((n+1)3^n) $
]

== P281 1(3)
#prob[
	求幂级数的收敛半径、收敛区间及收敛域：
	$ sss ((x-1)^n)/((2n-1)2^n) $
]

== P281 1(5)
#prob[
	求幂级数的收敛半径、收敛区间及收敛域：
	$ sss ((2x+1)^n)/(3n-1) $
]

== P281 1(7)
#prob[
	求幂级数的收敛半径、收敛区间及收敛域：
	$ sss (x^n)/(a^n+b^n) quad (a>0,sp b>0) $
]