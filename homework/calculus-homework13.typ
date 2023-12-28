#import "../template.typ": *

#show: project.with(
  title: "Calculus Homework #13",
  authors: ((
    name: "Yulun Wu (#47)",
    email: "memset0@outlook.com",
    phone: "3230104585"
  ),),
  date: "December 21, 2023",
)

#let int = math.integral

= P228 习题5-1 1(2) #ac
#prob[
  利用定义求下列函数的定积分：
  $
  int_a^b (dx)/(x^2) sp (0<a<b)
  $
  （提示：把区间 $n$ 等分，取 $xi_i=sqrt(x_i x_(i-1))$。）
]
对于 $n->oo$，取 $x_i=a+display(i/n (b-a))$，有 $Delta x_i = display(1/n (b-a))$。
$
int_a^b (dx)/(x^2)
&= lim_(n->oo) 1/n (b-a) sum_(i=1)^n 1/(sqrt(x_i dot x_(i-1)))^2\
&= lim_(n->oo) 1/n (b-a) sum_(i=1)^n 1/(x_i dot x_(i-1))\
&= lim_(n->oo) 1/n (b-a) sum_(i=1)^n 1/(x_i - x_(i-1)) (1/(x_(i-1)) - 1/(x_i))\
&= lim_(n->oo) sum_(i=1)^n (1/(x_(i-1)) - 1/(x_i))\
&= 1/a - 1/b
$

= P228 习题5-1 2(2) #ac
#prob[
  把极限用定积分形式表示：
  $
  lim_(n->oo) (n/(n^2+1^2) + n/(n^2+2^2) + dots.c + n/(n^2 + n^2))
  $
]
$
"原式"
&= lim_(n->oo) 1/n sum_(i=1)^n (n^2)/(n^2+i^2)\
&= lim_(n->oo) 1/n sum_(i=1)^n (1)/(1+(i/n)^2)\
&= int_0^1 (dx)/(1+x^2)
$

= P228 习题5-1 2(4) #ac
#prob[
  把极限用定积分形式表示：
  $
  lim_(n->oo) 1/n (sin pi/n + sin (2pi)/n + dots.c + sin (n-1)/n pi)
  $
]
$
"原式"
= lim_(n->oo) 1/n sum_(i=0)^(n-1) sin(i/n dot pi)
= int_0^1 sin (x pi) dx
$

= P236 习题5-2 1(2)
#prob[
  利用定积分的性质，比较 $display(int_1^2 x^2 dx)$ 与 $display(int_1^2 x^3 dx)$ 的大小： 
]
$
int_1^2 x^2 dx - int_1^2 x^3 dx
= int_1^2 x^2 (1-x) dx
$
对于函数 $psi(x) = x^2 (1-x)$，在 $[1,2]$ 上有 $psi(x) <= 0$，故 $display(int_1^2 psi(x) dx) < 0$，所以
$
int_1^2 x^2 dx < int_1^2 x^3 dx
$

= P236 习题5-2 1(3)
#prob[
  利用定积分的性质，比较 $display(int_1^2 ln x dx)$ 与 $display(int_1^2 (ln x)^2 dx)$ 的大小： 
]
$
int_1^2 ln x dx - int_1^2 (ln x)^2 dx
= int_1^2 ln x (1- ln x) dx
$
对于函数 $psi(x) = (ln x )(1 - ln x)$，在 $[1,2]$ 上有 $psi(x) >= 0$，故 $display(int_1^2 psi(x) dx) > 0$，所以
$
int_1^2 ln x dx > int_1^2 (ln x)^2 dx
$

= P236 习题5-2 3(1)
#prob[
  利用定积分的性质证明：
  $ (4 pi)/3 <= int_0^(2pi) (dx)/(1+0.5cos x) <= 4pi $
]
$
forall x in [0,2pi],sp -1<=cos x<=1
=> 2/3 = 1/(1+0.5) <= 1/(1+0.5 cos x) <= 1/(1-0.5) = 2
$
故
$
int_0^(2pi) (dx)/(1+0.5cos x) <= int_0^(2 pi) 2 dx = 4pi\
int_0^(2pi) (dx)/(1+0.5cos x) >= int_0^(2 pi) 2/3 dx = (4pi)/3\
$
原不等式得证。

