#import "../template.typ": *

#show: project.with(
	course: "Calculus I",
	course_fullname: "Calculus (A) I",
	course_code: "821T0150",
	semester: "Autumn-Winter 2023",
  title: "Calculus Note #4",
  authors: ((
    name: "memset0",
    email: "memset0@outlook.com",
    id: "3230104585"
  ),),
  date: "December 10, 2023",
)

#let int = math.integral
#let defas = sp + math.attach(math.upright("="), tl: "", t: "def", tr: "") + sp

= 不定积分

== 基本积分表

1. $int 1 dx = int dx = x + C$

2. $int x^alpha dx = display(1/(alpha+1)) x^(alpha+1) + C, sp (alpha != -1,sp alpha in CC)$

#warning[
  注意 $alpha!=-1$ 的限制，否则应为下一种情况．
]

3. $int 1/x dx = ln |x| + C$

#warning[
  注意到 $display((ln(-x))' = ((-x)')/(-x) = -1/(-x) = 1/x)$，所以此处应有绝对值．
]

4. $int a^x dx = display((a^x)/(ln a)) + C,sp (a>0,sp a != 1,sp a in CC)$

5. $int e^x dx = e^x + C$

6. $int display(1/(1+x^2)) dx = arctan x + C "或" -arccot x + C$

7. $int display(1/sqrt(1-x^2)) dx = arcsin x + C "或" -arccos x + C$

8. $int sin x dx = - cos x + C$

9. $int cos x dx = sin x + C$

10. $int sec^2 x dx = tan x + C$

11. $int csc^2 x dx = -cot x + C$

12. $int sec x tan x dx = sec x + C$

13. $int csc x cot x dx = -csc x + C$

14. $int sinh x dx = cosh x + C$

15. $int cosh x dx = sinh x + C$

#note[
  这一部分来源于三角函数的微分公式．
]

16. $int tan x dx  = - ln |cos x| + C$

17. $int cot x dx = ln |sin x| + C$

18. $int sec x dx = ln |sec x + tan x| + C$

19. $int csc x dx = ln |csc x - cot x| + C$

#proof[
  求 $int sec x dx$：

  #def[解法一]
  $
  int sec x dx
  &= int (cos x)/(cos^2 x) dx
  = int (dif sin x)/(1-sin^2 x)
  = 1/2 int (1/(1+sin x) + 1/(1-sin x)) dif sin x\
  &= 1/2 ln(ln|1 + sin x| - ln|1 - sin x|) + C
  = 1/2 ln |(1+sin x)/(1-sin x)| + C
  $
  #def[解法二]
  $
  int sec x dx
  = int (sec x (sec x + tan x))/(sec x + tan x) dx
  = int (sec^2 x + sec x tan x)/(sec x + tan x) dx
  = ln |sec x + tan x| + C
  $
]

== 不定积分的性质

根据不定积分的定义，有

#def[性质1]$dif/dx int f(x) dx = f(x)$ 或 $dif int f(x) dx = f(x) dx$

#def[性质2]$int f'(x) dx = f(x) + C$ 或 $int dif f(x) = f(x) + C$

#def[性质3]若 $f(x)$，$g(x)$ 的原函数都存在，则 $int (f(x) pm g(x)) dx = int f(x) dx + int g(x) dx$．

#def[性质4]若 $f(x)$ 的原函数存在，则 $int alpha f(x) dx = alpha int f(x) dx,sp (alpha != 0,sp alpha in CC)$．

#def[推论1]若函数 $f_1 (x),f_2 (x),dots.c,f_m (x)$ 的原函数存在，$k_1,k_2,dots.c,k_m$ 均不为 $0$ 且是常数，那么

$
int sum_(i=0)^m k_i f_i (x) dx = sum_(i=1)^m k_i int f_i (x) dx
$

这又被称为不定积分的 *线性运算法则*．

== 不定积分的计算方法

=== 第一换元法（凑微分法）

==== 三角函数积分常用方法

1. 分项积分：利用积化和差、分式分项、$1 = sin^2 x + cos^2 x,sp tan^2 x + 1 = sec^2 x$ 等方法统一变量．

