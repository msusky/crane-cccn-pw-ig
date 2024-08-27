Instance: crane-cccn-definition-activity-treatment-planning
InstanceOf: CraNE_CCCN_Pathway_Activity
Title: "CraNE CCCN Pathway Activity Treatment Planning Definition"
Description: "CraNE Comprehensive Cancer Care Network Pathway Activity Treatment Planning Definition"
Usage: #definition
* insert Header
* name = "CraNE_CCCN_Pathway_Activity_Treatment_Planning_Definition"
* title = "Treatment Planning"

// BPMN Activity: Standard Tumorboard (TB) Meeting
// TODO: TB Report/ Recommendation Output
* action[+].id = "tumor-conference"
* action[=].title = "Tumorboard Meeting"
* action[=].description = "Standard Tumorboard (TB) Meeting"
* action[=].code[SCT] = $SCT#708004003 "Multidisciplinary review (procedure)"
* action[=].code[SCT] = $SCT#287051000000107 "Multidisciplinary meeting (procedure)"
* action[=].code[SCT] = $SCT#399414003 "Multidisciplinary care conference for cancer care planning (procedure)"
* action[=].groupingBehavior = #logical-group
* action[=].selectionBehavior = #all
* action[=].relatedAction.actionId = "staging-diagnostics"
* action[=].relatedAction.relationship = #after-end
// NOTE: TB protocol with therapy recommendation
* action[=].output[DocumentObjectRequirement][+].codeFilter[DocumentType].code = $LNC#74156-1 // Oncology treatment plan and summary Document
* action[=].output[DocumentObjectRequirement][=].codeFilter[DocumentType].path = "type"
* action[=].output[DocumentObjectRequirement][+].codeFilter[DocumentClass].code = $LNC#62385-0 // Recommendation [interpretation] Document
* action[=].output[DocumentObjectRequirement][=].codeFilter[DocumentClass].path = "category"
* action[=].output[DocumentObjectRequirement][+].codeFilter[IheDeXdsDocumentType].code = $ihe-de-xds-type-codes#ONKO // Onkologische Dokumente
* action[=].output[DocumentObjectRequirement][=].codeFilter[IheDeXdsDocumentType].path = "type"
* action[=].output[DocumentObjectRequirement][+].codeFilter[IheDeXdsDocumentClass].code = $ihe-de-xds-class-codes#DUR // Durchführungsprotokoll
* action[=].output[DocumentObjectRequirement][=].codeFilter[IheDeXdsDocumentClass].path = "category"
* action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-02)
* action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-18)

// BPMN Task: Standard Tumorboard (TB) Meeting / Registration of Patient for Tumorboard Meeting
// TODO: Patient and Diagnostics Data Input
* action[=].action[+].id = "tumor-conference-registration"
* action[=].action[=].title = "Registration"
* action[=].action[=].description = "Registration of Patient for Tumorboard Meeting"
* action[=].action[=].code[SCT] = $SCT#307782001 "Registration procedure (procedure)"
* action[=].action[=].code[SCT] = $SCT#184047000 "Patient registration (procedure)"
* action[=].action[=].condition.kind = #start
* action[=].action[=].condition.expression.description = "Therapeutic or Diagnostic Question for Patient"
* action[=].action[=].condition.expression.language = #text/cql
* action[=].action[=].condition.expression.expression = "Therapeutic or Diagnostic Question"
* action[=].action[=].relatedAction.actionId = "tumor-conference-preparation"
* action[=].action[=].relatedAction.relationship = #before-start

// BPMN Task: Standard Tumorboard (TB) Meeting / Preparation of Tumorboard Meeting
* action[=].action[+].id = "tumor-conference-preparation"
* action[=].action[=].title = "Preparation"
* action[=].action[=].description = "Preparation of Tumorboard Meeting"
* action[=].action[=].code[SCT] = $SCT#410538000 "Scheduling (procedure)"
* action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].documentation[=].display = "Main patient and treatment data are to be compiled in writing for the tumorboard meeting"
* action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].documentation[=].display = "A pre-appraisal of suitable study patients is to be undertaken"
* action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].documentation[=].display = "Invitation of tumorboard participants"
* action[=].action[=].relatedAction[+].actionId = "tumor-conference-presentation"
* action[=].action[=].relatedAction[=].relationship = #before-start
* action[=].action[=].relatedAction[+].actionId = "tumor-conference-registration"
* action[=].action[=].relatedAction[=].relationship = #after-end

