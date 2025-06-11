
#import "@preview/fontawesome:0.5.0": fa-icon

#let name = "Harshitha Usha Suresh"
#let locale-catalog-page-numbering-style = context { "Harshitha Usha Suresh - Page " + str(here().page()) + " of " + str(counter(page).final().first()) + "" }
#let locale-catalog-last-updated-date-style = "Last updated in Apr 2025"
#let locale-catalog-language = "en"
#let design-page-size = "us-letter"
#let design-section-titles-font-size = 1.4em
#let design-colors-text = rgb(0, 0, 0)
#let design-colors-section-titles = rgb(0, 79, 144)
#let design-colors-last-updated-date-and-page-numbering = rgb(128, 128, 128)
#let design-colors-name = rgb(0, 79, 144)
#let design-colors-connections = rgb(0, 79, 144)
#let design-colors-links = rgb(0, 102, 204)
#let design-section-titles-font-family = "Lato"
#let design-section-titles-bold = false
#let design-section-titles-line-thickness = 0.05cm
#let design-section-titles-font-size = 1.4em
#let design-section-titles-type = "moderncv"
#let design-section-titles-vertical-space-above = 0.55cm
#let design-section-titles-vertical-space-below = 0.3cm
#let design-section-titles-small-caps = false
#let design-links-use-external-link-icon = false
#let design-text-font-size = 10pt
#let design-text-leading = 0.6em
#let design-text-font-family = "Mukta"
#let design-text-alignment = "justified"
#let design-text-date-and-location-column-alignment = right
#let design-header-photo-width = 3.5cm
#let design-header-use-icons-for-connections = true
#let design-header-name-font-family = "Poppins"
#let design-header-name-font-size = 25pt
#let design-header-name-bold = true
#let design-header-connections-font-family = "Poppins"
#let design-header-vertical-space-between-name-and-connections = 0.7cm
#let design-header-vertical-space-between-connections-and-first-section = 0.7cm
#let design-header-use-icons-for-connections = true
#let design-header-horizontal-space-between-connections = 0.5cm
#let design-header-separator-between-connections = "|"
#let design-header-alignment = left
#let design-highlights-summary-left-margin = 0cm
#let design-highlights-bullet = "•"
#let design-highlights-top-margin = 0.25cm
#let design-highlights-left-margin = 0cm
#let design-highlights-vertical-space-between-highlights = 0.35cm
#let design-highlights-horizontal-space-between-bullet-and-highlights = 0.5em
#let design-entries-vertical-space-between-entries = 0.4cm
#let design-entries-date-and-location-width = 3.5cm
#let design-entries-allow-page-break-in-entries = false
#let design-entries-horizontal-space-between-columns = 0.4cm
#let design-entries-left-and-right-margin = 0cm
#let design-page-top-margin = 2cm
#let design-page-bottom-margin = 2cm
#let design-page-left-margin = 2cm
#let design-page-right-margin = 2cm
#let design-page-show-last-updated-date = false
#let design-page-show-page-numbering = true
#let design-links-underline = true
#let design-entry-types-education-entry-degree-column-width = 1cm
#let date = datetime.today()

// Metadata:
#set document(author: name, title: name + "'s CV", date: date)

// Page settings:
#set page(
  margin: (
    top: design-page-top-margin,
    bottom: design-page-bottom-margin,
    left: design-page-left-margin,
    right: design-page-right-margin,
  ),
  paper: design-page-size,
  footer: if design-page-show-page-numbering {
    text(
      fill: design-colors-last-updated-date-and-page-numbering,
      align(center, [_#locale-catalog-page-numbering-style _]),
      size: 0.9em,
    )
  } else {
    none
  },
  footer-descent: 0% - 0.3em + design-page-bottom-margin / 2,
)
// Text settings:
#let justify
#let hyphenate
#if design-text-alignment == "justified" {
  justify = true
  hyphenate = true
} else if design-text-alignment == "left" {
  justify = false
  hyphenate = false
} else if design-text-alignment == "justified-with-no-hyphenation" {
  justify = true
  hyphenate = false
}
#set text(
  font: design-text-font-family,
  size: design-text-font-size,
  lang: locale-catalog-language,
  hyphenate: hyphenate,
  fill: design-colors-text,
  // Disable ligatures for better ATS compatibility:
  ligatures: true,
)
#set par(
  spacing: 0pt,
  leading: design-text-leading,
  justify: justify,
)
#set enum(
  spacing: design-entries-vertical-space-between-entries,
)

