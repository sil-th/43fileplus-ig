Invariant: CID-length
Description: "CID number shall be 13-digit number"
Severity: #error
Expression: "value.matches('^([0-9]{13})$')"