// BPMN Task: Standard Tumorboard (TB) Meeting / Presentation in Tumorboard Meeting
// TODO: Participants/ roles as PlanDefinition.action.documentation.resource:Reference(CareTeam)
* action[=].action[+].id = "tumor-conference-presentation"
* action[=].action[=].title = "Presentation"
* action[=].action[=].description = "Presentation in Tumorboard Meeting"
* action[=].action[=].code[SCT] = $SCT#427272008 "Recommendation to physician (procedure)"
* action[=].action[=].code[SCT] = $SCT#223485006 "Discussion about therapy (procedure)"
* action[=].action[=].code[SCT] = $SCT#223487003 "Discussion about options (procedure)"
* action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].documentation[=].display = "Discussion"
* action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].documentation[=].display = "Decision-making: further procedure therapy / no therapy, if necessary still missing diagnostics, if necessary re-presentation"
* action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].documentation[=].display = "If suitable, study recommendation"
* action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].documentation[=].display = "Participants: pathology, radiology, tumor-specific departments, possibly other participants"
* action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].documentation[=].display = "Projection of the case, if necessary projection pathology/ imaging"
* action[=].action[=].condition.kind = #start
* action[=].action[=].relatedAction.actionId = "tumor-conference-preparation"
* action[=].action[=].relatedAction.relationship = #after-end
// NOTE: TB protocol with therapy recommendation
* action[=].action[=].output[DocumentObjectRequirement][+].codeFilter[DocumentType].code = $LNC#74156-1 // Oncology treatment plan and summary Document
* action[=].action[=].output[DocumentObjectRequirement][=].codeFilter[DocumentType].path = "type"
* action[=].action[=].output[DocumentObjectRequirement][+].codeFilter[DocumentClass].code = $LNC#62385-0 // Recommendation [interpretation] Document
* action[=].action[=].output[DocumentObjectRequirement][=].codeFilter[DocumentClass].path = "category"
* action[=].action[=].output[DocumentObjectRequirement][+].codeFilter[IheDeXdsDocumentType].code = $ihe-de-xds-type-codes#ONKO // Onkologische Dokumente
* action[=].action[=].output[DocumentObjectRequirement][=].codeFilter[IheDeXdsDocumentType].path = "type"
* action[=].action[=].output[DocumentObjectRequirement][+].codeFilter[IheDeXdsDocumentClass].code = $ihe-de-xds-class-codes#DUR // Durchführungsprotokoll
* action[=].action[=].output[DocumentObjectRequirement][=].codeFilter[IheDeXdsDocumentClass].path = "category"

// BPMN Activity: Molecular Tumorboard (MTB) Meeting
* action[+].id = "molecular-tumor-conference"
* action[=].title = "Molecular Tumorboard Meeting"
* action[=].description = "Molecular Tumorboard (MTB) Meeting"
* action[=].code[SCT] = $SCT#708004003 "Multidisciplinary review (procedure)"
* action[=].code[SCT] = $SCT#287051000000107 "Multidisciplinary meeting (procedure)"
* action[=].code[SCT] = $SCT#399414003 "Multidisciplinary care conference for cancer care planning (procedure)"
* action[=].condition.kind = #start
* action[=].condition.expression.description = "Guideline-based treatment options given? [No]"
* action[=].condition.expression.language = #text/cql
* action[=].condition.expression.expression = "No Guideline-based Treatment"
* action[=].condition.kind = #start
* action[=].condition.expression.description = "Best Supportive Care (BSC) Intend? [No]"
* action[=].condition.expression.language = #text/cql
* action[=].condition.expression.expression = "No Best Supportive Care Intend"
* action[=].documentation[+].type = #documentation
* action[=].documentation[=].display = "Presentation based on documented recommendation of a tumor entity or organ-specific tumor conference: Patients with advanced or rare cancer; who have progressed through guideline-based therapy; who clinically qualify for molecular-based therapy; who agree in principle to a possible therapy based on the molecular findings (see e.g. patient information)"
* action[=].documentation[+].type = #documentation
* action[=].documentation[=].display = "End of MTB: Study participation (early phase), off-label therapy, no furhter therapy"
* action[=].groupingBehavior = #logical-group
* action[=].selectionBehavior = #all
* action[=].relatedAction.actionId = "tumor-conference"
* action[=].relatedAction.relationship = #after-end
// NOTE: MTB protocol with therapy recommendation
* action[=].output[DocumentObjectRequirement][+].codeFilter[DocumentType].code = $LNC#74156-1 // Oncology treatment plan and summary Document
* action[=].output[DocumentObjectRequirement][=].codeFilter[DocumentType].path = "type"
* action[=].output[DocumentObjectRequirement][+].codeFilter[DocumentClass].code = $LNC#62385-0 // Recommendation [interpretation] Document
* action[=].output[DocumentObjectRequirement][=].codeFilter[DocumentClass].path = "category"
* action[=].output[DocumentObjectRequirement][+].codeFilter[IheDeXdsDocumentType].code = $ihe-de-xds-type-codes#ONKO // Onkologische Dokumente
* action[=].output[DocumentObjectRequirement][=].codeFilter[IheDeXdsDocumentType].path = "type"
* action[=].output[DocumentObjectRequirement][+].codeFilter[IheDeXdsDocumentClass].code = $ihe-de-xds-class-codes#DUR // Durchführungsprotokoll
* action[=].output[DocumentObjectRequirement][=].codeFilter[IheDeXdsDocumentClass].path = "category"
* action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-02)
* action[=].action[ReportQualityIndicator].definitionCanonical = Canonical(crane-cccn-report-quality-indicator-18)