// Highlights settings:
#let highlights(..content) = {
  list(
    ..content,
    marker: design-highlights-bullet,
    spacing: design-highlights-vertical-space-between-highlights,
    indent: design-highlights-left-margin,
    body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
  )
}
#show list: set list(
  marker: design-highlights-bullet,
  spacing: 0pt,
  indent: 0pt,
  body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
)

// Entry utilities:
#let three-col(
  left-column-width: 1fr,
  middle-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (auto, auto, auto),
) = [
  #block(
    grid(
      columns: (left-column-width, middle-column-width, right-column-width),
      column-gutter: design-entries-horizontal-space-between-columns,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #middle-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

#let two-col(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, auto),
  column-gutter: design-entries-horizontal-space-between-columns,
) = [
  #block(
    grid(
      columns: (left-column-width, right-column-width),
      column-gutter: column-gutter,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

// Main heading settings:
#let header-font-weight
#if design-header-name-bold {
  header-font-weight = 700
} else {
  header-font-weight = 400
}
#show heading.where(level: 1): it => [
  #set par(spacing: 0pt)
  #set align(design-header-alignment)
  #set text(
    font: design-header-name-font-family,
    weight: header-font-weight,
    size: design-header-name-font-size,
    fill: design-colors-name,
  )
  #it.body
  // Vertical space after the name
  #v(design-header-vertical-space-between-name-and-connections)
]

#let section-title-font-weight
#if design-section-titles-bold {
  section-title-font-weight = 700
} else {
  section-title-font-weight = 400
}

#show heading.where(level: 2): it => [
  #set align(left)
  #set text(size: (1em / 1.2)) // reset
  #set text(
    font: design-section-titles-font-family,
    size: (design-section-titles-font-size),
    weight: section-title-font-weight,
    fill: design-colors-section-titles,
  )
  #let section-title = (
    if design-section-titles-small-caps [
      #smallcaps(it.body)
    ] else [
      #it.body
    ]
  )
  // Vertical space above the section title
  #v(design-section-titles-vertical-space-above, weak: true)
  #block(
    breakable: false,
    width: 100%,
    [
      #if design-section-titles-type == "moderncv" [
        #two-col(
          alignments: (right, left),
          left-column-width: design-entries-date-and-location-width,
          right-column-width: 1fr,
          left-content: [
            #align(horizon, box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles))
          ],
          right-content: [
            #section-title
          ]
        )

      ] else [
        #box(
          [
            #section-title
            #if design-section-titles-type == "with-parial-line" [
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ] else if design-section-titles-type == "with-full-line" [

              #v(design-text-font-size * 0.4)
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ]
          ]
        )
      ]
     ] + v(1em),
  )
  #v(-1em)
  // Vertical space after the section title
  #v(design-section-titles-vertical-space-below - 0.5em)
]

// Links:
#let original-link = link
#let link(url, body) = {
  body = [#if design-links-underline [#underline(body)] else [#body]]
  body = [#if design-links-use-external-link-icon [#body#h(design-text-font-size/4)#box(
        fa-icon("external-link", size: 0.7em),
        baseline: -10%,
      )] else [#body]]
  body = [#set text(fill: design-colors-links);#body]
  original-link(url, body)
}

// Last updated date text:
#if design-page-show-last-updated-date {
  let dx
  if design-section-titles-type == "moderncv" {
    dx = 0cm
  } else {
    dx = -design-entries-left-and-right-margin
  }
  place(
    top + right,
    dy: -design-page-top-margin / 2,
    dx: dx,
    text(
      [_#locale-catalog-last-updated-date-style _],
      fill: design-colors-last-updated-date-and-page-numbering,
      size: 0.9em,
    ),
  )
}

#let connections(connections-list) = context {
  set text(fill: design-colors-connections, font: design-header-connections-font-family)
  set par(leading: design-text-leading*1.7, justify: false)
  let list-of-connections = ()
  let separator = (
    h(design-header-horizontal-space-between-connections / 2, weak: true)
      + design-header-separator-between-connections
      + h(design-header-horizontal-space-between-connections / 2, weak: true)
  )
  let starting-index = 0
  while (starting-index < connections-list.len()) {
    let left-sum-right-margin
    if type(page.margin) == "dictionary" {
      left-sum-right-margin = page.margin.left + page.margin.right
    } else {
      left-sum-right-margin = page.margin * 4
    }

    let ending-index = starting-index + 1
    while (
      measure(connections-list.slice(starting-index, ending-index).join(separator)).width
        < page.width - left-sum-right-margin
    ) {
      ending-index = ending-index + 1
      if ending-index > connections-list.len() {
        break
      }
    }
    if ending-index > connections-list.len() {
      ending-index = connections-list.len()
    }
    list-of-connections.push(connections-list.slice(starting-index, ending-index).join(separator))
    starting-index = ending-index
  }
  align(list-of-connections.join(linebreak()), design-header-alignment)
  v(design-header-vertical-space-between-connections-and-first-section - design-section-titles-vertical-space-above)
}

