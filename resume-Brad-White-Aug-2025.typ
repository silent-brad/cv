#import "template.typ": *

#let today = datetime.today()

#show: resume.with(
  author: (
      firstname: "Brad", 
      lastname: "White",
      email: "bradscottwhite@gmail.com",
      phone: "(+1) 804-516-5072",
      github: "silent-brad",
      //linkedin: "bwht",
      portfolio: "dev.knightoffaith.systems",
      positions: (
        "Full Stack",
        "Programmer",
      ),
  ),
  date: today.display("[month repr:long] [day], [year]")
)

#resume_section("Summary")

#summary_item(
  [_Full-stack Software Engineer with 2 and 1/2 years of professional software development experience and over a decade of experience in web app development. I am passionate about learning new things to quench my insatiable thirst for learning. Seeking a junior to mid level software engineering role near *Richmond, VA* or remote._]
)

#resume_section("Hard Skills")

#skill_item(
  [Programming Languages],
  (
    "JavaScript/TypeScript",
    "HTML5",
    "CSS3",
    "SQL",
    "Java",
    "Golang",
    "Ruby",
    "Shell/Bash",
    "Nix",
  )
)

#skill_item(
  [Frameworks and Tools],
  (
    "Angular",
    "Tailwind CSS",
    "React",
    "Spring Boot",
    "Ruby on Rails",
    "Git",
    "Docker",
    "Caddy"
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

#pad(top: 15pt, resume_section("Professional Experience"))

#work_experience_item_header(
  "Akytech Consulting, ATIS (Army Training Information System)",
  "Fort Eustis, VA (Remote)",
  "Software Developer",
  "Jan. 2023 - Aug. 2025",
)

#resume_item[
  - Designed, developed, and maintained 4 mission-critical Army training applications (#strong[#link("https://public.tag.army.mil/catalog")[Central Army Registry (CAR)]], #strong[#link("https://public.tag.army.mil/")[TRADOC Application Gateway (TAG)]], #strong[#link("https://rdl.train.army.mil/mt2")[My Training Tab (MT2)]], and #strong[#link("https://webapp.tdc.army.mil/tdc-webapp")[Training Development Capability (TDC)]]) serving over 200,000 monthly users, enhancing training accessibility and efficiency.
  - Refactored and optimized codebases across 3 front-end frameworks (TypeScript, Angular, TailwindCSS, Angular Material UI) and back-end systems (Java, JRuby, Ruby on Rails, Microsoft SQL Server).//, resolving 30+ critical tickets and boosting application stability.
  - Debugged and enhanced Java and Spring back-end systems, improving performance and reliability for high-traffic applications.
  - Automated developer workflows using Bash and Batch scripts, streamlining processes and reducing setup time.
  - Authored and optimized PL/SQL and T-SQL queries and stored procedures, improving database performance and reporting capabilities.
  - Enhanced user interfaces based on user feedback, implementing accessibility improvements which resulted in increased user satisfaction.
  - Collaborated to co-author reference materials, ensuring clear documentation for end-users and developers.
  - Adhered to strict security protocols and completed 12+ annual training programs, ensuring compliance with Department of Defense standards.
  - #strong[Technologies:] TypeScript, Angular, Tailwind CSS, Java, Spring, JRuby, Ruby on Rails, Microsoft SQL Server, Bash, Tomcat, GraphQL, Azure Cloud
]

/*#work_experience_item_header(
  "Amazon, RIC9",
  "Ashland, VA",
  "Fulfillment Associate",
  "Oct. 2020 - Jan. 2023",
)

#resume_item[
  - Provided support for team members who process returns, with a focus on teamwork excellence
  - Drove forklift in warehouse to unload trucks, move boxes from conveyor belts, scan and take totes from belts and wrap for shipment
]*/

#resume_section("Personal Projects")

#personal_project_item_header(
  "Epos Programming Language",
  "",
  "github.com/silent-brad/epos-lang",
  "Oct. 2025",
  [
    - Implemented a parser, lexer, type-checker and code-generator for a high-level functional statically-typed programming language that compiles to LLVM IR.
    - #strong[Technologies:] Golang, Nix, LLVM
  ]
)

#personal_project_item_header(
  "A Book Sharing App",
  "https://bookshelves.knightoffaith.systems",
  "github.com/silent-brad/bookshelves",
  "Sep. 2025",
  [
    - Developed, designed and deployed frontend UI, backend rest API, reverse proxy, devops infrastructure, and database for a book sharing app.
    - #strong[Technologies:] TypeScript, Java, Angular, Spring Boot, Tailwind CSS, Caddy, Docker, Nix
  ]
)

#personal_project_item_header(
  "Bittorrent Client Implementation in Go",
  "",
  "github.com/silent-brad/bt",
  "Aug. 2025",
  [
    - Wrote Bencoder, ...
    - #strong[Technologies:] Golang, Nix
  ]
)


#pad(top: 15pt, resume_section("Certifications"))

#certification_item(
  "Security+ Certification, CompTIA",
  "May. 2023"
)

#pad(top: 15pt, resume_section("Clearance"))

#certification_item(
  "Active Confidential Security Clearance",
  "Til Aug. 2027"
)
