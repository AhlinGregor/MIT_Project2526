## Univerza na Primorskem, Fakulteta za matematiko, naravoslovje in informacijske tehnologije
# MIT project charter: Archive System for the Scout Association of Slovenia
**Prepared By: Luka Svenšek (89231433), Matej Kodermac (89221193), Žan Luka Remec (89231391), Gregor Ahlin (89231290)**  
**Date: 22nd Feb 2026**  
**Version: 2.0**  
[GitHub repo](https://github.com/AhlinGregor/MIT_Project2526/)

## 1. Project name
Archive System for the Scout Association of Slovenia

## 2. Project client
The project client is Scout Association of Slovenia

## 3. Purpose and objective of the project
The purpose of this project is to establish a new and improved archive management system for the Scout Association of Slovenia. The objective is for the whole association to want to use the product.

## 4. Description of the finished product

The proposed solution will be implemented as a web application, accessible via computer and mobile phone.
The system will be designed in a modular way, so that the database, user interface, backend, and file system will each represent a separate module. This allows easier upgrades and expansion of functionality in the future.

The proposed system has a file structure specifically designed for archiving the scout association’s reports according to their needs. For easier accessibility, it also allows users to fill out reports directly on the platform, enabling standardization and ease of use. It will also allow simple browsing of the archive using category filters and keyword search. Due to a more rigid structure, it ensures greater transparency and organization of archived files.

The solution will provide a unified way of submitting reports that will be accessible to people with different levels of computer skills via a website. It will enable access to the archive with advanced search (by categories, years, keywords, etc.), creation of reports directly within the system via a form, submission of reports by uploading a document, and archive management by an administrator.


**Proposed technical architecture:**
* **User interface:** A website developed using React; the design will also be adapted for mobile devices.
* **Backend:** Implemented in Node.js, with a REST API for communication with the database.
* **Database:** PostgreSQL for structured data (metadata, users).
* **File system:** For storing the actual documents (e.g. PDFs).

**Feasibility of the architecture:**
* **Availability of technology:** The listed development technologies are available and well established in the industry.
* **Team skills and experience:** The team already has experience and skills in working with the listed technologies.
* **System compatibility:** The system does not require compatibility with other systems and only allows the submission of reports via an internal form.
* **Performance and scalability:** The system is designed to be sufficiently powerful for user needs; future scalability would mainly be desirable in terms of additional data storage, which represents a trivial problem.
* **Security and reliability:** The system will be designed with security and reliability in mind. Users will have accounts to prevent misuse by unauthenticated users. User passwords will be encrypted using Argon2. The system will also include users with administrative privileges for editing and deleting inappropriate content.
* **Hardware and infrastructure requirements:** In terms of infrastructure, a main server will be required to host the web portal, data storage, a one-to-one instant copy of the system for so-called hot standby / high availability failover server, and a backup at a remote location with less frequent data replication.
* **Timeline and resources:** The project is divided into several phases, together comprising approximately three months of development.

**Requirements:**
* a unified system for accessing, submitting, and writing reports,
* system access provided via a website adapted for different devices,
* a simple and user-friendly interface,
* archive hierarchy organized first by years and then by report categories (functions, activities, work plan, patrol work, club report, financial report),
* ensuring the possibility of data backup for data robustness.






## 5. Reporting
Everybody reports directly to team lead - Gregor Ahlin.

## 6. Available funds
None. (For now.)

## 7. Shipping deadline
The shipping deadline for the finished project is 22nd Feb 2027.

## 8. Team structure
The team consists of Lead ideas officer Žan Luka Remec, Lead programmer Luka Svenšek, Chief financial officer Mater Kodermac and the project lead Gregor Ahlin.

## 9. Date of order
22nd Feb 2026

## 10. Client and signature
Scout Association of Slovenia
## Persona 1: Amy Baum - Scoutmaster

### 1. Description
Amy is a 19-year-old university student who has been a scout since the age of seven. She is very familliar with computer tools like Word document editor, email and other tools used for creating and distributing documents. Amy is tech-savvy and expects software to work as intuitively as Instagram or Notion. 

She is responsible for organizing monthly excursions. While she loves the outdoors, she finds the administrative side of finding old plans, retyping participant lists, and digging through old emails for a simmilar plans submited in the past tedious. She often works on these mission plans in the back of a bus or during breaks between her university lectures.

### 2. Function
**Junior Scoutmaster** 
This role requires mission planning and preparation.

### 3. Screening Question
"In the past year, how many scout mission plans or activity logs have you personally drafted and submitted for approval?"

### 4. Think-See-Feel-Do


**Think**
- I know we’ve done a hike to the same location before; I just need to find that old plan so i don't have to start from scratch.
- I hope the system doesn't crash before i submit.

**See**
- A mess of Google drive folders, local word documents and buried email attachments. No single archive of all the past mission plans.

**Feel**
- Annoyed by repetitive data entry.
- Pressured to get plans submitted on time so the scouts can actually go on the trip.
- Relieved when a template actually works.

**Do**
- Searches her email folders for keywords.
- Copies and pastes text from old Word docs.
- Rewrites the new mission plan and submites.


### 5. Problem Scenarios, Current Alternatives, and Value Proposition

| Problem Scenarios | Current Alternatives | Your Value Proposition |
| :--- | :--- | :--- |
| Amy wastes time searching for previous mission plans to use as templates. | Searching through old emails or Google drive folders. | A centralized and searchable archive where all past missions are ordered by type and date. |
| Creating a participant list on a mobile device is unpractical and slow. | Writing names on paper and typing them into a laptop later at home. | A mobile interface with a "Select All" and "Add participant" feature from the member database. |
| Amy is unsure if her submitted plan has been reviewed or approved by the Senior Scoutmaster. | Sending follow-up emails to her supervisors to get the final aprroval. | Status tracking (Draft, Submitted, Approved) with possible notifications. |
| She needs to access mission plan details while on a scout mission without her laptop. | Printing out paper copies that often get wet or lost during the hike. | Offline mobile access to all submitted mission plans and emergency contact info. |

### 7. Full Narrative Scenario: Creating a Mission Plan (Mobile)

**Scenario:** Amy is on the bus home from university and realizes she needs to submit the plan for Saturday’s hike.

**The Action:** She opens the scout app on her phone. Instead of starting a blank document, she uses the "Duplicate Past Mission" feature to pulls up simmilar plan from the last year. She quickly updates the date, participants list and the description section. 

**The Resolution:** She taps the "Participant List," checks the boxes for all of the scouts who will participate, and hits "Submit". She immediately sees  status update: "Submited and waiting for aproval.". She closes the app knowing she didn't have to do tone of paperwork.## Matjaž the Leader

**Screening Question:**  
Do you regularly create, submit, or review scout activity reports and logs using both a computer and a mobile device?

**Persona Description:**

Matevž Podgornik is 20 years old and an active scout leader. He has grown up in the scouting organization and recently took on more responsibility within his group. He prefers being outdoors with his scouts rather than sitting behind a screen, and he uses technology only when necessary.

He is not particularly enthusiastic about digital systems, but he understands that documentation is part of his role. He uses the archive system mainly to write and store activity reports for missions, excursions, and events his group participates in.

Matevž often works on reports shortly after activities, sometimes from his phone while still in the field, and sometimes later at home on his laptop. His biggest concern is making sure reports are stored safely until the annual overview is due. He does not want to worry about losing documents or searching through different devices to find them.

He values simplicity. If the system is slow, complicated, or requires too many steps, he becomes frustrated quickly. He wants to complete administrative tasks efficiently so he can focus on leading his scouts.

**Thinks**

- “I just want to finish this report quickly.”
- “I hope this saves automatically.”
- “Everything should be in one place.”

**Sees**

- Different devices (phone and laptop) depending on where he is
- Deadlines for reports approaching
- Limited time between studies, scouts, and personal life

**Feels**

- Responsible for properly documenting activities
- Slightly impatient with slow or complex systems
- Relieved when reports are submitted and safely stored

**Does**

- Writes mission and activity reports
- Takes roll call during excursions using his phone
- Switches between mobile and desktop devices
- Submits reports and stores them for later review
## Problem Scenarios, Current Alternatives, and Value Proposition

| Problem Scenarios                                        | Current Alternatives                                 | Your Value Proposition                                  |
| -------------------------------------------------------- | ---------------------------------------------------- | ------------------------------------------------------- |
| Matevž needs to quickly write a report after an activity. | Writes notes in a notebook or separate document and transfers them later. | Provide an integrated report editor accessible from mobile and desktop.    |
| Matevž worries about losing reports before the annual deadline.   | Saves files locally on his phone or computer.              | Provide centralized cloud storage with automatic saving.         |
| Matevž needs to take roll call of his platoon.                     | Uses a paper notepad or his phones default notepad.               | Provides an easy to use list of participants and an option to save it securely.             |
| Matevž wants minimal time spent on administration.      | Uses basic tools that are not optimized for scouting documentation.    | Provide a streamlined interface with clear, simple steps. |
## Andrej the Treasurer

**Screening Question:**  
Are you responsible for managing your scout unit’s finances and submitting the annual financial report?

**Persona Description:**

Andrej Kovač is 35 and works as an electrical technician. In scouts, he volunteers as the unit treasurer. He usually wears practical clothes and his scout shirt at meetings. He brings his personal laptop when he needs to do administrative work.

He keeps track of the unit’s income and expenses in a simple Excel spreadsheet. Most of the year he only updates it occasionally, but at the end of the year he has to prepare and submit the financial report. He usually does this at home in the evening.

Andrej is comfortable using basic computer tools like email, spreadsheets, and websites, but he doesn’t want to deal with complicated systems. Since reporting only happens once a year, he often forgets where to submit the report or how it worked last time. He just wants a simple place where he can upload the report and know it’s done.

He also sometimes needs to check old financial reports, for example to compare expenses or reuse information. Right now, those files are usually somewhere in his email or on his computer, and it can take time to find them.

**Thinks**

- “I just want to upload the report and finish this.”
- “Where did I save last year’s report?”
- “I hope I’m submitting the right file.”

**Sees**

- Financial files stored in different folders and emails
- No single clear place where everything is stored

**Feels**

- Responsible for submitting correct financial data
- Slightly annoyed by administrative work
- Relieved when the report is submitted

**Does**

- Uses Excel to track finances
- Prepares and submits one financial report per year
- Searches old emails or folders to find past reports
- Works on reports at home on his laptop
## Problem Scenarios, Current Alternatives, and Value Proposition

| Problem Scenarios                                        | Current Alternatives                                 | Your Value Proposition                                  |
| -------------------------------------------------------- | ---------------------------------------------------- | ------------------------------------------------------- |
| Andrej is not sure where to submit the financial report. | Sends it by email or asks others where to upload it. | Provide one clear place to upload financial reports.    |
| Andrej cannot quickly find previous financial reports.   | Searches email or old folders manually.              | Provide a searchable archive organized by year.         |
| Andrej worries about losing reports.                     | Stores files on his personal computer.               | Provide secure central storage with backup.             |
| Andrej wants a simple and quick submission process.      | Uses informal or inconsistent submission methods.    | Provide a simple web interface with clear upload steps. |
## Persona

### 1. Name

**Samo Primer**

### 2. Function

**Scout Master**

### 3. Screening Question

*Do you regularly create, submit, or review scout reports and logs using a computer and a mobile device?*

### 4. Description

Samo Primer is a young and active member of society, aged 22. He is very familiar with digital tools and online platforms and uses them daily for communication, organization, and documentation. He is a casual but regular user of the archive system, primarily interacting with it when planning and documenting scout missions.

His main goal is to maintain a clear, detailed, and well-organized overview of scout reports and scout logs.

His primary concerns are the long-term availability of stored data and the ease of use of the system. He wants to be confident that important documents will not be lost and that the system will remain accessible in the future.

**Needs:**

* An easy and structured way to manage scout reports and logs
* Reliable and long-term access to archived data
* A system that works well on both mobile devices and desktop computers

## 5. Problem Scenarios and Alternatives

**What job are we doing and for whom?**
The system supports Scout Masters like Samo in planning, documenting, and archiving scout missions and activities.

**How do we know if it is working?**
The system is successful if Samo can easily create, submit, search, and retrieve reports without technical difficulties. 
If he doesn't have to use other tools (such as paper documents or personal cloud storage) in parallel.

**Usage characteristics:**

* Samo's regiment chooses to use the product voluntarily.
* There is no strict time limitation on usage.
* The system is used for every scout mission and related documentation.
* Samo primarily uses a mobile device to record scout logs during missions.
* He uses a desktop or laptop computer to manage and write longer reports.

## Functional Requirements

* **Search:**
  The user must be able to search for reports using filters such as category, date, and author.

* **Authentication:**
  Users must be able to log in using an email address or username, with the login process taking less than one minutes.

## Usability Requirements

* **Navigation:**
  The system must allow access to any page within a maximum of three clicks.

* **Feedback:**
  The system must provide real-time feedback after each significant user action.

## Accessibility Requirements

* **Screen Reader Compatibility:**
  The system must be fully navigable using assistive technologies for visually impaired users.

* **Visual Contrast:**
  Text must have sufficient contrast with the background to ensure readability for users with visual impairments.

## Performance Requirements

* **Load Time:**
  Pages must load in less than three seconds on an average internet connection.

* **Responsiveness:**
  The user interface must respond to user input in less than 200 milliseconds.

## Context Requirements

* **Mobile Usage:**
  The application must work seamlessly on mobile devices with a responsive layout that adapts to different screen sizes.

* **Desktop Usage:**
  The web application must load and function correctly on desktop computers and laptops.

* **Offline Mode:**
  Users must be able to access previously saved content even when they are not connected to the internet.

## Scenario 1: Creating a Mission Plan (Mobile)

Samo is preparing for an upcoming scout mission and needs to create and submit a mission plan. The plan must include a description of the activity, the date, and a list of participants.

He opens the application on his mobile phone and logs in. After authentication, he selects the **Create Plan** option, which opens a form. He enters the mission description, date, and other relevant information. Before submitting the plan, he opens the scout member list and selects the participants.

After submitting the plan, the system provides confirmation that the document has been successfully saved.

## Scenario 2: Writing a Mission Report (Desktop)

After returning from a scout mission, Samo needs to write a report documenting the activity.

He opens the website on his computer and signs in. Using the navigation menu, he selects **Create Report**. When the form opens, he enters all required information and writes the mission report. After completing the report, he clicks **Submit Report**.

The system responds with a confirmation message indicating that the report has been successfully stored in the archive.## Persona 1: Amy Baum - Scoutmaster

**As a** scoutmaster
**I want to** search for past mission reports
**so that** I can use them as a template for future reports.

**Test name:** Search previous mission plans

**Preconditions:**

* User is logged in
* Past mission reports exist

**Steps:**

* User opens the mission archive
* User enters keywords or filters in the search field
* System displays missions matching the search filters

**Expected results:**
User can browse and download the mission plans.

## Persona 1: Amy Baum - Scoutmaster

**As a** scoutmaster
**I want to** create a participant list from the member database
**so that** I do not have to manually type every name.

**Test name:** Create participant list from member database

**Preconditions:**

* User is logged in
* Member database exists

**Steps:**

* User creates a new mission plan
* User opens the participant list section
* User selects members from the database
* User saves the participant list

**Expected results:**
Selected members are added to the participant list.

## Persona 1: Amy Baum - Scoutmaster

**As a** scoutmaster
**I want to** see the status of my submitted mission plan
**so that** I know if it has been approved.

**Test name:** Mission plan status tracking

**Preconditions:**

* User is logged in
* A mission plan has been submitted

**Steps:**

* User opens the list of submitted mission plans
* User selects a specific mission plan

**Expected results:**
System displays the plan status (Draft, Submitted, Approved).

## Persona 2: Matevž Podgornik - Leader

**As a** scout leader
**I want to** create an activity report on my phone
**so that** I can submit it immediately after the activity.

**Test name:** Create activity report on mobile

**Preconditions:**

* User is logged in on a mobile device

**Steps:**

* User opens the application
* User selects "Create report"
* User enters activity details
* User submits the report

**Expected results:**
The report is successfully saved and submitted.

## Persona 2: Matevž Podgornik - Leader

**As a** scout leader
**I want to** have my reports automatically saved
**so that** I do not lose my work.

**Test name:** Auto-save report

**Preconditions:**

* User is editing an activity report

**Steps:**

* User starts writing a report
* System automatically saves the content after a short interval

**Expected results:**
The report draft is automatically saved.

## Persona 2: Matevž Podgornik - Leader

**As a** scout leader
**I want to** record attendance during an activity
**so that** I can track who participated.

**Test name:** Record attendance

**Preconditions:**

* Member list exists
* User is logged in

**Steps:**

* User opens the attendance list
* User marks members as present
* User saves the attendance

**Expected results:**
Attendance data is successfully stored in the system.

## Persona 3: Andrej Kovač - Treasurer

**As a** treasurer
**I want to** upload the annual financial report
**so that** I can submit it to the organization.

**Test name:** Upload financial report

**Preconditions:**

* User is logged in

**Steps:**

* User opens the financial reports section
* User clicks "Upload report"
* User selects a file (Excel or PDF)
* User submits the report

**Expected results:**
The financial report is successfully uploaded and stored.

## Persona 3: Andrej Kovač - Treasurer

**As a** treasurer
**I want to** search past financial reports
**so that** I can compare previous financial data.

**Test name:** Search financial report archive

**Preconditions:**

* Financial reports exist in the system

**Steps:**

* User opens the financial report archive
* User selects a year or uses the search function

**Expected results:**
System displays financial reports matching the search criteria.

## Persona 3: Andrej Kovač - Treasurer

**As a** treasurer
**I want to** store financial reports in a secure central archive
**so that** I do not lose important documents.

**Test name:** Secure report storage

**Preconditions:**

* User is logged in

**Steps:**

* User uploads a financial report
* System stores the report in the archive
* User logs out and logs back in

**Expected results:**
The uploaded report remains accessible in the archive.
## Questions
**1.) Who are you and what is your function within your scouts organization?**
- P1: Tamara MF Manfreda, Vodnik, PP načelnica
- P2: Jutra Vukušič, vodnica 8 razreda, disciplinska komisija
- P3: Žiga Kranjc, vodnik voda
- P4: Adam Kanalec, Vodnik voda, MČ Načelnik
- P5: Tinkara Kavčič, vodnica GG voda
- P6: Ella Stamsnijder, Načelnica roda puntarjev tolmin
- P7: Žan Luka Remec, RR načelnik