2. 降低幂次：利用倍角公式，如：$cos^2 x = 1/2 (1 + cos 2x),sp sin^2 x = 1/2 (1 - cos 2x)$．

3. 统一函数：利用三角公式、配元换元等方法．

#def[例1]求：$display(int sec^6 x dx)$

#proof[
  $
  int sec^6 x dx
  &= int (tan^2 x + 1)^2 sec^2 x dx
  = int (tan^4 x + 2 tan^2 x + 1)^2 dif(tan x)\
  &= 1/5 tan^5 x + 2/3 tan^3 x + tan x + C
  $
]

==== 有理函数积分常用方法

1. 万能凑幂法：$display(cases(
    display(int f(x^n) x^(n-1) dx = 1/n int f(x^n) dif x^n),
    display(int f(x^n) 1/x dx = 1/n int f(x^n) 1/(x^n) dif x^n), 
  ))$．

2. 对分母因式分解后化成多个小分式分别处理．

#def[例2]求：$display(int (dx)/(x^2 + a^2))$．

#proof[
  $
  int (dx)/(x^2+a^2)
  = 1/(a^2) int (dx)/((x/a)^2 + 1)
  = 1/a int (dif(x/a))/((x/a)^2 + 1)
  = 1/a arctan(x/a) + C
  $
]

#def[例3]求：$display(int (dx)/(x^2 - a^2))$．

#proof[
  $
  int (dx)/(x^2-a^2)
  &= int 1/(2a) ((x+a) - (x-a))/((x+a)(x-a)) dx
  = 1/(2a) (int (dif(x-a))/(x-a) - int (dif(x+a))/(x+a))\
  &= 1/(2a) (ln|x-a| - ln|x+a|) + C
  $
]

=== 第二换元法

常用代换：

1. $sqrt(a^2 - x^2) => "令 " x = a cos t$，$sqrt(x^2 + a^2) => "令 " x = a tan t$，$sqrt(x^2 - a^2) => "令 " x = a csc t$．可以脱去根号．



#def[例4]求：$int sqrt(a^2 - x^2) dx sp (a>0)$．

#proof[
  令 $display(x = a sin t\,sp t in (-pi/2,pi/2))$，则
  $
  sqrt(a^2 - x^2) = sqrt(a^2 - a^2 sin^2 t) = a cos t
  quad quad 
  dx = a cos t dt
  $
  $
  => "原式"
  &= int a cos t a cos t dt 
  = a^2 int cos^2 t dt
  = a^2 (t/2 + (sin 2t)/4) + C\
  &= a^2/2 arcsin x/a + 1/2 x sqrt(a^2 - x^2) + C\
  $
]

#def[例5]求：$display(int (dx)/sqrt(x^2 + a^2)) sp (a>0)$．

#proof[
  令 $display(x = a tan t\,sp t in (-pi/2,pi/2))$，则
  $
  sqrt(x^2 + a^2) = sqrt(a^2 tan^23 t + a^2) = a sec t
  quad quad quad
  dx = a sec^2 t dt
  $
  $
  => "原式"
  &= int (a sec^2 t)/(a sec t) dt
  = int sec t dt
  = ln |sec + tan t| + C_1\
  &= ln |(sqrt(x^2 + a^2) + x)/a| + C_1
  = ln (x + sqrt(x^2 + a^2)) + C quad (C = C_1 - ln a)
  $
]

#def[例6]求：$display(int dx / sqrt(x^2 - a^2)) sp (a > 0)$．

#proof[
  当 $x>a$ 时，令 $x = a sec t,sp t in display((0, pi/2))$，则
  $
  sqrt(x^2 - a^2) = sqrt(a^2 sec^2 t - a^2) = a tan t
  quad quad quad
  dx = a sec t tan t dt
  $
  $
  => "原式"
  = int (a sec t tan t)/(a tan t) dt 
  = int sec t dt
  = ln |sec t + tan t| + C_1
  = ln |x + sqrt(x^2 - a^2)| + C
  $
  当 $x< -a$ 时，令 $x = -u$，则
  $
  "原式"
  &= - int du/sqrt(u^2 - a^2)
  = - ln |-x + sqrt(x^2 - a^2)| + C
  = - ln |(a^2)/(-x - sqrt(x^2 - a^2))| + C\
  &= ln |x + sqrt(x^2 - a^2)| + C
  $
  综上，$display(int dx / sqrt(x^2 - a^2)) = ln |x + sqrt(x^2 - a^2)| + C sp (a>0)$．
]

