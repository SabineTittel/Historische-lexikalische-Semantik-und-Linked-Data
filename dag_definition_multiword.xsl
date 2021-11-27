<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:m="http://www.deaf-page.de/ns/markup"
>

<!-- last change: ST 2020-03-17 -->
<xsl:template name="definition_multiword_extern">
<!-- test for main sense, sub sense, idem -->
<xsl:choose>
<!-- main sense -->
<xsl:when test="name(../../parent::node()) = 'senses'">:<xsl:for-each select="tokenize(.,' ')">
<xsl:sequence select="replace(replace(replace(., '^\*', 'asterisk_'), '\(|\)|\+', ''), '/|$single_quote', '_')"/>
<xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each> ontolex:sense <xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/></xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure_main</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/> ;
  ontolex:evokes <xsl:choose>
<xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/></xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure_main</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/>_lexConcept .
<!-- from definition -->
<xsl:for-each select="following-sibling::m:definition[1] | following-sibling::m:designation[1] | preceding-sibling::m:definition[1] | preceding-sibling::m:designation[1]">
<xsl:choose>
<xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/></xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/> a ontolex:LexicalSense ;
  ontolex:isLexicalizedSenseOf <xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/>
</xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/>_lexConcept ;
  <xsl:for-each select="preceding-sibling::m:usage | following-sibling::m:usage"><xsl:call-template name="usage_extern"/></xsl:for-each>
<xsl:for-each select="preceding-sibling::m:terminology | following-sibling::m:terminology"><xsl:call-template name="terminology_extern"/></xsl:for-each>rdfs:comment "DEAF article <xsl:choose>
  <xsl:when test="../../../..[@type='mainpart']">
  <xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
  <xsl:when test="../../../..[@type='subpart']">
  <xsl:value-of select="../../../../child::title/lemma"/>
  </xsl:when>
  <xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure</xsl:otherwise>
  </xsl:choose> / main sense number <xsl:number count="part/senses/sense" format="1"/>"@en .
<xsl:choose>
<xsl:when test="../../../..[@type='mainpart']">
:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../..[@type='subpart']">
:<xsl:value-of select="../../../../child::title/lemma"/>
</xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense" format="1"/>_lexConcept a ontolex:LexicalConcept ;
  <xsl:if test="../child::m:cat-onomas"> ,
  hw:<xsl:call-template name="hw_extern"/></xsl:if> ;
  skos:definition "<xsl:apply-templates select="." mode="italics"/>"@fr ;
  ontolex:lexicalizedSense <xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/>
</xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense" format="1"/> .
</xsl:for-each>
<xsl:for-each select="following-sibling::m:definition[position()>1] | following-sibling::m:designation[position()>1] | preceding-sibling::m:definition[position()>1] | preceding-sibling::m:designation[position()>1]">
  <xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
  <xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/>
  </xsl:when>
  <xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure</xsl:otherwise>
  </xsl:choose>_sense<xsl:number count="part/senses/sense" format="1"/>_lexConcept skos:definition "<xsl:apply-templates select="." mode="italics"/>"@fr .
</xsl:for-each>
</xsl:when>
<!-- end main sense -->
<!-- sub sense -->
<xsl:when test="name(../../../parent::node()) = 'senses'">:<xsl:for-each select="tokenize(.,' ')">
<xsl:sequence select="replace(replace(replace(., '^\*', 'asterisk_'), '\(|\)|\+', ''), '/|$single_quote', '_')"/>
<xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each> ontolex:sense <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/></xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure_sub</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/> ;
  ontolex:evokes <xsl:choose>
<xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/></xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure_sub</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/>_lexConcept .