**2.) If you have one, how do you currently manage the data of your scouts group? (badge progress, attendance, scolding and praise, ...)**
- P1: Po spominu
- P2: Veščine si napiše v fizično beležko, vse ostalo ni važno
- P3: Po spominu. Neki na telefon
- P4: Večino po spominu, če je večja akcija si napišem na papir in ga probam ne zgubit ali pa na telefon
- P5: Ponavad na notes na telefonu oziroma na whatsapp skupini z sovodniki
- P6: Na telefon v beležko
- P7: Trenutno nimam, drgač pa sm to delu večinoma po spominu


**3.) Do you find managing your scouts group data, the way you do now in any way difficult, tedious or confusing?**
- P1: Ne zapomnem si vseh imen veščin, kdo je naredu katero stvar
- P2: Ne
- P3: Ne
- P4: Ni tok težko, ampak sem anksious da ne ki pozabm
- P5: Ni težko, ampak nimam vsehga na enem mestu
- P6: Ne, bl je to da ne rabmo oddajat razn za občni zbor, kadar pa ne veš. Ne daja se sproti
- P7: Niti ne


**4.) When creating an activity, do you ever check the reports of previous activities of the same type?**
- P1: Ne
- P2: Ne
- P3: Ja za taborjenje evalvacijo
- P4: Razen za veliko akcijo (zimovanje) ne
- P5: Delam manjše akcije, tko da ne
- P6: Samo če mam js sama to poročilo.
- P7: Samo, če sem jih delal jaz v preteklosti


