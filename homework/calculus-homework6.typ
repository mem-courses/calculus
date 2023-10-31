#import "../template.typ": *

#show: project.with(
  title: "Calculus Homework #6",
  authors: ((
    name: "Yulun Wu (#47)",
    email: "memset0@outlook.com",
    phone: "3230104585"
  ),),
  date: "October 31, 2023",
)

= P98 习题2-1 12
#prob[求导数：$display(y = 1/x^2 + root(3,x^2) + 1/root(3,x) + root(3,2))$]
$ y'
= (x^(-2) + x^(2/3) + x^(-1/3) + root(3,2))'
= -2 x^(-3) + 2/3 x^(-1/3) - 1/3 x^(-4/3)
= - 2/(x^3) + 2/(3 root(3,x)) - 1/(3 x root(3,x))
$

= P98 习题2-1 15
#prob[求导数：$display(y = x^2 sin x + 2 x sin x - cos pi / 5)$]
$ y'
= 2x sin x + x^2 cos x + 2 sin x + 2x cos x
= 2 (x+1) sin x + x(x+2)cos x
$

= P99 习题2-1 18
#prob[求导数：$display(y = sqrt(x)/(sqrt(x)+1))$]
$ y'
= ((sqrt(x))' (sqrt(x) + 1) - (sqrt(x) + 1)' sqrt(x))/((sqrt(x) + 1)^2)
= (1/(2 sqrt(x)) (sqrt(x) + 1) - 1/(2 sqrt(x)) sqrt(x))/(x + 2 sqrt(x) + 1)
= 1/(2 x sqrt(x) + 4 x + 2 sqrt(x))
$

= P99 习题2-1 21
#prob[求导数：$display(y = 1/(1+sqrt(x)) - 1/(1-sqrt(x)))$]
$ y'
&= frac(-(1+sqrt(x))', (1+sqrt(x))^2) - frac(-(1-sqrt(x))', (1-sqrt(x))^2)
= -1/(2 sqrt(x)) (1/(1+sqrt(x))^2 + 1/(1-sqrt(x))^2)\
&= - frac((1+sqrt(x))^2 + (1-sqrt(x))^2, 2 (1-x)^2 sqrt(x))
= - frac(x+1, (1-x)^2 sqrt(x))
$

= P99 习题2-1 24
#prob[求导数：$display(y = frac(sin x - cos x, sin x + cos x))$]
$ y'
& = frac(
	(sin x - cos x)' (sin x + cos x) - (sin x + cos x)' (sin x - cos x),
	(sin x + cos x)^2)\
&= frac(
	(cos x + sin x) (sin x + cos x) - (cos x - sin x) (sin x - cos x),
	sin^2 x + 2 sin x cos x + cos^2 x)\
&= 2/(1 + sin 2x)
$

= P99 习题2-1 27
#prob[求导数：$display(y = (x^3 - 1/x^3 + 3)^4)$]
$ y'
= 4 (x^3 - 1/x^3 + 3)^4 (x^3 - 1/x^3 + 3)'
= 12 (x^3 - 1/x^3 + 3)^4 (x^2 + 1/x^4)
$

= P99 习题2-1 30
#prob[求导数：$display(y = (3-2 sin x)^5)$]
$ y'
= 5 (3 - 2 sin x)^4 (3 - 2 sin x)'
= -10 cos x (3 - 2 sin x)^4
$

= P99 习题2-1 33
#prob[求导数：$display(y = sqrt(sin x))$]
$ y' = (cos x)/(2 sqrt(sin x)) $

= P99 习题2-1 36
#prob[求导数：$display(y = sin^2 x/2 + cos^2 x/2)$]
$ y'
= 2 sin x/2 (sin x/2)' + 2 cos x/2 (cos x/2)'
= 2 sin x/2 (1/2 cos x/2) + 2 cos x/2 (-1/2 sin x/2)
= 0
$

= P99 习题2-1 39
#prob[求导数：$display(y = (frac(1 - cos x, 1 + cos x))^3)$]
$ y'
&= 3(frac(1-cos x,1+cos x))^2 (frac(1-cos x,1+cos x))'\
&= 3(frac(1-cos x,1+cos x))^2 frac((1-cos x)'(1+cos x)-(1+cos x)'(1-cos x),(1+cos x)^2)\
&= frac(6 sin x (1-cos x)^2,(1+cos x)^4)
$

= P99 习题2-1 42
#prob[求导数：$display(y = x sec^2 x - tan 2x)$]
= P99 习题2-1 45
#prob[求导数：$display(y = sqrt(x sin 2x))$]
$ y'
= 1/(2 sqrt(x sin 2x)) (x sin 2x)'
= (sin 2x + 2 x cos 2x)/(2 sqrt(x sin 2x))
$

= P99 习题2-1 48
#prob[求导数：$display(y = e^(2x + 3))$]
$ y'
= e^(2x + 3) (2x + 3)'
= 2 e^(2x + 3)
$

= P99 习题2-1 51
#prob[求导数：$display(y = cos sqrt(x) + sqrt(cos x) + sqrt(cos sqrt(x)))$]
$ y'
&= - sin sqrt(x) (sqrt(x))' + 1/(2 sqrt(cos x)) (cos x)' + 1/(2 sqrt(cos sqrt(x))) (cos sqrt(x))'\
&= -(sin sqrt(x))/(2 sqrt(x)) + (sin x)/(2 sqrt(cos x)) - (sin sqrt(x))/(4 sqrt(x cos sqrt(x)))\
$

= P99 习题2-1 54
#prob[求导数：$display(y = ln (sec x + tan x))$]
= P99 习题2-1 57
#prob[求导数：$display(y = sqrt(1 + (ln x)^2))$]
= P99 习题2-1 60
#prob[求导数：$display(y = arcsin 1/x)$]
= P99 习题2-1 63
#prob[求导数：$display(y = e^x sqrt(1 - e^(2x)) + arcsin e^x)$]
= P100 习题2-1 66
#prob[求导数：$display(y = e^sqrt(ln x))$]
= P100 习题2-1 69
#prob[求导数：$display(y = x^x + x^(1/x))$]
= P100 习题2-1 72
#prob[设 $display(y = arctan phi(x)/psi(x))$，求 $("d" y)/("d" x)$。]
= P100 习题2-1 81(1)
#prob[求 $display(y = sin x)$ 在点 $display(x = pi/4)$ 的切线方程与法线方程。]
= P100 习题2-1 81(3)
#prob[求 $display(e^(x y) - x^2 + y^3 = 0)$ 在点 $display(x = 0)$ 的切线方程与法线方程。]
= P100 习题2-1 82(1)
#prob[求导数：$display(y = |x^3|)$]
= P100 习题2-1 82(2)
#prob[求导数：$display(y = x |x(x-1)|)$]
= P100 习题2-1 83(1)
#prob[求导数：$display(f(x) = cases(
	x^3\,quad& x>0,
	x^2\,quad& x<=0,
))$]
= P100 习题2-1 83(2)
#prob[求导数：$display(f(x) = cases(
	display(x^2 cos 1/x)\,quad& x!=0,
	0\,quad& x=0,
))$]