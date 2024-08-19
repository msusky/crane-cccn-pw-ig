// NOTE: Quality indicator definition is of type FHIR Measure
Profile: CraNE_CCCN_Quality_Indicator_Definition
Parent: cpg-computablemetric
Id: crane-cccn-quality-indicator-definition
Title: "CraNE CCCN Quality Indicator Definition"
Description: "The profile for the CraNE Comprehensive Cancer Care Network Quality Indicator Definition"
* insert StatusProfile
* relatedArtifact MS
* relatedArtifact.type MS
* relatedArtifact.citation MS
* relatedArtifact.url MS
* scoring MS
* clinicalRecommendationStatement MS
* improvementNotation MS
* definition MS
* group.description MS
* group.population.code MS
* group.population.description MS
* group.population.criteria.language from $mime-types (required)
* group.stratifier.code MS
* group.stratifier.description MS
* group.stratifier.criteria.language from $mime-types (required)

// NOTE: Quality indicator definition extends FHIR ActivityDefinition
Profile: CraNE_CCCN_Report_Quality_Indicator_Definition
Parent: cpg-generatereportactivity
Id: crane-cccn-report-quality-indicator-definition
Title: "CraNE CCCN Report Quality Indicator Definition"
Description: "The profile for the CraNE Comprehensive Cancer Care Network Report Quality Indicator Definition"
* insert HeaderProfile
* extension contains $cpg-reportWith named qualityIndicatorDefinition 1..1 MS
* doNotPerform = false

// NOTE: Quality indicator definition extension
Extension: CraNE_CCCN_Report_Quality_Indicator_Extension
Parent: cpg-reportWith
Id: crane-cccn-report-quality-indicator-extension
Title: "CraNE CCCN Report Quality Indicator Extension"
Description: "The extension for the CraNE Comprehensive Cancer Care Network Report Quality Indicator"
Context: CraNE_CCCN_Report_Quality_Indicator_Definition
* value[x] only Canonical(CraNE_CCCN_Quality_Indicator_Definition)

// NOTE: Request to measure and report a quality indicator
Profile: CraNE_CCCN_Report_Quality_Indicator_Request
Parent: cpg-task
Id: crane-cccn-report-quality-indicator-request
Title: "CraNE CCCN Report Quality Indicator Request"
Description: "The profile for the CraNE Comprehensive Cancer Care Network Report Quality Indicator Request"
* input ^slicing.discriminator.type = #value
* input ^slicing.discriminator.path = "type"
* input ^slicing.rules = #open
* input ^slicing.description = "Slice for quality indicator reporting on `input.type`"
* input ^slicing.ordered = false
* input contains QualityIndicatorDefinition 1..* MS
* input[QualityIndicatorDefinition].type 1..1 MS
* input[QualityIndicatorDefinition].type.coding = $cpg-activity-type-cs#generate-report
* input[QualityIndicatorDefinition].value[x] 1..1 MS
* input[QualityIndicatorDefinition].value[x] only Canonical(CraNE_CCCN_Quality_Indicator_Definition)