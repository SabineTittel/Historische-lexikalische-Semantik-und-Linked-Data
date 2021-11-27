<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:m="http://www.deaf-page.de/ns/markup"
>
<!-- Sprache = ISO 639-1 code oder, wenn nicht existent, ISO 639-3 code (resp. ISO 639-2 code)
wenn nichts von alledem: Abkürzung von DEAF/DAG umgesetzt als Zeichenkette ohne Punkte und Akzente, z.B. lgb. = lgb.; frq.rhén. = frqrhen -->
<!-- last change: ST 2021-04-14 -->
<xsl:template name="autreslangues_extern">
<xsl:choose>
<xsl:when test="./@language='afr.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_afr a ontolex:LexicalEntry ;
  dct:language "ancien français"@fr , lexvo:fro ;
  rdfs:label "<xsl:value-of select="."/>"@fro ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='prérom.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_prerom a ontolex:LexicalEntry ;
  dct:language "protoroman"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='lt.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_la a ontolex:LexicalEntry ;
  dct:language "latin"@fr , lexvo:lat ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/la.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@la ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='lt.cl.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_ltcl a ontolex:LexicalEntry ;
  dct:language "latin classique"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='lt.tard.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_lttard a ontolex:LexicalEntry ;
  dct:language "latin tardif"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='lt.vulg.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_ltvulg a ontolex:LexicalEntry ;
  dct:language "latin vulgaire"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='lt.chrét.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_ltchret a ontolex:LexicalEntry ;
  dct:language "latin chrétien"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='gallorom.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_gallorom a ontolex:LexicalEntry ;
  dct:language "galloroman"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='mlt.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_mlt a ontolex:LexicalEntry ;
  dct:language "moyen latin"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='anglolt.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_anglolt a ontolex:LexicalEntry ;
  dct:language "anglo-latin"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='gallolt.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_gallolt a ontolex:LexicalEntry ;
  dct:language "gallo-latin"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='celt.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_cel a ontolex:LexicalEntry ;
  dct:language "celtique"@fr ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-2/cel.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@cel ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='gaul.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_xtg a ontolex:LexicalEntry ;
  dct:language "gaulois"@fr , lexvo:xtg ;
  rdfs:label "<xsl:value-of select="."/>"@xtg ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='bret.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_br a ontolex:LexicalEntry ;
  dct:language "breton"@fr , lexvo:bre ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/br.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@br ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='mbret.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_xbm a ontolex:LexicalEntry ;
  dct:language "moyen breton"@fr , lexvo:xbm ;
  rdfs:label "<xsl:value-of select="."/>"@xbm ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='gall.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_cy a ontolex:LexicalEntry ;
  dct:language "gallois"@fr , lexvo:cym ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/cy.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@cy ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='irl.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_ga a ontolex:LexicalEntry ;
  dct:language "irlandais"@fr , lexvo:gle ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/ga.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@ga ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='airl.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_airl a ontolex:LexicalEntry ;
  dct:language "ancien irlandais"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='mirl.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_mirl a ontolex:LexicalEntry ;
  dct:language "moyen irlandais"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='germ.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_gem a ontolex:LexicalEntry ;
  dct:language "germanique"@fr ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-2/gem.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@gem ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='abfrq.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_odt a ontolex:LexicalEntry ;
  dct:language "ancien bas-francique"@fr , lexvo:odt ;
  rdfs:label "<xsl:value-of select="."/>"@odt ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='abfrc.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_odt a ontolex:LexicalEntry ;
  dct:language "ancien bas-francique"@fr , lexvo:odt ;
  rdfs:label "<xsl:value-of select="."/>"@odt ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='mnéerl.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_dum a ontolex:LexicalEntry ;
  dct:language "moyen néerlandais"@fr , lexvo:dum ;
  rdfs:label "<xsl:value-of select="."/>"@dum ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='néerl.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_nl a ontolex:LexicalEntry ;
  dct:language "néerlandais"@fr , lexvo:nld ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/nl.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@nl ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='flam.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_nl a ontolex:LexicalEntry ;
  dct:language "flamand"@fr , lexvo:nld ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/nl.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@nl ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='frq.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_vmf a ontolex:LexicalEntry ;
  dct:language "francique"@fr , lexvo:vmf ;
  rdfs:label "<xsl:value-of select="."/>"@vmf ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='afrq.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_frk a ontolex:LexicalEntry ;
  dct:language "ancien francique"@fr , lexvo:frk ;
  rdfs:label "<xsl:value-of select="."/>"@frk ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='frq.rip.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_ksh a ontolex:LexicalEntry ;
  dct:language "francique ripuaire"@fr , lexvo:ksh ;
  rdfs:label "<xsl:value-of select="."/>"@ksh ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='frq.mosell.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_lb a ontolex:LexicalEntry ;
  dct:language "francique mosellan"@fr , lexvo:ltz ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/lb.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@lb ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='frq.rhén.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_frqrhen a ontolex:LexicalEntry ;
  dct:language "francique rhénan"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='Rhénanie'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_frqrhen a ontolex:LexicalEntry ;
  dct:language "Rhénanie"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='frq.orient.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_vmf a ontolex:LexicalEntry ;
  dct:language "francique oriental"@fr , lexvo:vmf ;
  rdfs:label "<xsl:value-of select="."/>"@vmf ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='além.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_gsw a ontolex:LexicalEntry ;
  dct:language "alémanique"@fr , lexvo:gsw ;
  rdfs:label "<xsl:value-of select="."/>"@gsw ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='suisse além.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_suissealeman a ontolex:LexicalEntry ;
  dct:language "suisse alémanique"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='aha.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_goh a ontolex:LexicalEntry ;
  dct:language "ancien haut-allemand"@fr , lexvo:goh ;
  rdfs:label "<xsl:value-of select="."/>"@goh ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
  <!--lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>-->
