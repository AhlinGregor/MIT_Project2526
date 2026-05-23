# Final Project Report: Archive System for a Local Scout Group (Rod)

**Course:** IT Management  
**Project:** Archive System for a Local Scout Group (Rod)  
**Client:** Local scout group (rod)  
**Team:** Luka Svenšek, Matej Kodermac, Žan Luka Remec, Gregor Ahlin, Lenart Svetek  
**Prepared by:** Žan Luka Remec  
**Date:** 16.05.2026  
**Repository:** https://github.com/AhlinGregor/MIT_Project2526/

## Outline

1. Introduction
2. Project Background and Objectives
3. Final Project Scope
4. Summary of Previous Homework
5. User Research and Requirements
6. Prototype and Final App Showcase
7. Usability Testing and Evaluation
8. Stakeholder and Risk Analysis
9. Team Work Assessment
10. Conclusions
11. Appendix: Source Material

## 1. Introduction

This report brings together the work our team did during the semester on an archive and reporting system for a local scout group, or rod. At the beginning, our idea was quite simple: old scout reports should be easier to store and find. As we moved through the assignments, interviews, prototype work, and testing, we realized that the problem was a bit wider than that.

Because the project changed during the semester, the earlier homework submissions do not always describe exactly the same version of the system. Some roles changed, Lenart Svetek joined the team shortly after the start, and the prototype slowly grew beyond the first archive-only idea. For this final report, we use the final prototype and final scope as the reference point, but we also explain where the project shifted along the way.

The main problem stayed the same from the beginning: documentation in a scout group is spread across too many places. Reports and useful notes can be on personal computers, Google Drive, Discord, email, paper, phone notes, or sometimes only in someone's memory. That makes older reports hard to find, hard to reuse, and easy to lose. Our proposed solution is one web application where a scout group can create, submit, store, search, and reuse its documentation.

## 2. Project Background and Objectives

The Archive System for a Local Scout Group is a web-based archive and reporting platform. The main goal is to make reporting less scattered and easier to repeat from year to year.

The app is meant for scout leaders, scoutmasters, treasurers, administrators, and other members who either write reports or need to find them later. Instead of searching through old emails, personal folders, Google Drive links, and printed documents, they would have one place with search, filters, report templates, and a clearer way to submit new reports.

The project objectives are:

- Create a unified place for accessing and submitting scouting reports.
- Make old reports easier to search, browse, and reuse.
- Support both desktop and mobile use.
- Standardize report creation through structured forms and templates.
- Allow users to upload existing documents when needed.
- Help scout leaders maintain group information that later supports yearly reports.
- Provide a clearer administrative overview of submitted reports inside the scout group.
- Improve long-term reliability through centralized storage and backup planning.

The planned technical architecture is:

- **Frontend:** React-based responsive website.
- **Backend:** Node.js server with a REST API.
- **Database:** PostgreSQL for users, report metadata, group data, and structured records.
- **File storage:** Server-side file storage for uploaded documents such as PDF, Word, and spreadsheet files.
- **Security:** User accounts, encrypted passwords with Argon2, role-based permissions, and administrator privileges.
- **Infrastructure:** Main server, backup strategy, and possible high-availability setup for long-term reliability.

The current prototype is still only a front-end prototype, located in `docs/4. naloga/index.html`. It does not include a real backend yet, so some parts are simulated. Still, it shows the main workflows we wanted to test and the kind of user experience we had in mind.

## 3. Final Project Scope

The final scope is broader than our first idea. At the start, we mostly imagined an archive where users could submit and find reports. After working on personas, interviews, user stories, and testing, it became clear that the archive alone would not solve the whole problem. Leaders also need a better way to collect information during the year, so they are not trying to remember everything at the end.

In the final version, we included:

- A login system with different user roles.
- A dashboard that routes users to the main parts of the application.
- A searchable archive organized by report type, year, category, and metadata.
- A report creation flow for structured reports.
- Upload support for existing report files.
- Template management for administrators.
- Attendance tracking for the scout group.
- Badge and skill progress tracking.
- Praise and scolding records.
- Member management.
- Export support for end-of-year group reports.

