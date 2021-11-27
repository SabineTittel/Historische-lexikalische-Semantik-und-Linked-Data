<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:m="http://www.deaf-page.de/ns/markup"
>

<!-- last change: ST 2020-11-26 -->
<xsl:template name="definition_subsense_extern">
<xsl:for-each select="m:definition[1] | m:designation[1]">
<xsl:choose>
<xsl:when test="../../../../..[@type='mainpart']">
:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../../..[@type='subpart']">
<xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="../../../../../child::title/lemma"/>></xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure</xsl:otherwise>
</xsl:choose> ontolex:sense <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>
</xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/> ;
  ontolex:evokes <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>
</xsl:when>
<xsl:otherwise>
deaf:error_in_the_main-lemma-sub-lemma_structure</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/>_lexConcept .

<xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>
</xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/> a ontolex:LexicalSense ;
  ontolex:isLexicalizedSenseOf <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/></xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/>_lexConcept ;
  <xsl:for-each select="preceding-sibling::m:usage | following-sibling::m:usage"><xsl:call-template name="usage_extern"/></xsl:for-each>
  <xsl:for-each select="preceding-sibling::m:terminology | following-sibling::m:terminology"><xsl:call-template name="terminology_extern"/></xsl:for-each>rdfs:comment "DEAF article <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">
  <xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
  <xsl:when test="../../../../..[@type='subpart']">
  <xsl:value-of select="../../../../../child::title/lemma"/>
  </xsl:when>
  <xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure</xsl:otherwise>
  </xsl:choose> / main sense number <xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/>"@en .
<xsl:choose>
<xsl:when test="../../../../..[@type='mainpart']">
:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../../..[@type='subpart']">
:<xsl:value-of select="../../../../../child::title/lemma"/>
</xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/>_lexConcept a ontolex:LexicalConcept ;
  skos:definition "<xsl:apply-templates select="." mode="italics"/>"@fr ;
  ontolex:lexicalizedSense <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>
</xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/> .
</xsl:for-each>
<xsl:for-each select="m:definition[position()>1] | m:designation[position()>1]">
<xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>
</xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/>_lexConcept skos:definition "<xsl:apply-templates select="." mode="italics"/>"@fr .
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
