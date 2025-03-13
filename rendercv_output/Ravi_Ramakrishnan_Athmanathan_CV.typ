
#import "@preview/fontawesome:0.5.0": fa-icon

#let name = "Ravi Ramakrishnan Athmanathan"
#let locale-catalog-page-numbering-style = context { "Ravi Ramakrishnan Athmanathan - Page " + str(here().page()) + " of " + str(counter(page).final().first()) + "" }
#let locale-catalog-last-updated-date-style = "Last updated in Feb 2025"
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

= Ravi Ramakrishnan Athmanathan

// Print connections:
#let connections-list = (
  [#fa-icon("location-dot", size: 0.9em) #h(0.05cm)Pleasanton, CA],
  [#box(original-link("mailto:rathmanathan@outlook.com")[#fa-icon("envelope", size: 0.9em) #h(0.05cm)rathmanathan\@outlook.com])],
  [#box(original-link("tel:+1-408-318-5307")[#fa-icon("phone", size: 0.9em) #h(0.05cm)\(408\) 318-5307])],
  [#box(original-link("https://linkedin.com/in/ravirathmanathan")[#fa-icon("linkedin", size: 0.9em) #h(0.05cm)ravirathmanathan])],
)
#connections(connections-list)



== Profile


#one-col-entry(
  content: [Seasoned Principal Production Engineer with over 18 years of experience driving the reliability and performance of mission-critical applications, including nearly a decade at Yahoo architecting and managing their Ad Serving and Supply-Side AdTech Services on AWS. Expertise in automating infrastructure management for both on-prem and cloud environments. Certified Kubernetes Administrator \(CKA\) and Terraform Associate, skilled in building scalable, resilient, and highly available systems using infrastructure as code.]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [A collaborative leader known for fostering a culture of technical excellence. Seeking to leverage my expertise to lead and mentor high-performing engineering teams in dynamic, cloud-native environments.]
)


== Core Competencies


#one-col-entry(
  content: [Site Reliability Engineering | GitOps | Containerization & Orchestration | Infrastructure as Code | AWS Cloud Services \(ECS, EKS\) | CI\/CD Pipeline Implementation | Technical Leadership | Cross-Functional Collaboration | Incident Management & Resolution | Stakeholder Management | Operational Efficiency & Automation | Process Improvement | Root Cause Analysis | Monitoring & Alerting | SOX | PCI | TLS Certificate Management | X.509 Certificate Management | Secrets Management]
)


== System Expertise & Technical Tools


#one-col-entry(
  content: [#strong[Cloud & Containerization:] AWS \(EC2, S3, ECS, EKS, VPC, CloudWatch\), Kubernetes, Docker, OpenStack]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Infrastructure & Automation:] Terraform, AWS CloudFormation, Ansible, Automated Infrastructure Management]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Programming & Scripting:] Python, Java, Shell Scripting, JavaScript]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[DevOps & Monitoring Tools:] New Relic, Splunk, Prometheus, Git, Jira, Screwdriver, GitHub Actions]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Web Technologies & Databases:] Apache, Nginx, Apache Traffic Server \(ATS\), NodeJS, ReactJS, CSS, TCP\/IP, Load Balancing, CDN, Oracle, MySQL, MongoDB]
)


== Experience


#two-col-entry(
  left-content: [
    #strong[Yahoo]

#strong[Principal Production Engineer]
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Directed the design, deployment, and management of large-scale production environments for Yahoo's Ad Gateway Services on EKS Clusters, ensuring system stability and high scalability to support 2 billion transactions per day.],[Spearheaded infrastructure automation initiatives, resulting in a 50\% reduction in operational overhead and enhanced team efficiency.],[Collaborated with Engineering and Product teams to implement best practices, improving system reliability by 5\% and performance by 10\%.],[Mentored and guided engineering teams, aligning individual efforts with overarching company objectives and fostering a culture of technical excellence.],)
  ],
  right-content: [
    May 2024 – Sep 2024

5 months

Mountain View, CA
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Yahoo]

#strong[Senior Production Engineer]
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Deployed and managed containerized applications on Amazon Web Services \(AWS\) for Yahoo’s Supply-Side AdTech Services, emphasizing scalability and high availability to support millions of transactions per day.],[Led critical migration and automation projects leveraging Kubernetes and Terraform],[Conducted proactive capacity planning and performance tuning, ensuring 99.99\% high availability and minimizing downtime to less than 5 minutes per month.],[Expertly resolved complex system-wide issues, providing mentorship and technical guidance to junior engineers in implementing best practices in production engineering.],)
  ],
  right-content: [
    Apr 2019 – Apr 2024

5 years 1 month

Mountain View, CA
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Yahoo]