=== 分部积分法

$
int u dif v = u v - int v dif u
$

#def[例7]求：$int sqrt(x^2 + a^2) dx sp (a>0)$．

#proof[
  $
  int sqrt(x^2 + a^2) dx
  &= x sqrt(x^2 + a^2) - int (x^2)/sqrt(x^2 + a^2) dx
  = x sqrt(x^2 + a^2) - int ((x^2 + a^2) - a^2)/sqrt(x^2 + a^2) dx\
  &= x sqrt(x^2 + a^2) - int sqrt(x^2 + a^2) dx + a^2 int dx/sqrt(x^2 + a^2)
  $
  $
  => int sqrt(x^2 + a^2) dx
  = 1/2 x sqrt(x^2 + a^2) + (a^2)/2 ln (x+sqrt(x^2 + a^2)) + C
  $
]

若 $P_n (x)$ 为 $n$ 次多项式，则要求：

1. $int P_n (x) e^(a x) dx$，令 $P_n (x) = u, v' = e^(a x)$．
2. $int P_n (x) sin (a x + b) dx$，令 $P_n (x) = u, v' = sin (a x + b)$．
3. $int P_n (x) cos (a x + b) dx$，令 $P_n (x) = u, v' = cos (a x + b)$．
4. $int P_n (x) ln x dx$，令 $P_n (x) = ln x, v' = P_n (x)$．

设 $p(x)$ 为一般函数，则要求：

5. $int p(x) arcsin x dx$，令 $arcsin x = u, v' = p(x)$．
6. $int p(x) arctan x dx$，令 $arctan x = u, v' = p(x)$．

== 特殊函数的不定积分

=== 有理函数的不定积分

$
R(x) = (P(x))/(Q(x)) = (a_0 x^n + a_1 x^(n-1) + dots.c + a_n)/(b_0 x^m + b_1 x^(m-1) + dots.c + b_m)
$
当 $m<=n$ 时，$R(x)$ 为假分式；当 $m>n$ 时 $R(x)$ 为真分式．
$
"有理函数" = "多项式" + "真分式"
$

= 定积分

== 定积分的定义

若存在一常数 $I$，任给 $epsilon > 0$，存在 $delta > 0$，使得对任意的分割
$
T:sp a = x_0<x_1<x_2< dots.c < x_(i-1)<x_i<x_(i+1) < dots.c < x_n=b
$
只要 $max{Delta x_i:1<=i<=n} = lambda(T) < delta$，任给 $xi_i in [x_(i-1), x_i]$，都有
$
|sum_(i=1)^n f(xi_i) Delta x_i - I| < eps
$
成立，则称 $I$ 为 $f(x)$ 在区间 $[a,b]$ 上的定积分．

=== 可积的必要条件

#def[定理1]若函数 $f(x)$ 在闭区间 $[a,b]$ 上可积，则 $f(x)$ 在 $[a,b]$ 上有界．

=== 可积的充分条件

#def[定理2]函数 $f(x)$ 在 $[a,b]$ 上连续 $=>$ $f(x)$ 在 $[a,b]$ 可积．

#def[定理3]函数 $f(x)$ 在 $[a,b]$ 上有界且只有有限个间断点 $=>$ $f(x)$ 在 $[a,b]$ 可积．

#def[定理4]函数 $f(x)$ 在 $[a,b]$ 上单调 $=>$ $f(x)$ 在 $[a,b]$ 上可积．

== 定积分的性质

（设所列积分都存在．）

#def[性质1]$display(int_a^b f(x) dx = -int_b^a f(x) dx)$．

