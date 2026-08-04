// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.2.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Mateo Del Lungo",
  title: "Mateo Del Lungo - CV - Developer",
  footer: context { [#emph[Mateo Del Lungo -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Mar 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.7in,
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: false,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 0, 0),
  colors-headline: rgb(0, 0, 0),
  colors-connections: rgb(0, 0, 0),
  colors-section-titles: rgb(0, 0, 0),
  colors-links: rgb(0, 0, 0),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "XCharter",
  typography-font-family-name: "XCharter",
  typography-font-family-headline: "XCharter",
  typography-font-family-connections: "XCharter",
  typography-font-family-section-titles: "XCharter",
  typography-font-size-body: 10pt,
  typography-font-size-name: 25pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.2em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: false,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: true,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: false,
  header-connections-display-urls-instead-of-usernames: true,
  header-connections-separator: "|",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.15cm,
  sections-space-between-regular-entries: 0.42cm,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0.08cm,
  entries-highlights-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-nested-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-space-left: 0cm,
  entries-highlights-space-above: 0.08cm,
  entries-highlights-space-between-items: 0.08cm,
  entries-highlights-space-between-bullet-and-text: 0.3em,
  date: datetime(
    year: 2026,
    month: 3,
    day: 27,
  ),
)


= Mateo Del Lungo

#connections(
  [Cordoba, Argentina],
  [#link("mailto:mateodellungo@gmail.com", icon: false, if-underline: false, if-color: false)[mateodellungo\@gmail.com]],
  [#link("tel:+54-351-753-6490", icon: false, if-underline: false, if-color: false)[0351 753-6490]],
  [#link("https://linkedin.com/in/mateo-del-lungo", icon: false, if-underline: false, if-color: false)[linkedin.com\/in\/mateo-del-lungo]],
  [#link("https://github.com/Mudo0", icon: false, if-underline: false, if-color: false)[github.com\/Mudo0]],
)


== Summary

Software Development student with a strong focus on backend. I really like solving problems, creating systems and learning about new technologies.

Engaging in diverse personal projects has allowed me to sharpen my technical skills across different enviroments.

Currently i'm seeking job opportunities to apply my skills while continuing to learn and grow as a professional developer.

== Skills

#strong[Programming Languages:] C\#, #strong[Java], #strong[Javascript], #strong[Typescript]

#strong[Databases:] #strong[SQL Server], #strong[PostgreSQL], #strong[MongoDB]

#strong[Technologies:] .NET, #strong[Angular], #strong[Spring], #strong[Maven], HTML, CSS, #strong[Tailwind], #strong[Bootstrap]

#strong[Tools:] #strong[Git], #strong[Linux], #strong[Docker] (learning)

== Projects

  #regular-entry(
  [
    #strong[#sym.ast.basic#h(0pt, weak: true) #sym.ast.basic#h(0pt, weak: true) Full-stack] Online Multiplayer Board Game (El Estanciero) #sym.ast.basic#h(0pt, weak: true) #sym.ast.basic#h(0pt, weak: true) 

  ],
  [
  ],
  main-column-second-row: [
    #summary[Collaborative development of a digital version of \"El Estanciero\", featuring #strong[real-time] gameplay, user authentication, complex bussiness logic, and persistent game states. I was involved in both the frontend and backend development.]

    - #link("https://github.com/Grupo-Prog/Proyecto-EstancieroWebApp-Backend")[Backend Repo]: #strong[RESTful API] in #strong[Java], #strong[Spring Boot], #strong[SQL Server], #strong[JWT] auth

    - #link("https://github.com/Grupo-Prog/Proyecto-EstancieroWebApp-Frontend")[Frontend Repo]: #strong[Angular], #strong[Typescript], #strong[Tailwind]

    - Architecture: Repositories, Services, Models, Handlers

  ],
)

  #regular-entry(
  [
    #strong[#link("https://chat-collab-frontend.onrender.com/")[#strong[Full-stack] Real-Time Chat Application]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Developed a scalable #strong[real-time] messaging platform in a collaborative environment using #strong[SignalR] for low-latency, bi-directional communication. I was involved in both the frontend and backend development.]

    - #link("https://github.com/Tomilomi/chat-in-realtime-collab")[Backend Repo]: C\#, #strong[SignalR], #strong[Websockets], #strong[PostgreSQL], #strong[ASP.NET Core]

    - #link("https://github.com/Tomilomi/chat-collab-react")[Frontend Repo]: #strong[React], #strong[Tailwind]

  ],
)

== Education

  #education-entry(
  [
    #strong[National Technological University (UTN)], Higher Technician in Software development

  ],
  [
  ],
  main-column-second-row: [
  ],
)
