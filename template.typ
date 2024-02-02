#let font_song = ("New Computer Modern", "Source Han Serif SC", "Simsun", "STSong")
#let font_fangsong = ("FangSong", "STFangSong")
#let font_hei = ("Source Han Sans SC", "Source Han Sans HW SC", "SimHei", "Microsoft YaHei", "STHeiti")
#let font_kai = ("KaiTi_GB2312", "KaiTi", "STKaiti")

#let definition_counter = state("definition_counter", 0)
#let theorem_counter = state("theorem_counter", 0)

#let project(title: "", authors: (), date: none, body) = {
  // Set the document's basic properties.
  set document(author: authors.map(a => a.name), title: title)
  set page(
    paper: "a4",
    margin: (left: 12mm, right: 12mm, top: 16mm, bottom: 16mm),
    numbering: "1",
    number-align: center,
  )

  set text(font: font_song, lang: "zh", size: 12pt)
  show math.equation: set text(weight: 400)

  // Set paragraph spacing.
  show par: set block(above: 1.2em, below: 1.2em)

  set heading(numbering: "1.1)")
  set par(leading: 0.75em)

  // Title row.
  align(center)[
    #block(text(weight: 700, 1.5em, title))
    #v(1.1em, weak: true)
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

  show "。": "．"

  show heading.where(level: 1): it => [
    #definition_counter.update(x => 0)
    #theorem_counter.update(x => 0)
    #it
  ]

  body
}

#import "./global.typ": *

#let song(it) = text(it, font: font_song)
#let fangsong(it) = text(it, font: font_fangsong)
#let hei(it) = text(it, font: font_hei)
#let kai(it) = text(it, font: font_kai)

#let bb = (it) => [#strong[#it]]

#let definition(it) = [
  #definition_counter.update(x => (x + 1))
  #strong[
    #hei[定义]#locate(loc => [#counter(heading).at(loc).at(0)]).#definition_counter.display()
  ]
  #math.space#it
]

#let theorem(it, name: "") = [
  #theorem_counter.update(x => (x + 1))
  #strong[
    #hei[定理]#locate(loc => [#counter(heading).at(loc).at(0)]).#theorem_counter.display()
  ]
  #if (name != "") [#kai[(#name)]]
  #math.space#it
]
#let lemma(it, name: "") = [
  #theorem_counter.update(x => (x + 1))
  #strong[
    #hei[引理]#locate(loc => [#counter(heading).at(loc).at(0)]).#theorem_counter.display()
  ]
  #if (name != "") [#kai[(#name)]]
  #math.space#it
]
#let corollary(it, name: "") = [
  #theorem_counter.update(x => (x + 1))
  #strong[
    #hei[推论]#locate(loc => [#counter(heading).at(loc).at(0)]).#theorem_counter.display()
  ]
  #if (name != "") [#kai[(#name)]]
  #math.space#it
]