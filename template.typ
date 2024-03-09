#let font_song = ("New Computer Modern", "Source Han Serif SC", "Simsun", "STSong")
#let font_fangsong = ("FangSong", "STFangSong")
#let font_hei = ("Source Han Sans SC", "Source Han Sans HW SC", "SimHei", "Microsoft YaHei", "STHeiti")
#let font_kai = ("KaiTi_GB2312", "KaiTi", "STKaiti")

#let definition_counter = state("definition_counter", 0)
#let theorem_counter = state("theorem_counter", 0)
#let problem_counter = state("problem_counter", 0)

#let indent = 2em
#let fake_par = [#text()[#v(0pt, weak: true)];#text()[#h(0em)]]

#let project(
  course: "", title: "", authors: (), date: none, body,
  course_fullname: "", semester: "", course_code: "",
) = {
  if (course_fullname == "") {
    course_fullname = course
  }
  if (course_code != "") {
    course_fullname = course_fullname + " (" + course_code + ")"
  }

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
      locate(loc => {
        if (counter(page).at(loc).at(0) == 1) {
          return none
        }

        set text(font: font_song, 10pt, baseline: 8pt, spacing: 3pt)

        grid(
          columns: (1fr, 1fr, 1fr),
          align(left, course),
          []/* align(center, title)*/,
          align(right, date),
        )
        
        line(length: 100%, stroke: 0.5pt)
      })
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
        align(right, counter(page).display("1/1", both: true)),
      )
    }
  )

  set text(font: font_song, lang: "zh", size: 12pt)
  show math.equation: set text(weight: 400)

  // Set paragraph spacing.
  show par: set block(above: 1.05em, below: 1.05em)

  set heading(numbering: "1.1.")
  set par(leading: 0.75em)

  block(
    below: 4em, stroke: 0.5pt + black, radius: 2pt,
    width: 100%, inset: 1em, outset: -0.2em
  )[
    #text(size: 0.84em)[#grid(
      columns: (auto, 1fr, auto),
      align(left, strong(course_fullname)),
      [],
      align(right, strong(semester)),
    )]
    #v(0.75em)
    #align(center)[#text(size: 1.5em)[#title]]
    #v(0.75em)
    #block(..authors.map(author => align(center)[
      #text(size: 0.84em)[#grid(
        columns: (auto, 1fr, auto),
        align(left, author.name + " (" + author.id +")"),
        [],
        align(right, author.email),
      )]
    ]))
  ]

  // Main body.
  set par(justify: true)

  show "。": "．"

  show heading.where(level: 1): it => [
    #definition_counter.update(x => 0)
    #theorem_counter.update(x => 0)
    #set text(size: 1.2em)
    #it
    #v(0.15em)
  ]

  show heading.where(level: 2): it => [
    #theorem_counter.update(x => 0)
    #it
  ]

  set par(first-line-indent: indent)
  show heading: it => {text()[#v(1.6em, weak: true)];it;fake_par}

  body
}

#import "./functions.typ": *

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
];fake_par}

#let theorem(it, name: "", tag: "定理") = {block(width: 100%)[
  #theorem_counter.update(x => (x + 1))
  #strong[
    #hei[#tag]#locate(loc => [#counter(heading).at(loc).at(0).#counter(heading).at(loc).at(1)]).#theorem_counter.display()
  ]
  #if (name != "") [(#kai[#name])]
  #math.space#it
];fake_par}
#let lemma(it, name: "") = theorem(it, name: name, tag: "引理")
#let corollary(it, name: "") = theorem(it, name: name, tag: "推论")
#let property(it, name: "") = theorem(it, name: name, tag: "性质")
#let conclusion(it, name: "") = theorem(it, name: name, tag: "结论")

#let problem(it, name: "") = {block(width: 100%)[
  #problem_counter.update(x => (x + 1))
  #strong[
    #hei[例]#problem_counter.display()
  ]
  #if (name != "") [(#kai[#name])]
  #math.space#it
];fake_par}
#let solution(it, tag: "解") = {block(width: 100%)[
  #strong[#hei[#tag:]]
  #math.space#it
];fake_par}

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
  #let fontcolor = color.darken(0%)
  #set text(fill: fontcolor)
  #set par(first-line-indent: 0em)
  #it
];fake_par}

#let example(it) = named_block(it, name: "Example", color: gray.darken(60%))
#let proof(it) = named_block(it, name: "Proof", color: rgb(120, 120, 120))
#let abstract(it) = named_block(it, name: "Abstract", color: rgb(0, 133, 143))
#let summary(it) = named_block(it, name: "Summary", color: rgb(0, 133, 143))
#let info(it) = named_block(it, name: "Info", color: rgb(68, 115, 218))
#let note(it) = named_block(it, name: "Note", color: rgb(68, 115, 218))
#let tip(it) = named_block(it, name: "Tip", color: rgb(0, 133, 91))
#let hint(it) = named_block(it, name: "Hint", color: rgb(0, 133, 91))
#let success(it) = named_block(it, name: "Success", color: rgb(62, 138, 0))
#let help(it) = named_block(it, name: "Help", color: rgb(153, 110, 36))
#let warning(it) = named_block(it, name: "Warning", color: rgb(184, 95, 0))
#let attention(it) = named_block(it, name: "Attention", color: rgb(216, 58, 49))
#let caution(it) = named_block(it, name: "Caution", color: rgb(216, 58, 49))
#let failure(it) = named_block(it, name: "Failure", color: rgb(216, 58, 49))
#let danger(it) = named_block(it, name: "Danger", color: rgb(216, 58, 49))
#let error(it) = named_block(it, name: "Error", color: rgb(216, 58, 49))
#let bug(it) = named_block(it, name: "Bug", color: rgb(204, 51, 153))
#let quote(it) = named_block(it, name: "Quote", color: rgb(132, 90, 231))
#let cite(it) = named_block(it, name: "Cite", color: rgb(132, 90, 231))