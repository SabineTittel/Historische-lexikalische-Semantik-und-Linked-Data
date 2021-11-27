<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:m="http://www.deaf-page.de/ns/markup"
>

<!-- last change: ST 2021-03-15 -->
<xsl:template name="hw_extern">
<xsl:for-each select="tokenize(../child::m:cat-onomas/@concept,' ')"><xsl:sequence select="upper-case(replace(translate(replace(., $single_quote, '_'), 'Éáàâäéèêëíìîïóòôöúùûü', 'eaaaaeeeeiiiioooouuuu'), ',|;|:', ''))"/><xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>
</xsl:template>
</xsl:stylesheet>