#let three-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (left, auto, right),
) = (
  if design-section-titles-type == "moderncv" [
    #three-col(
      left-column-width: right-column-width,
      middle-column-width: left-column-width,
      right-column-width: 1fr,
      left-content: right-content,
      middle-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      right-content: middle-content,
      alignments: (design-text-date-and-location-column-alignment, left, auto),
    )
  ] else [
    #block(
      [
        #three-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          middle-content: middle-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let two-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, design-text-date-and-location-column-alignment),
  column-gutter: design-entries-horizontal-space-between-columns,
) = (
  if design-section-titles-type == "moderncv" [
    #two-col(
      left-column-width: right-column-width,
      right-column-width: left-column-width,
      left-content: right-content,
      right-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      alignments: (design-text-date-and-location-column-alignment, auto),
    )
  ] else [
    #block(
      [
        #two-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let one-col-entry(content: "") = [
  #let left-space = design-entries-left-and-right-margin
  #if design-section-titles-type == "moderncv" [
    #(left-space = left-space + design-entries-date-and-location-width + design-entries-horizontal-space-between-columns)
  ]
  #block(
    [#set par(spacing: design-text-leading); #content],
    breakable: design-entries-allow-page-break-in-entries,
    inset: (
      left: left-space,
      right: design-entries-left-and-right-margin,
    ),
    width: 100%,
  )
]

= Harshitha Usha Suresh

// Print connections:
#let connections-list = (
  [#fa-icon("location-dot", size: 0.9em) #h(0.05cm)Pleasanton, CA],
  [#box(original-link("mailto:harshitha_us@outlook.com")[#fa-icon("envelope", size: 0.9em) #h(0.05cm)harshitha\_us\@outlook.com])],
  [#box(original-link("https://linkedin.com/in/harshithaus")[#fa-icon("linkedin", size: 0.9em) #h(0.05cm)harshithaus])],
)
#connections(connections-list)



== Profile


#one-col-entry(
  content: [Accomplished Site Reliability Engineer with over 10 years of experience ensuring the stability, performance, and operational excellence of enterprise-scale applications. Proven expertise in full-stack troubleshooting, high-stakes incident management, and developing automation to improve system reliability on Unix\/Linux platforms.]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [A collaborative problem-solver who excels in high-pressure environments by fostering clear communication between technical and non-technical teams to deliver consistent, high-quality results. Eager to leverage a deep background in SRE principles to contribute to a dynamic engineering team.]
)


== Core Competencies


#one-col-entry(
  content: [Site Reliability Engineering | Incident Management & Resolution | Root Cause Analysis | Automation & Tooling \(Python, Shell\) | Full-Stack Troubleshooting | Application Monitoring \(Splunk, Grafana\) | CI\/CD & Production Deployments | Operational Efficiency | Process Improvement | Stakeholder Management | Cross-Functional Collaboration | Unix\/Linux Administration | SOX Compliance]
)


== System Expertise & Technical Tools


#one-col-entry(
  content: [#strong[Programming & Scripting:] Java, Python, JavaScript, Shell Scripting]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Web Technologies & APIs:] HTML, APIs, XML, JSON, Memcached, Apache httpd, Tomcat, jBoss, ATS]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Databases & Query Languages:] Oracle, Cassandra DB, MongoDB, SQL, Trino]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Monitoring & Observability:] Splunk, Grafana, Tableau]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Big Data & Business Intelligence:] Hadoop, Hive, Pig, Tableau]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Operating Systems & Version Control:] Unix\/Linux, Mac OS X, Git, SVN]
)


== Experience


#two-col-entry(
  left-content: [
    #strong[LinkedIn Corporation]

#strong[Technical Services Manager]
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Influence business decisions and lead major work streams for a large product portfolio.],[Monitor key product quality metrics, driving initiatives to achieve goals and enhance overall product quality.],[Lead the investigation and resolution of complex technical member cases to meet and exceed target SLAs.],[Drive post-mortems to identify process gaps and implement corrective actions to prevent issue recurrence.],[Partner with Product & Engineering stakeholders to spearhead quality improvement initiatives and deliver an optimal member experience.],[Lead team projects, define process improvements, and influence team strategy with organization-wide impact.],[Analyze reports and dashboards to rapidly identify issues and implement corrective actions.],[Ensure overall support readiness for the launch of new products and features.],)
  ],
  right-content: [
    July 2024 – present

10 months

Sunnyvale, CA
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[LinkedIn Corporation]

#strong[Sr. Site Reliability Engineer]
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Served as a primary point responsible for the overall health, performance, and capacity of one or more of LinkedIn's Internet-facing services.],[Gained deep knowledge of LinkedIn's complex applications.],[Assisted in the roll-out and deployment of new product features and installations to facilitate the rapid iteration and constant growth.],[Developed tools to improve the ability to rapidly deploy and effectively monitor custom applications in a large-scale UNIX environment.],[Worked closely with development teams to ensure that platforms are designed with \"operability\" in mind.],[Functioned well in a fast-paced, rapidly-changing environment.],[Participated in a 24x7 rotation for second-tier escalations.],)
  ],
  right-content: [
    Oct 2021 – June 2024

2 years 9 months

Sunnyvale, CA
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[LinkedIn Corporation]

#strong[Site Reliability Engineer]
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Served as a primary point responsible for the overall health, performance, and capacity of one or more of LinkedIn's Internet-facing services.],[Gained deep knowledge of LinkedIn's complex applications.],[Functioned well in a fast-paced, rapidly-changing environment.],[Participated in a 24x7 rotation for second-tier escalations.],)
  ],
  right-content: [
    Feb 2020 – July 2021

1 year 6 months

Sunnyvale, CA
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Infosys Ltd \(Client: Apple Inc.\)]

