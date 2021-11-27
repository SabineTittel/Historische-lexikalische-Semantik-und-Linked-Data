<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
>

<!-- last change: ST 2021-03-26 -->
<xsl:template name="entry_extern">
<xsl:value-of select="lower-case(replace(replace(replace(entry, '^\*', 'asterisk_'), '\(|\)|\+|-|,|\[|\]', ''), '/', '_'))"/>_<xsl:value-of select="id"/>
</xsl:template>
</xsl:stylesheet>
