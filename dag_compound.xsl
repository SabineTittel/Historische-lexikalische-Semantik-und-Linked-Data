<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:m="http://www.deaf-page.de/ns/markup"
>

<!-- last change: ST 2021-03-14 -->
<xsl:template name="compound_extern">
# compound "<xsl:value-of select="replace(., '\+', '')"/>"
:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each> a ontolex:LexicalEntry , ontolex:MultiwordExpression ;
  decomp:subterm <xsl:choose>
<!-- main sense -->
<xsl:when test="name(../../parent::node()) = 'senses'">
<xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../..[@type='subpart']"><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="../../../../child::title/lemma"/>></xsl:when>
<xsl:otherwise>"compound: error in the main-lemma-sub-lemma structure"@en</xsl:otherwise>
</xsl:choose></xsl:when>
<!-- sub sense -->
<xsl:when test="name(../../../parent::node()) = 'senses'">
<xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../../..[@type='subpart']"><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="../../../../../child::title/lemma"/>></xsl:when>
<xsl:otherwise>"compound: error in the main-lemma-sub-lemma structure"@en</xsl:otherwise>
</xsl:choose></xsl:when>
<!-- sub sense idem -->
<xsl:when test="name(../../../../parent::node()) = 'senses'">
<xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../../../..[@type='subpart']"><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="../../../../../../child::title/lemma"/>></xsl:when>
<xsl:otherwise>"compound: error in the main-lemma-sub-lemma structure"@en</xsl:otherwise>
</xsl:choose></xsl:when>
<xsl:otherwise>"compound: error in the main-sense-sub-sense-structure"@en</xsl:otherwise>
</xsl:choose> ;
  lexinfo:termType olia:Composition ;
  rdfs:label "<xsl:value-of select="."/>"@fro ;
  ontolex:canonicalForm :<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_form .
:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_form a ontolex:Form ;
  ontolex:writtenRep "<xsl:value-of select="replace(., '\+', '')"/>"@fro .

<xsl:call-template name="definition_multiword_extern"/>
</xsl:template>
</xsl:stylesheet>
