// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Mateo Del Lungo",
  title: "Mateo Del Lungo - CV - Developer",
  footer: context { [#emph[Mateo Del Lungo -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Actualizado en Sep 2026] ],
  locale-catalog-language: "es",
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
  typography-font-size-body: 9pt,
  typography-font-size-name: 23pt,
  typography-font-size-headline: 9pt,
  typography-font-size-connections: 9pt,
  typography-font-size-section-titles: 1.1em,
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
    month: 9,
    day: 5,
  ),
)

// =====================================================================
// CUSTOM: rendercv-tags — pills/etiquetas para skills y proyectos
// Recibe un string separado por ", " y renderiza cada item como una
// "pill" redondeada. Se invoca desde el YAML via design.templates:
//   main_column: '**LABEL:** #rendercv-tags("DETAILS")'
//   tags: '#rendercv-tags("C#, SignalR, ...")'
// El escaper de RenderCV preserva el comando raw (ver
// escape_typst_characters), por lo que solo PDF/PNG muestran pills;
// los outputs Markdown/HTML dejan el comando como texto literal.
// NOTA: los args no pueden contener ")" (rompe el regex de escape).
// =====================================================================
#let rendercv-tags(
  raw,
  pill-fill: rgb("#e8e8e8"),
  pill-text-color: rgb("#1a1a1a"),
  pill-size: 7pt,
  pill-x-inset: 4.5pt,
  pill-y-inset: 1.8pt,
  pill-radius: 3pt,
  pill-gap: 2.5pt,
) = {
  let items = raw.split(", ")
  for item in items {
    if item != items.first() {
      h(pill-gap)
    }
    box(
      fill: pill-fill,
      inset: (x: pill-x-inset, y: pill-y-inset),
      radius: pill-radius,
      text(size: pill-size, fill: pill-text-color, item.trim()),
    )
  }
}


= Mateo Del Lungo

#connections(
  [Córdoba, Argentina],
  [#link("mailto:mateodellungo@gmail.com", icon: false, if-underline: false, if-color: false)[mateodellungo\@gmail.com]],
  [#link("tel:+54-351-753-6490", icon: false, if-underline: false, if-color: false)[0351 753-6490]],
  [#link("https://linkedin.com/in/mateo-del-lungo", icon: false, if-underline: false, if-color: false)[linkedin.com\/in\/mateo-del-lungo]],
  [#link("https://github.com/Mudo0", icon: false, if-underline: false, if-color: false)[github.com\/Mudo0]],
)


== Perfil Profesional

Estudiante de Programación con un fuerte enfoque en desarrollo backend. Me apasiona la resolución de problemas, el diseño de sistemas y el aprendizaje continuo de nuevas tecnologías.

A través de diversos proyectos personales, he fortalecido mis habilidades técnicas en distintos entornos de desarrollo.

Actualmente busco oportunidades laborales para aplicar mis conocimientos y seguir creciendo profesionalmente como desarrollador.

== Competencias Técnicas

#strong[Lenguajes de Programación:] C\#, Java, Kotlin, Javascript, Typescript

#strong[Bases de Datos:] SQL Server, PostgreSQL, MongoDB

#strong[Tecnologías:] .NET, Angular, Capacitor, Spring Boot, Maven, SignalR, JWT, Microservicios, HTML, CSS, Tailwind, Bootstrap

#strong[Herramientas:] Git, Linux, Docker, Testing, Playwright, CI\/CD, GitHub Actions, Cloudflare Pages

#strong[Metodologías:] Scrum, Kanban, Agentic AI (Opencode)

== Proyectos Relevantes

  #regular-entry(
  [
    #strong[#link("https://chat-collab-frontend.onrender.com/")[Aplicación de Chat en Tiempo Real]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Desarrollo de una plataforma de mensajería escalable en un entorno colaborativo, utilizando SignalR para comunicación bidireccional de baja latencia. Participé en el desarrollo integral del sistema (#strong[Full-stack]).]

    - #link("https://github.com/Tomilomi/chat-in-realtime-collab")[Repo Backend]: #strong[C\#, SignalR, Websockets, JWT, PostgreSQL, ASP.NET Core]

    - #link("https://github.com/Tomilomi/chat-collab-react")[Repo Frontend]: #strong[React, Tailwind]

  ],
)

  #regular-entry(
  [
    #strong[#link("https://pokemon-tcg-g8-1.onrender.com/welcome")[Pokémon TCG]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Versión digital del Juego de Cartas Coleccionables de Pokémon desarrollada como proyecto universitario para la UTN. Backend en Spring Boot con Java 21 y frontend en Angular. Cuenta con un motor de juego personalizado que maneja turnos, ataques, cálculo de daño, condiciones especiales y condiciones de victoria. La sincronización multijugador en #strong[tiempo real] se realiza mediante WebSocket, con PostgreSQL para la persistencia, Flyway para las migraciones de base de datos y Docker Compose para la infraestructura contenerizada.]

    - #link("https://pokemon-tcg-g8-1.onrender.com/welcome")[Live]: #strong[Java 21, Spring Boot, JWT, WebSocket, PostgreSQL, Flyway, Docker Compose]

    - Frontend: #strong[Angular, Typescript]

  ],
)

  #regular-entry(
  [
    #strong[#link("https://biantattoo.pages.dev/")[Portfolio Tatuajes]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Portfolio web para una tatuadora. Construido con Angular y TypeScript utilizando Signals y detección de cambios OnPush. Cuenta con una galería con lightbox y un formulario de contacto integrado con Google Apps Script, desplegado en Cloudflare Pages.]

    - #link("https://github.com/Mudo0/portfolio-bianca")[Repo]: #strong[Angular, TypeScript, Signals, OnPush]

    - #link("https://biantattoo.pages.dev/")[Live]: #strong[Google Apps Script, Cloudflare Pages]

    - Seguridad: sistema anti-bot de 3 capas (honeypot, control de tiempo y rate limiting)

    - Validación estricta de inputs y ofuscación de datos de contacto contra scraping

  ],
)

== Formación Académica

  #education-entry(
  [
    #strong[Universidad Tecnológica Nacional (UTN)], Tecnicatura Universitaria Superior en Programación \/ Desarrollo de Software

  ],
  [
  ],
  main-column-second-row: [
  ],
)
