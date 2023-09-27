#import "../template.typ": *

#show: project.with(
  title: "Calculus Homework #2",
  authors: (
  (name: "Yulun Wu", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "September 26, 2023",
)

= 习题1-2 2(3)

#prob[按定义证明数列极限：$ lim_(n->oo)(sqrt(n+1)-sqrt(n))=0 $]

$forall eps>0$，要使

$
|sqrt(n+1)-sqrt(n)-0|<eps
<=> sqrt(n+1)<sqrt(n)+eps
<=> n+1<n+2sqrt(n) dot eps+eps^2
<=> 2sqrt(n) dot eps > 1-eps^2
$

只要

$
n>(display((1-eps^2)/(2eps)))^2 = display((1-eps^2)^2/(4 eps^2))
$

取 $N=max{1,display((1-eps^2)^2/(4 eps^2))}$，当 $n>N$ 时，都有 $|sqrt(n+1)-sqrt(n)-0|<eps$。

所以 $display(lim_(n->oo)(sqrt(n+1)-sqrt(n))=0)$。

= 习题1-2 2(4)

#prob[按定义证明数列极限：$ lim_(n->oo)n/a^n=0 quad (a>1 "为常数") $]

$forall eps>0$，要使

$
|display(n/a^n)-0|<eps
<=> display(n/a^n)<eps
<=> n < eps dot a^n
<=> ln(n) < ln(eps) + n ln(a)
$

= 习题1-2 4

#prob[证明：若 $display(lim_(n->oo)a_n=a)$ 则 $display(lim_(n->oo)|a_n|=|a|)$，但反之不正确，试举例说明。但当 $a=0$ 时，反之也成立，试证明之。]