// BPMN Task: Molecular Tumorboard (MTB) Meeting / Registration of Patient for Molecular Tumorboard Meeting
* action[=].action[+].id = "molecular-tumor-conference-registration"
* action[=].action[=].title = "Registration"
* action[=].action[=].description = "Registration of Patient for Molecular Tumorboard Meeting"
* action[=].action[=].code[SCT] = $SCT#307782001 "Registration procedure (procedure)"
* action[=].action[=].code[SCT] = $SCT#184047000 "Patient registration (procedure)"
* action[=].action[=].condition.kind = #start
* action[=].action[=].condition.expression.description = "Therapeutic or Diagnostic Question for Patient"
* action[=].action[=].condition.expression.language = #text/cql
* action[=].action[=].condition.expression.expression = "Therapeutic or Diagnostic Question"
* action[=].action[=].relatedAction.actionId = "molecular-tumor-conference-presentation"
* action[=].action[=].relatedAction.relationship = #before-start

// BPMN Task: Molecular Tumorboard (MTB) Meeting / (1st) Presentation in Molecular Tumorboard (optional)
// TODO: Participants/ roles as PlanDefinition.action.documentation.resource:Reference(CareTeam)
* action[=].action[+].id = "molecular-tumor-conference-presentation-optional"
* action[=].action[=].title = "(1st) Presentation"
* action[=].action[=].description = "(1st) Presentation in Molecular Tumorboard (optional)"
* action[=].action[=].code[SCT] = $SCT#708004003 "Multidisciplinary review (procedure)"
* action[=].action[=].code[SCT] = $SCT#287051000000107 "Multidisciplinary meeting (procedure)"
* action[=].action[=].code[SCT] = $SCT#399414003 "Multidisciplinary care conference for cancer care planning (procedure)"
* action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].documentation[=].display = "Participants: pathologist, human genetics, haematology/ oncology specialist, tumor-specific diciplines (tumor entity expert)"
* action[=].action[=].relatedAction[+].actionId = "molecular-tumor-conference-registration"
* action[=].action[=].relatedAction[=].relationship = #after-end
* action[=].action[=].relatedAction[+].actionId = "molecular-diagnostics"
* action[=].action[=].relatedAction[=].relationship = #before-start

// BPMN Group: Molecular Tumorboard (MTB) Meeting / Molecular Diagnostics
* action[=].action[+].id = "molecular-diagnostics"
* action[=].action[=].title = "Molecular Diagnostics"
* action[=].action[=].description = "Molecular Diagnostics"
* action[=].action[=].code[SCT] = $SCT#396927009 "Molecular testing, diagnostic (procedure)"
* action[=].action[=].code[SCT] = $SCT#308539001 "Request procedure (procedure)"
* action[=].action[=].groupingBehavior = #logical-group
* action[=].action[=].selectionBehavior = #all
* action[=].action[=].relatedAction.actionId = "molecular-tumor-conference-presentation-optional"
* action[=].action[=].relatedAction.relationship = #after-end

