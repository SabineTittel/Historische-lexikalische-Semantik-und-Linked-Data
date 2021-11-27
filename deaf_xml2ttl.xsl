<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:m="http://www.deaf-page.de/ns/markup"
>

<!-- last change: ST 2021-04-13 -->

<xsl:output method="text"/>
<xsl:preserve-space elements="*"/>
<xsl:import href="pos.xsl"/>
<xsl:import href="definition_mainsense.xsl"/>
<xsl:import href="definition_multiword.xsl"/>
<xsl:import href="definition_subsense.xsl"/>
<xsl:import href="definition_subsense_idem.xsl"/>
<xsl:import href="terminology.xsl"/>
<xsl:import href="usage.xsl"/>
<xsl:import href="collocation.xsl"/>
<xsl:import href="locution.xsl"/>
<xsl:import href="idem.xsl"/>
<xsl:import href="etymology.xsl"/>
<xsl:import href="autreslangues.xsl"/>
<xsl:import href="proverb.xsl"/>
<xsl:import href="compound.xsl"/>
<xsl:import href="scriptae.xsl"/>

<!-- set /old french words/ (<m:cited-word>) as part of definitions in slashes /.../ change: delete the slashes -->
<xsl:template match="/m:definition">
<xsl:apply-templates select="m:cited-word"/>
</xsl:template>
<!--<xsl:template match="m:cited-word" mode="italics">/<xsl:value-of select="."/>/</xsl:template>-->
<xsl:template match="m:cited-word" mode="italics"><xsl:value-of select="."/></xsl:template>
<!-- delete all footnotes -->
<xsl:template match="m:footnote"/>
<!-- delete all cited-word index="0" -->
<xsl:template match="m:cited-word[@index='0']"/>
<!-- store main lemma and lemma name -->
<xsl:variable name="mainlemma_name" select="//part[@type='mainpart']/title/lemma" />
<xsl:variable name="mainlemma_name_stripped" select="translate($mainlemma_name, '0123456789', '')" /> <!-- //part[@type='mainpart']/title/lemma-->
<xsl:variable name="lemma_name" select="//part[@type='subpart']/title/lemma" />
<xsl:variable name="lemma_name_stripped" select="translate($lemma_name, '0123456789', '')" /> <!-- //part[@type='subpart']/title/lemma-->
<xsl:variable name="single_quote"><xsl:text>&#x2019;</xsl:text></xsl:variable>
<xsl:variable name="mainlemma_URI"><xsl:text disable-output-escaping="yes"><![CDATA[<https://deaf-server.adw.uni-heidelberg.de/lemme/]]></xsl:text><xsl:value-of select="$mainlemma_name"/>#</xsl:variable>

<xsl:template match="article">
<xsl:text disable-output-escaping="yes"><![CDATA[@prefix :         <https://deaf-server.adw.uni-heidelberg.de/lemme/> .
@prefix deaf:     <https://deaf-server.adw.uni-heidelberg.de#> .
@prefix ontolex:  <http://www.w3.org/ns/lemon/ontolex#> .
@prefix vartrans: <http://www.w3.org/ns/lemon/vartrans#> .
@prefix synsem:   <http://www.w3.org/ns/lemon/synsem#> .
@prefix dbr:      <https://dbpedia.org/resource/> .
@prefix dct:      <http://purl.org/dc/terms/> .
@prefix cc:       <http://creativecommons.org/ns#> .
@prefix rdf:      <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix rdfs:     <http://www.w3.org/2000/01/rdf-schema#> .
@prefix skos:     <http://www.w3.org/2004/02/skos/core#> .
@prefix lexinfo:  <https://lexinfo.net/ontology/3.0/lexinfo#> .
@prefix foaf:     <http://xmlns.com/foaf/0.1/> .
@prefix xsd:      <http://www.w3.org/2001/XMLSchema#> .
@prefix olia:     <http://purl.org/olia/olia.owl#> .
@prefix decomp:   <http://www.w3.org/ns/lemon/decomp#> .
@prefix lemonety: <http://lari-datasets.ilc.cnr.it/lemonEty#> .
@prefix lexvo:    <http://lexvo.org/id/iso639-3/> .
@prefix lime:     <http://www.w3.org/ns/lemon/lime#> .
@prefix lexicog:  <http://www.w3.org/ns/lemon/lexicog#> .
@prefix semshift: <http://www.deaf-page.de/ns/semshift#> .]]></xsl:text>

# semantic specification property
deaf:idem rdf:type rdf:Property .

# metadata annotation
deaf:DEAF a ontolex:Lexicon , lime:Lexicon;
  lime:language lexvo:fro ;
  dct:creator
  [
	foaf:name "<xsl:value-of select="@author"/>"@de ;
	foaf:homepage <xsl:text disable-output-escaping="yes"><![CDATA[<https://hadw-bw.de/forschung/forschungsstelle/dictionnaire-etymologique-de-lancien-francais-deaf>]]></xsl:text>
	] ;
  dct:publisher
  [
  foaf:familyName "Tittel"@de ;
  foaf:givenName "Sabine"@de ;
  foaf:homepage <xsl:text disable-output-escaping="yes"><![CDATA[<https://hadw-bw.de/forschung/forschungsstelle/dictionnaire-etymologique-de-lancien-francais-deaf>]]></xsl:text>
  ] ;
  dct:rights "CC-Zero" ;
  cc:license <xsl:text disable-output-escaping="yes"><![CDATA[<https://creativecommons.org/publicdomain/zero/1.0/>]]></xsl:text> ;
  dct:date "<xsl:value-of select="format-date(current-date(), '[Y0001]-[M01]-[D01]')"/>"^^xsd:date .
<xsl:apply-templates select="part"/>
<xsl:apply-templates select="upart"/>
</xsl:template>

<!-- DEAFplus: unstructured sub lemma [in older articles] -->
<xsl:template match="upart">
	<xsl:apply-templates select="title"/>
  <xsl:apply-templates select="etymology"/>
</xsl:template>

<!-- Lemmata -->

<xsl:template match="part">
	<xsl:apply-templates select="title"/>
  <xsl:apply-templates select="etymology"/>
  <xsl:apply-templates select="variants"/>
  <xsl:apply-templates select="senses"/>
</xsl:template>

<!-- ..............................................................
      lexical entry
................................................................... -->
<xsl:template match="part/title | upart/title">
<xsl:choose>
<!-- DEAFplus: unstructured article / emendation article; only main lemma possible -->
  <xsl:when test="//article[@articleType='unstructured'] | //article[@articleType='correction']">
# --- lexical entry of unstructured article / emendation article -----------
:<xsl:value-of select="lemma"/> a ontolex:LexicalEntry ,
	ontolex:Word ;
  <xsl:for-each select="pos">
  <xsl:call-template name="pos_extern"/>
  </xsl:for-each>
  <xsl:choose><xsl:when test="lemma/@developed='false'">
  ontolex:canonicalForm :<xsl:value-of select="lemma"/>_form_<xsl:value-of select="lemma"/> .
:<xsl:value-of select="lemma"/>_form_<xsl:value-of select="lemma"/> a ontolex:Form ;
	ontolex:writtenRep "<xsl:value-of select="translate(lemma, '0123456789', '')"/>"<xsl:call-template name="scriptae_extern"/> .</xsl:when>
  <xsl:otherwise>
  rdfs:label "*<xsl:value-of select="translate(lemma, '0123456789', '')"/>"<xsl:call-template name="scriptae_extern"/> .</xsl:otherwise>
</xsl:choose>
</xsl:when>
<!-- DEAFplus: normal article -->
<xsl:when test="//article[@type='longarticle'] and //article[@articleType='normal']">
  <xsl:choose>
  <xsl:when test="..[@type='mainpart']">
# ----------------------------------------------------
# --- main lemma -------------------------------------
# ----------------------------------------------------
# --- lexical entry ----------------------------------
:<xsl:value-of select="lemma"/> a ontolex:LexicalEntry ,
	ontolex:Word ;
  <xsl:for-each select="pos">
  <xsl:call-template name="pos_extern"/>
  </xsl:for-each>
  <xsl:choose><xsl:when test="lemma/@developed='false'">
  ontolex:canonicalForm :<xsl:value-of select="lemma"/>_form_<xsl:value-of select="lemma"/> .
:<xsl:value-of select="lemma"/>_form_<xsl:value-of select="lemma"/> a ontolex:Form ;
	ontolex:writtenRep "<xsl:value-of select="translate(lemma, '0123456789', '')"/>"<xsl:call-template name="scriptae_extern"/> .</xsl:when>
  <xsl:otherwise>
  rdfs:comment "developed form"@en .</xsl:otherwise></xsl:choose>
</xsl:when>
<xsl:otherwise>
# ----------------------------------------------------
# --- sub lemma --------------------------------------
# ----------------------------------------------------
# --- lexical entry ----------------------------------
<xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="lemma"/>> a ontolex:LexicalEntry ,
	ontolex:Word ;
  <xsl:for-each select="pos">
  <xsl:call-template name="pos_extern"/>
  </xsl:for-each>
  <xsl:choose><xsl:when test="lemma/@developed='false'">
  ontolex:canonicalForm :<xsl:value-of select="lemma"/>_form_<xsl:value-of select="lemma"/> .
:<xsl:value-of select="lemma"/>_form_<xsl:value-of select="lemma"/> a ontolex:Form ;
	ontolex:writtenRep "<xsl:value-of select="translate(lemma, '0123456789', '')"/>"<xsl:call-template name="scriptae_extern"/> .</xsl:when>
  <xsl:otherwise>
  rdfs:comment "developed form"@en .</xsl:otherwise></xsl:choose></xsl:otherwise></xsl:choose>

# --- relation main lemma / sub lemma ----------------
<xsl:choose>
<xsl:when test="..[@type='mainpart']">
deaf:DEAF_lexresource a lexicog:LexicographicResource ;
  dct:language lexvo:fro ;
  lexicog:entry deaf:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_entry .

deaf:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_entry a lexicog:Entry ;
  rdfs:member deaf:<xsl:value-of select="lemma"/>_entity .

deaf:<xsl:value-of select="lemma"/>_entity a lexicog:LexicographicComponent ;
  lexicog:describes :<xsl:value-of select="lemma"/> .

deaf:DEAF lime:entry :<xsl:value-of select="lemma"/> .
</xsl:when>
<xsl:otherwise>
deaf:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_entry rdfs:member deaf:<xsl:value-of select="lemma"/>_entity .
deaf:<xsl:value-of select="lemma"/>_entity a lexicog:LexicographicComponent ;
  lexicog:describes <xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="lemma"/>> .
deaf:DEAF lime:entry <xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="lemma"/>> .
</xsl:otherwise>
</xsl:choose>
</xsl:when>
<!-- DEAFpre: normal article (= only type possible) -->
<xsl:when test="//article[@type='shortarticle']">
  <xsl:choose>
  <xsl:when test="..[@type='mainpart']">
# ----------------------------------------------------
# --- main lemma -------------------------------------
# ----------------------------------------------------
# --- lexical entry ----------------------------------
:<xsl:value-of select="lemma"/> a ontolex:LexicalEntry ,
	ontolex:Word ;
  <xsl:for-each select="pos">
  <xsl:call-template name="pos_extern"/>
  </xsl:for-each>
  <xsl:choose><xsl:when test="lemma/@developed='false'">
  ontolex:canonicalForm :<xsl:value-of select="lemma"/>_form_<xsl:value-of select="lemma"/> .
:<xsl:value-of select="lemma"/>_form_<xsl:value-of select="lemma"/> a ontolex:Form ;
	ontolex:writtenRep "<xsl:value-of select="translate(lemma, '0123456789', '')"/>"<xsl:call-template name="scriptae_extern"/> .</xsl:when>
  <xsl:otherwise>
  rdfs:label "*<xsl:value-of select="translate(lemma, '0123456789', '')"/>"@<xsl:call-template name="scriptae_extern"/> .</xsl:otherwise>
</xsl:choose>
</xsl:when>
<xsl:otherwise>
# ----------------------------------------------------
# --- sub lemma --------------------------------------
# ----------------------------------------------------
# --- lexical entry ----------------------------------
<xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="lemma"/>> a ontolex:LexicalEntry ,
	ontolex:Word ;
  <xsl:for-each select="pos">
  <xsl:call-template name="pos_extern"/>
  </xsl:for-each>
  <xsl:choose><xsl:when test="lemma/@developed='false'">
  ontolex:canonicalForm :<xsl:value-of select="lemma"/>_form_<xsl:value-of select="lemma"/> .
:<xsl:value-of select="lemma"/>_form_<xsl:value-of select="lemma"/> a ontolex:Form ;
	ontolex:writtenRep "<xsl:value-of select="translate(lemma, '0123456789', '')"/>"<xsl:call-template name="scriptae_extern"/> .</xsl:when>
  <xsl:otherwise>
  rdfs:label "*<xsl:value-of select="translate(lemma, '0123456789', '')"/>"@<xsl:call-template name="scriptae_extern"/> .</xsl:otherwise>
</xsl:choose></xsl:otherwise></xsl:choose>

# --- relation main lemma / sub lemma ----------------
<xsl:choose>
<xsl:when test="..[@type='mainpart']">
deaf:DEAF_lexresource a lexicog:LexicographicResource ;
  dct:language lexvo:fro ;
  lexicog:entry deaf:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_entry .

deaf:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_entry a lexicog:Entry ;
  rdfs:member deaf:<xsl:value-of select="lemma"/>_entity .

deaf:<xsl:value-of select="lemma"/>_entity a lexicog:LexicographicComponent ;
  lexicog:describes :<xsl:value-of select="lemma"/> .

deaf:DEAF lime:entry :<xsl:value-of select="lemma"/> .
</xsl:when>
<xsl:otherwise>
deaf:<xsl:value-of select="//part[@type='mainpart']/title/lemma"/>_entry rdfs:member deaf:<xsl:value-of select="lemma"/>_entity .
deaf:<xsl:value-of select="lemma"/>_entity a lexicog:LexicographicComponent ;
  lexicog:describes <xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="lemma"/>> .
deaf:DEAF lime:entry <xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="lemma"/>> .
</xsl:otherwise>
</xsl:choose>
</xsl:when>
<xsl:otherwise>error: no articletype found</xsl:otherwise>
</xsl:choose>
</xsl:template>
<!-- ..............................................................
      etymology with etymon and 'autres langues'
................................................................... -->

<xsl:template match="part/etymology | upart/etymology">
# --- etymology ----------------
<xsl:apply-templates select="etymon"/>
</xsl:template>

<xsl:template match="part/etymology/etymon | upart/etymology/etymon">
<xsl:choose>
<xsl:when test="../..[@type='mainpart']">
<xsl:for-each select="m:cited-word[@index='e'][1]">
:<xsl:value-of select="../../../child::title/lemma"/> lemonety:etymology deaf:<xsl:value-of select="../../../child::title/lemma"/>_etymology .
deaf:<xsl:value-of select="../../../child::title/lemma"/>_etymology a lemonety:Etymology ;
  lemonety:etymology deaf:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="lower-case(replace(replace(replace(., '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_'))"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_etymon .

deaf:<xsl:for-each select="tokenize(.,' ')">
<xsl:sequence select="lower-case(replace(replace(., '^\*', 'asterisk_'), '-|,', ''))"/>
<xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_etymon a lemonety:Etymon ;
  lemonety:isEtymologyOf deaf:<xsl:value-of select="../../../child::title/lemma"/>_etymology ;
  dct:language <xsl:call-template name="etymology_extern"/> .
</xsl:for-each></xsl:when>
<xsl:otherwise><xsl:for-each select="m:cited-word[@index='e'][1]">
<xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="../../../child::title/lemma"/>> lemonety:etymology deaf:<xsl:value-of select="../../../child::title/lemma"/>_etymology .
deaf:<xsl:value-of select="../../../child::title/lemma"/>_etymology a lemonety:Etymology ;
  lemonety:etymology deaf:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="lower-case(replace(replace(replace(., '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_'))"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_etymon .

deaf:<xsl:for-each select="tokenize(.,' ')">
<xsl:sequence select="lower-case(replace(replace(., '^\*', 'asterisk_'), '-|,', ''))"/>
<xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_etymon a lemonety:Etymon ;
  lemonety:isEtymologyOf deaf:<xsl:value-of select="../../../child::title/lemma"/>_etymology ;
  dct:language <xsl:call-template name="etymology_extern"/> .
</xsl:for-each></xsl:otherwise></xsl:choose><xsl:for-each select="m:cited-word[@index='e'][position()>1]">
deaf:<xsl:value-of select="../../../child::title/lemma"/>_etymology lemonety:etymology deaf:<xsl:for-each select="tokenize(.,' ')">
<xsl:sequence select="lower-case(replace(replace(replace(., '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_'))"/>
<xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_etymon .
deaf:<xsl:for-each select="tokenize(.,' ')">
<xsl:sequence select="lower-case(replace(replace(replace(., '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_'))"/>
<xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_etymon a lemonety:Etymon ;
  lemonety:isEtymologyOf deaf:<xsl:value-of select="../../../child::title/lemma"/>_etymology ;
  dct:language <xsl:call-template name="etymology_extern"/> .</xsl:for-each>

<xsl:if test="m:cited-word[@index='a'] | m:remark/m:cited-word[@index='a'] | m:remark/m:evidence/m:quotation/m:comment/m:cited-word[@index='a']">
# --- autres langues -----------

<xsl:for-each select="m:cited-word[@index='a'] | m:remark/m:cited-word[@index='a'] | m:remark/m:evidence/m:quotation/m:comment/m:cited-word[@index='a']">
<xsl:call-template name="autreslangues_extern"/> .
</xsl:for-each>
</xsl:if>
</xsl:template>

<!-- ..............................................................
      graphical variants
................................................................... -->

<xsl:template match="part/variants">
# --- graphical variants ----------------
<xsl:apply-templates select="variant"/>
</xsl:template>

<xsl:template match="part/variants/variant">
<xsl:apply-templates select="description"/>
</xsl:template>

<xsl:template match="part/variants/variant/description">
<xsl:choose>
<xsl:when test="../../..[@type='mainpart']">
<xsl:for-each select="m:cited-word[not(. = $mainlemma_name_stripped)]">
<xsl:if test=".[not(@index='0')]">
# graphical variant
:<xsl:value-of select="../../../../child::title/lemma"/> ontolex:otherForm :<xsl:value-of select="../../../../child::title/lemma"/>_form_<xsl:value-of select="."/> .
:<xsl:value-of select="../../../../child::title/lemma"/>_form_<xsl:value-of select="."/> a ontolex:Form ;
	ontolex:writtenRep "<xsl:value-of select="."/>"<xsl:call-template name="scriptae_extern"/> .
</xsl:if></xsl:for-each>
</xsl:when>
<xsl:when test="../../..[@type='subpart']">
<xsl:for-each select="m:cited-word[not(. = $lemma_name)]">
<xsl:if test=".[not(@index='0')]">
# graphical variant
<xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="../../../../child::title/lemma"/>> ontolex:otherForm :<xsl:value-of select="../../../../child::title/lemma"/>_form_<xsl:value-of select="."/> .
:<xsl:value-of select="../../../../child::title/lemma"/>_form_<xsl:value-of select="."/> a ontolex:Form ;
	ontolex:writtenRep "<xsl:value-of select="."/>"<xsl:call-template name="scriptae_extern"/> .
</xsl:if></xsl:for-each></xsl:when>
<xsl:otherwise>:<xsl:value-of select="../../../../child::title/lemma"/> ontolex:otherForm "error in graphical variants"@en</xsl:otherwise></xsl:choose>
</xsl:template>

<!-- ..............................................................
      main sense
................................................................... -->
<xsl:template match="part/senses">
# --- senses -----------------------------------------
<xsl:apply-templates select="sense"/>
</xsl:template>

<xsl:template match="part/senses/sense">
# main sense number <xsl:number format="1"/>.
<xsl:apply-templates select="description"/>
<xsl:apply-templates select="sense"/>
</xsl:template>

<xsl:template match="part/senses/sense/description">
<xsl:choose>
<xsl:when test="./m:proverb">
<xsl:apply-templates select="m:proverb"/>
</xsl:when>
<xsl:when test="./m:compound">
<xsl:apply-templates select="m:compound"/>
</xsl:when>
<xsl:when test="./m:collocation">
<xsl:apply-templates select="m:collocation"/>
</xsl:when>
<xsl:when test="./m:locution">
<xsl:apply-templates select="m:locution"/>
</xsl:when>
<xsl:otherwise>
<xsl:call-template name="definition_mainsense_extern"/>
</xsl:otherwise>
</xsl:choose>
</xsl:template>

<!-- ..............................................................
      sub senses
................................................................... -->

<xsl:template match="part/senses/sense/sense">
# sub sense number <xsl:number level="multiple" format="1.a"/>.
<xsl:apply-templates select="description"/>
</xsl:template>

<xsl:template match="part/senses/sense/sense/description">
<xsl:choose>
<xsl:when test="./m:proverb">
<xsl:apply-templates select="m:proverb"/>
</xsl:when>
<xsl:when test="./m:compound">
<xsl:apply-templates select="m:compound"/>
</xsl:when>
<xsl:when test="./m:collocation">
<xsl:apply-templates select="m:collocation"/>
</xsl:when>
<xsl:when test="./m:locution">
<xsl:apply-templates select="m:locution"/>
</xsl:when>
<xsl:otherwise>
<xsl:call-template name="definition_subsense_extern"/>
</xsl:otherwise>
</xsl:choose>
<xsl:apply-templates select="m:idem"/>
</xsl:template>

<!-- idem -->
<xsl:template match="part/senses/sense/sense/description/m:idem">
<xsl:choose>
<xsl:when test="./m:proverb">
<xsl:apply-templates select="m:proverb"/>
</xsl:when>
<xsl:when test="./m:compound">
<xsl:apply-templates select="m:compound"/>
</xsl:when>
<xsl:when test="./m:collocation"><!--  | preceding-sibling::m:collocation | following-sibling::m:collocation für collocation außerhalb idem-->
<xsl:apply-templates select="m:collocation"/>
</xsl:when>
<xsl:when test="./m:locution">
<xsl:apply-templates select="m:locution"/>
</xsl:when>
<xsl:otherwise>
<xsl:call-template name="definition_subsense_idem_extern"/>
</xsl:otherwise>
</xsl:choose>
</xsl:template>

<!-- proverb -->
<xsl:template match="//description/m:proverb | //description/m:idem/m:proverb">
<xsl:for-each select=".">
<xsl:call-template name="proverb_extern"/></xsl:for-each>
</xsl:template>

<!-- compound -->
<xsl:template match="//description/m:compound | //description/m:idem/m:compound">
<xsl:for-each select=".">
<xsl:call-template name="compound_extern"/></xsl:for-each>
</xsl:template>

<!-- collocation -->
<xsl:template match="//description/m:collocation | //description/m:idem/m:collocation">
<xsl:for-each select=".">
<xsl:call-template name="collocation_extern"/></xsl:for-each>
</xsl:template>

<!-- locution -->
<xsl:template match="//description/m:locution | //description/m:idem/m:locution">
<xsl:for-each select=".">
<xsl:call-template name="locution_extern"/></xsl:for-each>
</xsl:template>


</xsl:stylesheet>
