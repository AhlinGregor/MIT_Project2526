## Persona

### 1. Name

**Matevž Podgornik**
![Image](persona2.jpg)

### 2. Function

**Scout Leader**

### 3. Screening Question

*Do you regularly create, submit, or review scout reports and logs using a computer and a mobile device?*

### 4. Description

Matevž Podgornik is an active scout leader. At the young age of 20 he is very familiar with the scouts and its leadership roles. He likes the outdoors better then staying inside and is not a big fan of technology. He uses it as little as possible. Nontheless he does not dislike using the archive system. He uses it to document his group.

His main goal is to write reports for various activities his group takes part in.

His primary concern is storage of the reports untill the due date of a yearly report. He wants to have all of his documents in the same place.

**Needs:**

* A fast and easy way to write his reports
* Reliable short-term access to reports
* A system that works well on both mobile devices and desktop computers

## 5. Problem Scenarios and Alternatives

**What job are we doing and for whom?**
The system supports Scout Leaders like Matevž in offering an easy way of writing and storing the activity reports.

**How do we know if it is working?**
The system is successful if Matevž can spend as little time as possible on it and still write good reports.

## Functional Requirements

* **Search:**
  The user must be able to write out their report within the system.

* **Authentication:**
  Users must be able to log in using an email address or username, with the login process taking less than one minutes.

## Usability Requirements

* **Navigation:**
  The system must allow access to any page within a maximum of three clicks.

* **Feedback:**
  The system must provide real-time feedback after each significant user action.

## Accessibility Requirements

* **Adherance to standards:**
  The system adheres to the ISO/IEC 40500:2025 and WCAG 2.2 accessibility standards for websites.

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

## Scenario 1: Taking roll call (Mobile)

Matevž is on an excursion with his platoon. Before the start of the excursion he needs to take roll call. For that he uses the application on his mobile phone and logs in. After authentication, he selects the mission he is currently on and presses the **Attendence** button. It shows him a list of scouts within his platoon with checkboxes next to their names. He takes attendene of all the paarticipants and saves the form inside the system.

## Scenario 2: Writing a Mission Report (Desktop)

After returning from a scout mission, Matevž needs to write a report documenting the excursion.

He opens the website on his computer and signs in. Using the navigation menu, he selects **Create Report**. When the form opens, he enters all required information and writes the mission report. After completing the report, he clicks **Submit Report**.

The system responds with a confirmation message indicating that the report has been successfully stored in the archive.