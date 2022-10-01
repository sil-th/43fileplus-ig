Profile: MophPcLocationHome
Parent: Location
Id: mophpc-location-home
Title: "MoPH-PC Location: Home"
Description: "ข้อมูลที่ตั้งและสุขาภิบาลของหลังคาเรือนในเขตรับผิดชอบ"
* ^url = $SD_Location_Home
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* extension contains
    $EX_TH_AddressHouseType named houseType 0..1 MS and
    $EX_TH_LocationHouseOwner named houseOwner 0..1 MS and
    $EX_TH_LocationResponsibleVolunteer named responsibleVolunteer 0..1 MS and
    $EX_TH_LocationHouseholdCount named householdCount 0..1 MS and
    $EX_TH_LocationInMunicipality named inMunicipality 0..1 MS
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    hid 0..1 MS and
    houseNo 0..1 MS
* identifier[hid] ^short = "รหัสบ้าน"
* identifier[hid] ^definition = "รหัสบ้านที่กำหนดโดยโปรแกรม เรียงลำดับไม่ซ้ำกัน"
* identifier[hid].type = $CS_TH_IdentifierType#localHouse
* identifier[hid].system 1..
* identifier[hid].system obeys HID-uri
* identifier[hid].system ^example.label = "House ID namespace"
* identifier[hid].system ^example.valueUri = ID_LO_HID
* identifier[hid].value 1..
* identifier[houseNo] ^short = "รหัสบ้านตามกรมการปกครอง"
* identifier[houseNo] ^definition = "เลขประจำบ้าน ตามกรมการปกครองกำหนดเป็นรหัสประจำบ้าน"
* identifier[houseNo].type = $CS_TH_IdentifierType#houseNo
* identifier[houseNo].system 1..
* identifier[houseNo].system = $ID_DopaHouseNo (exactly)
* identifier[houseNo].value 1..
* name MS
* type MS
* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "coding.system"
* type ^slicing.rules = #open
* type contains type 0..1 MS
* type[type].coding.system 1..
* type[type].coding.system = $CS_HL7_RelationshipType (exactly)
* type[type].coding.code 1..
* type[type].coding.code = #PTRES (exactly)
* telecom MS
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom contains phone 0..* MS
* telecom[phone].system 1..
* telecom[phone].system = #phone (exactly)
* telecom[phone].value 1..
* address MS
* address.extension contains
    $EX_TH_AddressStructuredLine named structuredLine 0..1 MS
* physicalType MS
* physicalType ^short = "ประเภทที่อยู่"
* physicalType.coding ^slicing.discriminator.type = #value
* physicalType.coding ^slicing.discriminator.path = "system"
* physicalType.coding ^slicing.rules = #open
* physicalType.coding contains
    thcc 0..1 MS
* physicalType.coding[thcc] from $VS_THCC_HouseType (extensible)
* physicalType.coding[thcc].system 1..
* physicalType.coding[thcc].system = $CS_THCC_HouseType (exactly)
* physicalType.coding[thcc].code 1..
* position MS
* position.longitude MS
* position.latitude MS
* managingOrganization only Reference($SD_Organization_Provider)
* managingOrganization MS

