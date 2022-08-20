Invariant: PID-uri
Description: "PID identifier shall be https://terms.sil-th.org/hcode/5/[XXXXX]/PID, where [XXXXX] is a 5-digit HCODE defined by THCC."
Severity: #error
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/PID)$')"