= P236 习题5-2 3(2)
#prob[
  利用定积分的性质证明：
  $ 1/(10 sqrt(2)) <= int_0^1 (x^9)/sqrt(1+x) dx <= 1/10 $
]
$
forall x in [0,1],sp 1<=sqrt(1+x)<=2
=> x^9/sqrt(2) <= x^9/sqrt(1+x) <= x^9
$
故
$
int_0^1 (x^9)/sqrt(1+x) dx <= int_0^1 x^9 dx = 10\
int_0^1 (x^9)/sqrt(1+x) dx >= int_0^1 x^9/sqrt(2) dx = 10/sqrt(2)\
$
原不等式得证。

= P236 习题5-2 5(1) #ac
#prob[
  设函数 $f(x)$ 及 $g(x)$ 在 $[a,b]$ 上连续，证明：
  $ (int_a^b f(x) g(x) dx)^2 <= int_a^b f^2 (x) dx dot int_a^b g^2 (x) dx $
]
设变限积分
$
F(x) &= (int_a^x f(t) g(t) dt)^2 - (int_a^x f^2(t) dt) (int_a^x g^2(t) dt) quad (a<=x<=b)\
=> F'(x) &= 2 f(x) g(x) (int_a^x f(t) g(t) dt) - f^2(x) (int_a^x f^2(t) dt) - g^2(x) (int_a^x g^2(t) dt)\
&= int_a^x (f(t) f(x) (g(t) g(x) - f(t) f(x)) + g(t) g(x) (f(t) f(x) - g(t) g(x))) dt\
&= - int_a^x (f(t) f(x) - g(t) g(x))^2 dt <= 0
$
故 $forall x in [a,b],sp F(x) <= F(a) = 0$。代入 $x=b$ 得 $F(b) <= 0$，即不等式成立。

= P236 习题5-2 5(2)
#prob[
  设函数 $f(x)$ 及 $g(x)$ 在 $[a,b]$ 上连续，证明：
  $ int_a^b (f(x) + g(x))^2 dx <= ((int_a^b f^2 (x) dx)^(1/2) + (int_a^b g^2 (x) dx)^(1/2))^2 $
]
$
int_a^b (f(x) + g(x))^2 dx <= ((int_a^b f^2 (x) dx)^(1/2) + (int_a^b g^2 (x) dx)^(1/2))^2\
<=>\
int_a^b f^2(x) dx + 2 int_a^b f(x) g(x) dx + int_a^b g^2(x) dx \
<= int_a^b f^2(x) dx + 2 sqrt((int_a^b f(x) dx) (int_a^b g(x) dx)) int_a^b g^2(x) dx\
<=>\
(int_a^b f(x) g(x) dx)^2 <= (int_a^b f(x) dx) (int_a^b g(x) dx)
$
而该不等式已在习题 5-2 第 5(1) 题中证明，故原不等式得证。

= P237 习题5-2 6
#prob[
  设函数 $f(x)$ 在 $[a,b]$ 上连续，可微且 $f(a) = 0$，证明：
  $ M^2 <= (b-a) int_a^b f'^2 (x) dx $
  其中 $M = display(sup_(a<=x<=b) abs(f(x)))$。
]
$
(int_a^b f'(x) dx)^2 <= (b-a) int_a^b f'^2 (x) dx
<=> (int_a^b f'(x) dot 1 dx) <= (int_a^b f'^2 (x) dx) (int_a^b 1 dx)
$
由柯西不等式知成立。进一步地，设 $M$ 在 $x=t$ 时取到，则有：
$
M^2 <= (t-a) int_a^t f'^2(x) dx
$
而 $b-a>=t-a$，$f'^2(x) >= 0 => display(int_a^b f'^2(x) dx >= int_a^t f'^2(x) dx)$，故
$
M^2 <= (b-a) int_a^b f'^2(x) dx
$
即原不等式得证。

= P237 习题5-2 9
#prob[
  设函数 $f(x)$ 在 $[0, +oo)$ 上连续，单调递增且 $f(0) = 0$，试证函数
  $ F(x) = cases(
    display(1/x int_0^x t^n f(t) dt\, quad& x>0 sp ("其中 " n>0)),
    display(0\,quad& x = 0),
  ) $
  在 $[0,+oo)$ 上连续递增。
]
当 $x>0$ 时，有
$
F'(x)
&= ((x^n f(x)) x - int_0^x t^n f(t) dt)/(x^2)
= (x^(n+1) f(x) - f(x) int_0^x t^n dt)/(x^2)\
&= n/(n+1) x^(n-1)f(x) > 0
$
故 $F(x)$ 在 $[0,+oo)$ 上连续递增。

