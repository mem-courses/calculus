#let prob(bgcolor: luma(248), border: luma(88), text) = block(
  fill: bgcolor,
  width: 100%,
  inset: 0.8em,
  radius: 4pt,
  stroke: border + 0.5pt,
  text
)

#let note(..x) = { prob(bgcolor: rgb(219, 242, 249), border: rgb(51, 166, 184), ..x) }
#let info(..x) = { prob(bgcolor: rgb(210, 247, 253), border: rgb(88, 178, 220), ..x) }
#let warn(..x) = { prob(bgcolor: rgb(254, 234, 207), border: rgb(255, 196, 8), ..x) }
#let prof(..x) = { prob(bgcolor: luma(252), border: luma(135), ..x) }


#let def(x) = { text("【" + x + "】", weight: "bold") }
#let deft(x) = { text("【" + x + "】", weight: "bold", fill: rgb("#FFFFFF")) }
#let bb(x) = { text(x, weight: "bold") }


#let badge(content, fill: rgb("#000000")) = box(
	fill: fill,
	radius: 4pt,
	inset: 1pt,
	outset: 3pt,
	text(
		content,
		weight: "bold",
		size: 10pt,
		fill: rgb("#ffffff")
	)
)

#let ac = badge("Correct", fill: rgb("#25ad40"))
#let pc = badge("Partially Correct", fill: rgb("#01bab2"))
#let wa = badge("Wrong Answer", fill: rgb("#ff4f4f"))
#let un = badge("Unknown", fill: rgb("#5c5c5c"))



#let dp = math.display
#let sp = math.space
#let eps = math.epsilon
#let sim = "~ "
#let st = "s.t. "
#let pm = math.plus.minus
#let mp = math.minus.plus

#let dx = math.upright("d") + math.italic("x")
#let dy = math.upright("d") + math.italic("y")
#let dt = math.upright("d") + math.italic("t")
#let du = math.upright("d") + math.italic("u")
#let dv = math.upright("d") + math.italic("v")
#let Dx = math.Delta + math.italic("x")
#let Dy = math.Delta + math.italic("y")
#let Dt = math.Delta + math.italic("t")
#let Du = math.Delta + math.italic("u")
#let Dv = math.Delta + math.italic("v")
#let ddy = math.attach(math.upright("d"), tr: "2") + math.italic("y")
#let dddy = math.attach(math.upright("d"), tr: "3") + math.italic("y")
#let dny = math.attach(math.upright("d"), tr: "n") + math.italic("y")

#let arccot = math.op("arccot")