<xsl:for-each select="following-sibling::m:definition[1] | following-sibling::m:designation[1] | preceding-sibling::m:definition[1] | preceding-sibling::m:designation[1]"><!-- | following-sibling::m:idem/m:definition[1] für collocation außerhalb idem; so sind aber dann die structures kaputt-->
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
</xsl:choose> / sub sense number <xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/>"@en .
<xsl:choose>
<xsl:when test="../../../../..[@type='mainpart']">
:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../../..[@type='subpart']">
:<xsl:value-of select="../../../../../child::title/lemma"/>
</xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/>_lexConcept a ontolex:LexicalConcept ;
  <xsl:if test="../child::m:cat-onomas"> ,
  hw:<xsl:call-template name="hw_extern"/></xsl:if> ;
  skos:definition "<xsl:apply-templates select="." mode="italics"/>"@fr ;
  ontolex:lexicalizedSense <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>
</xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/> .
</xsl:for-each>
<xsl:for-each select="following-sibling::m:definition[position()>1] | following-sibling::m:designation[position()>1] | preceding-sibling::m:definition[position()>1] | preceding-sibling::m:designation[position()>1]">
<xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>
</xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/>_lexConcept skos:definition "<xsl:apply-templates select="." mode="italics"/>"@fr .
</xsl:for-each>
</xsl:when>
<!-- end sub sense -->
<!-- sub sense idem -->
<xsl:when test="name(../../../../parent::node()) = 'senses'">:<xsl:for-each select="tokenize(.,' ')">
<xsl:sequence select="replace(replace(replace(., '^\*', 'asterisk_'), '\(|\)|\+', ''), '/|$single_quote', '_')"/>
<xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each> ontolex:sense <xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/></xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure_idem</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/> ;
  ontolex:evokes <xsl:choose>
<xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/></xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure_idem</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/>_lexConcept .

<xsl:for-each select="following-sibling::m:definition[1] | following-sibling::m:designation[1] | preceding-sibling::m:definition[1] | preceding-sibling::m:designation[1]">
<xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/>
</xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/> a ontolex:LexicalSense ;
  ontolex:isLexicalizedSenseOf <xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/></xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/>_lexConcept ;
  <xsl:for-each select="preceding-sibling::m:usage | following-sibling::m:usage"><xsl:call-template name="usage_extern"/></xsl:for-each>
<xsl:for-each select="preceding-sibling::m:terminology | following-sibling::m:terminology"><xsl:call-template name="terminology_extern"/></xsl:for-each>rdfs:comment "DEAF article <xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">
  <xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
  <xsl:when test="../../../../../..[@type='subpart']">
  <xsl:value-of select="../../../../../../child::title/lemma"/>
  </xsl:when>
  <xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure</xsl:otherwise>
</xsl:choose> / sub sense number <xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/>"@en .
<xsl:choose>
<xsl:when test="../../../../../..[@type='mainpart']">
:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../../../..[@type='subpart']">
:<xsl:value-of select="../../../../../../child::title/lemma"/></xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/>_lexConcept a ontolex:LexicalConcept ;
  <xsl:if test="../child::m:cat-onomas"> ,
  hw:<xsl:call-template name="hw_extern"/></xsl:if> ;
  skos:definition "<xsl:apply-templates select="." mode="italics"/>"@fr ;
  deaf:idem "<xsl:call-template name="idem_extern"/>"@fr ;
  ontolex:lexicalizedSense <xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/>
</xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/> .
</xsl:for-each>
<xsl:for-each select="following-sibling::m:definition[position()>1] | following-sibling::m:designation[position()>1] | preceding-sibling::m:definition[position()>1] | preceding-sibling::m:designation[position()>1]">
<xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/></xsl:when>
<xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/>
</xsl:when>
<xsl:otherwise>deaf:error_in_the_main-lemma-sub-lemma_structure</xsl:otherwise>
</xsl:choose>_sense<xsl:number count="part/senses/sense | part/senses/sense/sense" level="multiple" format="1.a"/>_lexConcept skos:definition "<xsl:apply-templates select="." mode="italics"/>"@fr .
</xsl:for-each>
</xsl:when>
<xsl:otherwise>compound: test for sense hierarchy error</xsl:otherwise>
</xsl:choose>
</xsl:template>
</xsl:stylesheet>
