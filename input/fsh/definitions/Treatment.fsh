Instance: crane-cccn-definition-activity-treatment
InstanceOf: CraNE_CCCN_Pathway_Activity
Title: "CraNE CCCN Pathway Activity Treatment Definition"
Description: "CraNE Comprehensive Cancer Care Network Pathway Activity Treatment Definition"
Usage: #definition
* insert Header
* name = "CraNE_CCCN_Pathway_Activity_Treatment_Definition"
* title = "Treatment"

// BPMN Activity: Therapy
* action[+].id = "treatment"
* action[=].title = "Treatment"
* action[=].description = "Treatment / Treatment Phase"
* action[=].code[SCT] = $SCT#7922000 "General treatment (procedure)"
* action[=].groupingBehavior = #logical-group
* action[=].selectionBehavior = #one-or-more
* action[=].cardinalityBehavior = #multiple
* action[=].documentation[+].type = #documentation
* action[=].documentation[=].display = "In reference to national/ international lung cancer guidelines"
* action[=].relatedAction[+].actionId = "supportive-palliative-care"
* action[=].relatedAction[=].relationship = #concurrent-with-start
* action[=].relatedAction[+].actionId = "rehabilitation"
* action[=].relatedAction[=].relationship = #concurrent-with-start
// NOTE: Treatment plan
* action[=].input[DocumentObjectRequirement][+].codeFilter[DocumentType].code = $LNC#74156-1 // Oncology treatment plan and summary Document
* action[=].input[DocumentObjectRequirement][=].codeFilter[DocumentType].path = "type"
* action[=].input[DocumentObjectRequirement][+].codeFilter[DocumentClass].code = $LNC#56447-6 // Plan of care note
* action[=].input[DocumentObjectRequirement][=].codeFilter[DocumentClass].path = "category"
* action[=].input[DocumentObjectRequirement][+].codeFilter[IheDeXdsDocumentType].code = $ihe-de-xds-type-codes#FPRO // Therapiedokumentation
* action[=].input[DocumentObjectRequirement][=].codeFilter[IheDeXdsDocumentType].path = "type"
* action[=].input[DocumentObjectRequirement][+].codeFilter[IheDeXdsDocumentClass].code = $ihe-de-xds-class-codes#PLA // Planungsdokument
* action[=].input[DocumentObjectRequirement][=].codeFilter[IheDeXdsDocumentClass].path = "category"

// BPMN Task: Therapy / Surgery
* action[=].action[+].id = "surgery"
* action[=].action[=].title = "Surgery"
* action[=].action[=].description = "Surgery"
* action[=].action[=].code[SCT] = $SCT#387713003 "Surgical procedure (procedure)"
* action[=].action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-04)
* action[=].action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-05)
* action[=].action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-07)
* action[=].action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-08)
* action[=].action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-09)
* action[=].action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-10)
* action[=].action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-11)
* action[=].action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-12)
* action[=].action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-19)

// BPMN Task: Therapy / Radio (Chemo-) Therapy
* action[=].action[+].id = "radio-chemo-therapy"
* action[=].action[=].title = "Radio (Chemo-) Therapy"
* action[=].action[=].description = "Radio (Chemo-) Therapy"
* action[=].action[=].code[SCT] = $SCT#703423002 "Combined chemotherapy and radiation therapy (procedure)"
* action[=].action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-03)
* action[=].action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-13)
* action[=].action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-15)
* action[=].action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-20)

// BPMN Task: Therapy / Systemic Therapy
* action[=].action[+].id = "systemic-therapy"
* action[=].action[=].title = "Systemic Therapy"
* action[=].action[=].description = "Systemic Therapy"
* action[=].action[=].code[SCT] = $SCT#367336001 "Chemotherapy (procedure)"
* action[=].action[=].code[SCT] = $SCT#76334006 "Immunotherapy (procedure)"
* action[=].action[=].code[SCT] = $SCT#169413002 "Hormone therapy (procedure)"
* action[=].action[=].code[SCT] = $SCT#416608005 "Drug therapy (procedure)"
* action[=].action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-14)
* action[=].action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-17)

