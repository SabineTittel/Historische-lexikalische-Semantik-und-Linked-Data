<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:m="http://www.deaf-page.de/ns/markup"
>
<!-- last change: ST 2020-12-10 -->
<xsl:template name="usage_extern">
<xsl:choose>
<xsl:when test="./@type='metaphor'">
  ontolex:usage dbr:Metaphor ;
  semshift:metaphor <xsl:choose>
  <!-- main sense -->
  <xsl:when test="name(../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense -->
  <xsl:when test="name(../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense idem -->
  <xsl:when test="name(../../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-sense-sub-sense structure"@en ;</xsl:otherwise>
  </xsl:choose>
  semshift:associateRelation semshift:MetaphoricalSimilarity ;</xsl:when>
<xsl:when test="./@type='image'">
  ontolex:usage <xsl:text disable-output-escaping="yes"><![CDATA[<http://dbpedia.org/page/Trope_(literature)>]]></xsl:text> ;
  semshift:image <xsl:choose>
  <!-- main sense -->
  <xsl:when test="name(../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense -->
  <xsl:when test="name(../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense idem -->
  <xsl:when test="name(../../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-sense-sub-sense structure"@en ;</xsl:otherwise>
  </xsl:choose>
  semshift:associateRelation semshift:MetaphoricalSimilarity ;</xsl:when>
<xsl:when test="./@type='metonymy'">
  ontolex:usage dbr:Metonymy ;
  semshift:metonymy <xsl:choose>
  <!-- main sense -->
  <xsl:when test="name(../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense -->
  <xsl:when test="name(../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense idem -->
  <xsl:when test="name(../../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-sense-sub-sense structure"@en ;</xsl:otherwise>
  </xsl:choose>
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
<xsl:when test="./@type='allegory'">
  ontolex:usage dbr:Allegory ;
  semshift:allegory <xsl:choose>
  <!-- main sense -->
  <xsl:when test="name(../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense -->
  <xsl:when test="name(../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense idem -->
  <xsl:when test="name(../../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-sense-sub-sense structure"@en ;</xsl:otherwise>
  </xsl:choose>
  semshift:associateRelation semshift:MetaphoricalSimilarity ;</xsl:when>
<xsl:when test="./@type='comparison'">
  ontolex:usage dbr:Comparison ;
  semshift:comparison <xsl:choose>
  <!-- main sense -->
  <xsl:when test="name(../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense -->
  <xsl:when test="name(../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense idem -->
  <xsl:when test="name(../../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-sense-sub-sense structure"@en ;</xsl:otherwise>
  </xsl:choose>
  semshift:associateRelation semshift:MetaphoricalSimilarity ;</xsl:when>
<xsl:when test="./@type='irony'">
  ontolex:usage dbr:Irony ;
  semshift:irony <xsl:choose>
  <!-- main sense -->
  <xsl:when test="name(../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense -->
  <xsl:when test="name(../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense idem -->
  <xsl:when test="name(../../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-sense-sub-sense structure"@en ;</xsl:otherwise>
  </xsl:choose>
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
<xsl:when test="./@type='euphemism'">
  ontolex:usage dbr:Euphemism ;
  semshift:irony <xsl:choose>
  <!-- main sense -->
  <xsl:when test="name(../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense -->
  <xsl:when test="name(../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense idem -->
  <xsl:when test="name(../../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-sense-sub-sense structure"@en ;</xsl:otherwise>
  </xsl:choose>
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
<xsl:when test="./@type='extension'">
  ontolex:usage dbr:Extension_(semantics) ;
  semshift:extension <xsl:choose>
  <!-- main sense -->
  <xsl:when test="name(../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense -->
  <xsl:when test="name(../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense idem -->
  <xsl:when test="name(../../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-sense-sub-sense structure"@en ;</xsl:otherwise>
  </xsl:choose>
  semshift:associateRelation semshift:TaxonomicSuperordination ;</xsl:when>
<xsl:when test="./@type='malediction'">
  ontolex:usage dbr:Malediction ;
  semshift:malediction <xsl:choose>
  <!-- main sense -->
  <xsl:when test="name(../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense -->
  <xsl:when test="name(../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense idem -->
  <xsl:when test="name(../../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-sense-sub-sense structure"@en ;</xsl:otherwise>
  </xsl:choose>
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
<xsl:when test="./@type='salutation'">
  ontolex:usage dbr:Salutation ;
  semshift:salutation <xsl:choose>
  <!-- main sense -->
  <xsl:when test="name(../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense -->
  <xsl:when test="name(../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense idem -->
  <xsl:when test="name(../../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-sense-sub-sense structure"@en ;</xsl:otherwise>
  </xsl:choose>
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
<xsl:when test="./@type='toponym'">
  ontolex:usage dbr:Category:Place_names ;
  semshift:toponym <xsl:choose>
  <!-- main sense -->
  <xsl:when test="name(../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense -->
  <xsl:when test="name(../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense idem -->
  <xsl:when test="name(../../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-sense-sub-sense structure"@en ;</xsl:otherwise>
  </xsl:choose>
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
<xsl:when test="./@type='antroponym'">
  ontolex:usage dbr:Proper_noun ;
  semshift:anthroponym <xsl:choose>
  <!-- main sense -->
  <xsl:when test="name(../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense -->
  <xsl:when test="name(../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense idem -->
  <xsl:when test="name(../../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-sense-sub-sense structure"@en ;</xsl:otherwise>
  </xsl:choose>
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
<xsl:when test="./@type='minimal-value'">
  ontolex:usage dbr:Hyponymy_and_hypernymy ;
  semshift:minimalValue <xsl:choose>
  <!-- main sense -->
  <xsl:when test="name(../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense -->
  <xsl:when test="name(../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense idem -->
  <xsl:when test="name(../../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-sense-sub-sense structure"@en ;</xsl:otherwise>
  </xsl:choose>
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
<xsl:when test="./@type='collective'">
  ontolex:usage dbr:Collective ;
  semshift:collective <xsl:choose>
  <!-- main sense -->
  <xsl:when test="name(../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense -->
  <xsl:when test="name(../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense idem -->
  <xsl:when test="name(../../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-sense-sub-sense structure"@en ;</xsl:otherwise>
  </xsl:choose>
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
<xsl:when test="./@type='insult'">
  ontolex:usage dbr:Insult ;
  semshift:insult <xsl:choose>
  <!-- main sense -->
  <xsl:when test="name(../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense -->
  <xsl:when test="name(../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense idem -->
  <xsl:when test="name(../../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-sense-sub-sense structure"@en ;</xsl:otherwise>
  </xsl:choose>
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
<xsl:when test="./@type='pejorative'">
  ontolex:usage dbr:Pejorative ;
  semshift:pejorative <xsl:choose>
  <!-- main sense -->
  <xsl:when test="name(../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense -->
  <xsl:when test="name(../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense idem -->
  <xsl:when test="name(../../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-sense-sub-sense structure"@en ;</xsl:otherwise>
  </xsl:choose>
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
<xsl:when test="./@type='analogy'">
  ontolex:usage dbr:Analogy ;
  semshift:analogy <xsl:choose>
  <!-- main sense -->
  <xsl:when test="name(../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense -->
  <xsl:when test="name(../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense idem -->
  <xsl:when test="name(../../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-sense-sub-sense structure"@en ;</xsl:otherwise>
  </xsl:choose>
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
<xsl:when test="./@type='personification'">
  ontolex:usage dbr:Antropomorphism ;
  semshift:personification <xsl:choose>
  <!-- main sense -->
  <xsl:when test="name(../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense -->
  <xsl:when test="name(../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense idem -->
  <xsl:when test="name(../../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-sense-sub-sense structure"@en ;</xsl:otherwise>
  </xsl:choose>
  semshift:associateRelation semshift:MetaphoricalSimilarity ;</xsl:when>
<xsl:when test="./@type='specification'">
  ontolex:usage dbr:Specialization_(linguistics) ;
  semshift:specification <xsl:choose>
  <!-- main sense -->
  <xsl:when test="name(../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense -->
  <xsl:when test="name(../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense idem -->
  <xsl:when test="name(../../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-sense-sub-sense structure"@en ;</xsl:otherwise>
  </xsl:choose>
  semshift:associateRelation semshift:TaxonomicSubordination ;</xsl:when>
<xsl:when test="./@type='synechdoche'">
  ontolex:usage dbr:Synecdoche ;
  semshift:synechdoche <xsl:choose>
  <!-- main sense -->
  <xsl:when test="name(../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:when test="../../../..[@type='subpart']">:<xsl:value-of select="../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;
  rdfs:comment "usage: annotation in top level of semantic structure"@en ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense -->
  <xsl:when test="name(../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <!-- sub sense idem -->
  <xsl:when test="name(../../../../parent::node()) = 'senses'">
  <xsl:choose><xsl:when test="../../../../../..[@type='mainpart']">:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:when test="../../../../../..[@type='subpart']">:<xsl:value-of select="../../../../../../child::title/lemma"/>_sense<xsl:number count="part/senses/sense" format="1"/> ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-lemma-sub-lemma structure"@en ;</xsl:otherwise>
  </xsl:choose></xsl:when>
  <xsl:otherwise>rdfs:comment "usage: error in the main-sense-sub-sense structure"@en ;</xsl:otherwise>
  </xsl:choose>
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage unspecified"@en ;</xsl:otherwise></xsl:choose>
</xsl:template>
</xsl:stylesheet>