#def[推论1]$display(int_a^a f(x) dx = 0)$．

#def[性质2]（定积分对区间的可加性）$display(int_a^b f(x) dx = int_a^c f(x) dx + int_c^b f(x) dx)$．

#def[性质3]若在 $[a,b]$ 上 $f(x)>=0$，则 $display(int_a^b f(x) dx >= 0)$．

#deft[性质3]特别地，若 $f(x)$ 在 $[a,b]$ 上连续，$f(x) >= 0$ 但 $f(x) equiv.not 0$，那么 $display(int_a^b f(x) dx > 0)$．

#def[推论2]（定积分的基本不等式）$display(|f_a^b f(x) dx| <= f_a^b |f(x)| dx)$．

#def[性质4]设 $display(M = max_([a,b]) f(x)\,sp m = min_([a,b]) f(x))$，则 $display(m(b-a) <= int_a^b f(x) dx <= M(b-a))$．

#def[推论3]（定积分中值定理）若 $f(x)$ 在 $[a,b]$ 上连续，则至少存在一点 $xi in [a,b]$ 使
$ int_a^b f(x) dx = f(xi) (b-a) $

#proof[
  设 $display(M = max_([a,b]) f(x)\,sp m = min_([a,b]) f(x))$，由性质 4 可得：
  $
  m <= 1/(b-a) int_a^b f(x) dx <= M
  $
  根据闭区间上的连续函数介值定理，至少存在一点 $xi in [a,b]$ 使 $display(f(xi) = 1/(b-a) int_a^b f(x) dx)$．
]

#def[推论4]（推广的定积分中值定理）设 $f(x),g(x)$ 在 $[a,b]$ 上连续，且 $g(x)$ 在 $[a,b]$ 上不变号，则至少存在一点 $xi in [a,b]$ 使得
$
int_a^b f(x) g(x) dx = f(xi) int_a^b g(x) dx
$

== 积分上限函数

设函数 $f(x)$ 在区间 $[a,b]$ 上连续，并且设 $x$ 为 $[a,b]$ 上的一点，积分 $display(int_a^x f(t) dt)$ 是 $x$ 函数，记为 $Phi(x)$，即
设函数 $f(x)$ 在区间 $[a,b]$ 上连续，并且设 $x$ 为 $[a,b]$ 上的一点，积分 $display(int_a^x f(t) dt)$ 是 $x$ 函数，记为 $Phi(x)$．则称 $Phi(x)$ 为变上限的函数．

#def[定理]（微积分学基本定理）若 $f(x)$ 在 $[a,b]$ 上连续，则变上限函数 $Phi(x)$ 在 $[a,b]$ 上可导，且 $Phi'(x) = f(x)$．

#def[推论]（实际上也可由牛莱公式得到）$display(dif/dx int_(psi(x))^(phi(x)) f(t) dt = f(phi(x)) phi'(x)) - f(psi(x)) psi'(x)$．

== 牛顿-莱布尼茨公式

设 $F(x)$ 是连续函数 $f(x)$ 在 $[a,b]$ 上的原函数，则
$
int_a^b f(x) dx = F(b) - F(a)
$

== 定积分的计算方法

=== 换元法

若函数 $f(x)$ 在 $[a,b]$ 上连续，作变量代换 $x = psi(t)$，$psi(t)$ 满足：
1. $psi(a) = alpha,sp psi(b)=beta$ 且 $psi(t) in [a,b]$，$t in [alpha,beta] sp ("或 " [beta,alpha])$
2. 在 $[alpha,beta] sp ("或 " [beta,alpha])$ 上有连续的导数 $psi'(t)$．
则有定积分换元公式：
$
int_a^b f(x) dx = int_alpha^beta f(psi(t)) psi'(t) dt
$

=== 分部积分法

若 $u=u(x),v=v(x)$ 在 $[a,b]$ 上具有连续的导函数，则
$
int_a^b u dv = u v |_a^b - int_a^b v du
$

== 几种简化的定积分计算方法

=== 关于原点对称的定积分

