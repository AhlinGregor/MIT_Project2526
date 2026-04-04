## 11. Project Stakeholders

Project stakeholders are individuals and organizations that are either directly involved in the project or have an interest in its outcome. Stakeholders can be **allies** (those who benefit from the project) or **opponents** (those who may be negatively affected by it).


### 1. Scout Association of Slovenia (SAS)

| | |
|---|---|
| **Status** | Positive |
| **Expectations & Interests** | A unified, easy-to-use system for managing scout group data, tracking reports and activities, and maintaining a proper archive. Wants to reduce administrative overhead and standardize reporting across all scout groups. |
| **Benefits** | Faster and more transparent report submission; centralized archive accessible to all members; reduced time spent on administrative tasks; ability to reuse past reports and activity plans. |
| **Possible Conflicts** | Resistance to change from members accustomed to existing workflows (Google Drive, paper, email). Requires onboarding effort across the whole association. |
| **Team Response** | Design the system to be intuitive enough that minimal training is needed. Provide clear onboarding documentation and support during the rollout phase. |


### 2. Scout Leaders and Scoutmasters

| | |
|---|---|
| **Status** | Positive |
| **Expectations & Interests** | Want to save time on report writing, easily track attendance and badge progress for their group, and be able to find past activity reports without digging through emails or asking around. |
| **Benefits** | Centralized archive with search; pre-filled templates based on past reports; attendance and badge tracking in one place; mobile-friendly interface for on-the-go use. |
| **Possible Conflicts** | Initial learning curve when adopting the new system. Some leaders, especially less tech-savvy ones, may find it difficult to transition away from paper notes or WhatsApp. |
| **Team Response** | Prioritize simplicity and a clean mobile UI. Conduct user testing with actual scout leaders (as already done) to validate design decisions and address usability issues early. |


### 3. Financial Accounting Agent for the SAS

| | |
|---|---|
| **Status** | Negative |
| **Expectations & Interests** | Currently handles financial reporting for the association, likely billing hours for this work. Expects to continue in this role. |
| **Possible Conflicts** | If the system includes financial report management (upload, archive, review), the accounting agent may lose clients or bill fewer hours as the association becomes more self-sufficient. |
| **Team Response** | Position the system as a tool that complements rather than replaces professional accounting. Financial reports can still be prepared externally and simply uploaded to the system for archiving. Engage this stakeholder early to minimize opposition. |


### 4. Slovenian Ministry for Digitalisation

| | |
|---|---|
| **Status** | Positive / Neutral |
| **Expectations & Interests** | Supports the digitalisation of civil society organisations in Slovenia. Interested in projects that reduce paper-based processes and modernize public and non-profit administration. |
| **Benefits** | This project directly aligns with national digitalisation goals by replacing paper and email-based workflows with a modern web application. |
| **Possible Conflicts** | May require compliance with specific national digital infrastructure standards or accessibility guidelines (e.g. WCAG). |
| **Team Response** | Monitor relevant digitalisation guidelines and ensure the application meets any applicable public-sector digital standards. A positive relationship with this stakeholder could open doors to funding or official recognition. |


### 5. Project Team (Svenšek, Kodermac, Remec, Ahlin)

| | |
|---|---|
| **Status** | Positive |
| **Expectations & Interests** | Successfully deliver the project within the academic deadline. Gain practical development experience and build a portfolio piece that demonstrates real-world impact. |
| **Benefits** | A completed, deployed application serves as a strong CV reference. The team also has direct experience with the problem domain as scouts themselves, which reduces the risk of building the wrong thing. |
| **Possible Conflicts** | Limited time and no budget. Risk of scope creep if stakeholder expectations are not managed carefully. |
| **Team Response** | Maintain a clear and prioritized backlog. Use sprints to deliver incrementally and review scope regularly. Communicate openly with the SAS client about what is and is not feasible within the timeline. |


### 6. Digital Service Providers (Hosting, Infrastructure)

| | |
|---|---|
| **Status** | Positive / Neutral |
| **Expectations & Interests** | Cloud hosting and infrastructure providers (e.g. server hosts, CDN providers) stand to gain a new client if the application is deployed and maintained long-term. |
| **Benefits** | New paying client for hosting and storage services. |
| **Possible Conflicts** | Vendor lock-in could become a concern if the association becomes dependent on a specific provider. Cost may become a factor once the project moves beyond the academic phase. |
| **Team Response** | Design the architecture to be provider-agnostic where possible. Document infrastructure choices clearly so the SAS can manage or migrate services independently after handover. |


### 7. European Union (GDPR Enforcer)

| | |
|---|---|
| **Status** | Negative / Neutral |
| **Expectations & Interests** | As the enforcer of GDPR, the EU expects all systems handling personal data of EU citizens to comply with data protection regulations. This includes data minimization, user consent, right to erasure, and secure storage. |
| **Possible Conflicts** | The system will store personal data about scouts (names, attendance, contact information). Non-compliance with GDPR could result in legal consequences for the SAS. |
| **Team Response** | Implement GDPR-compliant data handling from the start: encrypted passwords (Argon2 as planned), access control, data minimization, and a clear privacy policy. Ensure users can request deletion of their data. Consult GDPR guidelines during the design phase. |


### 8. Parents of Scouts

| | |
|---|---|
| **Status** | Negative / Neutral |
| **Expectations & Interests** | Parents may be concerned about the privacy and security of their children's personal data being stored in a digital system, especially for minor scouts. |
| **Possible Conflicts** | Objections to data sharing or storage of minors' personal information. Parents may distrust a student-built system with no formal data protection guarantees. |
| **Team Response** | Be transparent about what data is collected and why. Store only the minimum necessary information. Ensure the system is compliant with GDPR rules regarding minors. Communicate the privacy approach clearly to the SAS, who can then relay it to parents. |


### 9. Existing Service Providers (Google Drive, OneDrive, Discord)

| | |
|---|---|
| **Status** | Negative |
| **Expectations & Interests** | Currently used informally by scout leaders for storing documents, sharing reports, and communicating. These platforms benefit from continued use by the association. |
| **Possible Conflicts** | If the new system successfully replaces ad-hoc use of Google Drive and Discord for archiving, these providers stand to lose active users within the SAS ecosystem. |
| **Team Response** | This is a low-priority conflict as these are large platforms that will not be materially affected. However, the team should ensure the new system offers a clearly superior experience for the specific use case, so scout leaders are motivated to migrate rather than falling back to old habits. |
