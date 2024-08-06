Instance: crane-cccn-quality-indicator-01
InstanceOf: CraNE_CCCN_Quality_Indicator_Description
Title: "Quality Indicator (QI) 01"
Description: "Percentage of patients having surgery for a NSCLC discussed in a postoperative tumour board/MDT meeting"
Usage: #definition
* insert Status
* relatedArtifact.type = #citation
* relatedArtifact.citation = "Beck, N., F. Hoeijmakers, E.M.
                              Wiegman, H.J.M. Smit, F.M.
                              Schramel, et al., Lessons learned
                              from the Dutch Institute for
                              Clinical Auditing: the Dutch model
                              for quality assurance in lung cancer
                              treatment. J Thorac Dis, 2018.
                              10(Suppl 29): p. S3472-S3485."
* relatedArtifact.url = "https://doi.org/10.21037/jtd.2018.04.56"
* scoring = #ratio
* improvementNotation = #increase
* group[+].description = "Percentage of patients having surgery for a NSCLC discussed in a postoperative tumour board/MDT meeting"
* group[=].population[+].code = #numerator
* group[=].population[=].description = "Patients of the denominator with discussion in a postoperative tumour board/MDT meeting"
* group[=].population[=].criteria.language = #text/plain
* group[=].population[=].criteria.expression = "Patients of the denominator with discussion in a postoperative tumour board/MDT meeting"
* group[=].stratifier[+].code = #denominator
* group[=].stratifier[=].description = "All patients with NSCLC and surgery"
* group[=].stratifier[=].criteria.language = #text/plain
* group[=].stratifier[=].criteria.expression = "All patients with NSCLC and surgery"