若 $f(x)$ 在区间 $[-a,a]$ 上来连续，则：
$
int_(-a)^a f(x) dx
= int_0^a (f(x) + f(-x)) dx
= cases(
  0\,quad& "当 " f(x) "为奇函数",
  2 int_0^a f(x) dx\,quad& "当 " f(x) "为偶函数",
)\
$

=== 周期函数的定积分

设 $f(x)$ 是周期为 $T$ 的周期函数，且连续，则
$
int_a^(a+T) f(x) dx = int_0^T dx quad (a "是任意常数")
$

=== $sin^n x,sp cos^n x$ 在 $[0,pi/2]$ 上的积分

（Wallis 公式）对任意的自然数 $n sp (n>=2)$，有
$
int_0^(pi/2) sin^n x dx
= int_0^(pi/2) cos^n x dx
= cases(
  display((n-1)/n dot (n-3)/(n-2) dots.c 1/2 dot pi/2 \,quad& 2 divides n),
  display((n-1)/n dot (n-3)/(n-2) dots.c 2/3 \,quad& 2 divides.not n),
)
$
（可通过递推的方式证明）

== 反常积分

=== 第一类反常积分（无穷区间上的反常积分）

$
int_a^(+oo) f(x) dx defas lim_(t->+oo) int_a^t f(x) dx\
int_(-oo)^b f(x) dx defas lim_(t->-oo) int_t^b f(x) dx\
$
若右式的极限存在，则称该反常积分收敛，否则称该反常积分发散．

进一步地，有
$
int_(-oo)^(+oo) f(x) dx defas int_a^(+oo) f(x) dx + int_(-oo)^a f(x) dx
$
称反常积分 $display(int_(-oo)^(+oo) f(x) dx)$ 收敛当且仅当右侧两个反常积分都收敛，否则称其发散．

#def[例1]（第一 $p$ 反常积分）讨论 $display(int_a^(+oo) dx/(x^p))$ 的敛散性．

当 $p!=1$ 时，有
$
int_a^(+oo) dx/(x^p)
= lim_(t->+oo) int_a^t dx/(x^p)
= lim_(t->+oo) lr((x^(-p+1))/(-p+1)|)_a^t
= lim_(t->+oo) 1/(1-p) (t^(-p+1) - a^(-p+1))
= cases(
  display((a^(1-p))/(p-1)\,quad& p>1),
  display(+oo\,quad& p<1)
)
$
当 $p=1$ 时，有
$
int_a^(+oo) dx/x
= lim_(t->+oo) int_a^t dx/x
= lim_(t->+oo) lr(ln x |)_a^t
= +oo
$
综上，反常积分 $display(int_a^(+oo) (dx)/(x^p))$，当 $p>1$ 时收敛，当 $p<=1$ 时发散．

=== 第二类反常积分（无界函数的反常积分）

设函数 $f(x)$ 在区间 $(a,b]$ 上连续，$display(lim_(x->a^+) f(x) = oo)$（称 $a$ 为瑕点）．于是任给 $0<epsilon<b-a$，$display(int_(a+epsilon)^b f(x) dx)$ 均存在，它是关于 $epsilon$ 的函数，则定义
$
int_a^b f(x) dx defas lim_(epsilon -> 0^+) int_(a+epsilon)^b f(x) dx
$

类似的，设函数 $f(x)$ 在区间 $[a,b)$ 上连续，$display(lim_(x->b^-) f(x) = oo)$（称 $b$ 为瑕点），则定义
$
int_a^b f(x) dx defas lim_(epsilon->0^+) int_a^(b-epsilon) f(x) dx
$
这两个反常积分收敛都是当且仅当右式的极限存在．

进一步地，设函数 $f(x)$ 在区间 $[a,c) union (c,b]$ 上连续，$lim_(x->c) f(x) = oo$（称 $c$ 为瑕点），则定义
$
int_a^b f(x) dx defas int_a^c f(x) dx + int_c^b f(x) dx
$
该反常积分收敛当且仅当右侧两个反常积分都收敛，否则发散．

#def[例2]（第二 $p$ 反常积分）讨论反常积分 $display(int_a^b (dx)/((b-a)^p) sp (b>a))$ 的敛散性．

