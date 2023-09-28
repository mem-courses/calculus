#import "../template.typ": *

#show: project.with(
  title: "Calculus Homework #2",
  authors: (
  (name: "Yulun Wu", email: "memset0@outlook.com", phone: "3230104585"),
  ),
  date: "September 28, 2023",
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

1. 证明：$=>$ 成立

因为 $display(lim_(n->oo)a_n=a)$，所以 $forall eps>0$, 存在 $N_1 in ZZ_+$ 使得 $forall n>N_1$，$|a_n-a|<eps$，即 $-eps<a_n-a<eps$ 成立。

- 当 $a>0$ 时，根据极限的保号性 $exists N_2 in ZZ_+$，使得 $forall n>N_2$，$a_n>0$。那么取 $n$ $>$ $max{N_1,N_2}$，有 $||a_n|-|a||=|a_n-a|<eps$。

- 当 $a<0$ 时，根据极限的保号性 $exists N_2 in ZZ_+$，使得 $forall n>N_2$，$a_n<0$。那么取 $n$ $>$ $max{N_1,N_2}$，有 $||a_n|-|a||=|-a_n+a|=|a_n-a|<eps$。

- 当 $a=0$ 时，

2. 证明：$arrow.l.double$ 不成立

对于通项为 $a_n=(-1)^n$ 的数列 ${a_n}$，满足 $display(lim_(n->oo)|a_n|=1)$。但显然，对于 $n=2k-1$ 和 $n=2k$ 的两个子列，分别有 $display(lim_(k->oo)(-1)^(2k-1)) =-1$ 和 $display(lim_(k->oo)(-1)^(2k)=1)$。因此数列 ${a_n}$ 发散，不存在极限。

3. 证明：当 $a=0$ 时，$arrow.l.double$ 也成立。

= 习题1-2 7(1)

#prob[利用性质计算极限：$ lim_(n->oo)((-2)^n+3^n)/((-2)^(n+1)+3^(n+1)) $]

= 习题1-2 7(3)

#prob[利用性质计算极限：$ lim_(n->oo)(1+a+a^2+dots.c+a^n)/(1+b+b^2+dots.c+b^n) $]

= 习题1-2 7(5)

#prob[利用性质计算极限：$ lim_(n->oo)[1^2/n^3+2^2/n^3+dots.c+(n-1)^2/n^3] $]

= 习题1-2 8(1)

#prob[利用夹逼定理计算极限：$ lim_(n->oo)(sqrt(1 dot 2)/(n^2+1)+sqrt(2 dot 3)/(n^2+2)+dots.c+sqrt(n(n+1))/(n^2+n)) $]

= 习题1-2 8(3)

#prob[利用夹逼定理计算极限：$ lim_(n->oo)root(n,n^p+n^q) quad(p,q in ZZ_+) $]

= 习题1-2 8(5)

#prob[利用夹逼定理计算极限：$ lim_(n->oo)1/sqrt(n!) $]