The archive and reporting workflow is still the center of the project. The group-management features are included because they support that workflow. Attendance, badge progress, and member notes are exactly the kind of information that later becomes part of yearly reports. Looking back, this is where our scope became more ambitious than planned, but the extra features came from the same reporting problem, not from adding unrelated functions.

Lenart Svetek joined the team one or two weeks after the beginning of the project. After joining, he was included in the same project work as the rest of the team.

## 4. Summary of Previous Homework

This chapter connects the previous homework assignments into one project story. Each assignment added something different. Some parts were useful immediately, while others mostly showed us what we still had not defined well enough.

### 4.1 Homework 1: Project Charter

The project charter was our first attempt to describe the idea properly. At that point, we described the system mainly as an archive for scouting documentation. In the final version, the scope is focused on one local scout group (rod), because that is where the people, reports, and workflows are easiest to define clearly. The charter also gave us the first version of the client context, product purpose, architecture, requirements, team structure, and deadline.

The most useful part of the charter was the problem statement. A scout group needs a unified way to access, create, submit, and store reports. The charter also introduced several important product requirements: responsive access, simple use, archive hierarchy, search, user accounts, backups, and secure storage.

Key decisions from the charter:

- The product will be a web application.
- Reports will be organized by year and category.
- Users will be able to create reports directly in the system.
- Users will be able to upload existing documents.
- The system will support backup and long-term reliability.
- The system will use a modular architecture with frontend, backend, database, and file-storage components.

### 4.2 Homework 2: Personas

The persona homework helped us stop thinking about "users" as one general group. In a scout group, people have different responsibilities, different levels of technical confidence, and different reporting habits. A treasurer does not use the system in the same way as a scout leader writing an activity report after a meeting.

The main personas were:

- **Samo Primer**, a digitally confident scout master who wants reliable access to mission plans and logs.
- **Amy Baum**, a junior scoutmaster who wants to reuse previous mission plans, create participant lists quickly, and submit plans from mobile devices.
- **Matevz Podgornik**, a scout leader who values simplicity and wants to finish administrative tasks quickly.
- **Andrej Kovac**, a treasurer who needs a simple way to upload and find annual financial reports.

These personas showed that the system has to work for both frequent and occasional users. Some users want fast mobile workflows, while others need simple desktop workflows for yearly or financial reports. Across all personas, the repeated needs were central archive access, mobile and desktop support, simple report creation, reusable templates, secure long-term storage, and clear feedback after submission.

### 4.3 Homework 3: User Stories

The user stories turned the personas into more concrete behavior. This was useful because it forced us to think in terms of tasks instead of just features. The same stories later helped us decide what to include in the prototype and what to test with users.

Important user stories included:

- As a scoutmaster, I want to search past mission reports so that I can use them as templates.
- As a scoutmaster, I want to create a participant list from the member database so that I do not manually type every name.
- As a scoutmaster, I want to see the status of a submitted mission plan so that I know if it has been approved.
- As a scout leader, I want to create an activity report on my phone so that I can submit it immediately after the activity.
- As a scout leader, I want my reports to be automatically saved so that I do not lose my work.
- As a scout leader, I want to record attendance during an activity so that I can track who participated.
- As a treasurer, I want to upload the annual financial report so that I can submit it to the scout group archive.
- As a treasurer, I want to search past financial reports so that I can compare previous financial data.
- As a treasurer, I want financial reports to be stored in a secure central archive so that important documents are not lost.

These stories shaped the prototype around archive search, report creation, member data, attendance, and secure storage.

### 4.4 Homework 4: Hypothesis Testing and Prototype

The hypothesis-testing homework was where the project became more grounded. We interviewed seven people from the scouting environment and focused on three areas:

- Managing scout group data during the year.
- Accessing and searching through the archive.
- Writing and submitting reports.

The results mostly supported our first assumption. Scout leaders often rely on memory, phone notes, paper notes, WhatsApp, Google Drive, Discord, or personal files. Reports are difficult to find because they are spread across different people, platforms, and formats. End-of-year reporting is also not standardized, so different report types can end up being submitted in different ways.