$x=b$ 是瑕点，当 $p!=1$ 时，有
$
int_a^b dx/((b-x)^p)
&= lim_(epsilon->0^+) int_a^(b-epsilon) dx/((b-x)^p)
= lim_(epsilon->0^+) lr(-(b-x)^(-p+1)/(-p+1)|)_a^(b-epsilon)
= lim_(epsilon->0^+) ((b-a)^(1-p)-epsilon^(1-p))/(1-p)\
&= cases(
  ((b-a)^(1-p))/(1-p) \,quad& p<1,
  +oo \,quad& p>1
)
$
当 $p=1$ 时，有
$
int_a^b dx/(b-x)
&= lim_(epsilon->0^+) int_a^(b-epsilon) dx/(b-x)
= - lim_(epsilon->0^+) lr((ln|b-x|)|)_a^(b-epsilon)
= lim_(epsilon->0^+) (ln(b-a)-ln(epsilon))
= +oo
$
综上，反常积分 $display(int_a^b dx/((b-x)^p))$，当 $p<1$ 时收敛，当 $p>=1$ 时发散．

实际上当该积分是 $p<=0$ 时是正常积分．从这个例子中可以看出，把正常积分看成反常积分处理一定是收敛的．当积分中含有参数时，参数取某些值时是正常积分，取某些值时是反常积分，则把积分看成反常积分，对解决问题是有利的．

#warning[
  对比第一 $p$ 反常积分和第二 $p$ 反常积分：

  - 反常积分 $display(int_a^(+oo) (dx)/(x^p))$，当 $p>1$ 时收敛，当 $p<=1$ 时发散．

  - 反常积分 $display(int_a^b dx/((b-x)^p))$，当 $p<1$ 时收敛，当 $p>=1$ 时发散．

  注意不等号方向．下面利用这两类进行判别时，可以先代入 $p=1$，如果能收敛就调整 $p$，否则可以直接确认为发散．
]

== 反常积分敛散性的判别

=== 关于第一类反常积分的敛散性判别

#def[定理1.1]（比较判别法）设函数 $f(x),g(x)$ 在区间 $[a,+oo)$ 上连续，且有 $0 <= f(x) <= g(x)$，则

#deft[定理1.1]1. 若积分 $display(int_a^(+oo) g(x) dx)$ 收敛，则 $display(int_a^(+oo) f(x) dx)$ 也收敛．

#deft[定理1.1]2. 若积分 $display(int_a^(+oo) f(x) dx)$ 发散，则 $display(int_a^(+oo) g(x) dx)$ 也发散．

#warning[
  这里要求 $f(x)$ 和 $g(x)$ 的值域都是非负数的基础上，否则需要用下面的绝对收敛准则转化．
]

#def[推论1.1.1]设 $f(x)$ 在 $[a,+oo)$ 上连续，若当 $x$ 充分大时有 $0<=f(x)<=display(c/(x^p)) sp(p>1,sp c>0)$，则积分 $display(int_a^(+oo) f(x) dx)$ 收敛；若当 $x$ 充分大时有 $f(x)>=display(c/(x^p))sp(p<=1,sp c>0)$，则积分 $display(int_a^(+oo) f(x) dx)$ 发散．（代入第一 $p$ 反常积分的结论可证）

#def[推论1.1.2]设 $f(x)$ 在 $[a,+oo)$ 上连续，且 $display(lim_(x->+oo)) x^p f(x) = A$．

#deft[推论1.1.2]1. 若 $0<A<+oo$，即 $f(x) sim display(A/(x^p)) sp (x->+oo)$，则反常积分 $display(int_a^(+oo) f(x) dx)$ 与 $display(int_a^(+oo) A/(x^p) dx)$ 敛散性相同，即当 $p>1$ 时 $display(int_a^(+oo) f(x) dx)$ 收敛；当 $p<=1$ 时 $display(int_a^(+oo) f(x) dx)$ 发散．

#deft[推论1.1.2]2. 若 $A=0$，$f(x)>=0$ 且 $p>1$，则 $display(int_a^(+oo) f(x) dx)$ 收敛．

