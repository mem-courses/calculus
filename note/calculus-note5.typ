#import "../template.typ": *

#show: project.with(
  title: "Calculus Note #5",
  authors: ((
    name: "memset0",
    email: "memset0@outlook.com",
    phone: "3230104585"
  ),),
  date: "January 7, 2024",
)

#let int = math.integral

= 微积分的应用

== 曲率

设 $M,N$ 是曲线上邻近的两点，两者沿曲线的距离为 $r$，切线的转角为 $theta$，则将 $display(theta/r)$ 称为这两点的平均曲率．

对于曲线 $y=f(x)$，在某点的曲率公式为：
$
k = (|y''|)/((1+y'^2)^(3/2))
$

在某点的曲率圆半径 $R$ 是 $k$ 的倒数，即 $display(R=1/k)$．

== 平面图形面积

=== 直角坐标情形

设 $y=f(x)$ 与直线 $x=a,sp x=b$ 及 $x$ 轴围成的曲边梯形的有向面积为 $A$，则
$
dif A = f(x) dif x sp ==> sp A = int_a^b f(x) dx
$
当曲线方程由参数方程 $display(cases(x=phi(t),y=psi(t)))$ 给出时，面积公式可修改为
$
A = int_a^b psi(t) dif (phi(t)) = int_(t_1)^(t_2) psi(t) phi'(t) dt
$
这里满足 $a=phi(t_1),sp b=phi(t_2)$

=== 极坐标情形

设 $phi(theta) in C[alpha,beta],sp phi(theta)>=0$ 与射线 $theta=alpha,sp theta=beta$ 围成的面积 $A$，则在 $[alpha,beta]$ 上任取小区间 $[theta,dif theta]$ 将其近似为三角形可得
$
dif A= 1/2 phi^2(theta) dif theta sp ==> sp A = 1/2 int_alpha^beta phi^2(theta) dif theta
$

== 平面曲线的弧长

#def[定义]若在弧 $A B$ 上任作内接折线，当折线段的最大边长 $lambda->0$ 时，折线的长度趋向于一个确定的极限，称为曲线弧 $A B$ 的弧长。

#def[定理]任意的光滑（要求 $f(x)$ 及 $f'(x)$ 均连续）曲线弧都是可求长的。

可以利用弧微分基本公式 $(dif s)^2 = (dx)^2 + (dy)^2$ 计算。

1. 曲线 $y=f(x) sp (a<=x<=b)$ 的弧长为
$
dif s = sqrt((dx)^2 + (dy)^2) = sqrt(1+y'^2) dx
sp ==> sp s=int_a^b sqrt(1+f'^2(x)) dx
$

2. 曲线 $display(cases(x=phi(t),y=psi(t))) sp (alpha<=t<=beta)$ 的弧长为
$
dif s = sqrt((dx)^2 + (dy)^2) = sqrt(phi'^2(t) + psi'^2(t)) dt
sp ==> sp s=int_alpha^beta sqrt(phi'^2(t) + psi'^2(t)) dt 
$

3. 曲线 $r=r(theta) sp (alpha<=theta<=beta)$（令 $x(theta)=r(theta)cos theta,sp y(theta)=r(theta)sin theta$）的弧长为
$
dif s
=sqrt((x'(theta))^2 + (y'(theta))^2) dif theta
=sqrt(r^2(theta) + r'^2(theta)) dif theta
sp==> sp s
=int_alpha^beta sqrt(r^2(theta) + r'^2(theta)) dif theta
$