This homework also included the prototype in `docs/4. naloga/index.html`. At that stage, the prototype already showed login, dashboard navigation, archive browsing, report creation, template management, attendance tracking, badge progress, praise/scolding notes, and member management.

### 4.5 Homework 5: Usability Testing

For usability testing, three participants tested the prototype. We compared their task completion times with an expert user, which gave us a simple way to see where the prototype slowed people down.

The tested tasks were:

1. Navigate to the archive and open specific reports.
2. Create an end-of-year report for a function.
3. Add an attendance meeting and mark participants present or missing.
4. Complete multiple group-management actions and export an end-of-year group report.

Participants were generally two to three times slower than the expert user. The largest problem was attendance tracking. To us, the interface seemed simple because we already knew how it worked, but for first-time users some actions were not obvious enough.

The main usability issues were:

- A newly created meeting was not clearly visible.
- Double-clicking to mark absence was not discoverable.
- A report-type selection animation made participants think the selection was finished before pressing "Next".

The usability charts from this homework are included below:

![Task completion times by participant](../5.%20naloga/chart1.png)

![Average participant vs expert](../5.%20naloga/chart2.png)

### 4.6 Homework 6: Sprint 0

Sprint 0 was supposed to be the starting planning phase for the project. Its purpose was to define the initial backlog and prepare the first development sprint.

In practice, this part of the repository stayed incomplete. The Sprint 0 file contains only the headings for the backlog and Sprint 1 plan, so it does not provide enough detail to reconstruct a full sprint history. This is one of the weaker parts of our project documentation. If we continued the project seriously, we would need to write down the backlog, sprint goals, task owners, and completed tasks much more consistently.

### 4.7 Homework 7: Stakeholders

The stakeholder analysis helped us think beyond the people directly using the prototype. The system would affect the local scout group first, but it would also touch privacy, existing reporting habits, parents, and possibly the wider scouting organization.

Supportive stakeholders include:

- The local scout group (rod).
- Scout leaders and scoutmasters.
- Project team.
- Digital service providers.
- Scout Association of Slovenia as the wider scouting organization.
- Slovenian Ministry for Digitalization.

Neutral or potentially opposing stakeholders include:

- Financial accounting agents.
- European Union / GDPR enforcement context.
- Parents of scouts.
- Existing informal service providers such as Google Drive, OneDrive, and Discord.

The most important stakeholder concerns are resistance to changing existing workflows, privacy of personal data, GDPR compliance, and the risk that scout leaders continue using old informal tools if the new system is not clearly easier.

### 4.8 Homework 8: Team Patterns and Anti-Patterns

The final team-reflection homework focused on how we worked together, not only on the product. We identified several negative patterns: weak task delegation, unclear early role assignment, and lack of clear deadlines. These caused some rushed work and coordination issues, especially when several assignments had to be connected into one project story.

The team also identified positive patterns: a relaxed work environment, honest discussion, open brainstorming, and individual initiative. These helped us keep moving forward even when planning was imperfect.

This reflection also explains why the project changed during development. We learned from interviews, prototype work, testing, and our own coordination problems, then adapted the product and team roles as we went.

## 5. User Research and Requirements

From the research, we saw three main problems in the current scouting documentation process.

First, scout group data is not stored consistently. Many leaders rely on memory, paper notes, phone notes, or informal chat groups. That can work during everyday activities, but it becomes unreliable when reports must be written months later.

Second, the archive is incomplete and scattered. Reports may exist on Google Drive, Discord, personal computers, emails, paper, or only with a specific person. Scout leaders often search briefly and stop if the report is not easy to find, which means old work does not get reused as much as it could.

Third, report writing and submission are not standardized. Some reports are submitted through Google Forms, some are written in Word, some are printed and delivered physically, and some depend on previous examples that are difficult to locate. This is one reason why the same type of report can look different from year to year.

The final requirements are:

| Requirement area | Requirement                                                                                        |
| ---------------- | -------------------------------------------------------------------------------------------------- |
| Archive          | Users must be able to browse reports by year, type, function, activity, and category.              |
| Search           | Users must be able to search by keyword and filter metadata such as year, author, and report type. |
| Report creation  | Users must be able to create reports through structured forms.                                     |
| Upload           | Users must be able to upload existing report documents.                                            |
| Templates        | Users should be able to reuse old reports or predefined templates.                                 |
| Status tracking  | Submitted reports should show a clear status such as draft, submitted, approved, or archived.      |
| Mobile use       | Core workflows must work on mobile devices.                                                        |
| Desktop use      | Longer writing and archive-management workflows must work well on desktop.                         |
| Feedback         | The system must confirm important actions such as saving, uploading, and submitting.               |
| Auto-save        | Drafts should be saved automatically to reduce the risk of lost work.                              |
| Group data       | Attendance, badge progress, and member notes should support end-of-year reporting.                 |
| Security         | Users must log in, passwords must be encrypted, and access must be role-based.                     |
| Privacy          | The system must minimize stored personal data and support GDPR-compliant handling.                 |
| Backup           | The archive must be backed up so reports are not lost.                                             |

## 6. Prototype and Final App Showcase

The prototype shows our final application concept. It is implemented as a local HTML prototype at:

`docs/4. naloga/index.html`

Demo users in the prototype:

- `admin / admin`
- `petra / tabornik`
- `jan / tabornik`

The main prototype areas are:

- **Login:** users access the system through a username/password login.
- **Dashboard:** users choose between archive, report submission, group management, and administrative functions.
- **Archive:** users search and browse reports in a structured hierarchy.
- **Report submission:** users create new reports using a step-by-step flow.
- **Templates:** administrators manage report templates.
- **Group management:** users manage attendance, skills, praise/scolding entries, members, and report export.

### 6.1 Screenshot: Login and Dashboard

![Dashboard](screenshots/dashboard.png)

### 6.2 Screenshot: Archive Search and Browsing

![Archive](screenshots/arhiv.png)

### 6.3 Screenshot: Report Creation Flow

![Report creation](screenshots/novoPorocilo.png)
![Report creation](screenshots/novoPorocilo2.png)
![Report creation](screenshots/novoPorocilo3.png)
![Report creation](screenshots/novoPorocilo4.png)

### 6.4 Screenshot: Group Management / Attendance

![Attendance](screenshots/prisotnost.png)

### 6.5 Screenshot: Final Submitted Report or Archive Detail

![Submitted report](screenshots/porocilo.png)

## 7. Usability Testing and Evaluation

The usability test showed that the prototype was understandable enough for participants to complete the main tasks, but it also revealed several interaction problems that we did not notice while building it.

Participants completed all major tasks, but they were generally slower than the expert user. Attendance tracking caused the most difficulty, mainly because the absence interaction depended on double-clicking and newly created meetings were not visible enough. This was a good reminder that an interface can feel obvious to the people who built it and still be confusing for someone seeing it for the first time.

The most important improvements are:

- Make newly created meetings immediately visible after creation.
- Replace the double-click absence interaction with a clearer control.
- Make the report type selection flow clearer, especially the transition to the "Next" step.
- Test the prototype again after these changes.
- Include mobile testing, because several target workflows happen on phones.

The test results did not suggest that the whole idea was wrong. Instead, they showed that the prototype needs clearer feedback and more obvious controls. Participants saw value in having one place for archive and reporting work, but the interface still needs another iteration before it would be comfortable for real use.

## 8. Stakeholder and Risk Analysis

The project has practical value for a local scout group because it can reduce administrative work, standardize reporting, and make the archive easier to use in real situations. The important part is that the archive should not just be a folder where old documents are stored. It should also help people create the next report more easily.

The biggest project risks are:

| Risk                                                        | Impact                                                         | Mitigation                                                                                                                |
| ----------------------------------------------------------- | -------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| Scout leaders continue using Google Drive, Discord, email, or paper | The new system may not become the real source of truth.        | Make the system clearly easier than the current workflow and support importing or uploading existing files.               |
| Resistance from less technical scout leaders                 | Some scout leaders may avoid the tool.                         | Keep the interface simple, mobile-friendly, and tested with real members of the scout group.                              |
| GDPR and privacy concerns                                   | The system may store personal data about minors.               | Minimize collected data, use role-based access, encrypt passwords, document privacy rules, and support deletion requests. |
| Unclear ownership after the academic project                | The system may not be maintained.                              | Define a handover plan, hosting plan, backup process, and maintenance owner.                                              |
| Scope creep                                                 | Too many features may delay the core archive/reporting system. | Prioritize archive, report creation, search, upload, and security before advanced modules.                                |
| Incomplete sprint documentation                             | Some planning evidence is missing from the repository.         | Add the final sprint backlog and sprint history before submission.                                                        |

## 9. Team Work Assessment

The final team consisted of five members. Lenart Svetek joined one or two weeks after the beginning of the project and became a full team member from that point onward. The roles below describe the main responsibility areas, although in practice the work was not always separated perfectly and several people helped outside their main role.

| Group member   | Final role                                      | Main contribution |
| -------------- | ----------------------------------------------- | ----------------- |
| Gregor Ahlin   | Project lead / DevOps                           | Helped coordinate the overall direction, repository work, and technical organization. |
| Luka Svenšek   | Lead programmer / Developer                     | Worked on the technical side of the project and helped turn the idea into a working prototype. |
| Žan Luka Remec | Scrum Master / Requirements and domain research | Contributed scouting domain knowledge, helped organize the work, and connected user needs with project requirements. |
| Matej Kodermac | Designer / Product contributor                  | Worked on the product and interface direction and helped make the prototype easier to understand. |
| Lenart Svetek  | Developer                                       | Joined shortly after the start and contributed to development work as a full team member. |

### 9.1 Team Process Assessment

The team had both strengths and weaknesses during the project. The biggest weakness was that task delegation was not clear enough at the beginning. Because roles were assigned quickly and not very systematically, there were moments when everyone was doing a bit of everything. Deadlines were also not always set early enough, which made some stages more rushed than they needed to be.

At the same time, the team environment was relaxed and honest. Members could discuss ideas openly, give feedback, and take initiative when something needed to move forward. That helped the project keep improving even when our planning process was not perfect.

The main lesson is that clearer task ownership, earlier deadlines, and more consistent sprint planning would have improved the project. We are satisfied with the final direction, but we would organize the work differently if we started again. The final result still benefited from strong domain knowledge, practical user research, and a prototype that responds to real scouting problems.

## 10. Conclusions

The project confirmed that a local scout group has a real documentation and archive problem. Reports and group data are fragmented across different tools, formats, and people. Scout leaders often rely on memory, personal files, or informal communication channels, which is not reliable enough for long-term archiving.

Our proposed archive system addresses this by creating one web application for searching, writing, submitting, storing, and reusing reports. The prototype demonstrates the main workflows and expands the original archive idea with group-management tools that make end-of-year reporting easier.

User research and usability testing support the general product direction. The concept is useful, and participants responded positively to the idea of a simpler archive and reporting tool. The main issues found during testing were interaction problems, especially in attendance tracking and the report creation flow.

The project is a good foundation for a practical scouting archive and reporting platform. It is not finished software yet, and the prototype still has rough parts, but it shows a direction that makes sense for the problem. The next stage should focus on fixing the tested usability issues, finishing the prototype screens, implementing the backend, defining privacy and security details, and preparing a realistic handover or deployment plan.

## 11. Appendix: Source Material

The final report is based on the following previous homework files:

- `docs/1. naloga/projectCharter.md`
- `docs/2. naloga/persona.md`
- `docs/2. naloga/persona1.md`
- `docs/2. naloga/persona2.md`
- `docs/2. naloga/Persona 3.md`
- `docs/3. naloga/userStories.md`
- `docs/4. naloga/Hypothesis testing.md`
- `docs/4. naloga/index.html`
- `docs/5. naloga/Homework 5 - user testing.md`
- `docs/5. naloga/chart1.png`
- `docs/5. naloga/chart2.png`
- `docs/6. naloga/sprint0.md`
- `docs/7. naloga/stakeholders.md`
- `docs/8. naloga/antipaterns.md`
