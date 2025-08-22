#import "template.typ": *

#let today = datetime.today()

#show: resume.with(
  author: (
      firstname: "Brad", 
      lastname: "White",
      email: "bradscottwhite@gmail.com",
      phone: "(+1) 804-516-5072",
      github: "silent-brad",
      linkedin: "bwht",
      portfolio: "dev.knightoffaith.systems",
      positions: (
        "Programmer",
        "Full Stack",
      ),
  ),
  date: today.display("[month repr:long] [day], [year]")
)

#resume_section("Summary")

#summary_item(
  [_Full-stack programmer with 2 and 1/2 years of professional software development experience and over a decade of experience writing/building web apps. Seeking a junior to mid level software engineering role near *Richmond, VA* or remote._]
)

#resume_section("Skills")

#skill_item(
  "Programming Languages",
  (
    "TypeScript",
    "HTML5",
    "CSS3",
    "SQL",
    "Java",
    "Golang",
    "Ruby",
    "Nix"
  )
)

#skill_item(
  "Frameworks",
  (
    "TailwindCSS",
    "React",
    "Angular",
    "Rails",
    "Spring"
  )
)

#skill_item(
  "Developer Tools",
  (
    "Git",
    "Bash",
    "NeoVim",
    "PNPM",
    "Linux",
    "NixOS",
    "Docker",
    "NGINX"
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
  "Software Developer",
  "Jan. 2023 - Aug. 2025",
)

#resume_item[
  - Designed, developed, and maintained 4 mission-critical Army training applications (#strong[#link("https://public.tag.army.mil/catalog")[Central Army Registry (CAR)]], #strong[#link("https://public.tag.army.mil/")[TRADOC Application Gateway (TAG)]], #strong[#link("https://rdl.train.army.mil/mt2")[My Training Tab (MT2)]], and #strong[#link("https://webapp.tdc.army.mil/tdc-webapp")[Training Development Capability (TDC)]]) serving over 200,000 monthly users, enhancing training accessibility and efficiency.
  - Refactored and optimized codebases across 3 front-end frameworks (#strong[TypeScript], #strong[Angular], #strong[TailwindCSS], #strong[Angular Material UI]) and back-end systems (#strong[Java], #strong[JRuby on Rails], #strong[Microsoft SQL Server]), resolving 30+ critical tickets and boosting application stability.
  - Debugged and enhanced #strong[Java] and #strong[Spring] back-end systems, improving performance and reliability for high-traffic applications.
  - Automated developer workflows using #strong[Bash] and #strong[Batch] scripts, streamlining processes and reducing setup time.
  - Authored and optimized #strong[PL/SQL] and #strong[T-SQL] queries and stored procedures, improving database performance and reporting capabilities.
  - Enhanced user interfaces based on user feedback, implementing accessibility improvements that increased user satisfaction.
  - Collaborated to co-author reference materials, ensuring clear documentation for end-users and developers.
  - Adhered to strict security protocols and completed 12+ annual training programs, ensuring compliance with Department of Defense standards.
]

#work_experience_item_header(
  "Amazon, RIC9",
  "Ashland, VA",
  "Fulfillment Associate",
  "Oct. 2020 - Jan. 2023",
)

#resume_item[
  - Provided support for team members who process returns, with a focus on teamwork excellence
  - Drove forklift in warehouse to unload trucks, move boxes from conveyor belts, scan and take totes from belts and wrap for shipment
]

/*#resume_section("Personal Projects")

#personal_project_item_header(
  "XTUI — Reversed engineered API and TUI (terminal UI) for X.com",
  "https://bwht_dev.github.io/xtui",
  "bwht_dev/xtui",
  "Aug. 2025",
  (
    "Ruby",
    "Golang",
    "Nix",
  ),
  [
    - Built reverse engineered API for X.com using #strong[Ruby] and the Ferrum library
    - Built TUI (terminal UI) using #strong[Golang]
  ]
)

#personal_project_item_header(
  "Ice Cathedral",
  "https://bwht_dev.github.io/icecath",
  "bwht_dev/icecath",
  "Aug. 2025",
  (
    "NixOS",
    "Hyprland",
    "Bash",
    "NeoVim",
    "Lua"
  ),
  [
    - Championed the adoption of declarative infrastructure by building a custom NixOS/Hyprland configuration, enabling programmers to manage system configurations as code on various machines, improving version control
  ]
)*/

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
