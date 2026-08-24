# Glossary

Metro Service operates in Danish. The backlogs are in English. Every term below
appears somewhere in the source material, and guessing at any of them is a
reliable way to build the wrong thing.

**Updated 24 August 2026.** Metro Service supplied a glossary with the August
material. It is an abbreviation list rather than a set of definitions, so it has
been added below as its own section and the rest of this file stands. Entries
marked *(unconfirmed)* are still our reading rather than Metro's definition.

Add a term the moment you have to ask someone what it means. If you had to ask,
the next person will too.

---

## Lines and network

| Term | Meaning |
|---|---|
| **M1 / M2** | The two original metro lines. Treated together as **M1M2** where systems are shared. |
| **M3 / M4** | The Cityring and its branch. Treated together as **M3M4**. Technically distinct from M1M2, which is why several backlog items are scoped to one or the other. |
| **Nordhavn extension** | A planned network extension, referenced in the Destination ID case as arriving in 2030. Relevant because reference data must accommodate additions. |
| **Concourse** | The station level above the platform, where passengers enter. Counted separately from the platform for patrol coverage, which is why they are separate entities in the model. |
| **Platform** | The level where trains are boarded. |

## Roles

| Term | Danish | Meaning |
|---|---|---|
| **Steward** | *Steward* | Frontline staff in stations and on trains. In Case A they respond to incidents; in Case B their presence and patrols are what the system documents. |
| **Control Room Operator** | *Kontrolrumsoperatør* | Operates the line from the control room. The primary user of three of the four products. |
| **Control Room Supervisor** | | Responsible for implementation of restrictions and for confirming each shift that operators have signed every restriction in force. Case C. |
| **Duty Operations Manager (DOM)** | *Vagthavende driftschef* | Approves operational restrictions and validates their cancellation, and signs off the restriction register. Metro's own forms use *driftschef*, which is the spelling to follow. Case C. |
| **Originator** | | The leading technician who identifies the need for a restriction, writes it, and later cancels it. Case C. |
| **Operations Administrator** | | Accountable for demonstrating compliance. Consumer of the reports in Case B. |
| **Operations Analyst** | | Reviews incidents after the fact. Named in Case A's personas; their work is not described in any story *(unconfirmed)*. |
| **Safety Officer** | | Named in Case C for audit and archiving requirements. |

## Operations

| Term | Danish | Meaning |
|---|---|---|
| **Alternative operation** | *Alternativ drift* | Running the service to a different pattern because of an incident, a breakdown or planned work. The subject of Case A. |
| **Scenario** | | A predefined plan for alternative operation, specifying which stations need staffing and what stewards do. Currently distributed as a PDF that stewards read on their phones. |
| **Operational Restriction (OR)** | *Driftsrestriktion* | A safety restriction on operation, with a strict lifecycle of authoring, approval, implementation, per-operator acknowledgement, and a matching cancellation chain. The subject of Case C. |
| **In force** | | A restriction that has been signed for implementation and applies until cancelled. |
| **Track possession** | *Sporspærring* | Taking a section of track out of service for maintenance. Referenced in Case D as a planning activity that Destination ID knowledge supports. |
| **Manning** | | Whether a running train has a steward aboard. Metro confirmed in August that the contractual target is time-weighted: trains are manned at least 70 percent of their running time on a night shift, not 70 percent of trains at any instant. |
| **Patrol** | | A steward's inspection round of a station level. The contractual requirement is at least once per rolling sixty minutes, with concourse and platform counted independently: any coverage of each within the window satisfies it. |
| **Shift** | *Vagt* | A working period. The compliance requirements in Case B are assessed over a night shift. |

## Systems and technical terms