4.1) If yes, what is your process?
- P1: 
- P2:
- P3: Na listu fizično sm dubu
- P4: Pisal osebmo prejšnji vodji akcije, če ima slučajno ona in dobil na ta način
- P5:
- P6: Pogledam svoje zapiske, če je tam je, če ni ni
- P7: Pogleda svoje datoteke na računalniku


4.2) If no, why not?
- P1: Za posamezne aktivnosti ne, za akcije pa bolj za strukturo akcije
- P2: Nevem, se zmislem ki bi delala in proba uno najboljš speljat
- P3:
- P4:
- P5: Ker so manjše akcije
- P6:
- P7: Ne vem kje jih najt


**5.) If you wanted to check different types of reports from previous years, how would you do that?**
- P1: Pogleda v svoj osebni arhiv na računalniku ozoroma praša posameznike
- P2: Uporabne povezave na discordu in poskušala poiskat prave povezave
- P3: Na drive bi šu, ampak tam ni vseh
- P4: Na google drive bi pogledu, če je je, če ni ni. Mogoče pisal osebno posameznikom.
- P5: RPT zakladnik, če je ta je, če ni ni. Če ne mogoče na kšnem discord kanalu
- P6: na google drive. Če je tam je, če ni ni. Mogoče pogledam na discord.
- P7: Večina teh poročil je nedostopna, predvsem ker ni skupnega arhiva, ampak so razpršeni med posamezniki.


