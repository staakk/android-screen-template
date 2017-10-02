<?xml version="1.0"?>
<recipe>
	<merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
   
    <instantiate from="res/layout/fragment_blank.xml.ftl"
                  to="${escapeXmlAttribute(resOut)}/layout/fragment_${classToResource(screenName)}.xml" />

    <instantiate from="src/app_package/template_blank_fragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${screenName}Fragment.java" />
				   
    <instantiate from="src/app_package/template_blank_view_model.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${screenName}ViewModel.java" />
				   
    <instantiate from="src/app_package/template_module.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${screenName}Module.java" />
				 
    <instantiate from="res/layout/activity_blank.xml.ftl"
                  to="${escapeXmlAttribute(resOut)}/layout/activity_${classToResource(screenName)}.xml" />
				   
    <instantiate from="src/app_package/template_blank_activity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${screenName}Activity.java" />
</recipe>