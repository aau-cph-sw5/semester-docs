# Glossary

Metro Service operates in Danish. The backlogs are in English. Every term below
appears somewhere in the source material, and guessing at any of them is a
reliable way to build the wrong thing.

**This file is incomplete and knowingly so.** Entries marked *(unconfirmed)* are
our reading rather than Metro's definition. A two-page glossary from Metro is one
of the outstanding requests; when it arrives, this file is replaced by it.

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
| **Duty Operations Manager (DOM)** | *Vagthavende driftsleder* | Approves operational restrictions and validates their cancellation. Case C. |
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
| **Manning** | | Whether a running train has a steward aboard. The contractual target is at least 70 percent of running trains at night. |
| **Patrol** | | A steward's inspection round of a station. The contractual requirement is at least once per hour, covering both concourse and platform. |
| **Shift** | *Vagt* | A working period. The compliance requirements in Case B are assessed over a night shift. |

## Systems and technical terms

| Term | Meaning |
|---|---|
| **Destination ID (DID)** | An identifier assigned to a train that determines its route and behaviour in the automatic train control system. Roughly 650 exist for M3M4 and 450 for M1M2. Operators currently select one by name from a list, and the name does not convey what the DID does. This is the problem Case D exists to solve. |
| **ATC** | Automatic Train Control. The system that actually runs the trains. Nothing built this semester connects to it. |
| **PDA** | The handheld device stewards carry. Whether this is the same device as the phone referenced in Case A is an outstanding question. |
| **BLE beacon** | Bluetooth Low Energy transmitter. Installed at every station; used in Case B to detect which station a steward is at. Beacons on trains are under consideration but not installed. |
| **Databricks** | Metro's data platform. Referenced in the framework agreement. Not currently on the critical path for any product. |

## Terms specific to this semester

| Term | Meaning |
|---|---|
| **PBI** | Product Backlog Item. One unit of work, identified as `MET-{case}-{number}`. |
| **Minimum demonstrable product** | The Must items scheduled for sprints 1 to 3 in each backlog. What a team can plausibly show Metro at the fourth sprint review. |
| **Blocked** | An item that cannot be completed until Metro answers a question. Thirty-five items across the four products are in this state. |
| **Provenance** | Whether an item came from a Metro story, was added by AAU, or is AAU's reconstruction of a missing Metro epic. Visible as a label on every issue. |
| **Reconstructed** | Four items in Case D, proposed by AAU to fill two epics missing from the delivered material, pending Metro's confirmation. |

---

## Adding a term

Alphabetical inside its section. If you learned it from Metro, say so. If it is
your inference, mark it *(unconfirmed)* so that the next person knows to check
rather than to trust.
