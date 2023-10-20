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

#let prob(text) = block(
  fill: luma(245),
  width: 100%,
  inset: 12pt,
  radius: 4pt,
  stroke: luma(50) + 0.5pt,
  text
)

#let cas(..args) = math.cases(..args)
#let dxarrow(..args) = xarrow(math.display(..args))

#let dp = math.display
#let sp = math.space
#let eps = math.epsilon
#let sim = "~ "