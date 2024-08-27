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
* type = #DocumentReference (exactly)

* profile ^slicing.discriminator.type = #profile
* profile ^slicing.discriminator.path = "$this"
* profile ^slicing.rules = #open
* profile ^slicing.description = "Slice for required type/profile representing an clinical document"
* profile ^slicing.ordered = false
* profile contains DocumentObject 0..* MS
* profile[DocumentObject] = Canonical(CraNE_CCCN_Pathway_Document_Object)

* codeFilter ^slicing.discriminator[+].type = #value
* codeFilter ^slicing.discriminator[=].path = "path"
* codeFilter ^slicing.discriminator[+].type = #pattern
* codeFilter ^slicing.discriminator[=].path = "code"
* codeFilter ^slicing.rules = #open
* codeFilter ^slicing.description = "Slice for expected document class or type"
* codeFilter ^slicing.ordered = false

// NOTE: Document type based on LOINC
* codeFilter contains DocumentType 0..* MS
* codeFilter[DocumentType].path = "type" (exactly)
* codeFilter[DocumentType].code from $document-type-codes-vs (required)

* codeFilter contains DocumentClass 0..* MS
* codeFilter[DocumentClass].path = "category" (exactly)
* codeFilter[DocumentClass].code from $document-class-codes-vs (required)

// NOTE: Document type based on IHE XDS ValueSets (Germany)
* codeFilter contains IheDeXdsDocumentType 0..* MS
* codeFilter[IheDeXdsDocumentType].path = "type"
* codeFilter[IheDeXdsDocumentType].code from $ihe-de-xds-type-codes-vs (required)

* codeFilter contains IheDeXdsDocumentClass 0..* MS
* codeFilter[IheDeXdsDocumentClass].path = "category"
* codeFilter[IheDeXdsDocumentClass].code from $ihe-de-xds-class-codes-vs (required)