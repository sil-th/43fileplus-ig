// Profile:        FishPatient
// Parent:         Patient
// Id:             fish-patient
// Title:          "Fish Patient"
// Description:    "A patient that is a type of fish."
// * name 1..*
// // Add species extension
// * extension contains FishSpecies named species 0..1
// // Remove communication, maritalStatus
// * maritalStatus 0..0
// * communication 0..0
// // Make Species and Contact MS
// * extension[FishSpecies] and contact MS

// Profile:        MOPH43PlusPatient
// Parent:         Patient
// Id:             MOPH43plus-patient
// Title:          "Patient"
// Description:    "XXX"
