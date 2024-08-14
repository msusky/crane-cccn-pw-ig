Instance: crane-cccn-definition-activity-end-of-care
InstanceOf: CraNE_CCCN_Lung_Cancer_Pathway_Activity
Title: "CraNE CCCN Lung Cancer Pathway Activity End-Of-Care Definition"
Description: "CraNE Comprehensive Cancer Care Network Lung Cancer Pathway Activity End-Of-Care Definition"
Usage: #definition
* insert Header

* title = "End of CCCN Care"

// BPMN Task: End of follow-up consultation
* action[+].title = "End of Follow-Up Consultation"
* action[=].description = "End of Follow-Up Consultation"
* action[=].code = $SCT#281036007 "Follow-up consultation (procedure)"
* action[=].code = $SCT#1237136005 "Consultation with patient (procedure)"
* action[=].code = $SCT#371754007 "Discharge planning (procedure)"