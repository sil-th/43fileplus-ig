Invariant: PID-uri
Description: "PID identifier shall be https://terms.sil-th.org/hcode/5/[XXXXX]/PID, where [XXXXX] is a 5-digit HCODE defined by THCC."
Severity: #error
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/PID)$')"

Invariant: PID-length
Description: "PID number shall be 1 to 15 digit number"
Severity: #error
Expression: "value.matches('^([0-9]{1,15})$')"


Invariant: ProID-uri
Description: "Provider ID identifier shall be https://terms.sil-th.org/hcode/5/[XXXXX]/PID, where [XXXXX] is a 5-digit HCODE defined by THCC."
Severity: #error
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/PID)$')"

Invariant: ProID-length
Description: "Provider ID number shall be 1 to 15 digit number"
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

Invariant: Local-drug-uri
Description: "Local Drug Code namespace shall be https://terms.sil-th.org/hcode/5/[XXXXX]/Drug, where [XXXXX] is a 5-digit HCODE defined by THCC."
Severity: #error
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/Drug)$')"


Invariant: Inv-uri
Description: "INV identifier shall be https://terms.sil-th.org/hcode/5/[XXXXX]/Inv, where [XXXXX] is a 5-digit HCODE defined by THCC."
Severity: #error
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/Inv)$')"

Invariant: InvLt-uri
Description: "InvLt identifier shall be https://terms.sil-th.org/hcode/5/[XXXXX]/InvLt, where [XXXXX] is a 5-digit HCODE defined by THCC."
Severity: #error
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/InvLt)$')"


Invariant: local-device-uri
Description: "local device identifier shall be https://terms.sil-th.org/hcode/5/[XXXXX]/Device, where [XXXXX] is a 5-digit HCODE defined by THCC."
Severity: #error
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/Device)$')"


Invariant: VN-uri
Description: "VN identifier shall be https://terms.sil-th.org/hcode/5/[XXXXX]/VN, where [XXXXX] is a 5-digit HCODE defined by THCC."
Severity: #error
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/VN)$')"

Invariant: AN-uri
Description: "AN identifier shall be https://terms.sil-th.org/hcode/5/[XXXXX]/AN, where [XXXXX] is a 5-digit HCODE defined by THCC."
Severity: #error
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/VN)$')"




Invariant: LocalRefer-uri
Description: "LocalRefer identifier shall be https://terms.sil-th.org/hcode/5/[XXXXX]/Refer, where [XXXXX] is a 5-digit HCODE defined by THCC."
Severity: #error
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/Refer)$')"

// location home
Invariant: HID-uri
Description: "HID identifier shall be https://terms.sil-th.org/hcode/5/[XXXXX]/House, where [XXXXX] is a 5-digit HCODE defined by THCC."
Severity: #error
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/House)$')"

// Medication
Invariant: Drug-uri
Description: "Local drug code shall be https://terms.sil-th.org/hcode/5/[XXXXX]/Drug, where [XXXXX] is a 5-digit HCODE defined by THCC."
Severity: #error
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/Drug)$')"

//Department
Invariant: DEP-uri
Description: "DEP identifier shall be https://terms.sil-th.org/hcode/5/[XXXXX]/DepCode, where [XXXXX] is a 5-digit HCODE defined by THCC."
Severity: #error
Expression: "value.matches('^(https://terms.sil-th.org/hcode/5/[0-9]{5}/DepCode)$')"