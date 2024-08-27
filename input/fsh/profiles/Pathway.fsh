// NOTE: Represents a pathway with all it alternatives, strategies and options, if available
Profile: CraNE_CCCN_Pathway
Parent: cpg-computableplandefinition
Id: crane-cccn-pathway
Title: "CraNE CCCN Pathway"
Description: "The profile for the CraNE Comprehensive Cancer Care Network Pathway"
* insert HeaderProfile

* title MS
* description MS

* goal 1..* MS

* goal.description MS
* goal.description.coding ^slicing.discriminator.type = #value
* goal.description.coding ^slicing.discriminator.path = "system"
* goal.description.coding ^slicing.rules = #open
* goal.description.coding ^slicing.description = "Slice of coding.system for use of SNOMED CT (SCT)"
* goal.description.coding ^slicing.ordered = false
* goal.description.coding contains SCT 0..* MS
* goal.description.coding[SCT].system = $SCT
* goal.description.coding[SCT].code 1..1 MS

* goal.addresses 1..* MS
* goal.addresses.coding ^slicing.discriminator.type = #value
* goal.addresses.coding ^slicing.discriminator.path = "system"
* goal.addresses.coding ^slicing.rules = #open
* goal.addresses.coding ^slicing.description = "Slice of coding.system for use of International Catalog of Diseases (ICD)"
* goal.addresses.coding ^slicing.ordered = false
* goal.addresses.coding contains ICD10 0..* MS
* goal.addresses.coding[ICD10].system = $ICD10
* goal.addresses.coding[ICD10].code 1..1 MS

* action 1..1 MS
* action.definition[x] only Canonical(CraNE_CCCN_Pathway_Process_Flow)
* action.action 0..0

// NOTE: Represents a recommended pathway strategy
Profile: CraNE_CCCN_Pathway_Process_Flow
Parent: cpg-strategydefinition
Id: crane-cccn-pathway-process-flow
Title: "CraNE CCCN Pathway Process Flow"
Description: "The profile for the CraNE Comprehensive Cancer Care Network Pathway Process Flow"
* insert HeaderProfile

* title MS
* description MS

// NOTE: Top-level process flow consisting of activities or tasks
* action.title MS
* action.description MS
* action.code MS
* action.relatedAction 1..* MS
* action.selectionBehavior 1..1 MS
* action.definition[x] only Canonical(CraNE_CCCN_Pathway_Process_Flow or CraNE_CCCN_Pathway_Activity)

// NOTE: Actual performed activities or tasks
* action.action MS
// TODO: Check how to implement profile constraints
//* action.action only Canonical(CraNE_CCCN_Pathway_Process_Flow or CraNE_CCCN_Pathway_Activity)

// NOTE: Represents a compound or atomic pathway activity
Profile: CraNE_CCCN_Pathway_Activity
Parent: cpg-recommendationdefinition
Id: crane-cccn-pathway-activity
Title: "CraNE CCCN Pathway Activity"
Description: "The profile for the CraNE Comprehensive Cancer Care Network Pathway Activity"
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

//* action.documentation ^slicing.discriminator.type = #value
//* action.documentation ^slicing.discriminator.path = "$this"
//* action.documentation ^slicing.rules = #open
//* action.documentation ^slicing.description = "Slice for the related documentation provided to perform the activity"
//* action.documentation ^slicing.ordered = false
//* action.documentation contains PatientInformation 0..* MS
//* action.documentation[PatientInformation].type = #documentation
//* action.documentation[PatientInformation].display MS
//* action.documentation[PatientInformation].url MS
//* action.documentation[PatientInformation].document MS
//* action.documentation contains ClinicalGuideline 0..* MS
//* action.documentation[ClinicalGuideline].type = #derived-from
//* action.documentation[ClinicalGuideline].display MS
//* action.documentation[ClinicalGuideline].citation MS
//* action.documentation[ClinicalGuideline].url MS

* insert SlicesOnHierachicalActionsRoot

// TODO: Find better way to slice indefinit (recursion of) sub-actions of PlanDefinition.action (activity)
// NOTE: Circular dependencies using RuleSet is prohibited (will be ignored), hence five levels are pre-defined
RuleSet: SlicesOnHierachicalActionsRoot
* insert SlicesOnHierachicalActions
* action
  * insert SlicesOnHierachicalActions
  * action
    * insert SlicesOnHierachicalActions
    * action
      * insert SlicesOnHierachicalActions
      * action
        * insert SlicesOnHierachicalActions

RuleSet: SlicesOnHierachicalActions
* action.code ^slicing.discriminator.type = #value
* action.code ^slicing.discriminator.path = "coding.system"
* action.code ^slicing.rules = #open
* action.code ^slicing.description = "Slice for use of SNOMED CT"
* action.code ^slicing.ordered = false
* action.code contains SCT 0..* MS
* action.code[SCT].coding.system = $SCT
* action.code[SCT].coding.code 1..1 MS

* action.input ^slicing.discriminator.type = #type
* action.input ^slicing.discriminator.path = "$this"
* action.input ^slicing.rules = #open
* action.input ^slicing.description = "Slice for the input document objects, e.g. patient information"
* action.input ^slicing.ordered = false
* action.input contains DocumentObjectRequirement 0..* MS
* action.input[DocumentObjectRequirement] only CraNE_CCCN_Pathway_Document_Object_Requirement

* action.output ^slicing.discriminator.type = #type
* action.output ^slicing.discriminator.path = "$this"
* action.output ^slicing.rules = #open
* action.output ^slicing.description = "Slice for the output document objects, e.g. tumor board protocol"
* action.output ^slicing.ordered = false
* action.output contains DocumentObjectRequirement 0..* MS
* action.output[DocumentObjectRequirement] only CraNE_CCCN_Pathway_Document_Object_Requirement

* action ^slicing.discriminator.type = #type
* action ^slicing.discriminator.path = "definition"
* action ^slicing.rules = #open
* action ^slicing.description = "Slice for quality indicators to be reported for this activity"
* action ^slicing.ordered = false
* action contains ReportQualityIndicator 0..* MS
* action[ReportQualityIndicator].title = "Report Quality Indicator"
* action[ReportQualityIndicator].description = "Definition of a quality indicator for the surrounding (parent) action"
* action[ReportQualityIndicator].type = #create (exactly)
* action[ReportQualityIndicator].definition[x] 1..1 MS
* action[ReportQualityIndicator].definition[x] only Canonical(CraNE_CCCN_Report_Quality_Indicator_Definition)