// BPMN Task : Molecular Tumorboard (MTB) Meeting / Molecular Diagnostics / Request for Human Genetic, Molecular Pathological Analysis
* action[=].action[=].action[+].id = "molecular-diagnostics-human-genetic-patho-analysis"
* action[=].action[=].action[=].title = "Request for Human Genetic/ Molecular Pathological Analysis"
* action[=].action[=].action[=].description = "Request for Human Genetic/ Molecular Pathological Analysis"
* action[=].action[=].action[=].code[SCT] = $SCT#116148004 "Molecular genetics procedure (procedure)"
* action[=].action[=].action[=].code[SCT] = $SCT#275640004 "Refer to pathology laboratory (procedure)"
* action[=].action[=].action[=].code[SCT] = $SCT#423039003 "Genetics education, guidance, counseling (procedure)"
* action[=].action[=].action[=].code[SCT] = $SCT#48051000087105 "Recommendation to perform genetic test (procedure)"
* action[=].action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].action[=].documentation[=].display = "Next Generation Sequencing (NGS), DNA Panel or WES (Whole-Genome Sequencing, WGS)"
* action[=].action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].action[=].documentation[=].display = "If necessary, additional diagnostics: RNA Panel, Transcriptome, Other Optional Methods"
* action[=].action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].action[=].documentation[=].display = "In Case of Abnormalities, Validation by Standard Sequencing Methods"
* action[=].action[=].action[=].relatedAction.actionId = "molecular-diagnostics-bioinformatic-analysis"
* action[=].action[=].action[=].relatedAction.relationship = #before-start

// BPMN Task : Molecular Tumorboard (MTB) Meeting / Molecular Diagnostics / Bioinformatic Analysis and Processing
* action[=].action[=].action[+].id = "molecular-diagnostics-bioinformatic-analysis"
* action[=].action[=].action[=].title = "Bioinformatic Analysis and Processing"
* action[=].action[=].action[=].description = "Bioinformatic Analysis and Processing"
* action[=].action[=].action[=].code[SCT] = $SCT#363109007 "Evaluation of test results (procedure)"
* action[=].action[=].action[=].code[SCT] = $SCT#386344002 "Laboratory data interpretation (procedure)"
* action[=].action[=].action[=].code[SCT] = $SCT#169282000 "Diagnostic data computerization (procedure)"
* action[=].action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].action[=].documentation[=].display = "Designation/ naming of the tools used with the corresponding versions"
* action[=].action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].action[=].documentation[=].display = "Definition and indication of the calculation of metrics such as Tumor Mutational Burden (TMB), Homologous Recombination Deficiency (HRD), Microsatellite Instability (MSI)"
* action[=].action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].action[=].documentation[=].display = "Specification of databases"
* action[=].action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].action[=].documentation[=].display = "Indication of the cut-offs (tolerance values) for the individual calculations"
* action[=].action[=].action[=].relatedAction[+].actionId = "molecular-diagnostics-human-genetic-patho-analysis"
* action[=].action[=].action[=].relatedAction[=].relationship = #after-end
* action[=].action[=].action[=].relatedAction[+].actionId = "molecular-diagnostics-bioinformatic-analysis"
* action[=].action[=].action[=].relatedAction[=].relationship = #before-start

// BPMN Task : Molecular Tumorboard (MTB) Meeting / Preparation of Findings, Reporting
// TODO: Genetic Findings with Annotated Variants Output
* action[=].action[=].action[+].id = "molecular-diagnostics-reporting"
* action[=].action[=].action[=].title = "Preparation of Findings/ Reporting"
* action[=].action[=].action[=].description = "Preparation of Findings/ Reporting"
* action[=].action[=].action[=].code[SCT] = $SCT#33526004 "Laboratory reporting, electronic (procedure)"
* action[=].action[=].action[=].relatedAction.actionId = "molecular-diagnostics-bioinformatic-analysis"
* action[=].action[=].action[=].relatedAction.relationship = #after-end