#strong[Production Engineer II]
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Managed capacity planning and performance tuning for large-scale, high-throughput systems, optimizing resource utilization and system performance.],[Played a pivotal role in the automation of the CI\/CD pipeline, reducing manual interventions by 50\% and accelerating software delivery cycles.],[Led troubleshooting and root cause analysis for critical incidents, particularly within Linux environments and cloud infrastructure, ensuring rapid resolution and minimizing service impact.],)
  ],
  right-content: [
    Nov 2016 – Mar 2019

2 years 5 months

Mountain View, CA
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Yahoo]

#strong[Lead Operations Engineer]
    #v(-design-text-leading)

    #v(design-highlights-top-margin);#highlights([Coordinated and streamlined the identification and resolution of high-priority incidents, achieving a 25\% reduction in service disruptions and maintaining critical system robustness.],[Proactively utilized monitoring tools to identify and address potential system issues, reducing the occurrence of critical incidents.],[Collaborated effectively with cross-functional engineering and operations teams to optimize the performance and reliability of web applications and backend services.],)
  ],
  right-content: [
    Dec 2015 – Oct 2016

11 months

Mountain View, CA
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[TIBCO Software Inc]

#strong[Senior Support Engineer]
    #v(-design-text-leading)

    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [Served as the primary point of contact for customers of TIBCO ActiveMatrix, expertly troubleshooting integration issues and ensuring their success.])], column-gutter: 0cm)
  ],
  right-content: [
    Nov 2014 – Nov 2015

1 year 1 month

Palo Alto, CA
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Infosys Limited]

#strong[Technology Lead | Technology Analyst | Senior Systems Engineer]
    #v(-design-text-leading)

    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [For Apple Inc., maintained high availability and optimized performance of production applications through root cause analysis, change management, automation, and expert technical support.])], column-gutter: 0cm)
  ],
  right-content: [
    Sep 2010 – Nov 2014

4 years 3 months

Sunnyvale, CA
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Protechsoft Systems Limited]

#strong[#emph[Software Engineer]]
    #v(-design-text-leading)

    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [Engineered responsive Single Page Applications using JavaScript, HTML, and CSS, enhancing user workflows and proactively improving UI\/UX])], column-gutter: 0cm)
  ],
  right-content: [
    June 2007 – Sep 2010

3 years 4 months

Chennai, India
  ],
)



== Education


// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #strong[University of Madras], M.Sc. in Computer Science & Technology -- Chennai, India

    
  ],
  right-content: [
    June 2002 – May 2007
  ],
)



== Certifications


#two-col-entry(
  left-content: [
    #link("https://www.credly.com/badges/309a996a-31b2-4d16-8a71-dfaa9ec3bad8/public_url")[#strong[Certified Kubernetes Administrator \(CKA\)]] 

    
  ],
  right-content: [
    Dec 2024
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://www.credly.com/badges/1575a05e-859f-4014-ad5c-8d4e2f6684d9/public_url")[#strong[HashiCorp Certified: Terraform Associate \(003\)]] 

    
  ],
  right-content: [
    Aug 2024
  ],
)



