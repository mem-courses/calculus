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

= P192 习题4-1 1 #ac
$
int (1-x)(1-2x)(1-3x) dx
&= int (1-6x+11x^2-6x^3) dx\
&= -3/2 x^4 + 11/3 x^3 - 3 x^2 + x + C\
$
= P192 习题4-1 3 #ac
$
int (1-1/x^2) sqrt(x sqrt(x)) dx
= int (x^(3/4) - x^(-5/4)) dx
= 4/7 x^(7/4) + 4 x^(1/4) + C
$
= P192 习题4-1 5 #ac
$
int (x^2)/(1 + x^2) dx
= int ((1 + x^2)/(1 + x^2) - 1/(1 + x^2))dx
= x - arctan x + C
$
= P192 习题4-1 7 #ac
$
int cot^2 x = dx
= int (cos^2 x)/(sin^2 x) dx
= int (1/(sin ^2 x) - 1) dx
= -cot x - x + C
$
= P203 习题4-2 2 #ac
$
int (2x-3)^10 dx
= 1/2 int (2x-3)^10 dif(2x-3)
= 1/22 (2x-3)^11 + C
$
= P203 习题4-2 3 #ac
$
int root(3,1-3x) dx
= -1/3 int (1-3x)^(1/3) d(1-3x)
= -1/4 (1-3x)^(4/3) + C
$
= P203 习题4-2 4 #ac
$
int dx/(5x-2)^(5/2)
= 1/5 int (5x-2)^(-5/2) dif(5x-2)
= -2/15 (5x-2)^(-3/2) + C
$
= P203 习题4-2 5 #ac
$
int dx/(2+3x^2)
= 1/2 int dx/((3/2) x^2 + 1)
= 1/2 dot sqrt(2)/sqrt(3) int (dif(sqrt(3)/sqrt(2) x))/((sqrt(3)/sqrt(2) x)^2 + 1)
= 1/sqrt(6) arctan(sqrt(6)/2 x) + C
$
= P203 习题4-2 6 #ac
$
int dx/(2-3x^2)
&= -1/3 int dx/(x^2 - 2/3)
= -1/3 dot 1/(2 dot sqrt(2)/sqrt(3)) int ((x+sqrt(2/3)) - (x-sqrt(2/3)))/(x^2 - 2/3) dx\
&= -1/(2 sqrt(6)) (int dif(x-sqrt(2/3))/(x-sqrt(2/3)) + int dif(x+sqrt(2/3))/(x+sqrt(2/3))) 
= -1/(2 sqrt(6)) ln lr(| (x-sqrt(2/3))/(x+sqrt(2/3)) |) + C\
&= -1/(2 sqrt(6)) ln lr(| (sqrt(3) x - sqrt(2))/(sqrt(3) x + sqrt(2)) |) + C
$
= P203 习题4-2 7 #ac
$
int dx/sqrt(2-3x^2)
&= 1/sqrt(2) int dx/sqrt(1-(sqrt(3/2) x)^2)
= 1/sqrt(3) int (dif(sqrt(3/2) x))/sqrt(1-(sqrt(3/2) x)^2) \
&= 1/sqrt(3) arcsin(sqrt(3/2) x) + C
$
= P203 习题4-2 8 #ac
$
int (tan x)/sqrt(cos x) dx
= int sin x cos^(-3/2) x dx
= - int cos^(-3/2) x dif(cos x)
= - 2/sqrt(cos x) + C
$
= P203 习题4-2 9 #ac
$
int (e^(-x) + e^(-2x)) dx
= int e^(-x) (1 + e^(-x)) dx
= - int (1 + e^(-x)) dif(e^(-x))
= - e^(-x) - 1/2 e^(-2x) + C
$
= P203 习题4-2 10 #ac
$
int dx/(1 + cos x)
&= int dx/(sin^2(1/2 x) + cos^2(1/2 x) + cos^2(1/2 x) - sin^2(1/2 x))\
&= int (dif (1/2 x))/(cos^2 (1/2 x))
= tan(1/2 x) + C
$
#note[
  等价于 $-cot x + display(1/(sin x)) + C$。
]
= P203 习题4-2 11 #ac
$
int (x dx)/sqrt(1 - x^2)
= -1/2 int dif(1 - x^2)/sqrt(1 - x^2)
= -1/2 (2 sqrt(1 - x^2)) + C
= -sqrt(1 - x^2) + C
$
= P203 习题4-2 12 #ac
$
int x^2 root(3, 1 + x^3) dx
= 1/3 int (1 + x^3)^(1/3) dif(1 + x^3)
= 1/4 (1 + x^3)^(4/3) + C
$
= P203 习题4-2 13 #pc
$
int x/(3 - 2 x^2) dx
= -1/2 int dif(3 - 2 x^2)/(3 - 2 x^2)
= -1/2 ln |3 - 2 x^2| + C
$
#warn[
  系数别算漏了，这里既有幂次贡献的 $2$，也有系数贡献的 $2$。
  $
  int x/(3 - 2 x^2) dx
  = -1/4 int dif(3 - 2 x^2)/(3 - 2 x^2)
  = -1/4 ln |3 - 2 x^2| + C
  $
]
= P203 习题4-2 14 #ac
$
int (x dx)/((1 + x^2)^2)
= 1/2 int (dif(1 + x^2))/((1 + x^2)^2)
= -1/(2(1 + x^2)) + C
$
= P203 习题4-2 15 #ac
$
int (x dx)/(4 + x^4)
= 1/2 int (dif (x^2))/((x^2)^2 + 2^2)
= 1/4 int (dif (1/2 x^2))/((1/2 x^2)^2 + 1)
= 1/4 arctan (1/2 x^2) + C
$
= P203 习题4-2 16 #ac
$
int (x dx)/(sqrt(x) (1 + x))
&= 2 int x/(1 + x) dif(sqrt(x))
= 2 int (1 - 1/(1 + (sqrt(x))^2)) dif(sqrt(x))\
&= 2 sqrt(x) - 2 arctan(sqrt(x)) + C
$
= P203 习题4-2 17 #ac
$
int 1/x^2 sin 1/x dx
= - int sin 1/x dif(1/x)
= cos 1/x + C
$
= P203 习题4-2 18 #ac
$
int (x^3)/(x^8 - 2) dx
= 1/4 int dif(x^4)/((x^4)^2 - (sqrt(2))^2)
= 1/(8 sqrt(2)) ln lr(| (x^4 - sqrt(2))/(x^4 + sqrt(2)) |) + C
$
= P203 习题4-2 19 #ac
令 $t=sqrt(x^2 - 1),sp |x| >=1$，有 $x^2 = t^2 + 1$。
$
int dx/(x sqrt(x^2 - 1))
&= int 1/x^2 (x/sqrt(x^2 - 1) dx)
= int 1/(t^2 + 1) dt\
&= arctan t + C
= arctan sqrt(x^2 - 1) + C
$
= P203 习题4-2 20 #ac
$
int dx/(x (1 + 2 ln x))
= 1/2 int dif(1 + 2ln x)/(1 + 2 ln x)
= 1/2 ln|1 + 2 ln x| + C
$
= P203 习题4-2 21 #ac
$
int x e^(-x^2) dx
= -1/2 int e^(-x^2) d(-x^2)
= -1/2 e^(-x^2) + C
$
= P203 习题4-2 22 #ac
$
int dx/(e^x + e^(-x))
= int (e^x)/(e^(2x) + 1) dx
= int 1/((e^x)^2 + 1) dif(e^x)
= arctan e^x + 1
$
= P203 习题4-2 23 #ac
$
int dx/(x ln x ln(ln x))
= int dif(ln x)/(ln x ln(ln x))
= int dif(ln (ln x))/(ln (ln x))
= ln lr(|ln(ln x)|) + C
$
= P203 习题4-2 24 #ac
$
int (ln^2 x)/x dx
= int (ln^2 x) dif(ln x)
= 1/3 ln^3 x
$
= P203 习题4-2 25 #ac
令 $t=sqrt(1-x),sp x in (-oo,1)$，有 $x=1-t^2$。
$
int dx/sqrt(x (1-x))
&= -2 int 1/sqrt(x) (-1/(2 sqrt(1-x)) dx)
= -2 int 1/sqrt(1-t^2) dt\
&= -2 arcsin t + C
= -2 arcsin sqrt(1-x) + C
$
= P203 习题4-2 26 #ac
$
int (arctan x)/(1+x^2) dx
= int arctan x dif(arctan x)
= 1/2 arctan^2 x + C
$
= P203 习题4-2 27 #ac
$
int dx/((arcsin x)^2 sqrt(1-x^2))
= int (arcsin x)^(-2) dif(arcsin x)
= - 1/(arcsin x)  + C
$
= P203 习题4-2 28 #ac
$
int (x^2+1)/(x^4+1) dx
&= int (1+1/x^2)/(x^2 + 1/(x^2)) dx
= int 1/((x-1/x)^2 + 2) dif(x-1/x)\
&= 1/sqrt(2) arctan(1/sqrt(2) (x-1/x)) + C
= 1/sqrt(2) arctan(x/sqrt(2) - 1/(x sqrt(2))) + C
$
= P203 习题4-2 29 #wa
$
int (cos x dx)/sqrt(2 + cos 2x)
= int (dif (sin x))/sqrt(3 - 2 sin^2 x)
= -1/2 int (dif(3 - 2 sin^2 x))/sqrt(3 - 2 sin^2 x)
= - sqrt(3 - 2 sin^2 x) + C
$
#warn[
  $
  int (cos x dx)/sqrt(2 + cos 2x)
  &= int (dif (sin x))/sqrt(3 - 2 sin^2 x)
  = 1/sqrt(3) dot sqrt(3)/sqrt(2) int (dif(sqrt(2)/sqrt(3) x))/(sqrt(1-(sqrt(2)/sqrt(3) x)^2))\
  &= 1/sqrt(2) arcsin (sqrt(2)/sqrt(3) x) + C
  $
]
= P203 习题4-2 30 #ac
$
int (x dx)/sqrt(1 + x^2 + sqrt((1 + x^2)^3))
&= int (x dx)/sqrt((1+x^2)(1 + sqrt(1 + x^2)))
= int 1/sqrt(1 + sqrt(1 + x^2)) dif(sqrt(1 + x^2))\
&= int 1/sqrt(1 + sqrt(1 + x^2)) dif(sqrt(1 + x^2) + 1)
= 2 sqrt(sqrt(1 + x^2) + 1) + C
$
= P203 习题4-2 31 #ac
$
int (x^2)/(1 + x) dx
&= int ((x+1)^2 - 2 (x+1) + 1)/(x+1) dx
= int (x + 1 - 2 + 1/(x+1)) dx\
&= int (x-1) dx + int (dif(x+1))/(x+1)
= 1/2 x^2 - x + ln|1+x| + C
$
= P203 习题4-2 32 #ac
$
int dx/(x^2 + x - 2)
&= int dx/((x+1/2)^2 - (3/2)^2)
= int (dif(x+1/2))/((x+1/2)^2 - (3/2)^2)\
&= (1/3 ln lr(| (x+1/2-3/2)/(x+1/2+3/2) |)) + C
= 1/3 ln lr(| (x-1)/(x+2) |) + C
$
= P203 习题4-2 33 #ac
$
int cos^2 x dx
= int (1+cos 2x)/2 dx
= 1/4 int (1+cos 2x) dif(2x)
= 1/2 x + 1/4 sin 2x + C
$
= P203 习题4-2 34 #wa
$
int tan^3 x dx
&= int (sin^3 x)/(cos^3 x) dx
= - int (1 - cos^2 x)/(cos^3 x) dif(cos x)\
&= int (1/(cos x) - 1/(cos^3 x)) dif(cos x)
= 1/(4 cos^4 x) - 1/(2 cos^2 x) + C
$
#warn[
  $
  int tan^3 x dx
  &= int (sin^3 x)/(cos^3 x) dx
  = - int (1 - cos^2 x)/(cos^3 x) dif(cos x)\
  &= int (1/(cos x) - 1/(cos^3 x)) dif(cos x)
  = 1/(2 cos^2 x) + ln|cos x| + C
  $
]
= P203 习题4-2 35 #ac
$
int dx/(cos^4 x)
&= int (sin^2 x + cos^2 x)/(cos^4 x) dx
= int (tan^2 x + 1)/(cos^2 x) dx\
&= int (tan^2 x + 1) dif(tan x)
= 1/3 tan^3 x + tan x + C
$
= P203 习题4-2 36 #ac
令 $t=e^x$，则有 $dt=e^x dx=t dx$。
$
int dx/(1 + e^x)
&= int 1/(1+t) dot (dt)/t
= int ((t+1)-t)/(t(t+1)) dt
= int (1/t - 1/(t+1)) dt\
&= ln |t/(t+1)| + C
= ln (e^x/(e^x+1)) + C
= x - ln(e^x + 1) + C
$
= P203 习题4-2 37 #ac
令 $t=root(3,1-x)$，则有 $dt=display(-dx/(3 (root(3,1-x))^2) = -dx/(3t^2))$。
$
int x^2 root(3,1-x) dx
&= int (1-t^3)^2 t (-3t^2) dt
= int (-3t^9 + 6t^6 - 3t^3) dt\
&= -3/10 t^10 + 6/7 t^7 - 3/4 t^4 + C\
&= -3/10 (1-x)^(10/3) + 6/7 (1-x)^(7/3) - 3/4 (1-x)^(4/3) + C
$
= P203 习题4-2 38 #ac
令 $t=1-5x^2$，则有 $dt=-10x dx$。
$
int x^3 (1-5x^2)^10 dx
&= int 1/5(1-t) t^10 dt
= 1/5 int (t^10 - t^11) dt\
&= 1/55 t^11 - 1/60 t^12 + C
= 1/55 (1-5x^2)^11 - 1/60 (1-5x^2)^12 + C
$
= P203 习题4-2 39 #ac
令 $t=1-x^2$，则 $dt=-2x dx$。
$
int x^5/sqrt(1-x^2) dx
&= -1/2 int (1-t)^2/sqrt(t) dt
= -1/2 int (t^(-1/2) - 2 t^(1/2) + t^(3/2)) dt\
&= - t^(1/2) + 2/3 t^(3/2) - 1/5 t^(5/2) + C\
&= - (1-x^2)^(1/2) + 2/3 (1-x^2)^(3/2) - 1/5 (1-x^2)^(5/2) + C
$
= P203 习题4-2 40 #ac
令 $t=2-5x^3$，则 $dt=-15 x^2 dx$
$
int x^5 (2-5x^3)^(2/3) dx
&= -1/75 int (2-t) t^(2/3) dt
= -1/75 int (2 t^(2/3) - t^(5/3)) dt\
&= -1/75  (6/5 t^(5/3) - 3/8 t^(8/3)) + C\
&= -2/125 (2-5x^3)^(5/3) + 1/200 (2-5x^3)^(8/3) + C
$
= P204 习题4-2 41 #ac
$
int dx/((2x^2+1) sqrt(x^2 + 1))
&= int (dif (tan t))/((2 tan^2 t + 1) sqrt(tan^2 t + 1))
= int (cos^3 t)/(2 sin^2 t + cos^2 t) dif(tan t)\
&= int (cos t)/(2 sin^2 t + cos^2 t) dt
= int 1/(sin^2 t + 1) dif(sin t)\
&= arctan (sin (arctan x)) + C
$
= P204 习题4-2 42 #ac
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
= P204 习题4-2 43 #wa
已知：$a<x<b$。
$
int dx/sqrt((x-a)(b-x))
&= int dx/sqrt(((a-b)/2)^2 - (x-(a+b)/2)^2)
= int (dif((2x)/(a-b) - (a+b)/(a-b)))/sqrt(1-((2x)/(a-b) - (a+b)/(a-b))^2)\
&= arcsin ((2x)/(a-b) - (a+b)/(a-b)) + C
$
#warn[
  这里 $a-b<0$。*根号内的系数提出来的时候注意正负号！*
  $
  int dx/sqrt((x-a)(b-x))
  &= int dx/sqrt(((a-b)/2)^2 - (x-(a+b)/2)^2)
  = - int (dif((2x)/(a-b) - (a+b)/(a-b)))/sqrt(1-((2x)/(a-b) - (a+b)/(a-b))^2)\
  &= - arcsin ((2x)/(a-b) - (a+b)/(a-b)) + C
  $

  采用别的方法可以得到：$2 arcsin display(sqrt((x-a)/(b-a))) + C$。
]
= P204 习题4-2 44 #wa
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
#warn[
  令 $u=e^x+1$，则 $du=(u-1) dx$。再令 $v=sqrt(u)$，则 $dv=display(du/(2 v))$
  $
  int dx/sqrt(1 + e^x)
  &= int du/(sqrt(u) (u-1))
  = int (2v dv)/(v(v^2-1))
  = 2 int (dv)/(v^2-1)\
  &= int ((v+1)-(v-1))/((v+1)(v-1)) dv
  = int (1/(v-1) - 1/(v+1)) dv\
  &= ln|v-1| - ln|v+1| + C\
  &= ln|sqrt(e^x+1)-1| - ln|sqrt(e^x+1)+1| + C\
  &= ln(sqrt(e^x+1)-1) - ln(sqrt(e^x+1)+1) + C\
  $
  采用别的方法可以得到：$x-2 ln(1+sqrt(1+e^x)) + C$。
]
= P204 习题4-2 45 #ac
令 $t=sqrt(e^x-1)$，则 $dt = display((e^x)/(2 sqrt(e^x-1))) dx$，且 $x = ln(t^2 + 1)$。
$
int (x e^x)/sqrt(e^x - 1) dx
&= 2 int ln(t^2 + 1) dt
= 2 (t ln(t^2 + 1) - int t dif(ln(t^2 + 1)))\
&= 2 (t ln(t^2 + 1) - int (2t^2)/(t^2 + 1) dt)\
&= 2t ln(t^2 + 1) - 4t + 4 arctan t + C\
&= 2x sqrt(e^x - 1) - 4 sqrt(e^x - 1) + 4 arctan sqrt(e^x - 1) + C
$