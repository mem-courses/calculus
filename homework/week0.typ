#import "../template.typ": *

#show: project.with(
  title: "微积分 Homework #0",
  authors: (
  (name: "Yulun Wu", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "September 15, 2023",
)

= Pre Problem 1

#prob[已知数列 ${x_n}$ 满足 $ cases(
	x_1 = a,
	x_(n+1) = 1/2 x_n^2 (3 - x_n),
) quad quad (a "为常数",quad a in (0,1) union (1,2) union (2,3)) $
问当 $n>=1$（或 $n>=2$）时，${x_n}$ 是否为单调数列（需说明理由或给出论证过程）]

设 $ f(x) = 1/2 x^2 (3-x) $

则有 $ f'(x) = 1/2( 2x(3-x) + (-x^2)) = 3/2x (2 - x) $


= xmr's Problem 1

#prob[设 $x,y in RR$，求 $(x-y)^2 + (2x-5)^2 + 4y^2$ 的最小值。]

