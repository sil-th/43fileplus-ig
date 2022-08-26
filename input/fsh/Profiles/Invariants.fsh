Invariant: PID-uri
Description: "PID identifier shall be https://terms.sil-th.org/hcode/5/[XXXXX]/PID, where [XXXXX] is a 5-digit HCODE defined by THCC."
Severity: #error
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/PID)$')"

Invariant: PID-length
Description: "PID number shall be 1 to 15 digit number"
Severity: #error
Expression: "value.matches('^([0-9]{1,15})$')"

Invariant: CID-length
Description: "CID number shall be 13-digit number"
Severity: #error
Expression: "value.matches('^([0-9]{13})$')"

Invariant: PWD-length
Description: "PWD number shall be 13-digit number"
Severity: #error
Expression: "value.matches('^([0-9]{13})$')"

Invariant: HN-uri
Description: "HN identifier shall be https://terms.sil-th.org/hcode/5/[XXXXX]/HN, where [XXXXX] is a 5-digit HCODE defined by THCC."
Severity: #error
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/HN)$')"

Invariant: HN-length
Description: "PID number shall be 1 to 15 digit number"
Severity: #error
Expression: "value.matches('^([0-9]{1,15})$')"

Invariant: Passport-uri
Description: "Passport identifier shall be http://hl7.org/fhir/sid/passport-[XXX], where [XXX] is a 3-letter country code defined by ISO 3166."
Severity: #error
Expression: "value.matches('^(http://hl7.org/fhir/sid/passport-[A-Z]{3})$')"

Invariant: WP-length
Description: "Work Permit number shall be 13-digit number"
Severity: #error
Expression: "value.matches('^([0-9]{13})$')"

Invariant: hcode-length
Description: "HCODE shall be 5-digit number"
Severity: #error
Expression: "value.matches('^([0-9]{5})$')"