// NOTE: Represents a pathway with all it alternatives, strategies and options, if available
Profile: CraNE_CCCN_Lung_Cancer_Pathway
Parent: cpg-computableplandefinition
Id: crane-cccn-lung-cancer-pathway
Title: "CraNE CCCN Lung Cancer Pathway"
Description: "The profile for the CraNE Comprehensive Cancer Care Network Lung Cancer Pathway"
* insert HeaderProfile

* title MS
* description MS

* goal 1..* MS

* goal.description MS
* goal.description.coding ^slicing.discriminator.type = #type
* goal.description.coding ^slicing.discriminator.path = "coding.system"
* goal.description.coding ^slicing.rules = #open
* goal.description.coding ^slicing.description = "Slice of coding.system for use of Snomed CT (SCT)"
* goal.description.coding ^slicing.ordered = false
* goal.description.coding contains SCT 0..1 MS
* goal.description.coding[SCT].system = $SCT
* goal.description.coding[SCT].code 1..1 MS

* goal.addresses 1..* MS
* goal.addresses.coding ^slicing.discriminator.type = #type
* goal.addresses.coding ^slicing.discriminator.path = "coding.system"
* goal.addresses.coding ^slicing.rules = #open
* goal.addresses.coding ^slicing.description = "Slice of coding.system for use of International Catalog of Diseases (ICD)"
* goal.addresses.coding ^slicing.ordered = false
* goal.addresses.coding contains ICD10 0..* MS
* goal.addresses.coding[ICD10].system = $ICD10
* goal.addresses.coding[ICD10].code 1..1 MS

* action 1..1 MS
* action.definition[x] only Canonical(CraNE_CCCN_Lung_Cancer_Pathway_Process_Flow)
* action.action 0..0

// NOTE: Represents a recommended pathway strategy
Profile: CraNE_CCCN_Lung_Cancer_Pathway_Process_Flow
Parent: cpg-strategydefinition
Id: crane-cccn-lung-cancer-pathway-process-flow
Title: "CraNE CCCN Lung Cancer Pathway Process Flow"
Description: "The profile for the CraNE Comprehensive Cancer Care Network Lung Cancer Pathway Process Flow"
* insert HeaderProfile

* title MS
* description MS

// NOTE: Top-level process flow consisting of activities or tasks
* action.title MS
* action.description MS
* action.code MS
* action.relatedAction 1..* MS
* action.selectionBehavior 1..1 MS
* action.definition[x] only Canonical(CraNE_CCCN_Lung_Cancer_Pathway_Process_Flow or CraNE_CCCN_Lung_Cancer_Pathway_Activity)

// NOTE: Actual performed activities or tasks
* action.action MS
// TODO: Check how to implement profile constraints
//* action.action only Canonical(CraNE_CCCN_Lung_Cancer_Pathway_Process_Flow or CraNE_CCCN_Lung_Cancer_Pathway_Activity)

// NOTE: Represents a compound or atomic pathway activity
Profile: CraNE_CCCN_Lung_Cancer_Pathway_Activity
Parent: cpg-recommendationdefinition
Id: crane-cccn-lung-cancer-pathway-activity
Title: "CraNE CCCN Lung Cancer Pathway Activity"
Description: "The profile for the CraNE Comprehensive Cancer Care Network Lung Cancer Pathway Activity"
* insert HeaderProfile

* title MS
* description MS

* action.title 1..1 MS
* action.description 1..1 MS
* action.code 1..* MS
* action.condition MS
* action.relatedAction MS
* action.groupingBehavior MS
* action.selectionBehavior MS
* action.requiredBehavior MS
* action.cardinalityBehavior MS
* action.definition[x] MS
* action.action MS

* action.code ^slicing.discriminator.type = #type
* action.code ^slicing.discriminator.path = "coding.system"
* action.code ^slicing.rules = #open
* action.code ^slicing.description = "Slice of coding.system for use of Snomed CT"
* action.code ^slicing.ordered = false
* action.code contains SCT 0..* MS
* action.code[SCT].coding.system = $SCT
* action.code[SCT].coding.code 1..1 MS