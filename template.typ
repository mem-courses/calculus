// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(title: "", authors: (), date: none, body) = {
  // Set the document's basic properties.
  set document(author: authors.map(a => a.name), title: title)
  set page(
    paper: "a4",
    margin: (left: 15mm, right: 15mm, top: 20mm, bottom: 20mm),
    numbering: "1",
    number-align: center,
  )

  set text(font: ("New Computer Modern", "Source Han Serif SC", "Simsun"), lang: "zh", size: 12.5pt)
  show math.equation: set text(weight: 400)

  // Set paragraph spacing.
  show par: set block(above: 1.2em, below: 1.2em)

  set heading(numbering: "1.1)")
  set par(leading: 0.75em)

  // Title row.
  align(center)[
    #block(text(weight: 700, 1.75em, title))
    #v(1.2em, weak: true)
    #date
  ]

  // Author information.
  pad(
    top: 0.8em,
    bottom: 2.8em,
    x: 2em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center)[
        *#author.name* \
        #author.email \
        #author.phone
      ]),
    ),
  )

  // Main body.
  set par(justify: true)

  body
}

#import "@preview/xarrow:0.1.1": xarrow

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

#let cas(..args) = math.cases(..args)
#let dxarrow(..args) = xarrow(math.display(..args))

#let dp = math.display
#let sp = math.space
#let eps = math.epsilon
#let sim = "~ "
#let st = "s.t. "
#let pm = math.plus.minus
#let mp = math.minus.plus