**6.) Do you find accessing and searching through the current archive in any way difficult, tedious or confusing?**
- P1: Nima dostopa do arhiva
- P2: Ne
- P3: Razpršene poročila
- P4: Ni nadležno, samo cajt uzame
- P5: ne
- P6: Nevem če, drive je kr ok
- P7: Kater arhiv? Drive je pomanjkljiv, edino kar najdem na svojem računalniku.


**7.) Do you personally have to write any end-of-year reports? If yes, what is your process for writing and submitting each of them?**
- P1: Napišeš po spominnu in oddaš na anketo. Za načelnico na word in sprinta in odda fizično
- P2: Dobim se z sovodnikom, dobiva file in napiševa kar se spomneva.
- P3: Preberem evalvacijo akcije, napišem word poročilo in izpolnem obrazec za akcijo, za vod pa samo obrazec
- P4: Se odločim pomembne točke, pr vsaki malo napišem, najprej na list na grobo, potem na word. 
- P5: Pogledam poročilo od enga leta prej, z sovodniki, direktno v google forms in screenamo
- P6: Pogledam kar je od lani (moje + prejšnje funkcije). Ne vem kako more zgledat. Osnovam na prejšnja poročila.
- P7: Ko poročilo voda, se morem spomnit vse iz glave in ga oddam prek google obrazca. Ko delam poročilo funkcije, ga napišem na urejevalnik besedil na računalniku, nato sprintam in fizično prinesem na občni zbor.


