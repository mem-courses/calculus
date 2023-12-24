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
= - int x dd (e^(-x))
= - (x e^(-x) - int e^(-x) dx)
= - x e^(-x) - e^(-x) + C
$
= P204 习题4-2 47
$
int ((ln x)/x)^2 dx
&= int (ln x)^2 / x dd (ln x)
= int t^2 e^(-t) dt
= - int t^2 dd (e^(-t))\
&= - (t^2 e^(-t) - int e^(-t) dd(t^2))
= - t^2 e^(-t) + 2 int t e^(-t) dt\
&= - t^2 e^(-t) - 2 t e^(-t) - 2 e^(-t) + C
= -(ln^2 x - 2 ln x - 2)/x + C 
$
= P204 习题4-2 48
$
int sqrt(x) ln^2 x dx
&= int 2/3 ln^2 x dd(x^(3/2))
= 2/3 (ln^2 x dot x^(3/2) - int x^(3/2) dd(ln^2 x))\
&= 2/3 ln^2 x dot x^(3/2) - 4/3 int sqrt(x) ln x dx\
&= 2/3 ln^2 x dot x^(3/2) - 8/9 (ln x dot x^(3/2) - int sqrt(x) dx)\
&= x^(3/2) (2/3 ln^2 x - 8/9 ln x + 16/27) + C
$
= P204 习题4-2 49
$
int x^3 e^(-x^2) dx
&= 1/4 int e^(-x^2) dd(x^4)
= 1/4 int e^t dd(t^2)
= 1/2 int t e^t dt
= 1/2 int t dd(e^t)\
&= 1/2 (t e^t - int e^t dt)
= 1/2 (t e^t - e^t) + C
= - 1/2 e^(-x^2) (x^2 + 1) + C
$
= P204 习题4-2 50
$
int x^2 sin 2x dx
&= -1/2 int x^2 dd(cos 2x)
= -1/2 (x^2 cos 2x - int cos 2x dd(x^2))\
&= -1/2 x^2 cos 2x + int x cos 2x dx
= -1/2 x^2 cos 2x + 1/2 int x dd(sin 2x)\
&= -1/2 x^2 cos 2x + 1/2 (x sin 2x - int sin 2x dx)\
&= -1/2 x^2 cos 2x + 1/2 x sin 2x + 1/4 cos 2x dx + C
$
= P204 习题4-2 51
$
int arctan x dx
&= x arctan x - int x dd(arctan x)
= x arctan x - int x/(1+x^2) dx\
&= x arctan x - 1/2 int 1/(1+x^2) dd(x^2)
= x arctan x - 1/2 ln(1 + x^2) + C
$
= P204 习题4-2 52 #ac
$
int ln(x+sqrt(1+x^2)) dx
$
令 $t = display(x+sqrt(1+x^2))$，故 $x = display((t^2 - 1)/(2t))$，代入得：
$
int ln(x+sqrt(1+x^2)) dx
&= int ln t dd((t^2 - 1)/(2t))
= 1/2 int ln t (1 + 1/(t^2)) dt\
&= 1/2 int ln t dt + 1/2 int (ln t)/(t^2) dt
$
其中：
$
int ln t dt
= t ln t - int t dd(ln t)
= t ln t - int 1 dt
= t ln t - t
$
$
int (ln t)/(t^2) dt
&= (ln t)/t - int t dd((ln t)/(t^2))
= (ln t)/t - int t dot (t - ln t dot 2t)/(t^4) dt\
&= (ln t)/t - int (1 - 2ln t)/(t^2) dt
= (ln t)/t - int t^(-2) dt + 2 int (ln t)/(t^2) dt
$
$
=> int (ln t)/(t^2)
= int t^(-2) dt - (ln t)/t
= -1/t - (ln t)/t + C
$
代入得：
$
int ln(x+sqrt(1+x^2)) dx
&= 1/2 (t ln t - t - 1/t - (ln t)/t) + C\
&= 1/2 (2x ln(x +sqrt(1+x^2)) - 2 sqrt(1+x^2)) + C\
&= x ln(x + sqrt(1 + x^2)) - sqrt(1+x^2) + C
$
= P204 习题4-2 53 #ac
$
int arctan sqrt(x) dx
= int arctan sqrt(x) dot 2 sqrt(x) dd(sqrt(x))
= 2 int t arctan t dt
$
其中：
$
int t arctan t dt
&= t arctan t - int t dd(t arctan t)
= t arctan t - int t (arctan t + t/(1+t^2)) dt\
&= t arctan t - int t arctan t dt - int (t^2)/(1+t^2) dt\
$
$
=> &2 int t arctan t dt = t arctan t - t + arctan t + C
$
代入原式得：
$
int arctan sqrt(x) dx
= t arctan t - t + arctan t + C
= sqrt(x) arctan sqrt(x) - sqrt(x) + arctan sqrt(x) + C
$
= P204 习题4-2 54
$
int sin x ln tan x dx
&= - int ln tan x dd(cos x)
= - (cos x ln tan x - int cos x dd(ln tan x))\
&= - cos x ln tan x + int cos x (cos^(-2) x)/(tan x) dx
= - cos x ln tan x + int 1/(sin x) dx\
&= - cos x ln tan x + ln |csc x - cot x| + C
$
= P204 习题4-2 55
$
int x sin^2 x dx
= x sin^2 x - int x dd(x sin^2 x)
= x sin^2 x - int x (sin^2 x - x dot 2 sin x cos x) dx
$
$
=> int x sin^2 x dx
&= 1/2 x sin^2 x + 1/2 int x^2 sin(2x) dx
= 1/2 x sin^2 x + 1/16 int (2x)^2 sin(2x) dd(2x)
$
其中：
$
int (2x)^2 sin(2x) dd(2x)
&= int t^2 sin t dt
= - int t^2 dd(cos t)
= - (t^2 cos t - int cos t dd(t^2))\
&= - t^2 cos t + 2 int t cos t dt
$
$
int t cos t dt
= int t dd(sin t)
= t sin t - int sin t dt
= t sin t + cos t + C
$
代入得：
$
int x sin^2 x dx
&= 1/2 x sin^2 x + 1/16 int (2x)^2 sin(2x) dd(2x)\
&= 1/2 x sin^2 x + 1/16 (-t^2 cos t + 2 t sin t + 2 cos t) + C\
&= 1/2 x sin^2 x - 1/4 x^2 cos (2x) + 1/4 x sin(2x) + 1/8 cos(2x) + C
$
= P204 习题4-2 56
$
int x sin sqrt(x) dx
= x sqrt(x) - int x dd(x sin sqrt(x))
= x sqrt(x) - int x (sin sqrt(x) + sqrt(x)/2 cos sqrt(x) ) dx\
=> 2 int x sin sqrt(x) = x sqrt(x) - 1/2 int x sqrt(x) cos sqrt(x) dx = x sqrt(x) - int (sqrt(x))^2 cos sqrt(x) dd(sqrt(x))
$
其中：
$
int t^2 cos t dt
= int t^2 dd (sin t)
= t^2 sin t - int sin t dd(t^2)
= t^2 sin t - 2 int t sin t dt\
int t sin t dt
= - int t dd(cos t)
= - (t cos t - int cos t dt)
= - t cos t + sin t + C
$
代入得：
$
int x sin sqrt(x) dx
&= 1/2 x sqrt(x) - 1/2 (t^2 sin t - 2(t cos t + sin t)) + C\
&= 1/2 x sqrt(x) - 1/2 x sin sqrt(x) + sqrt(x) cos sqrt(x) + sin sqrt(x) + C
$
= P204 习题4-2 57
$
int (x e^(arctan x))/((1+x^2)^(3/2)) dx
&= int x/sqrt(1+x^2) dd(e^(arctan x))
= (x e^(arctan x))/sqrt(1+x^2) - int e^(arctan x) dd(x/sqrt(1+x^2))\
&= (x e^(arctan x))/sqrt(1+x^2) - int (e^(arctan x))/((1+x^2)^(3/2)) dx
$
其中：
$
int (e^(arctan x))/((1+x^2)^(3/2)) dx
&= int 1/sqrt(1+x^2) dd(e^(arctan x))
= (e^(arctan x))/sqrt(1+x^2) - int e^(arctan x) dd(1/sqrt(1+x^2))\
&= (e^(arctan x))/sqrt(1+x^2) + int (x e^(arctan x))/((1+x^2)^(3/2)) dx
$
代入得：
$
int (x e^(arctan x))/((1+x^2)^(3/2)) dx
= ((x-1) e^(arctan x))/sqrt(1+x^2) - int (x e^(arctan x))/((1+x^2)^(3/2)) dx\
=> int (x e^(arctan x))/((1+x^2)^(3/2)) dx = ((x-1) e^(arctan x))/(2 sqrt(1 +x^2)) + C
$
= P204 习题4-2 58
$
int sin(ln x) dx
= x sin (ln x) - int x dd(sin (ln x))
= x sin (ln x) - int cos (ln x) dx\
int cos(ln x) dx
= x cos (ln x) - int x dd(cos (ln x))
= x cos (ln x) + int sin (ln x) dx\
=> int sin(ln x) dx = 1/2 x (sin(ln x) - cos(ln x)) + C
$
= P204 习题4-2 59
$
int e^(2x) sin^2 x dx
= int e^(2x) (1 - cos 2x)/2 dx
= 1/4 e^(2x) - 1/2 int cos 2x e^(2x) dx
$
其中：
$
int cos 2x e^(2x) dx
= 1/2 int cos 2x dd(e^(2x))
= 1/2 int cos (ln t) dt
= 1/4 t sin (ln t) + 1/4 t cos (ln t) + C
$
代入得：
$
int e^(2x) sin^2 x dx
&= 1/4 e^(2x) - 1/8 t sin (ln t) -1/8 t cos (ln t) + C\
&= 1/4 e^(2x) - 1/8 e^(2x) sin 2x - 1/8 e^(2x) cos 2x + C\
$
= P204 习题4-2 60
$
int (arctan e^x)/(e^x) dx
&= - int arctan e^x dd(e^(-x))
= - int arctan 1/t dt\
&= - (t arctan 1/t - int t dd(arctan 1/t))\
&= - t arctan 1/t - int (t)/(t^2+1) dt\
&= - t arctan 1/t - 1/2 ln(t^2 + 1) + C\
&= - (arctan e^x)/(e^x) - 1/2 ln(e^(-2x) + 1) + C
$
= P204 习题4-2 61
$
int x/(cos^2 x) dx
= int x dd(tan x)
= x tan x - int tan x dx
= x tan x + ln |cos x| + C
$
= P204 习题4-2 62
$
int (x e^x)/((x+1)^2) dx
= (e^(x+1))/(x+1) + C
$
= P219 习题4-3 1
$
int dx/(3x^2 - 2x - 1)
$
= P219 习题4-3 2
$
int (x dx)/((x+1)(x+2)(x+3))
&= int x/2 (1/((x+1)(x+2)) - 1/((x+2)(x+3))) dx\
&= int x/2 (1/(x+1) - 2/(x+2) + 1/(x+3)) dx\
&= int 1/2 (1 - 1/(x+1) - 2 + 4/(x+2) + 1 - 3/(x+3) )dx\
&= -1/2 ln |x+1| + 2 ln|x+2| - 3/2 ln|x+3| + C\
$
= P219 习题4-3 3
$
int (x^4)/(x^4 + 5 x^2 + 4) dx
&= int (1)/(4 t^2 + 5 t + 1) dt
= 1/3 int (4/(4t+1) - 1/(t+1)) dt\
&= 1/3 int (dd(4t))/(4t+1) - 1/3 int (dt)/(t+1) 
= 1/3 ln |(4t+1)/(t+1)| + C
= 1/3 ln ((x^2+4)/(x^2+1)) + C
$
= P219 习题4-3 4
$
int (x^2 + 1)/((x+1)^2 (x-1)^2) dx
&= 1/2 int ((x+1)^2 + (x-1)^2)/((x+1)^2 (x-1)^2) dx
= 1/2 int (1/(x+1)^2 + 1/(x-1)^2) dx\
&= -1/(2(x+1)) - 1/(2(x-1)) + C
$
= P219 习题4-3 5 #ac
$
int x/((x+1)(x^2 + 1)) dx
&= 1/2 int (x+1)/(x^2+1) dx - 1/2 int 1/(x+1) dx
$
其中：
$
int (x+1)/(x^2+1) dx
= int x/(x^2+1) dx + int 1/(x^2+1) dx
= 1/2 ln (x^2 + 1) + arctan x + C
$
代入得：
$
int x/((x+1)(x^2+1)) dx = 1/4 ln(x^2 + 1) +1/2 arctan x - 1/2 ln|x+1| + C
$
= P219 习题4-3 6
$
int dx/(x^3+1)
&= 1/3 int (1/(x+1) - (x-2)/(x^2 - x + 1)) dx\
&= 1/3 int 1/(x+1) dx - 1/3 int (x-1/2)/(x^2-x+1) dx + 1/2 int 1/(x^2-x+1) dx\
$
其中：
$
int 1/(x^2-x+1) dx
= int 1/((x-1/2)^2 + (sqrt(3)/2)^2) dd(x-1/2)
= 2/sqrt(3) arctan ((2x-1)/sqrt(3)) + C
$
$
int (x-1/2)/(x^2 - x + 1) dx
= 1/2 int 1/((x-1/2)^2 + 3/4) dd((x-1/2)^2)
= 1/2 ln|x^2-x+1| + C
$
代入得：
$
int dx/(x^3+1)
= 1/3 ln|x+1| - 1/6 ln|x^2-x+1| + 1/sqrt(3) arctan ((2x-1)/sqrt(3)) + C
$
= P220 第四章综合题 25(1) #ac
#prob[
  推导递推公式：若 $I_n=int sin^n x dx$，则 $I_n = display((-sin^(n-1) x cos x)/n + (n-1)/n I_(n-2)) quad (n in NN_+)$。
]
$
I_n
&= int sin^n x dx
= - int sin^(n-1) x dd cos x
= - cos x sin^(n-1) x + int cos x dd (sin^(n-1) x)\
&= -cos x sin^(n-1) x + (n-1) int cos^2 x sin^(n-2) x dx\
&= -cos x sin^(n-1) x + (n-1) int (1-sin^2 x) sin^(n-2) x dx\
&= -cos x sin^(n-1) x + (n-1) int sin^(n-2) x dx - (n-1) int sin^n x dx\
&= -cos x sin^(n-1) x + (n-1) I_(n-2) - (n-1) I_n\
=> I_n
&= -(cos x sin^(n-1) x)/n + (n-1)/n I_(n-2)
$
= P220 第四章综合题 25(2) #ac
#prob[
  推导递推公式：若 $I_n = int cos^n x dx$，则 $I_n = display((sin x cos^(n-1) x)/n + (n-1)/n I_(n-2)) quad (n in NN_+)$。
]
$
I_n 
&= int cos^n x dx
= int cos^(n-1) x dd sin x
= sin x cos^(n-1) x - int sin x dd(cos^(n-1) x)\
&= sin x cos^(n-1) x +(n-1) int sin^2 cos^(n-2) x dx\
&= sin x cos^(n-1) x + (n-1) int (1-cos^2 x) cos^(n-2)x dx\
&= sin x cos^(n-1) x + (n-1) I_(n-2) - (n-1) I_n\
=> I_n
&= (sin x cos^(n-1) x)/n + (n-1)/n I_(n-2)
$