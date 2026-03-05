## Persona 1: Amy Baum - Scoutmaster

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
