#import "../template.typ": *

#show: project.with(
  title: "Calculus Homework #2",
  authors: ((
		name: "Yulun Wu (#47)",
		email: "memset0@outlook.com",
		phone: "3230104585"
	),),
  date: "September 28, 2023",
)

= 习题1-2 2(3)

#prob[按定义证明数列极限：$ lim_(n->oo)(sqrt(n+1)-sqrt(n))=0 $]

$forall eps>0$，要使

$
|sqrt(n+1)-sqrt(n)-0|<eps
<=> sqrt(n+1)<sqrt(n)+eps \
<=> n+1<n+2sqrt(n) dot eps+eps^2
<=> 2sqrt(n) dot eps > 1-eps^2
$

只要

$
n>(display((1-eps^2)/(2eps)))^2 = display((1-eps^2)^2/(4 eps^2))
$

取 $N=max{1,display((1-eps^2)^2/(4 eps^2))}$，当 $n>N$ 时，都有 $|sqrt(n+1)-sqrt(n)-0|<eps$．

所以 $display(lim_(n->oo)(sqrt(n+1)-sqrt(n))=0)$．

= 习题1-2 2(4)

#prob[按定义证明数列极限：$ lim_(n->oo)n/a^n=0 quad (a>1 "为常数") $]

设 $t=a-1 in R_+$，则

$
a^n
=(t+1)^n
> t^n+n t^(n-1)
$

$forall eps>0$，要使

$
|display(n/a^n)-0|<eps
<=> display(n/a^n)<eps
<=> display(n/(t+1)^n)<eps
$

由于 $display(n/((t+1)^n) < n/(t^n+n t^(n-1)))$，只需使

$
n/(t^n+n t^(n-1))) < eps
<=> 1/(t^(n-1) (1+t/n)) < eps
$

由于 $display(1/(1+t/n))<1$，只需使

$
1/(t^(n-1)) < eps
<=> t^(n-1) eps > 1
<=> (n-1) ln(t) + ln(eps) > 0
<=> n > 1 + ln(eps) / ln(t)
$

取 $N = max{1, display(1 + ln(eps) / ln(t))}$，当 $n>N$ 时，都有 $|display(n/a^n)-0|<eps$．

所以 $display(lim_(n->oo)n/a^n=0)$．

= 习题1-2 4

#prob[证明：若 $display(lim_(n->oo)a_n=a)$ 则 $display(lim_(n->oo)|a_n|=|a|)$，但反之不正确，试举例说明．但当 $a=0$ 时，反之也成立，试证明之．]

1. 证明：$=>$ 成立

因为 $display(lim_(n->oo)a_n=a)$，所以 $forall eps>0$, 存在 $N_1 in ZZ_+$ 使得 $forall n>N_1$，$|a_n-a|<eps$，即 $-eps<a_n-a<eps$ 成立．

- 当 $a>0$ 时，根据极限的保号性 $exists N_2 in ZZ_+$，使得 $forall n>N_2$，$a_n>0$．那么取 $N$ $=$ $max{N_1,N_2}$，当 $n>N$ 时，有 $||a_n|-|a||=|a_n-a|<eps$．

- 当 $a<0$ 时，根据极限的保号性 $exists N_2 in ZZ_+$，使得 $forall n>N_2$，$a_n<0$．那么取 $N$ $=$ $max{N_1,N_2}$，当 $n>N$ 时，有 $||a_n|-|a||=|-a_n+a|=|a_n-a|<eps$．

- 当 $a=0$ 时，已经有 $forall n>N_1,space |a_n|<eps$．

综上，得证．

2. 证明：$arrow.l.double$ 不成立

对于通项为 $a_n=(-1)^n$ 的数列 ${a_n}$，满足 $display(lim_(n->oo)|a_n|=1)$．但显然，对于 $n=2k-1$ 和 $n=2k$ 的两个子列，分别有 $display(lim_(k->oo)(-1)^(2k-1)) =-1$ 和 $display(lim_(k->oo)(-1)^(2k)=1)$．因此数列 ${a_n}$ 发散，不存在极限．此时反方向不成立．

3. 证明：当 $a=0$ 时，$arrow.l.double$ 也成立．

当 $a=0$ 时，$forall eps>0$ 存在 $N in ZZ_+$，使得 $forall n>N$，$||a_n|-o|<eps$，即 $|a_n|<eps$，也即 $|a_n-0|<eps$．故 $display(lim_(n->oo) a_n = 0)$，反方向也成立．

= 习题1-2 7(1)

#prob[利用性质计算极限：$ lim_(n->oo)((-2)^n+3^n)/((-2)^(n+1)+3^(n+1)) $]