// BPMN Task: Therapy / Other Therapy
* action[=].action[+].id = "other-therapy"
* action[=].action[=].title = "Other Therapy"
* action[=].action[=].description = "Other Therapy"
* action[=].action[=].code[SCT] = $SCT#243121000 "Medical therapy (procedure)"
* action[=].action[=].code[SCT] = $SCT#1259201000 "Adjuvant drug therapy (procedure)"
* action[=].action[=].code[SCT] = $SCT#385797002 "Adverse drug reaction prevention (procedure)"
* action[=].action[=].code[SCT] = $SCT#396081009 "Adverse drug reaction prevention management (procedure)"
* action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].documentation[=].display = "E.g. in case of malignant pleural effusion, hemoptysis, superior vena cava syndrome, tracheobronchial tumour obstruction"
* action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].documentation[=].display = "Specific treatment of metastases"
* action[=].action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-16)

// BPMN Task: Therapy / End-of-life care/ best supportive care
* action[=].action[+].id = "eol-supportive-care"
* action[=].action[=].title = "End-of-life Care/ Supportive Care"
* action[=].action[=].description = "End-of-life Care/ Supportive Care"
* action[=].action[=].code[SCT] = $SCT#713058002 "End of life care planning (procedure)"
* action[=].action[=].code[SCT] = $SCT#362964009 "Palliative procedure (procedure)"

// BPMN Task: Post-operative/ -therapeutic/ mid-therapeutic TB/MTB meeting
* action[+].id = "therapy-evaluation"
* action[=].title = "Post-operative/ -therapeutic/ mid-therapeutic TB/MTB Meeting"
* action[=].description = "Post-operative/ -therapeutic/ mid-therapeutic (Molecular) Tumor Board Meeting"
* action[=].code[SCT] = $SCT#720006006 "Cancer care review (procedure)"
* action[=].code[SCT] = $SCT#425268008 "Review of care plan (procedure)"
* action[=].condition.kind = #start
* action[=].condition.expression.description = "Patient Undergone Surgery"
* action[=].condition.expression.language = #text/cql
* action[=].condition.expression.expression = "Performed Surgery"
* action[=].condition.kind = #start
* action[=].condition.expression.description = "Conduct Molecular Tumor Board Meeting"
* action[=].condition.expression.language = #text/cql
* action[=].condition.expression.expression = "Meets Molucular Tumor Board Inclusion Criteria"
* action[=].documentation[+].type = #documentation
* action[=].documentation[=].display = "Mandatory: post-opertive"
* action[=].documentation[+].type = #documentation
* action[=].documentation[=].display = "MTB if necessary (see inclusion criteria in subprocess for MTB meeting)"
* action[=].documentation[+].type = #documentation
* action[=].documentation[=].display = "If necessary including staging diagnostics"
* action[=].relatedAction[+].actionId = "treatment"
* action[=].relatedAction[=].relationship = #after-end
* action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-01)

// BPMN Task: Supportive Care / Early Integration of Palliative Care
* action[+].id = "supportive-palliative-care"
* action[=].title = "Supportive Care/ Early Integration of Palliative Care"
* action[=].description = "Supportive Care/ Early Integration of Palliative Care"
* action[=].code[SCT] = $SCT#362964009 "Palliative procedure (procedure)"
* action[=].documentation[+].type = #documentation
* action[=].documentation[=].display = "In parallel to therapy"
* action[=].documentation[+].type = #documentation
* action[=].documentation[=].display = "Aim: maintain and improve quality of life, e.g. by pain management according to the WHO pain management scheme, psycho-oncological care"
* action[=].relatedAction[+].actionId = "treatment"
* action[=].relatedAction[=].relationship = #concurrent
* action[=].relatedAction[+].actionId = "rehabilitation"
* action[=].relatedAction[=].relationship = #concurrent
* action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-18)

// BPMN Task: Rehabilitation (optional)
* action[+].id = "rehabilitation"
* action[=].title = "Rehabilitation"
* action[=].description = "Rehabilitation (optional)"
* action[=].code[SCT] = $SCT#709503007 "Assessment of quality of life (procedure)"
* action[=].code[SCT] = $SCT#410081009 "Rehabilitation therapy assessment (procedure)"
* action[=].code[SCT] = $SCT#410082002 "Rehabilitation therapy education (procedure)"
* action[=].code[SCT] = $SCT#410083007 "Rehabilitation therapy management (procedure)"
* action[=].condition.kind = #applicability
* action[=].condition.expression.description = "According to National Standards/ Conditions"
* action[=].condition.expression.language = #text/cql
* action[=].condition.expression.expression = "Apply National Standards"
* action[=].relatedAction[+].actionId = "treatment"
* action[=].relatedAction[=].relationship = #concurrent
* action[=].relatedAction[+].actionId = "supportive-palliative-care"
* action[=].relatedAction[=].relationship = #concurrent