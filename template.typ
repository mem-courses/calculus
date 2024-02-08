#let font_song = ("New Computer Modern", "Source Han Serif SC", "Simsun", "STSong")
#let font_fangsong = ("FangSong", "STFangSong")
#let font_hei = ("Source Han Sans SC", "Source Han Sans HW SC", "SimHei", "Microsoft YaHei", "STHeiti")
#let font_kai = ("KaiTi_GB2312", "KaiTi", "STKaiti")

#let definition_counter = state("definition_counter", 0)
#let theorem_counter = state("theorem_counter", 0)
#let problem_counter = state("problem_counter", 0)

#let reset_indent = [#text()[#v(0pt, weak: true)];#text()[#h(0em)]]

#let project(course: "", title: "", authors: (), date: none, body) = {
  // 文档基本信息
  set document(author: authors.map(a => a.name), title: title)
  set page(
    paper: "a4",
    margin: (left: 12mm, right: 12mm, top: 20mm, bottom: 20mm),
    numbering: "1",
    number-align: center,
  )
  
  // 页眉
  set page(
    header: {
      set text(font: font_song, 10pt, baseline: 8pt, spacing: 3pt)

      grid(
        columns: (1fr, 1fr, 1fr),
        align(left, course),
        align(center, title),
        align(right, date),
      )
      
      line(length: 100%, stroke: 0.5pt)
    }
  )

  // 页脚
  set page(
    footer: {
      set text(font: font_song, 10pt, baseline: 8pt, spacing: 3pt)
      set align(center)
      
      grid(
        columns: (1fr, 1fr),
        align(left, authors.map(a => a.name).join(", ")),
        align(right, counter(page).display("1")),
      )
    }
  )

  set text(font: font_song, lang: "zh", size: 12pt)
  show math.equation: set text(weight: 400)

  // Set paragraph spacing.
  show par: set block(above: 1.2em, below: 1.2em)

  set heading(numbering: "1.1)")
  set par(leading: 0.75em)

  // Title row.
  align(center)[
    #block(text(weight: 700, 1.5em, [#title]))
    #v(1.1em, weak: true)
  ]

  // Author information.
  pad(
    top: 0.8em,
    bottom: 0.8em,
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

  show heading.where(level: 2): it => [
    #theorem_counter.update(x => 0)
    #it
  ]

  set par(justify: true, first-line-indent: 2em)
  show heading: it => {text()[#v(1.6em, weak: true)];it;reset_indent}

  body
}

#import "./global.typ": *

#let song(it) = text(it, font: font_song)
#let fangsong(it) = text(it, font: font_fangsong)
#let hei(it) = text(it, font: font_hei)
#let kai(it) = text(it, font: font_kai)

#let bb = (it) => [#strong[#it]]

#let definition(it) = {block(width: 100%)[
  #definition_counter.update(x => (x + 1))
  #strong[
    #hei[定义]#locate(loc => [#counter(heading).at(loc).at(0)]).#definition_counter.display()
  ]
  #math.space#it
];reset_indent}

#let theorem(it, name: "", tag: "定理") = {block(width: 100%)[
  #theorem_counter.update(x => (x + 1))
  #strong[
    #hei[#tag]#locate(loc => [#counter(heading).at(loc).at(0).#counter(heading).at(loc).at(1)]).#theorem_counter.display()
  ]
  #if (name != "") [(#kai[#name])]
  #math.space#it
];reset_indent}
#let lemma(it, name: "") = theorem(it, name: name, tag: "引理")
#let corollary(it, name: "") = theorem(it, name: name, tag: "推论")
#let property(it, name: "") = theorem(it, name: name, tag: "性质")

#let problem(it, name: "") = {block(width: 100%)[
  #problem_counter.update(x => (x + 1))
  #strong[
    #hei[例]#problem_counter.display()
  ]
  #if (name != "") [(#kai[#name])]
  #math.space#it
];reset_indent}
#let solution(it, tag: "解") = {block(width: 100%)[
  #strong[#hei[#tag:]]
  #math.space#it
];reset_indent}

#let named_block(it, name: "", color: red, inset: 11pt) = {block(
  below: 1em, stroke: 0.5pt + color, radius: 3pt,
  width: 100%, inset: inset
)[
  #place(
    top + left,
    dy: -6pt - inset, // Account for inset of block
    dx: 8pt - inset,
    block(fill: white, inset: 2pt)[
			#set text(font: "Noto Sans", fill: color)
			#strong[#name]
		]
  )
  #let fontcolor = color.darken(20%)
  #set text(fill: fontcolor)
  #set par(justify: true, first-line-indent: 0em)
  #it
];reset_indent}

#let proof(it) = named_block(it, name: "Proof", color: gray.darken(30%))
#let info(it) = named_block(it, name: "Info", color: gray)
#let note(it) = named_block(it, name: "Note", color: blue)
#let warning(it) = named_block(it, name: "Warning", color: red)
#let example(it) = named_block(it, name: "Example", color: gray.darken(60%))
#let prof(it) = proof(it)