#deft[推论1.1.2]3. 若 $A=+oo$ 且 $p<=1$，则 $display(int_a^(+oo) f(x) dx)$ 发散．

#def[定理1.2]（绝对收敛准则）设函数 $f(x)$ 在 $[a,+oo)$ 上连续，若积分 $display(int_a^(+oo) |f(x)| dx)$ 收敛，则 $display(int_a^(+oo) f(x) dx)$ 收敛．

#proof[
  #def[证明]（这里只证明第1条）由于 $display(lim_(x->+oo)) x^p f(x) = A$，所以对 $epsilon=display(A/2)>0$，存在 $b>0$ 使得当 $x>b$ 时有 $display(-A/2 < x^p f(x) - A < A/2)$ 或
  $
  0<A/2 dot 1/(x^p) < f(x) < (3A)/2 dot 1/(x^p)
  $
  由推论1.1.1知当 $p>1$ 时 $display(int_a^(+oo) f(x) dx)$ 收敛；当 $p<=1$ 时 $display(int_a^(+oo) f(x) dx)$ 发散．
]

#note[
  这条结论告诉我们，可以不讨论 $f(x)$ 和 $display(c/(x^p))$ 的大小关系，只需要找到 $p$ 使得 $f(x)$ 和 $display(A/(x^p))$ 同阶即可．
  
  在实际应用中，首先看能否找到当 $x->+oo$ 时，$f(x)$ 的等价量 $display(A/(x^p))$，如果找不到，再考虑第2条或第3条．
]

=== 关于第二类反常积分的敛散性判别

#def[定理2.1]（比较判别法）设 $f(x),g(x)$ 在 $[a,b)$ 上连续，且当 $x$ 充分靠近点 $b$ 时有 $0$ $<=$ $f(x)$ $<=$ $g(x)$，则

#deft[定理2.1]1. 若积分 $display(int_a^b g(x) dx)$ 收敛，则积分 $display(int_a^b f(x) dx)$ 收敛．

#deft[定理2.1]2. 若积分 $display(int_a^b f(x) dx)$ 发散，则积分 $display(int_a^b g(x) dx)$ 发散．

#def[定理2.2]（绝对收敛准则）设函数 $f(x)$ 在 $[a,b)$ 上连续，$b$ 是瑕点，如果积分 $display(int_a^b abs(f(x)) dx)$ 收敛，则 $display(int_a^b f(x) dx)$ 收敛．这时，称 $display(int_a^b f(x) dx)$ 绝对收敛．

== $Gamma$ 函数

$
Gamma(s) = int_0^(+oo) x^(s-1) e^(-x) dx sp (s>0)
$

#def[性质] $Gamma(s+1) = s Gamma(s) sp (s>0)$．所以说，$Gamma$ 函数是阶乘的自然推广．

=== $Gamma$ 函数的敛散性判别

$
Gamma(s) = int_0^(+oo) x^(s-1) e^(-x) dx = int_0^1 x^(s-1) e^(-x) dx + int_1^(+oo) x^(s-1) e^(-x) dx = I_1 + I_2
$
其中 $I_1$ 是第二类反常积分，$x=0$ 是瑕点，考虑到
$
x^(s-1) e^(-x) sim 1/(x^(1-s)) quad (x->0^+)
$
且 $A=1$，故当 $1-s<1$ 即 $s>0$ 时 $I_1$ 收敛．

$I_2$ 是第一类反常积分
$
lim_(x->+oo) x^2 x^(s-1) e^(-x)
= lim_(x->+oo) (x^(s+1))/(e^(-x))
= 0
$
故 $I_2$ 总是收敛．综上所述，当 $s>0$ 时，$I = Gamma(s)$ 收敛．

=== $Gamma$ 函数定义域的延拓

从递推公式 $Gamma(s+1) = s Gamma(s)$ 出发可以把 $Gamma$ 函数的定义域进行延拓．以此类推，$Gamma(s)$ 在除去 $0$ 与负整数以外的全体实数上都有定义．
