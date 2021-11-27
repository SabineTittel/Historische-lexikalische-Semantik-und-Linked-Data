<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
>

<!-- last change: ST 2021-03-31 -->
<xsl:output method="text"/>
<xsl:preserve-space elements="*"/>
<xsl:import href="docling_entry.xsl"/>
<xsl:import href="docling_fiche_join.xsl"/>
<xsl:import href="docling_collocation.xsl"/>
<xsl:import href="docling_locution.xsl"/>
<xsl:import href="docling_proverb.xsl"/>
<xsl:import href="docling_compound.xsl"/>
<xsl:import href="docling_usage.xsl"/>
<xsl:import href="terminology.xsl"/>
<xsl:import href="fiches/fiche_1415019.xsl"/>
<xsl:import href="fiches/fiche_1415020.xsl"/>
<xsl:import href="fiches/fiche_1415021.xsl"/>
<xsl:import href="fiches/fiche_1415022.xsl"/>
<xsl:import href="fiches/fiche_1415023.xsl"/>
<xsl:import href="fiches/fiche_1415024.xsl"/>
<xsl:import href="fiches/fiche_1415025.xsl"/>
<xsl:import href="fiches/fiche_1415026.xsl"/>
<xsl:import href="fiches/fiche_1415027.xsl"/>
<xsl:import href="fiches/fiche_1415028.xsl"/>
<xsl:import href="fiches/fiche_1415029.xsl"/>
<xsl:import href="fiches/fiche_1415030.xsl"/>
<xsl:import href="fiches/fiche_1415031.xsl"/>
<xsl:import href="fiches/fiche_1415032.xsl"/>
<xsl:import href="fiches/fiche_1415033.xsl"/>
<xsl:import href="fiches/fiche_1415034.xsl"/>
<xsl:import href="fiches/fiche_1415035.xsl"/>
<xsl:import href="fiches/fiche_1415036.xsl"/>
<xsl:import href="fiches/fiche_1415037.xsl"/>
<xsl:import href="fiches/fiche_1415038.xsl"/>
<xsl:import href="fiches/fiche_1415039.xsl"/>
<xsl:import href="fiches/fiche_1415040.xsl"/>
<xsl:import href="fiches/fiche_1415041.xsl"/>
<xsl:import href="fiches/fiche_1415042.xsl"/>
<xsl:import href="fiches/fiche_1415043.xsl"/>
<xsl:import href="fiches/fiche_1415044.xsl"/>
<xsl:import href="fiches/fiche_1415045.xsl"/>
<xsl:import href="fiches/fiche_1415046.xsl"/>
<xsl:import href="fiches/fiche_1415047.xsl"/>
<xsl:import href="fiches/fiche_1415048.xsl"/>
<xsl:import href="fiches/fiche_1415049.xsl"/>
<xsl:import href="fiches/fiche_1415050.xsl"/>
<xsl:import href="fiches/fiche_1415051.xsl"/>
<xsl:import href="fiches/fiche_1415052.xsl"/>
<xsl:import href="fiches/fiche_1415053.xsl"/>
<xsl:import href="fiches/fiche_1415054.xsl"/>
<xsl:import href="fiches/fiche_1415055.xsl"/>
<xsl:import href="fiches/fiche_1415056.xsl"/>
<xsl:import href="fiches/fiche_1415057.xsl"/>
<xsl:import href="fiches/fiche_1415058.xsl"/>
<xsl:import href="fiches/fiche_1415059.xsl"/>
<xsl:import href="fiches/fiche_1415060.xsl"/>
<xsl:import href="fiches/fiche_1415061.xsl"/>
<xsl:import href="fiches/fiche_1415062.xsl"/>
<xsl:import href="fiches/fiche_1415063.xsl"/>
<xsl:import href="fiches/fiche_1415064.xsl"/>
<xsl:import href="fiches/fiche_1415065.xsl"/>
<xsl:import href="fiches/fiche_1415066.xsl"/>
<xsl:import href="fiches/fiche_1415067.xsl"/>
<xsl:import href="fiches/fiche_1415068.xsl"/>
<xsl:import href="fiches/fiche_1415069.xsl"/>
<xsl:import href="fiches/fiche_1415070.xsl"/>
<xsl:import href="fiches/fiche_1415071.xsl"/>
<xsl:import href="fiches/fiche_1617586.xsl"/>
<xsl:import href="fiches/fiche_1617587.xsl"/>
<xsl:import href="fiches/fiche_1617588.xsl"/>


<!-- set /old french words/ (<m:cited-word>) as part of definitions in slashes /.../ -->
<xsl:template match="/definition">
<xsl:apply-templates select="cited-word"/>
</xsl:template>
<xsl:template match="cited-word" mode="italics">/<xsl:value-of select="."/>/</xsl:template>
<!-- delete all cited-word index="0" -->
<xsl:template match="cited-word[@index='0']"></xsl:template>
<!-- store single_quote -->
<xsl:variable name="single_quote"><xsl:text>&#x2019;</xsl:text></xsl:variable>
<!-- store variables $table_data (fiche sense table) and $element_data (docling fiches)-->
<xsl:variable name="table_data" select="document('mouture_table.xml')"/>
<xsl:variable name="element_data" select="document('mouture-DocLingFiches.xml')"/>