$
lim_(n->oo)((-2)^n+3^n)/((-2)^(n+1)+3^(n+1))
=lim_(n->oo)(1/3((-2/3)^n+1)) / ((-2/3)^(n+1)+1)
=1/3 lim_(n->oo)((-2/3)^n+1)/((-2/3)^(n+1)+1)
$

由于 $display(lim_(n->oo))(-2/3)^n=0$，故原数列的极限为 $1/3$．

= 习题1-2 7(3)

#prob[利用性质计算极限：$ lim_(n->oo)(1+a+a^2+dots.c+a^n)/(1+b+b^2+dots.c+b^n) quad (|a|<1, |b|<1) $]

$
lim_(n->oo)(1+t+t^2+dots.c+t^n)
= lim_(n->oo)(1-t^(n+1))/(1-t)
$

$forall t in (-1,1)$，$display(lim_(t->oo)t^(n))=0$，因此 $display(lim_(t->oo)(1-t^(n+1))/(1-t) = 1/(1-t))$．

由于 $a,b in (-1,1)$，故

$
lim_(n->oo)(1+a+a^2+dots.c+a^n)/(1+b+b^2+dots.c+b^n)
= (1/(1-a))/(1/(1-b)) = (1-b)/(1-a)
$


= 习题1-2 7(5)

#prob[利用性质计算极限：$ lim_(n->oo)[1^2/n^3+2^2/n^3+dots.c+(n-1)^2/n^3] $]

$
&lim_(n->oo)[1^2/n^3+2^2/n^3+dots.c+(n-1)^2/n^3]\
=& lim_(n->oo)1/(n^3)(1^2 + 2^2 + dots.c + (n-1)^2)\
=& lim_(n->oo) (n (n-1) (2n-1)) / (6 n^3)\
=& lim_(n->oo) ((1 - 1/n) (2 - 1/n)) / (6) = 1/3
$

= 习题1-2 8(1)

#prob[利用夹逼定理计算极限：$ lim_(n->oo)(sqrt(1 dot 2)/(n^2+1)+sqrt(2 dot 3)/(n^2+2)+dots.c+sqrt(n(n+1))/(n^2+n)) $]

由于
$ k/(n(n+1))<k/(n^2+k)<sqrt(k(k+1))/(n^2+k)<(k+1)/(n^2+k)<(k+1)/(n^2) $

且
$ sum_(k=1)^n k/(n(n+1)) = (1/2n(n+1))/(n(n+1)) = 1/2 $
$ sum_(k=1)^n (k+1)/n^2 = (1/2(n+1)(n+2))/n^2 = (n^2+3n+2)/(2n^2) $
$
lim_(n->oo) (n^2+3n+2)/(2n^2)
= lim_(n->oo) (1+3/n+2/n^2)/2 = 1/2
$

故由夹逼定理得 $display(lim_(n->oo)[1^2/n^3+2^2/n^3+dots.c+(n-1)^2/n^3] = 1/2)$．


= 习题1-2 8(3)

#prob[利用夹逼定理计算极限：$ lim_(n->oo)root(n,n^p+n^q) quad(p,q in ZZ_+) $]

- 先证明 $display(lim_(n->oo)) root(n,n) = 1$

设 $root(n,n) = 1+h_n$，显然 $h_n$，且有
$
n = (1+h_n)^n > (n(n+1))/2 h_n^2
=> h_n < sqrt(2/(n+1))
$

由于 $display(lim_(n->oo) sqrt(2/(n+1))) =0$，由夹逼定理得 $display(lim_(n->oo) h_n) = 0$，即 $display(lim_(n->oo) root(n,n) = 1)$．

- 再证明原命题，不妨令 $p<=q$，有

$
root(n,2 n^p)<=root(n,n^p+n^q)<=root(n,2 n^q)
$

其中 $display(lim_(n->oo) root(n,2) =1)$，且 $p,q$ 是定常数，则 $display(lim_(n->oo) root(n,2 n^p) = 1^(p+1) = 1)$，同理 $display(lim_(n->oo) root(n,2 n^q) = 1)$．由夹逼定理得 $display(lim_(n->oo)root(n,n^p+n^q)) = 1$．

= 习题1-2 8(5)

#prob[利用夹逼定理计算极限：$ lim_(n->oo)1/sqrt(n!) $]

由于 $n <= n! <= n^n$，所以
$
1/sqrt(n^n) <= 1/sqrt(n!) <= 1/sqrt(n)
$

且 $display(lim_(n->oo)1/sqrt(n)=0)$，$display(lim_(n->oo)1/sqrt(n^n)=0)$，由夹逼定理知 $display(lim_(n->oo)1/sqrt(n!)=0)$．