**8.) Has the process of writing and submitting end-of-year reports changed in any way in your time as a scout leader?**
- P1: Včasih smo mel word obrazce, ki so sedaj ankete
- P2: Na bujš, zej je bl u uzi dobit stvari kod so in kam jih oddat
- P3: Ne
- P4: Ne
- P5: ne
- P6: Ja, smo šli iz papirja na google form
- P7: Ja, včasih smo to delal na papir vse, potem google drive, potem prek maila, zej prej google obrazca in del še vedno na papir.


**9.) Have the report templates or requirements changed in any way in your time as a scout leader?**
- P1: Nevem
- P2: Ja se je.
- P3: Ne
- P4: Ne
- P5: Nevem če
- P6: Drugačna vprašanja
- P7: Da, druga vprašanja.


**10.) Do you find the current workflow of creating and submitting different types of reports in any way difficult, tedious or confusing?**
- P1: To da moreš dat v fizični obliki
- P2: Občasno nadležen, skeptična da dela na telefonu
- P3: Confusing. Ne vem kako nardit (kaj vse more bit not)
- P4: Malo tedious, ker ne vem kako more zgledat. Ne vem kako delajo to drugi.
- P5: Nebi rekla
- P6: Ja, nadležno. Mogla bi sproti. Za vod se ne spomnem. Morem iskat.
- P7: Da, različna poročila je treba oddati na različne načine, nekatera moram celo sprintat in prinest fizično.

