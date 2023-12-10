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

== 不定积分的性质

根据不定积分的定义，有

#def[性质1]$dd/dx int f(x) dx = f(x)$ 或 $dd int f(x) dx = f(x) dx$

#def[性质2]$int f'(x) dx = f(x) + C$ 或 $int dd f(x) = f(x) + C$

#def[性质3]若 $f(x)$，$g(x)$ 的原函数都存在，则 $int (f(x) pm g(x)) dx = int f(x) dx + int g(x) dx$。

#def[性质4]若 $f(x)$ 的原函数存在，则 $int alpha f(x) dx = alpha int f(x) dx,sp (alpha != 0,sp alpha in CC)$。

#def[推论1]若函数 $f_1(x),f_2(x),dots.c,f_m(x)$ 的原函数存在，$k_1,k_2,dots.c,k_m$ 均不为 $0$ 且是常数，那么

$
int sum_(i=0)^m k_i f_i(x) dx = sum_(i=1)^m k_i int f_i(x) dx
$

这又被称为不定积分的 *线性运算法则*。

== 第一换元法（凑微分法）

#def[例1]求：$display(int (dx)/(x^2 + a^2))$。

#prof[
  $
  int (dx)/(x^2+a^2)
  = 1/(a^2) int (dx)/((x/a)^2 + 1)
  = 1/a int (dd(x/a))/((x/a)^2 + 1)
  = 1/a arctan(x/a) + C
  $
]

#def[例2]求：$display(int (dx)/(x^2 - a^2))$。

#prof[
  $
  int (dx)/(x^2-a^2)
  &= int 1/(2a) ((x+a) - (x-a))/((x+a)(x-a)) dx
  = 1/(2a) (int (dd(x-a))/(x-a) - int (dd(x+a))/(x+a))\
  &= 1/(2a) (ln|x-a| - ln|x+a|) + C
  $
]

#note[
  特别地，可以将这两道例题的结论作为公式使用：
  $
  int (dx)/(x^2+2x-1)
  = int (dx)/((x+1)^2 - (sqrt(2))^2)
  = 1/(2 sqrt(2)) ln lr("|" (x+1-sqrt(2))/(x+1+sqrt(2)) "|") + C
  $
]

#def[例3]求：$display(int sec^6 x dx)$

#prof[
  $
  int sec^6 x dx
  &= int (tan^2 x + 1)^2 sec^2 x dx
  = int (tan^4 x + 2 tan^2 x + 1)^2 dd(tan x)\
  &= 1/5 tan^5 x + 2/3 tan^3 x + tan x + C
  $
]