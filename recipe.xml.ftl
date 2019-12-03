<?xml version="1.0"?>
<recipe>

    <instantiate from="src/app_package/AutoFitPreviewBuilder.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/base/AutoFitPreviewBuilder.kt" />

    <instantiate from="src/app_package/CameraActivity.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/base/${mainActivityClass}.kt" />

    <instantiate from="res/layout/activity.xml"
                 to="${escapeXmlAttribute(resOut)}/layout/${mainActivityLayout}.xml" />

    <dependency mavenUrl="androidx.camera:camera-core:1.0.0-alpha06"/>
    <dependency mavenUrl="androidx.camera:camera-camera2:1.0.0-alpha06" />

    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <merge from="res/values/strings.xml"
           to="${escapeXmlAttribute(resOut)}/values/strings.xml" />
    <merge from="res/values/dimens.xml"
           to="${escapeXmlAttribute(resOut)}/values/dimens.xml" />
    <merge from="res/values/colors.xml"
           to="${escapeXmlAttribute(resOut)}/values/colors.xml" />
    <merge from="res/values/styles.xml"
           to="${escapeXmlAttribute(resOut)}/values/styles.xml" />

    <copy from="res/drawable/button_blue.xml"
            to="${escapeXmlAttribute(resOut)}/drawable/button_blue.xml" />
    <copy from="res/drawable/button_grey.xml"
            to="${escapeXmlAttribute(resOut)}/drawable/button_grey.xml" />
    <copy from="res/drawable/button_yellow.xml"
            to="${escapeXmlAttribute(resOut)}/drawable/button_yellow.xml" />
    <copy from="res/color/button_blue_text.xml"
            to="${escapeXmlAttribute(resOut)}/color/button_blue_text.xml" />
    <copy from="res/color/button_yellow_text.xml"
            to="${escapeXmlAttribute(resOut)}/color/button_yellow_text.xml" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${mainActivityLayout}.xml" />
    <open file="${escapeXmlAttribute(srcOut)}/${mainActivityClass}.kt" />
</recipe>