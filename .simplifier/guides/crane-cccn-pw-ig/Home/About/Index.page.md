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

    footer,
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

    footer,
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
    hl,
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

    footer.footer {
        display: flex;
        flex-direction: row;
        flex-wrap: nowrap;
        justify-content: center;
        align-items: center;
        height: auto;
        padding: 0;
        margin: 200px 0 0 0;
    }

    footer.footer * {
        height: auto;
        width: auto;
        margin: 10px;
    }
</style>
<!--
<div class="under-construction">
    <span>Disclaimer: This FHIR Implementation Guide is under construction. The content neither can be considered stable nor completed.</span>
</div>
-->

## {{page-title}}

This implementation guide has been developed as part of the [CraNE Joint Action](https://crane4health.eu) research project.

<!--

### Impressum

This implementation guide has been developed as part of the [CraNE Joint Action](https://crane4health.eu) research project.

### Contact

|Name|Institution|Contact Details|
|:-|:-|:-|
|Marcel Susky|Research Group Digital Health, TU Dresden| [marcel.susky@tu-dresden.de](mailto:marcel.susky@tu-dresden.de) |
|Peggy Richter|Research Group Digital Health, TU Dresden| [peggy.richter@tu-dresden.de](mailto:peggy.richter@tu-dresden.de) |

If you have any questions about this implementation guide, please send them by email or to the ["CraNE CCCN Pathway IG" channel in the FHIR Community Chat](https://chat.fhir.org/#narrow/stream/453317-CraNE-CCCN-Pathway-IG).

### Contributors

The following authors, listed in alphabetical order, contributed to the creation of this implementation guide.


|Name|Institution|Contribution|
|:-|:-|:-|
|Marcel Susky|Research Group Digital Health, TU Dresden| Technical implementation and maintainance of this implementation guide |
|Peggy Richter|Research Group Digital Health, TU Dresden| Requirements assessment and modeling of the patient pathway |

### Copyright

Copyright © 2024+ CraNE, Funded by the European Union. Views and opinions expressed are however those of the author(s) only and do not necessarily reflect those of the European Union or European Health and Digital Executive Agency (HaDEA). Neither the European Union nor the granting authority can be held responsible for them.

Please note that this implementation guide is based on [FHIR Version R4](https://www.hl7.org/fhir/R4/), which is copyrighted by HL7 International.

### Disclaimer

The content of this implementation guide is public. Use this implementation guide at your own risk.
-->

<footer class="footer">
<div class="eu-logo"><img src="https://crane4health.eu/wp-content/uploads/2022/10/cofounded-eu-logo.png"/></div>
<div>
<h4>Project Management Team</h4>
<p>
National Institute of Public Health<br>
of the Republic of Slovenia (NIJZ)<br>
Trubarjeva 2, SI-1000 Ljubljana<br>
Email: crane@nijz.si<br>
Tel:  +386 1 330 2697
</p>
</div>
<div>
<h4>Dissemination Team</h4>
<p>
Regional Health Authority of Attica (1st YPE)<br>
3, Zacharof Str., 11521, Athens, Greece<br>
Email: crane.dissemination@1dype.gov.gr<br>
Tel: +30 2132010552-474-483<br>
Website: www.1dype.gov.gr
</p>
</div>
</footer>