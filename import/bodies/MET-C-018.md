> **Operational Restrictions (Case C)** · Epic C-EP8: Notifications

**Size** M · **Priority** Should · **Readiness** Ready · **Track** backend · **Type** tech · **Proposed sprint** 3

## User story

As a Signer in any role, I want notifications to reach me reliably wherever I am, so that the workflow does not stall on someone not knowing it is their turn.

## Context

Source stories C7.1 and C7.2 both require notification and neither says by what means. The value Metro attributes to the case depends on people acting promptly off site, which makes the channel a product decision rather than an implementation detail.

## Acceptance criteria

- [ ] The channel or channels are chosen and the decision, with its alternatives, is recorded.
- [ ] A notification that fails to send is retried, and a notification that cannot be delivered is surfaced rather than lost.
- [ ] Notification state is visible on the restriction, so a stalled workflow can be diagnosed.
- [ ] No notification carries content that would be confidential outside the system.

## Dependencies

- Blocks C-019 and C-020.

## Open questions

- **[Answered · decision with Metro, 28 August 2026]** By what means should a signer be notified out of hours: email, SMS, an application notification, or a telephone call as today? **An application notification: the product is a mobile app and notifies in-app, with Android as the reference platform.** The decision belongs in an ADR; the delivery guarantees—retry, surfacing undeliverable notifications—remain the substance of this item.

## Provenance

Source: C7.1, C7.2
