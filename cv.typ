#set page(
  paper: "us-letter",
  margin: (
    x: 0.5in,
    y: 0.5in,
  ),
)

#set text(
  font: "Arial",
  size: 10pt,
  fill: rgb("#141414"),
)

#set par(
  justify: false,
  leading: 0.45em,
)

#set list(
  indent: 1em,
  body-indent: 0.5em,
  spacing: 0.15em,
)

#let dark-grey = rgb("#4d4d4d")

// ----- Helpers -----

#let section-title(title) = {
  text(size: 12pt, weight: "bold", title)
  v(-0.75em)
  line(length: 100%, stroke: 0.5pt + black)
  v(-0.4em)
}

#let resume-section(title, body) = {
  section-title(title)
  block(inset: (left: 0in, top: 0pt, bottom: 0pt))[#body]
}

#let experience(
  date,
  title,
  org: none,
  body: none,
) = {
  grid(
    columns: (1fr, auto),
    text(weight: "bold")[#title #org],
    align(right)[
      #text(size: 9pt, fill: dark-grey)[#date]
    ],
  )
  v(-0.5em)

  // if org != none {
  //   v(-0.2em)
  //   text(size: 9pt, style: "italic")[#org]
  // }

  if body != none {
    v(-0.2em)
    body
  }

  v(0.1em)
}

#let project(
  date,
  title,
  link,
  body: none,
) = {
  grid(
    columns: (1fr, auto),
    column-gutter: 0.5em,
    text(weight: "bold")[#title #link],
    align(right)[
      #text(size: 9pt, fill: dark-grey)[#date]
    ],
  )
  v(-0.5em)

  // v(-0.2em)
  // text(size: 9pt, style: "italic")[#link]

  if body != none {
    v(-0.2em)
    body
  }

  v(0.1em)
}

#let award(year, title, source) = {
  grid(
    columns: (0.8in, 1fr, auto),
    column-gutter: 0.35em,
    text(size: 9pt, fill: dark-grey)[#year],
    text(weight: "bold")[#title],
    text(size: 9pt, fill: dark-grey)[#source],
  )
  v(-0.5em)
}

#let bullets(..body) = {
  list(
    marker: [•],
    spacing: 0.5em,
    ..body,
  )
}


// ==========================================
// RESUME
// ==========================================

// ----- Heading -----

#align(center)[
  #text(size: 21pt, weight: "bold")[Minh Nguyen]
  #v(-1.5em)
  #text(size: 9pt)[
    408.752.1082
    #h(0.45em) | #h(0.45em)
    #link("mailto:mtn43@cornell.edu")[mtn43\@cornell.edu]
    #h(0.45em) | #h(0.45em)
    #link("https://legitminh.github.io")[legitminh.github.io]
    #h(0.45em) | #h(0.45em)
    USA
  ]
]

#v(0.1em)


// ----- Summary -----

#resume-section("SUMMARY")[
  #list(
    marker: none,
    indent: 0pt,
    body-indent: 0pt,
    [Inquisitive student with experience in algorithmic programming and SWE aiming to explore the frontier of computation.]
  )
]


// ----- Education -----

#resume-section("EDUCATION")[

  #experience(
    "August 2026 - Present",
    "Cornell University",
    org: "David A. Duffield College of Engineering",
    body: bullets(
      [Courses: OOD and Data Structures (Honors), Mathematical Foundations of Computing, Linear Algebra]
    ),
  )

  #experience(
    "June 2025 - August 2025",
    "Carnegie Mellon",
    org: "National High School Game Academy",
    body: bullets(
      [
        Won Mass Appeal award with original game developed in 3 weeks
        *\(minhn.itch.io/journeytothenest\)*
        as PM on a team of 6.
      ]
    ),
  )

  #experience(
    "August 2024 - May 2026",
    "Georgia Institute of Technology",
    body: bullets(
      [
        All A's in Multi-variable Calculus, Differential Equations,
        Intro to Computing, Object-Oriented Programming.
      ]
    ),
  )

  #experience(
    "August 2021 - May 2026",
    "Gwinnett School of Mathematics, Science, and Technology",
    body: bullets(
      [AP score of 5: CSA, BC, Physics C Mechanics, Physics E&M, Chemistry],
      [Weighted GPA: 4.41 / 4.0. All A's. SAT: 1570 / 1600. PSAT: 1520 / 1520],
    ),
  )
]


// ----- Experiences -----

