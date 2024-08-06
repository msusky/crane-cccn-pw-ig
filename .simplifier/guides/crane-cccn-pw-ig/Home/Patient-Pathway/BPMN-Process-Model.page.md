<style>
    html, body, header, nav, table * {
        font-family: "Work Sans", sans-serif;
        font-size: 100%;
        line-height: 2em;
    }

    body,
    table * {
        background-color: #cfdbd9 !important;
    }

    nav *,
    th,
    .under-construction span,
    .dropdown.open > a:hover {
        color: #cfdbd9 !important;
    }

    h1,
    h2,
    h3,
    nav *,
    th,
    .under-construction span {
        text-transform: uppercase !important;
    }

    th,
    nav.navbar {
        background-color: #81368d !important;
    }

    content a,
    h1,
    h2,
    h3,
    nav.navbar a:hover,
    .dropdown-menu *,
    .title *,
    .hl {
        color: #81368d !important;
    }

    .title {
        text-align: center;
    }

    a,
    .title *,
    .under-construction span {
        font-weight: bold;
    }

    .hl7-logo a {
        display: none;
    }

    .hl7-logo {
        background-image: url("https://crane4health.eu/wp-content/uploads/2023/01/cropped-cropped-cranelogo.png");
        background-repeat: no-repeat;
        background-size: 86px 70px;
        height: 90px;
    }

    .under-construction {
        width: 100%;
        height: 3em;
        line-height: 3em;
        text-align: center;
        background-color: #da4453;
    }

    .under-construction span {
        vertical-align: middle;
    }
</style>

<div class="under-construction">
    <span>Disclaimer: This FHIR Implementation Guide is under construction. The content neither can be considered stable nor completed.</span>
</div>

## Patient Pathway (BPMN) Process Model

TBD: Short introduction to the patient pathway process model

<div style="height: 200px; width: 100%; background-color: #81368d; color: #cfdbd9; text-align: center">PNG/SVG image placeholder for BPMN model</div>

## Pathway Stages

TBD: Short description of activities, events, documents, etc of the patient pathway process model

### Screening

TBD

### CCCN Care Entry

TBD

### Staging and Diagnostics

TBD

### Treatment Planning

TBD

### Treatment

TBD

### End-of-Life Care

TBD

### Follow-Ups

TBD

### End of CCCN Care

TBD

## Role Model

<!--
|Role|Description|
|:-|:-|
|CCCN Unit|tbd|
|Patient|Lung cancer patient|
-->

### CCCN Unit

A CCCN unit is an integrated network of cancer care providers that collaborate to offer high-quality, multidisciplinary cancer treatment, research, and education. These units focus on improving patient outcomes through standardized care, advancing cancer research via clinical trials and translational research, providing continuous professional and patient education, and facilitating data sharing and collaboration among network members. They aim to enhance the quality and accessibility of cancer care while promoting best practices and supporting health policy advocacy.

### Patient

A patient in a CCCN is a person with postive lung cancer screening results or a person with symptoms or histologically confirmed lung cancer. For more information with regard to symptoms and confirmation see **TBD** guidelines.


## Related Documents and Data

TBD: Short description of activities, events, documents, etc of the patient pathway process model

## Quality Indicators

Quality indicators for guideline-based cancer healthcare ensure that care is delivered according to the highest standards, improving patient outcomes and satisfaction. These indicators encompass process adherence, outcomes, infrastructure, compliance, accessibility, and patient engagement. By monitoring and improving these areas, healthcare providers can enhance the overall quality and effectiveness of cancer care. The table below shows the quality indicators specified as part of the patient pathway.

|No.|Name|Specification|
|:-|:-|:-|
|1|Percentage of patients having surgery for a NSCLC discussed in a postoperative TB/MDT meeting|*Numerator*: Patients of the denominator with discussion in a postoperative TB/MDT meeting<br> *Denominator*: All patients with NSCLC and surgery|