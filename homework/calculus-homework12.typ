#import "../template.typ": *

#show: project.with(
  title: "Calculus Homework #12",
  authors: ((
    name: "Yulun Wu (#47)",
    email: "memset0@outlook.com",
    phone: "3230104585"
  ),),
  date: "December 13, 2023",
)

#let int = math.integral

= P204 习题4-2 46
$
int x e^(-x) dx
$
= P204 习题4-2 47
$
int ((ln x)/x)^2 dx
$
= P204 习题4-2 48
$
int sqrt(x) ln^2 x dx
$
= P204 习题4-2 49
$
int x^3 e^(-x^2) dx
$
= P204 习题4-2 50
$
int x^2 sin 2x dx
$
= P204 习题4-2 51
$
int arctan x dx
$
= P204 习题4-2 52
$
int ln(x+sqrt(1+x^2)) dx
$
= P204 习题4-2 53
$
int arctan sqrt(x) dx
$
= P204 习题4-2 54
$
int sin x ln tan x dx
$
= P204 习题4-2 55
$
int x sin^2 x dx
$
= P204 习题4-2 56
$
int x sin sqrt(x) dx
$
= P204 习题4-2 57
$
int (x e^(arctan x))/((1+x^2)^(3/2)) dx
$
= P204 习题4-2 58
$
int sin(ln x) dx
$
= P204 习题4-2 59
$
int e^(2x) sin^2 x dx
$
= P204 习题4-2 60
$
int (arctan e^x)/(e^x) dx
$
= P204 习题4-2 61
$
int x/(cos^2 x) dx
$
= P204 习题4-2 62
$
int (x e^x)/((x+1)^2) dx
$
= P219 习题4-3 1
$
int dx/(3x^2 - 2x - 1)
$
= P219 习题4-3 2
$
int (x dx)/((x+1)(x+2)(x+3))
$
= P219 习题4-3 3
$
int (x^4)/(x^4 + 5 x^2 + 4)
$
= P219 习题4-3 4
$
int (x^2 + 1)/((x+1)^2 (x-1)^2) dx
$
= P219 习题4-3 5
$
int x/((x+1)(x^2 + 1)) dx
$
= P219 习题4-3 6
$
int dx/(x^3+1)
$
= P220 第四章综合题 25(1)
#prob[
  推导递推公式：若 $I_n=int sin^n x dx$，则 $I_n = display((-sin^(n-1) x cos x)/n + (n-1)/n I_(n-2)) quad (n in NN_+)$。
]
= P220 第四章综合题 25(2)
#prob[
  推导递推公式：若 $I_n = int cos^n x dx$，则 $I_n = display((sin x cos^(n-1) x)/n + (n-1)/n I_(n-1)) quad (n in NN_+)$。
]