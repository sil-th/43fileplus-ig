Invariant: Passport-uri
Description: "Passport identifier shall be http://hl7.org/fhir/sid/passport-[XXX], where [XXX] is a 3-letter country code defined by ISO 3166."
Severity: #error
Expression: "value.matches('^(http://hl7.org/fhir/sid/passport-[A-Z]{3})$')"