<img style="float: left;padding-right: 5px;" src="images/hl7-logo.png" width=90px" />


# CDS Hooks

CDS Hooks is an HL7 published specification for clinical decision support.

This site contains the various published versions of the specification. If you're looking for more general information on CDS Hooks or the development builds, you can find those at [https://cds-hooks.org](https://cds-hooks.org).

Releases of the specification have been formally published through HL7.

Ballot versions are the precursors to a released version and go through a period of community feedback. They are archived here for historical posterity.

Hook definitions are published with the specification. Note that hook definitions are not part of the CDS Hooks specification, they are independent specifications that follow the [Hook Maturity Model](1.0/#hook-maturity-model). Hooks are published by HL7. Proposed hooks can be found at [https://cds-hooks.org](https://cds-hooks.org).

The CDS Hooks specification is licensed under a Creative Commons Attribution 4.0 International License. All source code for CDS Hooks is available at [https://github.com/cds-hooks](https://github.com/cds-hooks).

**Version History**

| Version                    | Date       | Description |
| -------------------------- | ---------- | ----------- |
| [1.1](ballots/2020Sep)     | 2020-07-28 | 1.1 STU 2 Ballot (September 2020) |
| [1.0](1.0/)                | 2019-04-23 | 1.0 STU release (current) |
| [2018May](ballots/2018May) | 2018-03-30 | 1.0 ballot (May 2018) |

**Change Log**

**2020Sep Ballot**

Changes introduced in the STU2 Ballot (v1.1):

* System actions
* Feedback support and override reasons
* Add isRecommended and topic elements
* Permit UserId Practitioner Role
* Add Coding type to simplify usage from object-oriented languages

In addition, numerous clarifications, corrections, and non-substantive updates were made based on continued implementer feedback during the trial-use period. For a complete list of changes applied, see the repository commit log.

**1.0 Release**

Changes since the 2018 May Ballot Version:

* [#187](https://github.com/cds-hooks/docs/issues/187): Conformance requirements for JWT signing algorithms
* [#232](https://github.com/cds-hooks/docs/issues/232): Moved user from the request to hook context definitions
* [#259](https://github.com/cds-hooks/docs/issues/259): Removed the analytics endpoint pending further implementation experience
* [#320](https://github.com/cds-hooks/docs/issues/320): Added a new required selectionBehavior field to cards
* [#340](https://github.com/cds-hooks/docs/issues/340): Changed 'hard-stop' indicator value to 'critical'

In addition, numerous clarifications, corrections, and non-substantive updates were made to the specification based on ballot and implementer feedback. For a complete list of changes applied, see the issues under the [1.0 Milestone](https://github.com/cds-hooks/docs/issues?q=is%3Aissue+is%3Aclosed+milestone%3A1.0) or the repository commit log.

**2018May Ballot**

This was the first STU ballot for the CDS Hooks specification. For a complete history of changes, see the repository [commit log](https://github.com/cds-hooks/docs/commits/master).
