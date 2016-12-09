<?xml version="1.0"?>
<recipe>

    <instantiate from="root/res/layout/layout.xml" to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    <instantiate from="root/src/app_package/Contract.java.ftl" to="${escapeXmlAttribute(srcOut)}/${screenName}Contract.java" />
    <instantiate from="root/src/app_package/Presenter.java.ftl" to="${escapeXmlAttribute(srcOut)}/${screenName}Presenter.java" />
    <instantiate from="root/src/app_package/ViewModel.java.ftl" to="${escapeXmlAttribute(srcOut)}/${screenName}ViewModel.java" />
    <instantiate from="root/src/app_package/View.java.ftl" to="${escapeXmlAttribute(srcOut)}/${screenName}View.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${screenName}Contract.java" />
</recipe>
