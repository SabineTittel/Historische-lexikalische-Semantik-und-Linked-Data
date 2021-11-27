<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:m="http://www.deaf-page.de/ns/markup"
>

<!-- last change: ST 2020-11-25 -->
<xsl:template name="idem_extern"><xsl:value-of select="./following-sibling::node()"/></xsl:template>
</xsl:stylesheet>
