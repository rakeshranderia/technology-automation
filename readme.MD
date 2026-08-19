# Technology Automation

I've spent much of my career leading technology teams rather than working as a full-time developer.

I've also found that staying close to the technology makes me a better technology leader.

This repository is a collection of practical automation examples, scripts and experiments covering IT operations, cybersecurity, Microsoft 365, infrastructure and data.

Some are practical examples of problems technology teams regularly encounter. Others are here simply because experimenting with technology is one of the best ways to understand it.

The objective isn't to showcase software engineering.

It's to demonstrate how relatively simple technology can often solve useful business and operational problems.

---

## Why Automation?

Automation shouldn't start with:

**"What can we automate?"**

I prefer to start with:

**"Where are we spending time doing something repetitive, inconsistent or unnecessarily manual?"**

That might be:

- Producing a report
- Checking infrastructure
- Managing user accounts
- Validating a security control
- Processing data
- Monitoring capacity
- Performing a repetitive administrative task

Sometimes the right answer is automation.

Sometimes it isn't.

---

## My Approach

A useful automation should generally improve one or more of:

**Efficiency + Consistency + Visibility + Security + Scale**

I also think automation should be:

**Secure + Repeatable + Observable + Recoverable**

### Secure

Automation should operate with appropriate permissions and protect sensitive information.

### Repeatable

The same process should produce predictable outcomes.

### Observable

It should be possible to understand what happened and identify when something went wrong.

### Recoverable

Failures need to be detectable and there should be a practical way to recover.

---

## Areas of Focus

### IT Operations

Automation can remove repetitive operational effort from activities such as:

- User administration
- File management
- System maintenance
- Reporting
- Monitoring
- Provisioning

### Cybersecurity

Security automation can support:

- Security monitoring
- Access management
- Compliance checks
- Vulnerability management
- Incident response
- Security reporting

### Microsoft 365

Examples include:

- User lifecycle management
- Microsoft Graph
- Reporting
- Mailbox administration
- Group management
- Security and compliance activities

### Infrastructure

Automation can assist with:

- Server configuration
- Software deployment
- Monitoring
- Backup
- Configuration management
- Infrastructure maintenance

### Data & Reporting

Automation can reduce manual effort associated with:

- Data extraction
- Data transformation
- Reporting
- Reconciliation
- Operational dashboards

---

## Practical Examples

This repository includes several small examples designed around real technology activities.

### User Account Auditing

Using PowerShell to review account information and improve visibility of the environment.

[View User Account Audit](scripts/user-account-audit.md)

### Microsoft 365 Reporting

Using automation to retrieve and report information from a Microsoft 365 environment.

[View Microsoft 365 User Reporting](microsoft365/user-report.md)

### Security Control Auditing

Demonstrating how simple automation can assist with validating security controls and producing repeatable results.

[View Security Control Audit](security/security-control-audit.md)

### Proactive Infrastructure Monitoring

Using automated monitoring to identify capacity issues before they become service-impacting incidents.

[View Proactive Monitoring Case Study](examples/proactive-monitoring.md)

---

## From Script to Business Outcome

The code itself is rarely the most interesting part.

A relatively small script might save only a few minutes each time it runs.

But if the task happens frequently, across multiple systems or multiple people, the value starts to compound.

The progression I look for is:

**Manual Task → Repeatable Process → Automation → Visibility → Operational Improvement**

This is also why I prefer automation that produces something observable — a report, alert, log, dashboard or measurable outcome — rather than automation that disappears silently into the environment.

---

## Automation Lifecycle

For anything moving beyond experimentation, I use a simple lifecycle:

**Identify → Assess → Design → Build → Test → Deploy → Monitor → Improve**

Not every script needs enterprise-level engineering.

The level of control should reflect what the automation can affect.

A reporting script and an automation capable of changing hundreds of user accounts clearly require different levels of testing, permissions and change control.

---

## Technical Depth & Technology Leadership

I don't believe a CIO or IT Director needs to be the strongest engineer in the room.

In fact, they usually shouldn't be.

Their role is to build teams containing people with deeper specialist expertise.

But I do believe technology leaders benefit from remaining technically curious.

Being able to understand a script, follow an architecture discussion, question an implementation approach or build a small proof of concept makes conversations with technical teams considerably more useful.

It also helps distinguish between:

**"Technically possible"**

and:

**"Sensible thing to do."**

Both matter.

---

## Technology Playground

I still enjoy experimenting with technology, so this repository also includes a small playground for things that don't need a business case or an executive steering committee.

### Back to Basics

No GitHub portfolio involving code feels entirely complete until somebody prints:

**"Hello, World!"**

Consider that requirement satisfied.

This is a deliberately simple comparison of programming fundamentals across Python, PowerShell and JavaScript:

**Hello World → Variables → Arrays → Loops → Conditions → Functions**

[Explore Back to Basics](playground/basics/README.md)

The examples aren't intended to demonstrate advanced software engineering.

They're there because understanding the fundamentals still matters — and occasionally it's enjoyable to write something that doesn't require a project plan.

---

## Perspective

Automation is not valuable simply because a manual process has been replaced with code.

Good automation should make something **faster, safer, more consistent, more visible or easier to scale**.

And sometimes a ten-line script that removes an annoying repetitive task is more useful than an elaborate technical solution.

The important part is understanding the problem first.

Then use as much technology as the problem actually needs.