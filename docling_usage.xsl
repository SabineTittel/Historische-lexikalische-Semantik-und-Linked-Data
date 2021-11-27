<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
>
<!-- last change: ST 2021-03-30 -->
<xsl:template name="usage_extern">
<xsl:choose>
<xsl:when test="./@type='metaphor'">
  ontolex:usage dbr:Metaphor ;
  semshift:metaphor "see 'deaf:mouture' for usage relation"@en ;
  semshift:associateRelation semshift:MetaphoricalSimilarity ;</xsl:when>
<xsl:when test="./@type='image'">
  ontolex:usage "http://dbpedia.org/page/Trope_(literature)" ;
  semshift:image "see 'deaf:mouture' for usage relation"@en ;
  semshift:associateRelation semshift:MetaphoricalSimilarity ;</xsl:when>
<xsl:when test="./@type='metonymy'">
  ontolex:usage dbr:Metonymy ;
  semshift:metonymy "see 'deaf:mouture' for usage relation"@en ;
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
<xsl:when test="./@type='allegory'">
  ontolex:usage dbr:Allegory ;
  semshift:allegory "see 'deaf:mouture' for usage relation"@en ;
  semshift:associateRelation semshift:MetaphoricalSimilarity ;</xsl:when>
<xsl:when test="./@type='comparison'">
  ontolex:usage dbr:Comparison ;
  semshift:comparison "see 'deaf:mouture' for usage relation"@en ;
  semshift:associateRelation semshift:MetaphoricalSimilarity ;</xsl:when>
<xsl:when test="./@type='irony'">
  ontolex:usage dbr:Irony ;
  semshift:irony "see 'deaf:mouture' for usage relation"@en ;
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
<xsl:when test="./@type='euphemism'">
  ontolex:usage dbr:Euphemism ;
  semshift:irony "see 'deaf:mouture' for usage relation"@en ;
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
<xsl:when test="./@type='extension'">
  ontolex:usage dbr:Extension_(semantics) ;
  semshift:extension "see 'deaf:mouture' for usage relation"@en ;
  semshift:associateRelation semshift:TaxonomicSuperordination ;</xsl:when>
<xsl:when test="./@type='malediction'">
  ontolex:usage dbr:Malediction ;
  semshift:malediction "see 'deaf:mouture' for usage relation"@en ;
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
<xsl:when test="./@type='salutation'">
  ontolex:usage dbr:Salutation ;
  semshift:salutation "see 'deaf:mouture' for usage relation"@en ;
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
<xsl:when test="./@type='toponym'">
  ontolex:usage dbr:Category:Place_names ;
  semshift:toponym "see 'deaf:mouture' for usage relation"@en ;
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
<xsl:when test="./@type='antroponym'">
  ontolex:usage dbr:Proper_noun ;
  semshift:anthroponym "see 'deaf:mouture' for usage relation"@en ;
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
<xsl:when test="./@type='minimal-value'">
  ontolex:usage dbr:Hyponymy_and_hypernymy ;
  semshift:minimalValue "see 'deaf:mouture' for usage relation"@en ;
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
<xsl:when test="./@type='collective'">
  ontolex:usage dbr:Collective ;
  semshift:collective "see 'deaf:mouture' for usage relation"@en ;
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
<xsl:when test="./@type='insult'">
  ontolex:usage dbr:Insult ;
  semshift:insult "see 'deaf:mouture' for usage relation"@en ;
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
<xsl:when test="./@type='pejorative'">
  ontolex:usage dbr:Pejorative ;
  semshift:pejorative "see 'deaf:mouture' for usage relation"@en ;
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
<xsl:when test="./@type='analogy'">
  ontolex:usage dbr:Analogy ;
  semshift:analogy "see 'deaf:mouture' for usage relation"@en ;
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
<xsl:when test="./@type='personification'">
  ontolex:usage dbr:Antropomorphism ;
  semshift:personification "see 'deaf:mouture' for usage relation"@en ;
  semshift:associateRelation semshift:MetaphoricalSimilarity ;</xsl:when>
<xsl:when test="./@type='specification'">
  ontolex:usage dbr:Specialization_(linguistics) ;
  semshift:specification "see 'deaf:mouture' for usage relation"@en ;
  semshift:associateRelation semshift:TaxonomicSubordination ;</xsl:when>
<xsl:when test="./@type='synechdoche'">
  ontolex:usage dbr:Synecdoche ;
  semshift:synechdoche "see 'deaf:mouture' for usage relation"@en ;
  semshift:associateRelation semshift:ConceptualContiguity ;</xsl:when>
  <xsl:otherwise>rdfs:comment "usage unspecified"@en ;</xsl:otherwise></xsl:choose>
</xsl:template>
</xsl:stylesheet>
