## Persona

### 1. Name

**Samo Primer**
![Image](persona1.jpg)

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

The system responds with a confirmation message indicating that the report has been successfully stored in the archive.