#resume-section("EXPERIENCE")[

  #experience(
    "June 2025 - May 2026",
    "Intern, Lead Game Developer",
    org: "Dr. Hatfield, University of South Carolina",
    body: bullets(
      [
        Demo game (*roblox.com/games/93436821409832*) to *30+* students.
      ],
      [
        Ship on deadline in *2* months by virtually tracking *60+* tasks
        and host meetings.
      ],
      [
        Implemented data-collection backend to research interactive education.
      ],
      // [
      //   Authored codebase and onboarding documentation.
      // ]
    ),
  )

  #experience(
    "August 2025 - May 2026",
    "Intern, Software Developer",
    org: "Catchbackcards.com",
    body: bullets(
      [
        Developed full-stack mobile app from scratch with authentication
        backend using Supabase and Expo.
      ],
    ),
  )

  #experience(
    "May 2025 - May 2026",
    "Founder, Project Manager",
    org: "Computer Science Honor Society (CSHS)",
    body: bullets(
      [
        Coordinated *3* project teams winning Samsung Solve for Tomorrow *\$1,000*
        Promising STEM Innovation Award.
      ],
    ),
  )

  #experience(
    "August 2022 - May 2026",
    "Vice-President, Web Design Instructor",
    org: "Computer Science Club",
    body: bullets(
      [
        Hosted bi-weekly meetings educating *20+* peers Git, HTML,
        JavaScript, React through building personal websites.
      ],
      [
        Organized *7+* events, recruited *120+* members,
        and raised *\$241* for CS initiatives.
      ],
    ),
  )
]


// ----- Projects -----

#resume-section("PROJECTS")[

  #project(
    "September 2025 - April 2026",
    "Tic-Tac-Toe workshop",
    "github.com/legitminh/TicTacToeAgent",
    body: bullets(
      [
        Trained a reinforcement learning agent from scratch to reach
        *100%* accurate play after *200,000* episodes.
      ],
      [
        Teach *15+* club members q-learning, backpropagation,
        and gradient descent.
      ],
    ),
  )

  #project(
    "November 2025 - December 2025",
    "FocusFlow | HackGwinnett 1st place",
    "github.com/legitminh/FocusFlow",
    body: bullets(
      [
        Developed eye fatigue monitoring app in a 6-hour hackathon with
        team of 3
      ],
      [
        Responsible for core optical recognition algorithm.
      ]
    ),
  )

  #project(
    "January 2025",
    "AstroFest",
    "github.com/legitminh/AstroFest",
    body: bullets(
      [
        Developed multiplayer combat game with original
        music composition and procedurally generated battlefields.
      ],
    ),
  )

  #project(
    "May 2023 - Present",
    "Typing Piano",
    "github.com/legitminh/TypingPiano",
    body: bullets(
      [
        Programmed a rhythm game that procedurally generates levels
        from MIDI and a custom music representation.
      ],
    ),
  )
]


// ----- Skills -----

#resume-section("SKILLS")[
  #text(weight: "bold")[Languages]: Java, C++, C\#, Python, Typescript, HTML, CSS

  #v(-0.5em)
  #text(weight: "bold")[Tools]: Linux, Docker, Numpy, Git, Perforce, React, Unity, Linear
  #v(-0.5em)

  #text(weight: "bold")[Human Languages]:
    align(right)[Vietnamese C2, Chinese B1, Spanish A2.],
  
]


// ----- Awards -----

#resume-section("AWARDS")[

  #award(
    "2026",
    "Bridges Scholarship (61 admitted students)",
    "Duffield College of Engineering",
  )

  #award(
    "2026",
    "Hunter R. Rawlings III Cornell Presidential Research Scholarship",
    "Cornell University",
  )

  #award(
    "2026",
    "Stamp President Scholarship Finalist (150 from 46,000 applicants)",
    "Georgia Institute of Technology",
  )

  #award(
    "2026",
    "Jack Kent Cooke semifinalist (568 from 6,500 applicants)",
    "Jack Kent Cooke Foundation",
  )

  #award(
    "2025",
    "National Merit Finalist (15,000 students nationwide, class of 2026)",
    "National Merit Scholarship Corp.",
  )

  #award(
    "2025",
    "Non-trivial Research Foundations (~1% acceptance rate)",
    "Non-trivial",
  )

  #award(
    "2024-2025",
    "CyberQuest 1st place, CodeQuest 2nd place",
    "Lockheed Martin",
  )

  #award(
    "2024",
    "USA Computing Olympiad Silver Medalist",
    "USACO",
  )

  #award(
    "2024",
    "Presidential Service Award Gold (300+ volunteering hours total)",
    "AmeriCorps",
  )

  #award(
    "2023",
    "Outstanding Freshman in the Field of Computer Science Award (one Class of 2026 student)",
    "GSMST",
  )
]