Ideje:
- Univerzalno poročilo, ki se updejta vsako leto. Še vedno imamo letna poročila, ampak namen univerzalnega poročila je da ko pripravljap akcijo lahko pogledaš le tega.

## Answers
### Who did we interview?
- scout leaders
- head of the scouting organization
- head of the scouting organization families
- disciplinary committee
### Questions regard three main themes:
- Managing the data of your scouting group during the course of the year
- Accessing and searching through the archive
- Writing and submitting reports
### Managing the data of scouting groups
- Most scout leaders rely on their memory or they write important information in their notebooks (phone and paper). Some use social apps like WhatsApp for both messaging their fellow scout leaders as well as saving the group's info
- Most don't find this difficult, tedious or confusing, but they did express that they sometimes feel anxious that they will forget something. Some do express that they forget things, because tracking is not really mandatory except for the end-of-year report. They also said that they do not have all the data saved in one place, which makes this a bit tiresome.
### Accessing and searching through the archive
- Most only check previous reports for larger multi-day activities and they do this by checking their own previous reports or ask specific people that had that activity for the report.
- They stated that accessing the archive is not difficult per se, but that the reports are spread out and lacking. Most look through a shared Google Drive or Discord and if they find it they do, if they don't they don't bother further. Maybe they would write to specific personnel who may have that report saved locally on their computer.
- The archive is spread out and lacking. They do not have a common archive that serves such a function.
### Writing and submitting reports
- Most rely on their memory to write the report at the end of the year. Some have some personal notes. Some look at their report from the previous year and write the new one based on it. Then depending on the report type they have to submit it differently. For the scouting group and activity report they use Google Forms, for function reports they write it in a text editor and then print it and bring it to the Annual General Meeting physically.
- The process of writing and submitting reports has changed multiple times over the years of some scout leaders. First they had paper templates that needed to be filled out with a pen, then they moved to writing them digitally and submitting them on Google Drive and then e-mail. Lastly as it is now they fill out Google Forms. For the function reports it has always stayed the same process of submitting the physical paper.
- Some reports have also changed their content and required information.
- Different reports need to be submitted in different ways, some even have to be printed and brought physically.
### Conclusion
Based on the answers we got from our potential users, we confirmed our hypothesis that:
1. The scouts organization does not have a clear and easy way to manage their group data during the course of the year.
2. The archive is practically non-existent, as the reports are first of all lacking and are also spread out with different people and as different file types.
3. The process of writing and submitting the end-of-year reports is not standardized and therefore unclear.
### Prototype
When shown, the scout leaders expressed excitement and praised the simplicity and usefulness of the prototype.1. Navigate to the archive, find and open the reports for "načelnik" function 2024, group report 2024 and "Dan tabornikov" 2023.
2. Navigate to the section for creating reports and create a end-of-year report for "GG načelnik", fill it out quickly and submit it.
3. Add an attendance meeting for zimovanje and mark some scouts that they were present and others for missing.
4. Mark Eva, Sara and Tim that they fulfilled the "prenašanje ponesrečencev" requirement for the "bolničar" badge. Then add a scolding for Luka and lastly export the end-of-year group report.

