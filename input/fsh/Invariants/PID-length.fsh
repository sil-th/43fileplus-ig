Invariant: PID-length
Description: "PID number shall be 1 to 15 digit number"
Severity: #error
Expression: "value.matches('^([0-9]{1,15})$')"