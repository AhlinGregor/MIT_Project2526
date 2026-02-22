## Univerza na Primorskem, Fakulteta za matematiko, naravoslovje in informacijske tehnologije
# MIT project charter: Archive System for the Scout Association of Slovenia
**Prepared By: Luka Svenšek (89231433), Matej Kodermac (89221193), Žan Luka Remec (89231391), Gregor Ahlin (89231290)**  
**Date: 22nd Feb 2026**  
**Version: 2.0**  

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