| Term | Meaning |
|---|---|
| **Destination ID (DID)** | An identifier assigned to a train that determines its route and behaviour in the automatic train control system. Roughly 650 exist for M3M4 and 450 for M1M2. Operators currently select one by name from a list, and the name does not convey what the DID does. This is the problem Case D exists to solve. |
| **ATC** | Automatic Train Control. The system that actually runs the trains. Nothing built this semester connects to it. |
| **PDA** | The handheld device stewards carry. Confirmed in August as a Samsung Galaxy A52 to A55 on Android 14 or 15, which is the same class of device referenced in Case A. |
| **BLE beacon** | Bluetooth Low Energy transmitter installed at every station. Since the August revision of the Case B stories it corroborates rather than proves: a patrol or manning record is opened and closed by scanning a bar or QR code, and a beacon reading is context. |
| **Bar or QR code scan** | The act that creates evidence in Case B. Start/Fortsæt plus a scan opens a record on a station level or in a train; Stop plus a scan closes it; on a train the code must be re-scanned at a fixed interval to confirm continued presence. |
| **Databricks** | Metro's data platform, a lakehouse with medallion layering. On the critical path since August: the Case B compliance report must be exported to it. |

## Terms specific to this semester

| Term | Meaning |
|---|---|
| **PBI** | Product Backlog Item. One unit of work, identified as `MET-{case}-{number}`. |
| **Minimum demonstrable product** | The Must items scheduled for sprints 1 to 3 in each backlog. What a team can plausibly show Metro at the fourth sprint review. |
| **Blocked** | An item that cannot be completed until Metro answers a question. Twenty-six items across the four products are in this state, down from thirty-five before Metro's August answers. |
| **Provenance** | Whether an item came from a Metro story, was added by AAU, or is AAU's reconstruction of a missing Metro epic. Visible as a label on every issue. |
| **Reconstructed** | Four items in Case D, proposed by AAU to fill two epics missing from the delivered material, pending Metro's confirmation. |

---

## Metro Service abbreviations

Supplied by Metro Service with the August 2026 material, transcribed here so it is
searchable. These are Metro's own expansions; where an abbreviation also has a
meaning above, the entry above says what it means for our products.

| | | | |
|---|---|---|---|
| **ABA** | Automatic Fire Alarm | **MD** | Missed Departures |
| **AD** | Actual Departures | **MeSe** | Metro Service A/S |
| **APG** | Automatic Platform Gates | **MMS** | Maintenance Management System |
| **ATC** | Automatic Train Control | **MS** | Metroselskabet |
| **ATP** | Automatic Train Protection | **NVLE** | Non-Vital Logic Emulator |
| **ATO** | Automatic Train Operation | **O&M** | Operation and Maintenance |
| **ATS** | Automatic Train Supervision | **PA** | Public Announcement |
| **CCR** | Central Control Room | **PD** | Planned Departure |
| **CCTV** | Closed Circuit Television | **PID** | Passenger Information Displays |
| **CMC** | Control and Maintenance Centre | **PIO** | Passenger Information Operator |
| **CRS** | Control Room Supervisor | **PSDS** | Platform Screen Doors System |
| **DID** | Destination ID | **PSIS** | Passenger Security and Information System |
| **ECP** | Emergency Call Point | **PVID** | Permanent Vehicle ID |
| **ECR** | Emergency Control Room | **SA** | Service Availability |
| **EDHR** | Emergency Door Release Handle | **SCADA** | Supervisory Control and Data Acquisition |
| **EDP** | Electronic Data Processing | **SPA** | Single Point Announcement |
| **EPCH** | Emergency Power Cut-off Handle | **SSG** | Skadeservicegruppen |
| **ESH** | Emergency Stop Handle | **STA** | Station Responsible |
| **ESS** | Emergency Stop System | **STES** | Station Emergency Stop |
| **FLRT** | First Line Response Team | **STW** | Steward |
| **FRACAS** | Failure Reporting, Analysis, and Corrective Action System | **TD** | Train Dispatcher |
| **ISC** | Individual Switch Control | **TID** | Train ID |
| **TIDS** | Track Intrusion Door System | **TVM** | Ticket Vending Machine |
| **RVM** | Rejsekort Vending Machine | **TWC** | Train to Wayside Communication |
| **UD** | Unplanned Departures | | |

The same file carries the station and shaft codes for both lines. Station codes
are in the Case B station reference data (`MET-B-003`); the shaft and crossover
codes appear in the Case A scenario material, where scenarios are named for the
section of line they cover.

---

## Adding a term

Alphabetical inside its section. If you learned it from Metro, say so. If it is
your inference, mark it *(unconfirmed)* so that the next person knows to check
rather than to trust.
