#import "../template.typ": *

#show: project.with(
  title: "Calculus Homework #11",
  authors: ((
    name: "Yulun Wu (#47)",
    email: "memset0@outlook.com",
    phone: "3230104585"
  ),),
  date: "December 9, 2023",
)

#let int = math.integral

= P192 习题4-1 1
$
int (1-x)(1-2x)(1-3x) dx
= int (1-6x+11x^2-6x^3) dx
= -3/2 x^4 + 11/3 x^3 - 3 x^2 + x + C
$
= P192 习题4-1 3
$
int (1-1/x^2) sqrt(x sqrt(x)) dx
= int (x^(3/4) - x^(-5/4)) dx
= 4/7 x^(7/4) + 4 x^(1/4) + C
$
= P192 习题4-1 5
$
int (x^2)/(1 + x^2) dx
= int ((1 + x^2)/(1 + x^2) - 1/(1 + x^2))dx
= x - arctan x + C
$
= P192 习题4-1 7
$
int cot^2 x = dx
= int (cos^2 x)/(sin^2 x) dx
= int (1/(sin ^2 x) - 1) dx
= -cot x - x + C
$
= P203 习题4-2 2
$
int (2x-3)^10 dx
= 1/2 int (2x-3)^10 dd(2x-3)
= 1/22 (2x-3)^11 + C
$
= P203 习题4-2 3
$
int root(3,1-3x) dx
= -1/3 int (1-3x)^(1/3) d(1-3x)
= -1/4 (1-3x)^(4/3) + C
$
= P203 习题4-2 4
$
int dx/(5x-2)^(5/2)
= 1/5 int (5x-2)^(-5/2) dd(5x-2)
= -2/15 (5x-2)^(-3/2) + C
$
= P203 习题4-2 5
$
int dx/(2+3x^2)
= 1/2 int dx/((3/2) x^2 + 1)
= 1/2 dot sqrt(2)/sqrt(3) int (dd(sqrt(3)/sqrt(2) x))/((sqrt(3)/sqrt(2) x)^2 + 1)
= sqrt(6)/6 arctan(sqrt(6)/2 x) + C
$
= P203 习题4-2 6
$
int dx/(2-3x^2)
&= -1/3 int dx/(x^2 - 2/3)
= -1/3 dot 1/(2 dot sqrt(2)/sqrt(3)) int ((x+sqrt(2/3)) - (x-sqrt(2/3)))/(x^2 - 2/3) dx\
&= -1/(2 sqrt(6)) (int dd(x-sqrt(2/3))/(x-sqrt(2/3)) + int dd(x+sqrt(2/3))/(x+sqrt(2/3))) 
= -1/(2 sqrt(6)) ln lr(| (x-sqrt(2/3))/(x+sqrt(2/3)) |) + C\
&= -1/(2 sqrt(6)) ln lr(| (sqrt(3) x - sqrt(2))/(sqrt(3) x + sqrt(2)) |) + C
$
= P203 习题4-2 7
$
int dx/sqrt(2-3x^2)
= 1/sqrt(2) int dx/sqrt(1-(sqrt(3/2) x)^2)
= 1/sqrt(3) int (dd(sqrt(3/2) x))/sqrt(1-(sqrt(3/2) x)^2) 
= 1/sqrt(3) arcsin(sqrt(3/2) x) + C
$
= P203 习题4-2 8
$
int (tan x)/sqrt(cos x) dx
= int sin x cos^(-3/2) x dx
= - int cos^(-3/2) x dd(cos x)
= 2/sqrt(cos x) + C
$
= P203 习题4-2 9
$
int (e^(-x) + e^(-2x)) dx
= int e^(-x) (1 + e^(-x)) dx
= - int (1 + e^(-x)) dd(e^(-x))
= - e^(-x) - 1/2 e^(-2x) + C
$
= P203 习题4-2 10
$
int dx/(1 + cos x)
&= int dx/(sin^2(1/2 x) + cos^2(1/2 x) + cos^2(1/2 x) - sin^2(1/2 x))\
&= int (dd (1/2 x))/(cos^2 (1/2 x))
= tan(1/2 x) + C
$
= P203 习题4-2 11
$
int (x dx)/sqrt(1 - x^2)
= -1/2 int dd(1 - x^2)/sqrt(1 - x^2)
= -1/2 (2 sqrt(1 - x^2)) + C
= -sqrt(1 - x^2) + C
$
= P203 习题4-2 12
$
int x^2 root(3, 1 + x^3) dx
= 1/3 int (1 + x^3)^(1/3) dd(1 + x^3)
= 1/4 (1 + x^3)^(4/3) + C
$
= P203 习题4-2 13
$
int x/(3 - 2 x^2) dx
= -1/2 int dd(3 - 2 x^2)/(3 - 2 x^2)
= -1/2 ln |3 - 2 x^2| + C
$
= P203 习题4-2 14
$
int (x dx)/((1 + x^2)^2)
= 1/2 int (dd(1 + x^2))/((1 + x^2)^2)
= -1/(2(1 + x^2)) + C
$
= P203 习题4-2 15
$
int (x dx)/(4 + x^4)
= 1/2 int (dd (x^2))/((x^2)^2 + 2^2)
= 1/4 int (dd (1/2 x^2))/((1/2 x^2)^2 + 1)
= 1/4 arctan (1/2 x^2) + C
$
= P203 习题4-2 16
$
int (x dx)/(sqrt(x) (1 + x))
&= 2 int x/(1 + x) dd(sqrt(x))
= 2 int (1 - 1/(1 + (sqrt(x))^2)) dd(sqrt(x))\
&= 2 sqrt(x) - 2 arctan(sqrt(x)) + C
$
= P203 习题4-2 17
$
int 1/x^2 sin 1/x dx
= - int sin 1/x dd(1/x)
= cos 1/x + C
$
= P203 习题4-2 18
$
int (x^3)/(x^8 - 2) dx
= 1/4 int dd(x^4)/((x^4)^2 - (sqrt(2))^2)
= 1/(8 sqrt(2)) ln lr(| (x^4 - sqrt(2))/(x^4 + sqrt(2)) |) + C
$
= P203 习题4-2 19
令 $t=sqrt(x^2 - 1),sp |x| >=1$，有 $x^2 = t^2 + 1$。
$
int dx/(x sqrt(x^2 - 1))
&= int 1/x^2 (x/sqrt(x^2 - 1) dx)
= int 1/(t^2 + 1) dt\
&= arctan t + C
= arctan sqrt(x^2 - 1) + C
$
= P203 习题4-2 20
$
int dx/(x (1 + 2 ln x))
= 1/2 int dd(1 + 2ln x)/(1 + 2 ln x)
= 1/2 ln|1 + 2 ln x| + C
$
= P203 习题4-2 21
$
int x e^(-x^2) dx
= -1/2 int e^(-x^2) d(-x^2)
= -1/2 e^(-x^2) + C
$
= P203 习题4-2 22
$
int dx/(e^x + e^(-x))
= int (e^x)/(e^(2x) + 1) dx
= int 1/((e^x)^2 + 1) dd(e^x)
= arctan e^x + 1
$
= P203 习题4-2 23
$
int dx/(x ln x ln(ln x))
= int dd(ln x)/(ln x ln(ln x))
= int dd(ln (ln x))/(ln (ln x))
= ln lr(|ln(ln x)|) + C
$
= P203 习题4-2 24
$
int (ln^2 x)/x dx
= int (ln^2 x) dd(ln x)
= 1/3 ln^3 x
$
= P203 习题4-2 25
令 $t=sqrt(1-x),sp x in (-oo,1)$，有 $x=1-t^2$。
$
int dx/sqrt(x (1-x))
&= -2 int 1/sqrt(x) (-1/(2 sqrt(1-x)) dx)
= -2 int 1/sqrt(1-t^2) dt\
&= -2 arcsin t + C
= -2 arcsin sqrt(1-x) + C
$
= P203 习题4-2 26
$
int (arctan x)/(1+x^2) dx
= int arctan x dd(arctan x)
= 1/2 arctan^2 x + C
$
= P203 习题4-2 27
$
int dx/((arcsin x)^2 sqrt(1-x^2))
= int (arcsin x)^(-2) dd(arcsin x)
= - 1/(arcsin x)  + C
$
= P203 习题4-2 28
$
int (x^2+1)/(x^4+1) dx
&= int (1+1/x^2)/(x^2 + 1/(x^2)) dx
= int 1/((x-1/x)^2 + 2) dd(x-1/x)\
&= 1/sqrt(2) arctan(1/sqrt(2) (x-1/x)) + C
= 1/sqrt(2) arctan(x/sqrt(2) - 1/(x sqrt(2))) + C
$
= P203 习题4-2 29
$
int (cos x dx)/sqrt(2 + cos 2x)
= int (dd (sin x))/sqrt(3 - 2 sin^2 x)
= -1/2 int (dd(3 - 2 sin^2 x))/sqrt(3 - 2 sin^2 x)
= - sqrt(3 - 2 sin^2 x) + C
$
= P203 习题4-2 30
$
int (x dx)/sqrt(1 + x^2 + sqrt((1 + x^2)^3))
&= int (x dx)/sqrt((1+x^2)(1 + sqrt(1 + x^2)))
= int 1/sqrt(1 + sqrt(1 + x^2)) dd(sqrt(1 + x^2))\
&= int 1/sqrt(1 + sqrt(1 + x^2)) dd(sqrt(1 + x^2) + 1)
= 2 sqrt(sqrt(1 + x^2) + 1) + C
$
= P203 习题4-2 31
$
int (x^2)/(1 + x) dx
&= int ((x+1)^2 - 2 (x+1) + 1)/(x+1) dx
= int (x + 1 - 2 + 1/(x+1)) dx\
&= int (x-1) dx + int (dd(x+1))/(x+1)
= 1/2 x^2 - x + ln|1+x| + C
$
= P203 习题4-2 32
$
int dx/(x^2 + x - 2)
&= int dx/((x+1/2)^2 - (3/2)^2)
= 4/9 int (dd(x+1/2))/((x+1/2)^2 - (3/2)^2)\
&= 4/9 (1/3 ln lr(| (x+1/2-3/2)/(x+1/2+3/2) |)) + C
= 4/27 ln lr(| (x-1)/(x+2) |) + C
$
= P203 习题4-2 33
$
int cos^2 x dx
$
= P203 习题4-2 34
$
int tan^3 x dx
$
= P203 习题4-2 35
$
int dx/(cos^4 x)
$
= P203 习题4-2 36
$
int dx/(1 + e^x)
$
= P203 习题4-2 37
$
int x^2 root(3,1-x) dx
$
= P203 习题4-2 38
$
int x^3 (1-5x^2)^10 dx
$
= P203 习题4-2 39
$
int x^5/sqrt(1-x^2) dx
$
= P203 习题4-2 40
$
int x^5 (2-5x^3)^(2/3) dx
$
= P204 习题4-2 41
$
int dx/((2x^2+1) sqrt(x^2 + 1))
$
= P204 习题4-2 42
$
int (ln x dx)/(x sqrt(1 + ln x))
$
= P204 习题4-2 43
$
int dx/sqrt((x-a)(b-x)) quad (a<x<b)
$
= P204 习题4-2 44
$
int dx/sqrt(1 + e^x)
$
= P204 习题4-2 45
$
int (x e^x)/sqrt(e^x - 1) dx
$