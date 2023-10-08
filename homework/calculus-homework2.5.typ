#import "../template.typ": *

#show: project.with(
  title: "Calculus Homework #2.5",
  authors: ((
		name: "Yulun Wu (#47)",
		email: "memset0@outlook.com",
		phone: "3230104585"
	),),
  date: "October 8, 2023",
)

= 课堂练习 10/7 热身练习

#prob[求：$ lim_(n->oo) (1^2/sqrt(n^6+1^2) + 2^2/sqrt(n^6+2^2) + 3^2/sqrt(n^6+3^2) + dots.c + n^2/sqrt(n^6+n^2)) $]

= 习题1-2 5

#prob[证明：数列 ${a_k}$ 收敛的充要条件是子列 ${a_(2k)}$ 与 ${a_(2k-1)}$ 均收敛且极限相等。]

= 习题1-2 9(1)

#prob[利用单调有界定理，判断数列是否收敛。若收敛，则求出极限。$ x_n = (a^n) /n! quad (a>0 "为常数") $]

= 习题1-2 9(3)

#prob[
	利用单调有界定理，判断数列是否收敛。若收敛，则求出极限。
	$ x_n = cases(
		sqrt(5) quad& (n=1),
		sqrt(5+x_(n-1)) quad& (n>1),
	) $
]

= 习题1-2 11

#prob[设 $0<=a<b$，$x_1=a$，$y_1=b$ 且 $x_n=display((x_(n-1)+y_(n-1))/2)$，$y_n=sqrt(x_(n-1)y_(n-1))$，试证 ${x_n}$，${y_n}$ 的极限存在且相等。]

= 习题1-2 13(1)

#prob[用单调有界定理判断数列是否收敛：$ x_n=10/1 times 11/3 times dots.c times (n+9)/(2n-1) $]

= 习题1-2 13(3)

#prob[用单调有界定理判断数列是否收敛：$ x_n=1+1/(2^2)+1/(3^2)+dots.c+1/(n^2) $]

= 习题1-2 15

#prob[证明：若单调数列的某一个子列收敛，则此单调数列本身也收敛。]
