// const color
#let color_darknight = rgb("#131A28")
#let color_darkgray = rgb("333333")

//#let accent = oklch(38%, 0.1523, 18.62deg)

// layout utility
#let justify_align(left_body, right_body) = {
  block[
    #left_body
    #box(width: 1fr)[
      #align(right)[
        #right_body
      ]
    ]
  ]
}

#let justify_align_3(left_body, mid_body, right_body) = {
  block[
    #box(width: 1fr)[
      #align(left)[
        #left_body
      ]
    ]
    #box(width: 1fr)[
      #align(center)[
        #mid_body
      ]
    ]
    #box(width: 1fr)[
      #align(right)[
        #right_body
      ]
    ]
  ]
}

#let resume(author: (:), date: "", body) = {
  set document(
    author: author.firstname + " " + author.lastname, 
    title: "resume",
  )
  
  set text(
//    font: ("Apple Garamond"),
    lang: "en",
    size: 11pt,
    fill: color_darknight,
    fallback: false
  )

  set page(
    paper: "a4",
    margin: (left: 0.30in, right: 0.30in, top: 0.20in, bottom: 0.20in),
  )
  
  // set paragraph spacing
  //show par: set block(above: 0.75em, below: 0.75em)
  set par(justify: true)

  set heading(
    numbering: none,
    outlined: false,
  )
  
  let name = {
    align(center)[
      #pad(bottom: 5pt)[
        #block[
          #set text(size: 25pt, style: "normal")
          #text[#author.firstname]
          #text[#author.lastname]
        ]
      ]
    ]
  }

  let positions = {
    set text(
      size: 9pt,
      weight: "regular",
      ligatures: false,
    )
    align(center)[
      #smallcaps[
        #author.positions.join(
          text[#" "#sym.dot.c#" "]
        )
      ]
    ]
  }

  let contacts = {
    set box(height: 11pt)
    set text(size: 11pt)

    //let linkedin_icon = box(image("assets/icons/linkedin.svg"))
    //let portfolio_icon = box(image("assets/icons/link.svg"))
    //let git_icon = box(image("assets/icons/square-github.svg"))
    //let git_icon = box(image("assets/icons/devicons/git.svg"))
    //let email_icon = box(image("assets/icons/square-envelope-solid.svg"))
    //let phone_icon = box(image("assets/icons/square-phone-solid.svg"))
    let separator = box(width: 5pt)
    
    align(center)[
      #block[
        #align(horizon)[
          //#phone_icon
          #box[#text(author.phone)]
          #separator
          //#email_icon
          #box[#link("mailto:" + author.email)[#author.email]]
          #separator
          /*#git_icon
          #box[#link("https://github.com/" + author.github)[#author.github]]
          #separator
          #linkedin_icon
          box[
            #link("https://www.linkedin.com/in/" + author.linkedin)[#author.linkedin]
          ]*/
          //#portfolio_icon
          #box[
            #link("https://" + author.portfolio)[#author.portfolio]
          ]
        ]
      ]
    ] 
  }

  name
  positions
  contacts
  body
}

// general style
#let resume_section(title) = {
  set text(
    size: 16pt,
    weight: "thin",
  )
  align(left)[
    #smallcaps[#title]
    //#box(fill: accent, width: 1fr, line(length: 100%))
    #box(width: 1fr, height: 0.5pt)
  ]
}

#let resume_item(body) = {
  set text(size: 10pt, style: "normal", weight: "light")
  set par(leading: 0.65em)
  body
}

#let resume_time(body) = {
  set text(size: 9pt, weight: "light", style: "normal")
  body
}

#let resume_degree(body) = {
  set text(size: 10pt, weight: "regular")
  smallcaps[#body]
}

#let resume_organization(body) = {
  set text(size: 12pt, style: "normal", weight: "bold")
  body
}

#let resume_location(body) = {
  set text(size: 12pt, style: "normal", weight: "light")
  body
}

#let resume_position(body) = {
  set text(size: 9pt, weight: "regular", ligatures: false,)
  smallcaps[#body]
}

#let resume_category(body) = {
  set text(size: 11pt, weight: "bold")
  body
}

#let resume_gpa(numerator, denominator) = {
  set text(size: 12pt, style: "normal", weight: "light")
  text[Cumulative GPA: #box[#strong[#numerator] / #denominator]]
}

// sections specific components
#let summary_item(body) = {
  pad[
    #resume_item[#body]
  ]
}

#let education_item(organization, degree, gpa, time_frame) = {
  set block(above: 0.7em, below: 0.7em)
  set pad(top: 5pt)

  pad[
    #justify_align[
      #resume_organization[#organization]
    ][
      #gpa
    ]
    #justify_align[
      #resume_degree[#degree]
    ][
      #resume_time[#time_frame]
    ]
  ]
}

#let work_experience_item_header(
  company,
  location,
  position,
  time_frame
) = {
  set block(above: 0.7em, below: 0.7em)
  set pad(top: 5pt)

  pad[
    #justify_align[
      #resume_organization[#company]
    ][
      #resume_location[#location]
    ]
    #justify_align[
      #resume_position[#position]
    ][
      #resume_time[#time_frame]
    ]
  ]
}

#let personal_project_item_header(
  name,
  site,
  git,
  start_time,
  content
) = {
  set block(above: 0.7em, below: 0.7em)
  set pad(top: 5pt)
  set box(height: 10pt)
  //let git_icon = box(image("assets/icons/square-github.svg"))
  
  pad[
    #justify_align[
      #resume_organization[#name]
    ][
      #resume_location[
        #box[
          #text(11pt)[#link(site)[#site]]
        ]
      ]
    ]
    #justify_align[
      #resume_position[
        //#git_icon
        #box[#link("https://github.com/" + git)[#git]]
      ]
    ][
      #resume_time[#start_time]
    ]
  ]
  resume_item[#content]
}

#let skill_item(category, items) = {
  set block(below: 0.65em)
  set pad(top: 5pt)
  
  pad[
    #grid(
      columns: (25fr, 75fr),
      gutter: 10pt,
      align(right)[
        #resume_category[#category]
      ],
      align(left)[
        #set text(size: 12pt, style: "normal", weight: "light")
        #items.map(icon => icon).join(", ")
      ],
    )
  ]
}

#let certification_item(name, date) = {
  set block(above: 0.7em, below: 0.7em)
  set pad(top: 5pt)

  pad[
    #justify_align[
      #resume_organization[#name]
    ][
      #resume_time[#date]
    ]
  ]
}