<xsl:when test="./@language='mha.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_gmh a ontolex:LexicalEntry ;
  dct:language "moyen haut-allemand"@fr , lexvo:gmh ;
  rdfs:label "<xsl:value-of select="."/>"@gmh ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='all.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_de a ontolex:LexicalEntry ;
  dct:language "allemand"@fr , lexvo:deu ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/de.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@de ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='all.lorr.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_alllorr a ontolex:LexicalEntry ;
  dct:language "allemand lorrain"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='als.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_als a ontolex:LexicalEntry ;
  dct:language "alsacien"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='hess.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_hess a ontolex:LexicalEntry ;
  dct:language "hessois"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='pal.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_pfl a ontolex:LexicalEntry ;
  dct:language "palatin"@fr , lexvo:pfl ;
  rdfs:label "<xsl:value-of select="."/>"@pfl ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='bav.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_bar a ontolex:LexicalEntry ;
  dct:language "bavarois"@fr , lexvo:bar ;
  rdfs:label "<xsl:value-of select="."/>"@bar ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='souabe'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_swg a ontolex:LexicalEntry ;
  dct:language "souabe"@fr , lexvo:swg ;
  rdfs:label "<xsl:value-of select="."/>"@swg ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='afrb.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_afrb a ontolex:LexicalEntry ;
  dct:language "ancien fribourgeois"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='lgb.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_lgb a ontolex:LexicalEntry ;
  dct:language "longobard"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='got.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_got a ontolex:LexicalEntry ;
  dct:language "gotique"@fr , lexvo:got ;
  rdfs:label "<xsl:value-of select="."/>"@got ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='anord.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_non a ontolex:LexicalEntry ;
  dct:language "ancien nordique"@fr , lexvo:non ;
  rdfs:label "<xsl:value-of select="."/>"@non ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='aouestnord.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_aouestnord a ontolex:LexicalEntry ;
  dct:language "ancien ouest-nordique"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='isl.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_is a ontolex:LexicalEntry ;
  dct:language "islandais"@fr , lexvo:isl ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/is.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@is ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='norv.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_no a ontolex:LexicalEntry ;
  dct:language "norvégien"@fr , lexvo:nor ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/no.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@xxx ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='ball.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_nds a ontolex:LexicalEntry ;
  dct:language "bas-allemand"@fr , lexvo:nds ;
  rdfs:label "<xsl:value-of select="."/>"@nds ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='aba.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_osx a ontolex:LexicalEntry ;
  dct:language "ancien bas-allemand"@fr , lexvo:osx ;
  rdfs:label "<xsl:value-of select="."/>"@osx ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='mba.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_gml a ontolex:LexicalEntry ;
  dct:language "moyen bas-allemand"@fr , lexvo:gml ;
  rdfs:label "<xsl:value-of select="."/>"@gml ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='suéd.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_sv a ontolex:LexicalEntry ;
  dct:language "suédois"@fr , lexvo:swe ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/sv.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@sv ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='dan.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_da a ontolex:LexicalEntry ;
  dct:language "danois"@fr , lexvo:dan ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/da.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@da ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='asax.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_osx a ontolex:LexicalEntry ;
  dct:language "ancien saxon"@fr , lexvo:osx ;
  rdfs:label "<xsl:value-of select="."/>"@osx ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='fris.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_fris a ontolex:LexicalEntry ;
  dct:language "frison"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='afris.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_ofs a ontolex:LexicalEntry ;
  dct:language "ancien frison"@fr , lexvo:ofs ;
  rdfs:label "<xsl:value-of select="."/>"@ofs ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='angl.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_en a ontolex:LexicalEntry ;
  dct:language "anglais"@fr , lexvo:en ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/en.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@en ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='aangl.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_ang a ontolex:LexicalEntry ;
  dct:language "ancien anglais"@fr , lexvo:ang ;
  rdfs:label "<xsl:value-of select="."/>"@ang ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='mangl.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_enm a ontolex:LexicalEntry ;
  dct:language "moyen anglais"@fr , lexvo:enm ;
  rdfs:label "<xsl:value-of select="."/>"@enm ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='grec'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_el a ontolex:LexicalEntry ;
  dct:language "grec"@fr , lexvo:ell ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/el.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@el ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='mgr.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_grc a ontolex:LexicalEntry ;
  dct:language "moyen grec"@fr , lexvo:grc ;
  rdfs:label "<xsl:value-of select="."/>"@grc ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='indo-eur.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_ine a ontolex:LexicalEntry ;
  dct:language "indo-européen"@fr ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-2/ine.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@ine ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='skr.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_sa a ontolex:LexicalEntry ;
  dct:language "sanskrit"@fr , lexvo:san ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/sa.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@sa ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='basq.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_eu a ontolex:LexicalEntry ;
  dct:language "basque"@fr , lexvo:eus ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/eu.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@eu ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='ar.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_ar a ontolex:LexicalEntry ;
  dct:language "arabe"@fr , lexvo:ara ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/ar.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@ar ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='pers.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_fa a ontolex:LexicalEntry ;
  dct:language "persan"@fr ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/fa.html">]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@fa ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='turc'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_tr a ontolex:LexicalEntry ;
  dct:language "turc"@fr , lexvo:tur ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/tr.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@tur ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='hébr.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_he a ontolex:LexicalEntry ;
  dct:language "hébreu"@fr , lexvo:heb ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/he.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@he ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='occ.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_oc a ontolex:LexicalEntry ;
  dct:language "occitan"@fr , lexvo:oci ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<http://id.loc.gov/vocabulary/iso639-1/oc.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@oc ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='aocc.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_pro a ontolex:LexicalEntry ;
  dct:language "ancien occitan"@fr , lexvo:pro ;
  rdfs:label "<xsl:value-of select="."/>"@pro ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='gasc.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_gasc a ontolex:LexicalEntry ;
  dct:language "gascon"@fr ;
  rdfs:label "<xsl:value-of select="."/>"@oc-x-02q35735 ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='agasc.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_agasc a ontolex:LexicalEntry ;
  dct:language "ancien gascon"@fr ;
  rdfs:label "<xsl:value-of select="."/>"@oc-x-02q35735-241050--1500 ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='béarn.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_bearn a ontolex:LexicalEntry ;
  dct:language "béarnais"@fr ;
  rdfs:label "<xsl:value-of select="."/>"@oc-x-00bearnais-35136075732 ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='avér.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_aver a ontolex:LexicalEntry ;
  dct:language "avéronnais"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='auv.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_auv a ontolex:LexicalEntry ;
  dct:language "auvergnat"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='lang.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_lang a ontolex:LexicalEntry ;
  dct:language "languedocien"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='frpr.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_frp a ontolex:LexicalEntry ;
  dct:language "franco-provençal"@fr , lexvo:frp ;
  rdfs:label "<xsl:value-of select="."/>"@frp ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='lyon.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_lyon a ontolex:LexicalEntry ;
  dct:language "lyonnais"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='dauph.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_dauph a ontolex:LexicalEntry ;
  dct:language "dauphinois"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='port.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_pt a ontolex:LexicalEntry ;
  dct:language "portugais"@fr , lexvo:por ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/pt.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@por ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='galic.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_gl a ontolex:LexicalEntry ;
  dct:language "galicien"@fr , lexvo:glg ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/gl.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@gl ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='esp.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_es a ontolex:LexicalEntry ;
  dct:language "espagnol"@fr , lexvo:spa ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/es.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@es ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='aesp.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_osp a ontolex:LexicalEntry ;
  dct:language "ancien espagnol"@fr , lexvo:osp ;
  rdfs:label "<xsl:value-of select="."/>"@osp ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='judéocat.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_judeocat a ontolex:LexicalEntry ;
  dct:language "judéo catalan"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='mozar.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_mxi a ontolex:LexicalEntry ;
  dct:language "mozarabe"@fr , lexvo:mxi ;
  rdfs:label "<xsl:value-of select="."/>"@mxi ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='astur.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_ast a ontolex:LexicalEntry ;
  dct:language "asturien"@fr , lexvo:ast ;
  rdfs:label "<xsl:value-of select="."/>"@ast ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='nav.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_nav a ontolex:LexicalEntry ;
  dct:language "navarrois"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='arag.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_an a ontolex:LexicalEntry ;
  dct:language "aragonais"@fr , lexvo:arg ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/an.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@an ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='cat.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_ca a ontolex:LexicalEntry ;
  dct:language "catalan"@fr , lexvo:cat ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/ca.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@ca ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='milan.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_milan a ontolex:LexicalEntry ;
  dct:language "milanais"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='sard.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_sc a ontolex:LexicalEntry ;
  dct:language "sarde"@fr , lexvo:srd ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/sc.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@sc ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='logoud.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_logoud a ontolex:LexicalEntry ;
  dct:language "logoudorien"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='aost.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_aost a ontolex:LexicalEntry ;
  dct:language "aostais"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='piém.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_pms a ontolex:LexicalEntry ;
  dct:language "piémontais"@fr , lexvo:pms ;
  rdfs:label "<xsl:value-of select="."/>"@pms ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='it.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_it a ontolex:LexicalEntry ;
  dct:language "italien"@fr , lexvo:ita ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/it.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@it ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='hit.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_hit a ontolex:LexicalEntry ;
  dct:language "haut-italien"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='lomb.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_lmo a ontolex:LexicalEntry ;
  dct:language "lombard"@fr , lexvo:lmo ;
  rdfs:label "<xsl:value-of select="."/>"@lmo ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='vén.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_vec a ontolex:LexicalEntry ;
  dct:language "vénitien"@fr , lexvo:vec ;
  rdfs:label "<xsl:value-of select="."/>"@vec ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='gén.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_lij a ontolex:LexicalEntry ;
  dct:language "génois"@fr , lexvo:lij ;
  rdfs:label "<xsl:value-of select="."/>"@lij ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='tosc.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_tosc a ontolex:LexicalEntry ;
  dct:language "toscan"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='sien.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_sien a ontolex:LexicalEntry ;
  dct:language "siennois"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='cors.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_co a ontolex:LexicalEntry ;
  dct:language "corse"@fr , lexvo:cos ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/co.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@co ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='sic.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_scn a ontolex:LexicalEntry ;
  dct:language "sicilien"@fr , lexvo:scn ;
  rdfs:label "<xsl:value-of select="."/>"@scn ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='rom.alp.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_romalp a ontolex:LexicalEntry ;
  dct:language "roman alpin"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='cal.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_cal a ontolex:LexicalEntry ;
  dct:language "calabrais"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='sursilv.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_sursilv a ontolex:LexicalEntry ;
  dct:language "sursilvain"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='subsilv.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_subsilv a ontolex:LexicalEntry ;
  dct:language "subsilvain"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='lad.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_lld a ontolex:LexicalEntry ;
  dct:language "ladin"@fr , lexvo:lld ;
  rdfs:label "<xsl:value-of select="."/>"@lld ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='frioul.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_fur a ontolex:LexicalEntry ;
  dct:language "frioulan"@fr , lexvo:fur ;
  rdfs:label "<xsl:value-of select="."/>"@fur ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='eng.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_eng a ontolex:LexicalEntry ;
  dct:language "engadinois"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='heng.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_heng a ontolex:LexicalEntry ;
  dct:language "haut-engadinois"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='beng.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_beng a ontolex:LexicalEntry ;
  dct:language "bas-engadinois"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='rhétorom.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_rhetorom a ontolex:LexicalEntry ;
  dct:language "rhétoroman"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='dalm.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_dlm a ontolex:LexicalEntry ;
  dct:language "dalmate"@fr , lexvo:dlm ;
  rdfs:label "<xsl:value-of select="."/>"@dlm ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='roum.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_ro a ontolex:LexicalEntry ;
  dct:language "roumain"@fr , lexvo:ron ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/ro.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@ro ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='Oïl'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_oil a ontolex:LexicalEntry ;
  dct:language "langue d'oïl"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="."/>"@??? ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='russe'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_ru a ontolex:LexicalEntry ;
  dct:language "russe"@fr , lexvo:rus ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/ro.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="."/>"@ru ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:when test="./@language='aégypt.'">dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_egy a ontolex:LexicalEntry ;
  dct:language "ancien égyptien"@fr , lexvo:egy ;
  rdfs:label "<xsl:value-of select="."/>"@egy ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:when>
<xsl:otherwise>dag:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_unspecified a ontolex:LexicalEntry ;
  dct:language "unspecified language 'autres langues'"@en ;
  rdfs:label "<xsl:value-of select="."/>" ;
  lemonety:isCognateOf <xsl:choose><xsl:when test="../../..[@type='mainpart']">:<xsl:value-of select="ancestor::part/title/lemma"/></xsl:when><xsl:otherwise><xsl:value-of select="$mainlemma_URI"/><xsl:value-of select="ancestor::part/title/lemma"/>></xsl:otherwise></xsl:choose></xsl:otherwise></xsl:choose>
</xsl:template>
</xsl:stylesheet>
