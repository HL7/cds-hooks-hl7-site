# CDS Hooks

CDS Hooks is an HL7 published specification for clinical decision support.

This site contains the various published versions of the specification. If you're looking for more general information on CDS Hooks or the development builds, you can find those at [https://cds-hooks.org](https://cds-hooks.org).

Releases of the specifcation have been formally published through HL7.

Ballot versions are the precursors to a released version and go through a period of community feedback. They are archived here for historical posterity.

The CDS Hooks specification is licensed under a Creative Commons Attribution 4.0 International License. All source code for CDS Hooks is available at [https://github.com/cds-hooks](https://github.com/cds-hooks).

**Version History**

| Version                                              | Date       | Description |
| ---------------------------------------------------- | ---------- | ----------- |
| [1.0](https://cds-hooks.hl7.org/1.0/)                | 2019-02-?? | 1.0 STU release (current) |
| [2018May](https://cds-hooks.hl7.org/ballots/2018May) | 2018-03-30 | 1.0 ballot (May 2018) |

**Change Log**

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