P1: 36s, 41s, 53s, 48s 
Pri označevanju prisotnosti ni niti bral, ampak se zanašal na vizualne ques. Pri izbiri ustvarjanja poročila, se je zataknu, pr izbiri poročila, ker trzne, ampak moraš še klikniti gumb naprej.

P2: 31s, 36s, 1m38s, 1m03s
Ni znal označit odsotnosti (ni vedel, da mora klikniti dvakrat). Enako kot prvi mu ni našel novo ustvarjenega srečanja.

P3: 33s, 40s, 1m07s, 54s

My timing: 21s, 22s, 23s, 27s

# Usability Test Report

3 participants tested 4 tasks. Times in seconds.

| Task                    | P1  | P2  | P3  | Expert |
| ----------------------- | --- | --- | --- | ------ |
| 1 – Archive navigation  | 36  | 31  | 33  | 21     |
| 2 – Create a report     | 41  | 36  | 40  | 22     |
| 3 – Attendance tracking | 53  | 98  | 67  | 23     |
| 4 – Multi-action        | 48  | 63  | 54  | 27     |

Participants were on average **2–3× slower** than the expert, with Task 3 being the biggest problem.

![Task completion times by participant](chart1.png)
![Average participant vs expert](chart2.png)

## Key Issues Found

1. **Created meeting not clearly visible**
2. **double-click to mark absence** not discoverable
3. **Misleading animation** in report creation implies selection is done before pressing "Next".
## Sprint 0
**Backlog**  
Put the backlog of things to do here.



**Sprint 1 plan**  
Things to do in sprint 1.