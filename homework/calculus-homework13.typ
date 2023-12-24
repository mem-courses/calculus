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

= P228 习题5-1 1(2)
#prob[
  利用定义求下列函数的定积分：
  $
  int_a^b (dx)/(x^2) sp (0<a<b)
  $
  （提示：把区间 $n$ 等分，取 $xi_i=sqrt(x_i x_(i-1))$。）
]
= P228 习题5-1 2(2)
#prob[
  把极限用定积分形式表示：
  $
  lim_(n->oo) (n/(n^2+1^2) + n/(n^2+2^2) + dots.c + n/(n^2 + n^2))
  $
]
= P228 习题5-1 2(4)
#prob[
  把极限用定积分形式表示：
  $
  lim_(n->oo) 1/n (sin pi/n + sin (2pi)/n + dots.c + sin (n-1)/n pi)
  $
]
= P236 习题5-2 1(2)
#prob[
  利用定积分的性质，比较 $display(int_1^2 x^2 dx)$ 与 $display(int_1^2 x^3 dx)$ 的大小： 
]
= P236 习题5-2 1(3)
#prob[
  利用定积分的性质，比较 $display(int_1^2 ln x dx)$ 与 $display(int_1^2 (ln x)^2 dx)$ 的大小： 
]
= P236 习题5-2 3(1)
#prob[
  利用定积分的性质证明：
  $ (4 pi).3 <= int_0^(2pi) (dx)/(1+0.5cos x) <= 4pi $
]
= P236 习 题5-2 3(2)
#prob[
  利用定积分的性质证明：
  $ 1/(10 sqrt(2)) <= int_0^1 (x^9)/sqrt(1+x) dx <= 1/10 $
]
= P236 习题5-2 5(1)
#prob[
  设函数 $f(x)$ 及 $g(x)$ 在 $[a,b]$ 上连续，证明：
  $ (int_a^b f(x) g(x) dx)^2 <= int_a^b f^2 (x) dx dot int_a^b g^2 (x) dx $
]
= P236 习题5-2 5(2)
#prob[
  设函数 $f(x)$ 及 $g(x)$ 在 $[a,b]$ 上连续，证明：
  $ int_a^b (f(x) + g(x))^2 dx <= ((int_a^b f^2 (x) dx)^(1/2) + (int_a^b g^2 (x) dx)^(1/2))^2 $
]
= P237 习题5-2 6
#prob[
  设函数 $f(x)$ 在 $[a,b]$ 上来连续，可微且 $f(a) = 0$，证明：
  $ M^2 <= (b-a) int_a^b f'^2 (x) dx $
]
= P237 习题5-2 9
#prob[
  设函数 $f(x)$ 在 $[0, +oo)$ 上连续，单调递增且 $f(0) = 0$，试证函数
  $ F(x) = cases(
    display(1/x int_0^x t^n f(t) dt\, quad& x>0 ("其中 "n>0)),
    display(0\,quad& x = 0),
  ) $
]
= P237 习题5-2 10(2)
#prob[
  证明：
  $ lim_(n->oo) int_n^(n+p) (sin^2 x)/x dx = 0 $
]
= P237 习题5-2 11(2)
#prob[
  求导数：
  $ d/dx int_(sin x)^(cos x) cos(pi t^2) dt $
]
= P237 习题5-2 11(3)
#prob[
  求导数：
  $ d/dx int_(-x^2)^0 f(t^2) dt $
]
= P237 习题5-2 12(1)
#prob[
  求极限：
  $ lim_(x->0) display(int_0^x cos t^2 dt)/x $
]
= P237 习题5-2 12(3)
#prob[
  求极限：
  $ lim_(x->0) display(int_0^x t e^t sin t dt)/(x^3 e^x) $
]
= P237 习题5-2 13
#prob[
  设 $f(x)$ 是连续函数，且 $f(x) = x + 2 display(int_0^1 f(x) dx)$，求 $f(x)$。
]
= P237 习题5-2 14
#prob[
  设 $f(x)$ 在 $[a,b]$ 上有连续的倒数，且 $f(a) = f(b) = 0$。证明：
  $
  max_(a <= x <= b) |f'(x)| >= 
  4/((b-a)^2) int_a^b |f(x)| dx
  $
]
= P238 习题5-2 16(5)
#prob[
  计算定积分：
  $ int_(1/e)^e |ln x| dx $
]
= P247 习题5-3 1
#prob[
  计算下列定积分

  (1) $display( int_e^(e^2) dx/(x ln^2 x) )$。
]

// #prob[(2) $display(  )$]
// #prob[(2) $display(  )$]
// #prob[(2) $display(  )$]
// #prob[(2) $display(  )$]
// #prob[(2) $display(  )$]
// #prob[(2) $display(  )$]
// #prob[(2) $display(  )$]