<xsl:template match="root">
<xsl:text disable-output-escaping="yes"><![CDATA[@prefix :         <http://www.rose.uzh.ch/docling/charte.php?> .
@prefix docling:  <http://www.rose.uzh.ch/docling/#> .
@prefix deaf:     <https://deaf-server.adw.uni-heidelberg.de/lemme/> .
@prefix ontolex:  <http://www.w3.org/ns/lemon/ontolex#> .
@prefix vartrans: <http://www.w3.org/ns/lemon/vartrans#> .
@prefix dbr:      <http://www.dbpedia.org/resource/> .
@prefix dct:      <http://purl.org/dc/terms/> .
@prefix cc:       <http://creativecommons.org/ns#> .
@prefix rdf:      <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs:     <http://www.w3.org/2000/01/rdf-schema#> .
@prefix skos:     <http://www.w3.org/2004/02/skos/core#> .
@prefix lexinfo:  <https://lexinfo.net/ontology/3.0/lexinfo#> .
@prefix foaf:     <http://xmlns.com/foaf/0.1/> .
@prefix xsd:      <http://www.w3.org/2001/XMLSchema#> .
@prefix decomp:   <http://www.w3.org/ns/lemon/decomp#> .
@prefix lexvo:    <http://lexvo.org/id/iso639-3/> .
@prefix lime:     <http://www.w3.org/ns/lemon/lime#> .
@prefix lexicog:  <http://www.w3.org/ns/lemon/lexicog#> .
@prefix semshift: <http://www.deaf-page.de/ns/semshift#> .]]></xsl:text>

# semantic specification property
deaf:idem rdf:type rdf:Property .

# metadata annotation
docling:DocLing a ontolex:Lexicon , lime:Lexicon, lexicog:LexicographicResource ;
  lime:language lexvo:fro ;
  dct:creator
  [
  foaf:familyName "Glessgen"@de ;
  foaf:givenName "Martin"@de ;
	foaf:homepage "http://www.rose.uzh.ch/docling/"
	] ;
  dct:publisher
  [
  foaf:familyName "Tittel"@de ;
  foaf:givenName "Sabine"@de ;
  foaf:homepage "https://hadw-bw.de/forschung/forschungsstelle/dictionnaire-etymologique-de-lancien-francais-deaf"
  ] ;
  dct:rights "CC-Zero" ;
  cc:license "https://creativecommons.org/publicdomain/zero/1.0/" ;
  dct:date "<xsl:value-of select="format-date(current-date(), '[Y0001]-[M01]-[D01]')"/>"^^xsd:date .

# --- relation main lemma / sub lemma -----------------
docling:DocLing lexicog:entry docling:<xsl:value-of select="./element[1]/mainlemma"/>_entry .

docling:<xsl:value-of select="./element[1]/mainlemma"/>_entry a lexicog:Entry ;
  rdfs:member docling:<xsl:value-of select="./element[1]/lemma"/>_entity .
docling:<xsl:value-of select="./element[1]/lemma"/>_entity a lexicog:LexicographicComponent ;
  lexicog:describes :<xsl:value-of select="./element[1]/lemma"/> .
docling:DocLing lime:entry :<xsl:value-of select="./element[1]/lemma"/> .
<xsl:apply-templates select="element"/>
</xsl:template>

<xsl:template match="element">
# --- DocLing fiche ----------------------------------
# --- form ---
:<xsl:call-template name="entry_extern"/> a ontolex:LexicalEntry ,
  ontolex:Word ;
  rdfs:label "<xsl:value-of select="entry"/>"@fro ;
  ontolex:lexicalForm :<xsl:call-template name="entry_extern"/>_form ;
  ontolex:canonicalForm :<xsl:call-template name="entry_extern"/>_canonicalForm .

:<xsl:call-template name="entry_extern"/>_form a ontolex:Form ;
  ontolex:writtenRep "<xsl:value-of select="entry"/>"@fro .
:<xsl:call-template name="entry_extern"/>_canonicalForm a ontolex:Form ;
  ontolex:writtenRep "<xsl:value-of select="lemma"/>"@fro .

# --- semantics ---
<xsl:call-template name="fiche_extern"/>
</xsl:template>

<!-- proverb -->
<xsl:template match="$table_data/all/join_fiche/proverb">
<xsl:for-each select=".">
<xsl:call-template name="proverb_extern"/></xsl:for-each>
</xsl:template>

<!-- compound -->
<xsl:template match="$table_data/all/join_fiche/compound">
<xsl:for-each select=".">
<xsl:call-template name="compound_extern"/></xsl:for-each>
</xsl:template>

<!-- collocation -->
<xsl:template match="$table_data/all/join_fiche/collocation">
<xsl:for-each select=".">
<xsl:call-template name="collocation_extern"/></xsl:for-each>
</xsl:template>

<!-- locution -->
<xsl:template match="$table_data/all/join_fiche/locution">
<xsl:for-each select=".">
<xsl:call-template name="locution_extern"/></xsl:for-each>
</xsl:template>

</xsl:stylesheet>
