#import "template.typ": *

#let today = datetime.today()

#show: resume.with(
  author: (
      firstname: "Brad", 
      lastname: "White",
      email: "brad@bwht.dev", 
      phone: "(+1) 804-516-5072",
      github: "bwht_dev",
      linkedin: "bwht",
      portfolio: "bwht.dev",
      positions: (
        "Software Engineer",
        "Full Stack",
      )
  ),
  date: today.display("[month repr:long] [day], [year]")
)

#resume_section("Summary")

#summary_item(
  [_Full-stack programmer based out of Richmond, VA with 2 and 1/2 years of professional software development experience and over a decade of experience writing/building web apps. Seeking a remote junior to mid level software engineering role._]
)

#resume_section("Skills")

#skill_item(
  "Programming Languages",
  (
    ("ts", "TypeScript"),
    ("html", "HTML5"),
    ("css", "CSS3"),
    ("postgresql", "SQL"),
    ("java", "Java"),
    ("go", "Golang"),
    ("ruby", "Ruby"),
    ("nix", "Nix")
  )
)

#skill_item(
  "Frameworks",
  (
    ("tailwindcss", "TailwindCSS"),
    ("react", "React"),
    ("angular", "Angular"),
    ("rails", "Rails"),
    ("spring", "Spring")
  )
)

#skill_item(
  "Developer Tools",
  (
    ("git", "Git"),
    ("bash", "Bash"),
    ("neovim", "NeoVim"),
    ("pnpm", "PNPM"),
    ("linux", "Linux"),
    ("nix", "NixOS"),
    ("docker", "Docker"),
    ("nginx", "NGINX")
  )
)

/*#resume_section("Education")

#education_item(
  //"organization, degree, gpa, time_frame"
  "Recurse Center",
  "",
  "",
  "2025"
)*/

#resume_section("Experience")

#work_experience_item_header(
  "Akytech Consulting, ATIS (Army Training Information System)",
  "Fort Eustis, VA (Remote)",
  "Junior Software Developer",
  "Jan. 2023 - Aug. 2025",
)

#resume_item[
  - Developed and maintained 3+ Army training applications used by more than 200,000 monthly visitors, including: #strong[#link("https://public.tag.army.mil/catalog")[Central Army Registry (CAR)]], #strong[#link("https://public.tag.train.army.mil/")[US Army TRADOC Application Gateway (TAG)]], #strong[#link("https://rdl.train.army.mil/mt2")[My Training Tab (MT2)]] and #strong[#link("https://webapp.tdc.army.mil/tdc-webapp")[Training Development Capability (TDC)]]
  - Revamped and debugged existing codebase across 3 front-ends (#devicon("ts", "TypeScript"), #devicon("angular", "Angular"),#devicon("tailwindcss", "TailwindCSS") and #devicon("materialui", "Angular Material UI")) and back-ends (#devicon("java", "Java") and #devicon("ruby", "JRuby") on #devicon("rails", "Rails")), resolving over 30+ tickets and improving application stability.
  - Enhanced the user interface based on user feedback, resulting in improved accessibility.
  - Followed rigorous mandated security protocols and more than 12 yearly training programs
]

#resume_section("Personal Projects")

#personal_project_item_header(
  "XTUI — Reversed engineered API and TUI (terminal UI) for X.com",
  "https://bwht_dev.github.io/xtui",
  "bwht_dev/xtui",
  "Aug. 2025",
  (
    ("ruby", "Ruby"),
    ("go", "Golang"),
    ("nix", "Nix"),
  ),
  [
    - Built reverse engineered API for X.com using #devicon("ruby", "Ruby") and the Ferrum library
    - Built TUI (terminal UI) using #devicon("go", "Golang")
  ]
)

#personal_project_item_header(
  "Ice Cathedral",
  "https://bwht_dev.github.io/icecath",
  "bwht_dev/icecath",
  "Aug. 2025",
  (
    ("nix", "NixOS"),
    ("hyprland", "Hyprland"),
    ("bash", "Bash"),
    ("neovim", "NeoVim"),
    ("lua", "Lua")
  ),
  [
    - Championed the adoption of declarative infrastructure by building a custom NixOS/Hyprland configuration, enabling programmers to manage system configurations as code on various machines, improving version control
  ]
)

#resume_section("Certifications")

#certification_item(
  "Security+ Certification, CompTIA",
  "May. 2023"
)

#resume_section("Clearance")

#certification_item(
  "Active Confidential Security Clearance",
  "Til Aug. 2027"
)