// BPMN Task: Molecular Tumorboard (MTB) Meeting / (2nd) Presentation in Molecular Tumorboard
// TODO: Participants/ roles as PlanDefinition.action.documentation.resource:Reference(CareTeam)
* action[=].action[+].id = "molecular-tumor-conference-presentation"
* action[=].action[=].title = "(2nd) Presentation"
* action[=].action[=].description = "(2nd) Presentation in Molecular Tumorboard"
* action[=].action[=].code[SCT] = $SCT#708004003 "Multidisciplinary review (procedure)"
* action[=].action[=].code[SCT] = $SCT#287051000000107 "Multidisciplinary meeting (procedure)"
* action[=].action[=].code[SCT] = $SCT#399414003 "Multidisciplinary care conference for cancer care planning (procedure)"
* action[=].action[=].documentation[+].type = #documentation
* action[=].action[=].documentation[=].display = "Participants: pathologist, human genetics, haematology/ oncology specialist, tumor-specific diciplines (tumor entity expert)"
* action[=].action[=].relatedAction.actionId = "molecular-diagnostics"
* action[=].action[=].relatedAction.relationship = #after-end
// NOTE: MTB protocol with therapy recommendation
* action[=].action[=].output[DocumentObjectRequirement][+].codeFilter[DocumentType].code = $LNC#74156-1 // Oncology treatment plan and summary Document
* action[=].action[=].output[DocumentObjectRequirement][=].codeFilter[DocumentType].path = "type"
* action[=].action[=].output[DocumentObjectRequirement][+].codeFilter[DocumentClass].code = $LNC#62385-0 // Recommendation [interpretation] Document
* action[=].action[=].output[DocumentObjectRequirement][=].codeFilter[DocumentClass].path = "category"
* action[=].action[=].output[DocumentObjectRequirement][+].codeFilter[IheDeXdsDocumentType].code = $ihe-de-xds-type-codes#ONKO // Onkologische Dokumente
* action[=].action[=].output[DocumentObjectRequirement][=].codeFilter[IheDeXdsDocumentType].path = "type"
* action[=].action[=].output[DocumentObjectRequirement][+].codeFilter[IheDeXdsDocumentClass].code = $ihe-de-xds-class-codes#DUR // Durchführungsprotokoll
* action[=].action[=].output[DocumentObjectRequirement][=].codeFilter[IheDeXdsDocumentClass].path = "category"

// BPMN Task: Patient Consultation after Diagnosis
* action[+].id = "patient-consultation-after-diagnosis"
* action[=].title = "Patient Consultation"
* action[=].description = "Patient Consultation after Diagnosis"
* action[=].code[SCT] = $SCT#1237136005 "Consultation with patient (procedure)"
* action[=].condition.kind = #start
* action[=].condition.expression.description = "Guideline-based treatment options given? [Yes]"
* action[=].condition.expression.language = #text/cql
* action[=].condition.expression.expression = "Guideline-based Treatment"
* action[=].condition.kind = #start
* action[=].condition.expression.description = "Best Supportive Care (BSC) Intend? [Yes]"
* action[=].condition.expression.language = #text/cql
* action[=].condition.expression.expression = "Best Supportive Care"
* action[=].condition.kind = #start
* action[=].condition.expression.description = "Further Diagnostics Necessary? [No]"
* action[=].condition.expression.language = #text/cql
* action[=].condition.expression.expression = "No Additional Diagnostics"
* action[=].relatedAction[+].actionId = "tumor-conference"
* action[=].relatedAction[=].relationship = #after-end
* action[=].relatedAction[+].actionId = "molecular-tumor-conference"
* action[=].relatedAction[=].relationship = #after

// BPMN Task: Individual Reflection / Discussions, Second Opinion
// TODO: Info Material, TB/MTB Report/ Recommendation Input
//* action[+].id = "patient-decision-making"
//* action[=].title = "Individual Reflection / Discussion, Second Opinion"
//* action[=].description = "Individual Reflection and Discussions, Second Opinion"
//* action[=].code[SCT] = $SCT#77406008 "Confirmatory medical consultation (procedure)"
//* action[=].code[SCT] = $SCT#223485006 "Discussion about therapy (procedure)"
//* action[=].code[SCT] = $SCT#223484005 "Discussion about treatment (procedure)"
//* action[=].code[SCT] = $SCT#223487003 "Discussion about options (procedure)"
//* action[=].condition.kind = #applicability
//* action[=].condition.expression.description = "Instant Patient Decision? [No]"
//* action[=].condition.expression.language = #text/cql
//* action[=].condition.expression.expression = "Postponement Patient Decision Making"
//* action[=].relatedAction[+].actionId = "patient-consultation-after-diagnosis"
//* action[=].relatedAction[=].relationship = #after-end
//* action[=].relatedAction[+].actionId = "shared-decision-making"
//* action[=].relatedAction[=].relationship = #before

