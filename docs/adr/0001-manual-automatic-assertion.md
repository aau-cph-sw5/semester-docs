# ADR 0001. Is presence asserted by the system or confirmed by the steward?

**Status.** Proposed
**Date.** 2026-09-17
**Deciders.** Marcus Eckstrøm, Peter Rasmussen & Tue Elhegn, team 3
**Related backlog items.** MET-B-001, MET-B-004, MET-B-005, MET-B-007, MET-B-014, MET-B-024

## Context

Our project involves taking a decision whether presence is asserted by the stewards manually or automatically by the system. 
Manual assertion: Under this approach, the steward manually determines and logs the steward’s presence at the relevant location or train by scanning a QR code at the location, or in the train.
Automatic assertion: Under this approach, the system itself determines and logs the steward’s presence at the relevant location, or train based on Bluetooth beacon connection.
Metroselskabet rejected the manual assertion based on the method not providing clear evidence of presence.

## Decision

Presence will be asserted automatically by the system using Bluetooth beacons.
Platform checks may only require stewards to leave the train briefly during its 15–40 second stop. Requiring manual registration would add unnecessary work and reduce the time available for operational duties. Beacon-based detection provides automatic evidence of presence without requiring steward interaction.

## Consequences

Positive impact: 
-	Reduces manual work and allows stewards to focus on manning trains and patrolling platforms and concourses.
-	Provides system-generated evidence of steward presence.
-	Eliminates missed registrations caused by stewards forgetting to scan a QR code.

Potential drawbacks: 
-	Beacon detection confirms presence but cannot verify that the required patrol or task was actually performed.
-	Signal loss or inaccurate beacon detection may result in missing or incorrect presence records.
-	The system becomes dependent on the availability and reliability of the beacon infrastructure.

## Alternatives considered

**Facial recognition.** Facial recognition is arguably the most precise and reliable technology. Cameras are already installed in every station, but the technology introduces a slew of privacy concerns and is very costly.
**GPS.** GPS localization provides reliable and precise data, but the signal is lost underground. Working around this is not worth the cost compared to BLE beacons.
**Bluetooth triangulation/trilateration.** Same method of tracking as GPS, but requires additional specialized hardware installed on stations/trains, making it costly.

## Notes

A key factor in this ADR is the contractual relation between Metro Service as contractor and Metroselskabet as client. Metroselskabet relies heavily on evidence of service from Metro Service and deemed it convenient for the stewards to scan arrival at a station but not doing the patrolling.