= P237 习题5-2 10(2)
#prob[
  证明：
  $ lim_(n->oo) int_n^(n+p) (sin^2 x)/x dx = 0 $
]
$
0 = lim_(n->oo) int_n^(n+p) 0/x dx <= lim_(n->oo) int_n^(n+p) (sin^2 x)/x dx <= lim_(n->oo) int_n^(n+p) 1/x dx
$
$
lim_(n->oo) int_n^(n+p) 1/x dx
= lim_(n->oo) ln(abs(n+p)) - ln(abs(n))
= lim_(n->oo) ln(abs((n+p)/n))
= 0
$
由夹逼定理知，原极限为零，原命题得证。

= P237 习题5-2 11(2)
#prob[
  求导数：
  $ dif/dx int_(sin x)^(cos x) cos(pi t^2) dt $
]
$
"原式"
&= - cos(pi cos^2 x) sin x - cos(pi sin^2 x) cos x
$

= P237 习题5-2 11(3)
#prob[
  求导数：
  $ dif/dx int_(-x^2)^0 f(t^2) dt $
]
$
"原式" = - dif(-x^2)/dx f(x^4) = 2x f(x^4)
$

= P237 习题5-2 12(1)
#prob[
  求极限：
  $ lim_(x->0) display(int_0^x cos t^2 dt)/x $
]
$
F'(x) = dif/dx (display(int_0^x cos t^2 dt))/x = cos x^2\
=>
lim_(x->0) display(int_0^x cos t^2 dt)/x
= lim_(x->0) (display(int_0^x cos t^2 dt) - 0)/(x-0)
= F'(0) = 1
$

= P237 习题5-2 12(3)
#prob[
  求极限：
  $ lim_(x->0) display(int_0^x t e^t sin t dt)/(x^3 e^x) $
]
$
lim_(x->0) display(int_0^x t e^t sin t dt)/(x^3 e^x)
&= lim_(x->0) display(dif/dx int_0^x t e^t sin t dt)/(e^x (x^3 + 3x^2))
= lim_(x->0) (x e^x sin x)/(e^x (x^3 + 3x^2))\
&= lim_(x->0) (sin x)/(x^2 + 3 x)
= lim_(x->0) x/(x^2 + 3 x)
= lim_(x->0) 1/(x + 3)
= 1/3
$

= P237 习题5-2 13
#prob[
  设 $f(x)$ 是连续函数，且 $f(x) = x + 2 display(int_0^1 f(x) dx)$，求 $f(x)$。
]
$
f(x) = x + 2 int_0^1 f(x) dx
=> f'(x) = 1 => f(x) = x + c
$
其中 $c$ 是常数，代入可得：
$
x + c = x + 2 int_0^1 (x+c) dx
=> c/2 = 1/2 + c => c = -1
$
故 $f(x) = x - 1$。

= P237 习题5-2 14 #wa
#prob[
  设 $f(x)$ 在 $[a,b]$ 上有连续的倒数，且 $f(a) = f(b) = 0$。证明：
  $
  max_(a <= x <= b) |f'(x)| >= 
  4/((b-a)^2) int_a^b |f(x)| dx
  $
]
不会做。

= 其他题目
见扫描件。
== P238 习题5-2 16(5)
== P238 习题5-3 1
