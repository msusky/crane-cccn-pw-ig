Profile: CraNE_CCCN_Pathway_Document_Object
Parent: MinimalDocumentReference
Id: crane-cccn-pathway-document-object
Title: "CraNE CCCN Pathway Document Object"
Description: "The profile for the CraNE Comprehensive Cancer Care Network Pathway Document Object"
* insert HeaderProfile

Profile: CraNE_CCCN_Pathway_Document_Object_Requirement
Parent: DataRequirement
Id: crane-cccn-pathway-document-object-requirement
Title: "CraNE CCCN Pathway Document Object Requirement"
Description: "The profile for the CraNE Comprehensive Cancer Care Network Pathway Document Object Requirement"
* insert HeaderProfile
* type = #DocumentReference

* profile ^slicing.discriminator.type = #profile
* profile ^slicing.discriminator.path = "$this"
* profile ^slicing.rules = #open
* profile ^slicing.description = "Slice for required type/profile representing an clinical document"
* profile ^slicing.ordered = false
* profile contains DocumentObject 0..* MS
* profile[DocumentObject] = Canonical(CraNE_CCCN_Pathway_Document_Object)

* codeFilter ^slicing.discriminator.type = #value
* codeFilter ^slicing.discriminator.path = "$this"
* codeFilter ^slicing.rules = #open
* codeFilter ^slicing.description = "Slice for tye expected document class or type"
* codeFilter ^slicing.ordered = false

// NOTE: Document type based on LOINC
* codeFilter contains DocumentType 0..* MS
* codeFilter[DocumentType].path = "DocumentReference.type"
* codeFilter[DocumentType].valueSet = Canonical($document-type-codes-vs)
* codeFilter[DocumentType].code 0..1
* codeFilter[DocumentType].code from $LNC (required)

// NOTE: Document class based on LOINC
* codeFilter contains DocumentClass 0..* MS
* codeFilter[DocumentClass].path = "DocumentReference.category"
* codeFilter[DocumentClass].valueSet = Canonical($document-class-codes-vs)
* codeFilter[DocumentClass].code 0..1
* codeFilter[DocumentClass].code from $LNC (required)

// NOTE: Document type based on IHE XDS ValueSets (Germany)
* codeFilter contains IheDeXdsDocumentType 0..* MS
* codeFilter[IheDeXdsDocumentType].path = "DocumentReference.type"
* codeFilter[IheDeXdsDocumentType].valueSet = Canonical ($ihe-de-xds-type-codes-vs)
* codeFilter[IheDeXdsDocumentType].code 0..1
* codeFilter[IheDeXdsDocumentType].code from $ihe-de-xds-type-codes (required)

// NOTE: Document class based on IHE XDS ValueSets (Germany)
* codeFilter contains IheDeXdsDocumentClass 0..* MS
* codeFilter[IheDeXdsDocumentClass].path = "DocumentReference.category"
* codeFilter[IheDeXdsDocumentClass].valueSet = Canonical($ihe-de-xds-class-codes-vs)
* codeFilter[IheDeXdsDocumentClass].code 0..1
* codeFilter[IheDeXdsDocumentClass].code from $ihe-de-xds-class-codes (required)