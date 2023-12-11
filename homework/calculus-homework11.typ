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
&= int (1-6x+11x^2-6x^3) dx\
&= -3/2 x^4 + 11/3 x^3 - 3 x^2 + x + C\
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
&= 1/sqrt(2) int dx/sqrt(1-(sqrt(3/2) x)^2)
= 1/sqrt(3) int (dd(sqrt(3/2) x))/sqrt(1-(sqrt(3/2) x)^2) \
&= 1/sqrt(3) arcsin(sqrt(3/2) x) + C
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
= int (1+cos 2x)/2 dx
= 1/4 int (1+cos 2x) dd(2x)
= 1/2 x + 1/4 sin 2x + C
$
= P203 习题4-2 34
$
int tan^3 x dx
&= int (sin^3 x)/(cos^3 x) dx
= - int (1 - cos^2 x)/(cos^3 x) dd(cos x)\
&= int (1/(cos x) - 1/(cos^3 x)) dd(cos x)
= 1/(4 cos^4 x) - 1/(2 cos^2 x) + C
$
= P203 习题4-2 35
$
int dx/(cos^4 x)
&= int (sin^2 x + cos^2 x)/(cos^4 x) dx
= int (tan^2 x + 1)/(cos^2 x) dx\
&= int (tan^2 x + 1) dd(tan x)
= 1/3 tan^3 x + tan x + C
$
= P203 习题4-2 36
令 $t=e^x$，则有 $dt=e^x dx=t dx$。
$
int dx/(1 + e^x)
= int 1/(1+t) dot (dt)/t
= int ((t+1)-t)/(t(t+1)) dt
= int (1/t - 1/(t+1)) dt
= ln |t/(t+1)| + C
$
= P203 习题4-2 37
令 $t=root(3,1-x)$，则有 $dt=display(-dx/(3 (root(3,1-x))^2) = -dx/(3t^2))$。
$
int x^2 root(3,1-x) dx
&= int (1-t^3)^2 t (-3t^2) dt
= int (-3t^9 + 6t^6 - 3t^3) dt\
&= -3/10 t^10 + 6/7 t^7 - 3/4 t^4 + C\
&= -3/10 (1-x)^(10/3) + 6/7 (1-x)^(7/3) - 3/4 (1-x)^(4/3) + C
$
= P203 习题4-2 38
令 $t=1-5x^2$，则有 $dt=-10x dx$。
$
int x^3 (1-5x^2)^10 dx
&= int 1/5(1-t) t^10 dt
= 1/5 int (t^10 - t^11) dt\
&= 1/55 t^11 - 1/60 t^12 + C
= 1/55 (1-5x^2)^11 - 1/60 (1-5x^2)^12 + C
$
= P203 习题4-2 39
令 $t=1-x^2$，则 $dt=-2x dx$。
$
int x^5/sqrt(1-x^2) dx
&= -1/2 int (1-t)^2/sqrt(t) dt
= -1/2 int (t^(-1/2) - 2 t^(1/2) + t^(3/2)) dt\
&= - t^(1/2) + 2/3 t^(3/2) - 1/5 t^(5/2) + C\
&= - (1-x^2)^(1/2) + 2/3 (1-x^2)^(3/2) - 1/5 (1-x^2)^(5/2) + C
$
= P203 习题4-2 40
令 $t=2-5x^3$，则 $dt=-15 x^2 dx$
$
int x^5 (2-5x^3)^(2/3) dx
&= -1/75 int (2-t) t^(2/3) dt
= -1/75 int (2 t^(2/3) - t^(5/3)) dt\
&= -1/75  (6/5 t^(5/3) - 3/8 t^(8/3)) + C\
&= -2/125 (2-5x^3)^(5/3) + 1/200 (2-5x^3)^(8/3) + C
$
= P204 习题4-2 41
$
int dx/((2x^2+1) sqrt(x^2 + 1))
&= int (dd (tan t))/((2 tan^2 t + 1) sqrt(tan^2 t + 1))
= int (cos^3 t)/(2 sin^2 t + cos^2 t) dd(tan t)\
&= int (cos t)/(2 sin^2 t + cos^2 t) dt
= int 1/(sin^2 t + 1) dd(sin t)\
&= arctan sin t + C
$
= P204 习题4-2 42
令 $t=ln x$，则 $dt=display(dx/x)$。再令 $u=sqrt(1+t)$，则 $du = display(1/(2 u)) dt$，$t=u^2-1$
$
int (ln x dx)/(x sqrt(1 + ln x))
&= int (t)/sqrt(1+t) dt
= int (u^2 - 1)/u (2u du)
= 2 int (u^2 - 1) du\
&= 2/3 u^3 - 2 u + C
= 2/3 (1+t)^(3/2) - 2 (1+t)^(1/2) + C\
&= 2/3 (1+ln x)^(3/2) - 2 (1+ln x)^(1/2) + C\
$
= P204 习题4-2 43
$
int dx/sqrt((x-a)(b-x))
&= int dx/sqrt(((a-b)/2)^2 - (x-(a+b)/2)^2)
= int (dd((2x)/(a-b) - (a+b)/(a-b)))/sqrt(1-((2x)/(a-b) - (a+b)/(a-b))^2)\
&= arcsin ((2x)/(a-b) - (a+b)/(a-b)) + C
$
= P204 习题4-2 44
令 $t = e^x$，则 $dt = t dx$。再令 $u=sqrt(1+t)$，则 $du = display(1/(2 u)) dt$。
$
int dx/sqrt(1 + e^x)
&= int t/sqrt(1+t) dt
= int (u^2-1)/u (2u du)
= 2 int (u^2 - 1) du\
&= 2/3 u^3 - 2 u + C
= 2/3 (sqrt(1+t))^3 - 2 sqrt(1+t) + C\
&= 2/3 (1+e^x)^(3/2) - 2 (1+e^x)^(1/2) + C
$
= P204 习题4-2 45
令 $t=sqrt(e^x-1)$，则 $dt = display((e^x)/(2 sqrt(e^x-1))) dx$，且 $x = ln(t^2 + 1)$。
$
int (x e^x)/sqrt(e^x - 1) dx
&= 2 int ln(t^2 + 1) dt
= 2 (t ln(t^2 + 1) - int t dd(ln(t^2 + 1)))\
&= 2 (t ln(t^2 + 1) - int (2t^2)/(t^2 + 1) dt)\
&= 2t ln(t^2 + 1) - 4t + 4 arctan t + C\
&= 2x sqrt(e^x - 1) - 4 sqrt(e^x - 1) + 4 arctan sqrt(e^x - 1) + C
$