// BPMN Task: Shared Decision-Making
* action[+].id = "shared-decision-making"
* action[=].title = "Shared Decision Making"
* action[=].description = "Shared Decision Making"
* action[=].code[SCT] = $SCT#77406008 "Confirmatory medical consultation (procedure)"
* action[=].code[SCT] = $SCT#223485006 "Discussion about therapy (procedure)"
* action[=].code[SCT] = $SCT#223484005 "Discussion about treatment (procedure)"
* action[=].code[SCT] = $SCT#223487003 "Discussion about options (procedure)"
* action[=].code[SCT] = $SCT#707737009 "Discussion about priorities for care (procedure)"
* action[=].relatedAction[+].actionId = "patient-consultation-after-diagnosis"
* action[=].relatedAction[=].relationship = #after-end
// NOTE: (M)TB protocol with therapy recommendation
* action[=].input[DocumentObjectRequirement][+].codeFilter[DocumentType].code = $LNC#74156-1 // Oncology treatment plan and summary Document
* action[=].input[DocumentObjectRequirement][=].codeFilter[DocumentType].path = "type"
* action[=].input[DocumentObjectRequirement][+].codeFilter[DocumentClass].code = $LNC#62385-0 // Recommendation [interpretation] Document
* action[=].input[DocumentObjectRequirement][=].codeFilter[DocumentClass].path = "category"
* action[=].input[DocumentObjectRequirement][+].codeFilter[IheDeXdsDocumentType].code = $ihe-de-xds-type-codes#ONKO // Onkologische Dokumente
* action[=].input[DocumentObjectRequirement][=].codeFilter[IheDeXdsDocumentType].path = "type"
* action[=].input[DocumentObjectRequirement][+].codeFilter[IheDeXdsDocumentClass].code = $ihe-de-xds-class-codes#DUR // Durchführungsprotokoll
* action[=].input[DocumentObjectRequirement][=].codeFilter[IheDeXdsDocumentClass].path = "category"
// NOTE: Information materials (e.g. smoking cecassion)
* action[=].input[DocumentObjectRequirement][+].codeFilter[DocumentType].code = $LNC#34895-3 // Education note
* action[=].input[DocumentObjectRequirement][=].codeFilter[DocumentType].path = "type"
* action[=].input[DocumentObjectRequirement][+].codeFilter[DocumentClass].code = $LNC#47042-7 // Counseling note
* action[=].input[DocumentObjectRequirement][=].codeFilter[DocumentClass].path = "category"
* action[=].input[DocumentObjectRequirement][+].codeFilter[IheDeXdsDocumentType].code = $ihe-de-xds-type-codes#PATI // Patienteninformationen
* action[=].input[DocumentObjectRequirement][=].codeFilter[IheDeXdsDocumentType].path = "type"
* action[=].input[DocumentObjectRequirement][+].codeFilter[IheDeXdsDocumentClass].code = $ihe-de-xds-class-codes#ADM // Administratives Dokument
* action[=].input[DocumentObjectRequirement][=].codeFilter[IheDeXdsDocumentClass].path = "category"
// NOTE: Treatment plan
* action[=].output[DocumentObjectRequirement][+].codeFilter[DocumentType].code = $LNC#74156-1 // Oncology treatment plan and summary Document
* action[=].output[DocumentObjectRequirement][=].codeFilter[DocumentType].path = "type"
* action[=].output[DocumentObjectRequirement][+].codeFilter[DocumentClass].code = $LNC#56447-6 // Plan of care note
* action[=].output[DocumentObjectRequirement][=].codeFilter[DocumentClass].path = "category"
* action[=].output[DocumentObjectRequirement][+].codeFilter[IheDeXdsDocumentType].code = $ihe-de-xds-type-codes#FPRO // Therapiedokumentation
* action[=].output[DocumentObjectRequirement][=].codeFilter[IheDeXdsDocumentType].path = "type"
* action[=].output[DocumentObjectRequirement][+].codeFilter[IheDeXdsDocumentClass].code = $ihe-de-xds-class-codes#PLA // Planungsdokument
* action[=].output[DocumentObjectRequirement][=].codeFilter[IheDeXdsDocumentClass].path = "category"