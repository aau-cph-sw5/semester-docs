# Error codes

A shared scheme so that three or four teams building one product do not invent
three or four incompatible ways of saying that something went wrong.

The scheme is taken directly from the Educado cohort, which is one of the better
ideas in the material we inherited. The catalogue is reset, because their codes
described courses and lectures.

---

## The scheme

A code is a string of the form `E{category}{code}`, two digits each.

```
E0403
 ││└┴─ code within the category
 └┴─── category
```

One hundred categories, one hundred codes each. Codes are per product, so
`E0101` in Case B and `E0101` in Case D are unrelated and that is fine; they are
never seen together.

Codes are for communication between client and server. They are not user-facing
messages. The interface decides what a user sees, in the user's language, from the
code. This separation is what makes it possible to have Danish interface text and
English development.

## Response shape

```json
{
  "error": {
    "code": "E0403",
    "message": "Steward is not permitted to view another steward's records"
  }
}
```

The message is for a developer reading a log. Never show it to a user, and never
put anything in it that would be confidential outside the system.

## Implementation

Each product keeps a single module listing its codes, imported by both sides of
the interface, so that a code is never typed as a literal string in application
code. Where the front end and back end are separate deployments, the list is
duplicated and kept in step by the contract, and a test asserts the two agree.

## Adding a code

Add it to this document and to the product's module in the same pull request. If
you are opening a new category, raise it at the integration meeting first, because
categories are the part different teams collide over.

Codes are never reused. If a code becomes obsolete, mark it reserved rather than
deleting it, so that an old client cannot be misinterpreted by a new server.

---

## Shared categories

These apply to every product. Products may extend them but should not redefine
them.

### E00 General

| Code | Meaning |
|---|---|
| E0000 | Unknown error |
| E0001 | Authentication token is missing, invalid or expired |
| E0002 | The authenticated user's role does not permit this action |
| E0003 | A required upstream service could not be reached |
| E0004 | The requested resource does not exist |
| E0005 | The request was syntactically valid but semantically wrong |
| E0006 | A required parameter is missing |
| E0007 | The request conflicts with the current state of the resource |
| E0008 | The service is temporarily unavailable |
| E0009 | The request was rejected because it would exceed a configured limit |

### E01 Authentication and session

| Code | Meaning |
|---|---|
| E0101 | Unknown user |
| E0102 | Invalid credentials |
| E0103 | The session has expired |
| E0104 | The account is locked |

### E02 Data and reference material

| Code | Meaning |
|---|---|
| E0201 | Reference data has not been loaded |
| E0202 | The imported record failed validation |
| E0203 | The referenced version of a record no longer exists |
| E0204 | The record has been superseded since it was read |

---

## Per-product categories

Each product owns categories E10 and above. Populate as you build; the entries
below are the ones the backlog already implies, and they are a starting point
rather than a complete list.

### Case A. Emergency Scenarios

| Code | Meaning |
|---|---|
| E1001 | No scenario is currently active |
| E1002 | A scenario is already active on this line |
| E1003 | The scenario referenced by this report has been stood down |
| E1004 | The station is not part of the active scenario |
| E1005 | The client's local copy is too stale to act on |

### Case B. Steward Localization

| Code | Meaning |
|---|---|
| E1101 | Unknown station or patrol area |
| E1102 | The observation is outside the shift window |
| E1103 | A patrol record already exists for this observation |
| E1104 | Manning data is unavailable for the requested period |
| E1105 | The requested record is outside its retention period |

### Case C. Operational Restrictions

| Code | Meaning |
|---|---|
| E1201 | The transition is not permitted from the restriction's current state |
| E1202 | A required signature is missing |
| E1203 | The restriction has changed since it was read, so the signature is void |
| E1204 | The signer has already signed this step |
| E1205 | The restriction cannot be cancelled while confirmations are outstanding |

### Case D. DID Master

| Code | Meaning |
|---|---|
| E1301 | Unknown Destination ID |
| E1302 | No candidate met the confidence threshold |
| E1303 | The ranking service is unavailable; the filter view remains usable |
| E1304 | The catalogue record changed since it was presented to the operator |
| E1305 | The requested line is not present in the loaded catalogue |