#strong[Technology Analyst]
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Coordinated RCA of production issues and drove resolutions\/changes with Dev members and stakeholders.],[Managed Continuous Delivery of applications to production and other environments.],[Monitored production servers & applications health and proactively acted on any alerts.],[Enabled Change management & Control for all SOX audited applications.],[Interfaced with clients on managing new Application\/Services transition, product improvements & Business enhancements.],[Performed requirement analysis, design & development of automations and tools.],)
  ],
  right-content: [
    July 2014 – Feb 2020

5 years 8 months

Sunnyvale, CA
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Infosys Ltd \(Client: Apple Inc.\)]

#strong[Senior Systems Engineer]
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Provided Technical support for Apple internal production applications.],[Handled regular Application Maintenance, supported emergency changes and bug fixes.],[Conducted full-stack technical troubleshooting.],[Performed Oracle PL\/SQL tuning.],[Created and maintained Support Knowledge Base documentations.],[Participated in regular on-call rotations.],)
  ],
  right-content: [
    Jan 2013 – June 2014

1 year 6 months

Mangalore, India
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Infosys Ltd \(Client: Apple Inc.\)]

#strong[Systems Engineer]
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Provided Technical support for Apple internal production applications.],[Performed full-stack technical troubleshooting.],[Conducted Oracle PL\/SQL tuning.],)
  ],
  right-content: [
    Dec 2010 – Dec 2012

2 years 1 month

Mangalore, India
  ],
)



== Education


// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #strong[NMAMIT], Ba​chelor of Engineering in Electronics and Communications -- Karnataka, India

    
  ],
  right-content: [
    June 2006 – May 2010
  ],
)



