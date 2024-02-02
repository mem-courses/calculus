#import "../template.typ": *

#show: project.with(
  title: "Calculus I  Note #5 微积分的应用",
  authors: ((
    name: "memset0",
    email: "memset0@outlook.com",
    phone: "3230104585"
  ),),
  date: "January 7, 2024",
)

#let int = math.integral

= 微积分在几何中的应用

== 曲率

#definition[
  设 $M,N$ 是曲线上邻近的两点，两者沿曲线的距离为 $r$，切线的转角为 $theta$，则将 $display(theta/r)$ 称为这两点的#bb[平均曲率]。
]

#definition[
  曲线 $y=f(x)$ 在某点的#bb[曲率]为 $display(k = (|y''|)/((1+y'^2)^(3/2)))$。
]

#definition[
  曲线 $y=f(x)$ 在某点的#bb[曲率圆半径] $R$ 是 $k$ 的倒数，即 $display(R=1/k)$。
]

== 平面图形面积

#theorem[
  设 $y=f(x)$ 与直线 $x=a,sp x=b$ 及 $x$ 轴围成的曲边梯形的有向面积为 $A$，则
  $ dif A = f(x) dif x sp ==> sp A = int_a^b f(x) dx $
]

#theorem[
  当曲线方程由参数方程 $display(cases(x=phi(t),y=psi(t)))$ 给出时，面积公式可修改为
  $
  A = int_a^b psi(t) dif (phi(t)) = int_(t_1)^(t_2) psi(t) phi'(t) dt
  $
  这里 $a=phi(t_1)$，$b=phi(t_2)$。
]

#theorem[
  设 $phi(theta) in C[alpha,beta],sp phi(theta)>=0$ 与射线 $theta=alpha,sp theta=beta$ 围成的面积 $A$，则在 $[alpha,beta]$ 上任取小区间 $[theta,dif theta]$ 将其近似为三角形可得
  $
  dif A= 1/2 phi^2(theta) dif theta sp ==> sp A = 1/2 int_alpha^beta phi^2(theta) dif theta
  $
]

== 平面曲线的弧长

#definition[
  若在弧 $A B$ 上任作内接折线，当折线段的最大边长 $lambda->0$ 时，折线的长度趋向于一个确定的极限，称为曲线弧 $A B$ 的#bb[弧长]。
]

#lemma[
  任意的光滑（即 $f(x)$ 与 $f'(x)$ 均连续）曲线弧都是可求长的。
]

#lemma(name: "弧微分基本公式")[
  $(dif s)^2 = (dx)^2 + (dy)^2$。这可以用于计算弧长。
]

#theorem[
  曲线 $y=f(x) sp (a<=x<=b)$ 的弧长为
  $
  dif s = sqrt((dx)^2 + (dy)^2) = sqrt(1+y'^2) dx
  sp ==> sp s=int_a^b sqrt(1+f'^2(x)) dx
  $
]

#theorem[
  曲线 $display(cases(x=phi(t),y=psi(t))) sp (alpha<=t<=beta)$ 的弧长为
  $
  dif s = sqrt((dx)^2 + (dy)^2) = sqrt(phi'^2(t) + psi'^2(t)) dt
  sp ==> sp s=int_alpha^beta sqrt(phi'^2(t) + psi'^2(t)) dt 
  $
]

#theorem[
  曲线 $r=r(theta) sp (alpha<=theta<=beta)$（令 $x(theta)=r(theta)cos theta,sp y(theta)=r(theta)sin theta$）的弧长为
  $
  dif s
  =sqrt((x'(theta))^2 + (y'(theta))^2) dif theta
  =sqrt(r^2(theta) + r'^2(theta)) dif theta
  sp==> sp s
  =int_alpha^beta sqrt(r^2(theta) + r'^2(theta)) dif theta
  $
]

== 旋转体的体积

#theorem[
  连续曲线段 $y=f(x) sp (a<=x<=b)$ 绕 $x$ 轴一圈围成的立体体积为：
  $
  V_x = int_a^b pi f^2(x) dx
  $
]

#theorem(name: "柱壳法")[
  平面图形 $D:sp 0<=y<=f(x),sp a<=x<=b$ 绕 $y$ 轴形成的旋转体的体积为：
  $
  V_y = 2 pi int_a^b x f(x) dx
  $
]

== 旋转体的侧面积

#theorem[
  连续曲线段 $y=f(x)$ 且 $f(x)>=0$ 绕 $x$ 旋转一周所得到的旋转体表面积为：
  $
  dif S = 2 pi y dif s
  sp ==> sp
  S = 2 pi int_a^b f(x) sqrt(1 + f'^2(x)) dx
  $
]