#import "../template.typ": *

#show: project.with(
  title: "Calculus Note #4",
  authors: ((
    name: "memset0",
    email: "memset0@outlook.com",
    phone: "3230104585"
  ),),
  date: "December 10, 2023",
)

#let int = math.integral

= 不定积分

== 基本积分表

1. $int 1 dx = int dx = x + C$

2. $int x^alpha dx = display(1/(alpha+1)) x^(alpha+1) + C, sp (alpha != -1,sp alpha in CC)$

#warn[
  注意 $alpha!=-1$ 的限制，否则应为下一种情况。
]

3. $int 1/x dx = ln |x| + C$

#warn[
  注意到 $display((ln(-x))' = ((-x)')/(-x) = -1/(-x) = 1/x)$，所以此处应有绝对值。
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
  这一部分来源于三角函数的微分公式。
]

16. $int tan x dx  = - ln |cos x| + C$

17. $int cot x dx = ln |sin x| + C$

18. $int sec x dx = ln |sec x + tan x| + C$

19. $int csc x dx = ln |csc x - cot x| + C$

#prof[
  求 $int sec x dx$：

  #def[解法一]
  $
  int sec x dx
  &= int (cos x)/(cos^2 x) dx
  = int (dd sin x)/(1-sin^2 x)
  = 1/2 int (1/(1+sin x) + 1/(1-sin x)) dd sin x\
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

#def[性质1]$dd/dx int f(x) dx = f(x)$ 或 $dd int f(x) dx = f(x) dx$

#def[性质2]$int f'(x) dx = f(x) + C$ 或 $int dd f(x) = f(x) + C$

#def[性质3]若 $f(x)$，$g(x)$ 的原函数都存在，则 $int (f(x) pm g(x)) dx = int f(x) dx + int g(x) dx$。

#def[性质4]若 $f(x)$ 的原函数存在，则 $int alpha f(x) dx = alpha int f(x) dx,sp (alpha != 0,sp alpha in CC)$。

#def[推论1]若函数 $f_1 (x),f_2 (x),dots.c,f_m (x)$ 的原函数存在，$k_1,k_2,dots.c,k_m$ 均不为 $0$ 且是常数，那么

$
int sum_(i=0)^m k_i f_i (x) dx = sum_(i=1)^m k_i int f_i (x) dx
$

这又被称为不定积分的 *线性运算法则*。

== 第一换元法（凑微分法）

=== 三角函数积分常用方法

1. 分项积分：利用积化和差、分式分项、$1 = sin^2 x + cos^2 x,sp tan^2 x + 1 = sec^2 x$ 等方法统一变量。

2. 降低幂次：利用倍角公式，如：$cos^2 x = 1/2 (1 + cos 2x),sp sin^2 x = 1/2 (1 - cos 2x)$。

3. 统一函数：利用三角公式、配元换元等方法。

#def[例1]求：$display(int sec^6 x dx)$

#prof[
  $
  int sec^6 x dx
  &= int (tan^2 x + 1)^2 sec^2 x dx
  = int (tan^4 x + 2 tan^2 x + 1)^2 dd(tan x)\
  &= 1/5 tan^5 x + 2/3 tan^3 x + tan x + C
  $
]

=== 有理函数积分常用方法

1. 万能凑幂法：$display(cases(
    display(int f(x^n) x^(n-1) dx = 1/n int f(x^n) dd x^n),
    display(int f(x^n) 1/x dx = 1/n int f(x^n) 1/(x^n) dd x^n), 
  ))$。

2. 对分母因式分解后化成多个小分式分别处理。

#def[例2]求：$display(int (dx)/(x^2 + a^2))$。

#prof[
  $
  int (dx)/(x^2+a^2)
  = 1/(a^2) int (dx)/((x/a)^2 + 1)
  = 1/a int (dd(x/a))/((x/a)^2 + 1)
  = 1/a arctan(x/a) + C
  $
]

#def[例3]求：$display(int (dx)/(x^2 - a^2))$。

#prof[
  $
  int (dx)/(x^2-a^2)
  &= int 1/(2a) ((x+a) - (x-a))/((x+a)(x-a)) dx
  = 1/(2a) (int (dd(x-a))/(x-a) - int (dd(x+a))/(x+a))\
  &= 1/(2a) (ln|x-a| - ln|x+a|) + C
  $
]

== 第二换元法

常用代换：

1. $sqrt(a^2 - x^2) => "令 " x = a cos t$，$sqrt(x^2 + a^2) => "令 " x = a tan t$，$sqrt(x^2 - a^2) => "令 " x = a csc t$。可以脱去根号。



#def[例4]求：$int sqrt(a^2 - x^2) dx sp (a>0)$。

#prof[
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

#def[例5]求：$display(int (dx)/sqrt(x^2 + a^2)) sp (a>0)$。

#prof[
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

#def[例6]求：$display(int dx / sqrt(x^2 - a^2)) sp (a > 0)$。

#prof[
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
  综上，$display(int dx / sqrt(x^2 - a^2)) = ln |x + sqrt(x^2 - a^2)| + C sp (a>0)$。
]

== 分部积分法

$
int u dd v = u v - int v dd u
$

#[def例7]求：$int sqrt(x^2 + a^2) dx sp (a>0)$。

#prof[
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



= 有理函数的积分

== 有理函数

$
R(x) = (P(x))/(Q(x)) = (a_0 x^n + a_1 x^(n-1) + dots.c + a_n)/(b_0 x^m + b_1 x^(m-1) + dots.c + b_m)
$
当 $m<=n$ 时，$R(x)$ 为假分式；当 $m>n$ 时 $R(x)$ 为真分式。
$
"有理函数" = "多项式" + "真分式"
$