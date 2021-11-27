<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
>
<!-- last change: ST 2021-03-31 -->
<xsl:template name="locution_extern">
# locution "<xsl:value-of select="replace(., '\+', '')"/>"
:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each> a ontolex:LexicalEntry , ontolex:MultiwordExpression ;
  decomp:subterm deaf:<xsl:value-of select="$element_data/root/element[1]/lemma"/> ;
  rdfs:label "<xsl:value-of select="."/>"@fro ;
  <xsl:choose>
<xsl:when test="./@type='adj'">lexinfo:termType lexinfo:phraseologicalUnit ;
  lexinfo:partOfSpeech lexinfo:Adjective ,
  "locution adjectivale"@fr , "loc. adj."@fr</xsl:when>
<xsl:when test="./@type='adv'">lexinfo:termType lexinfo:phraseologicalUnit ;
  lexinfo:partOfSpeech lexinfo:Adverb ,
  "locution adverbiale"@fr , "loc. adv."@fr</xsl:when>
<xsl:when test="./@type='verb'">lexinfo:termType lexinfo:phraseologicalUnit ;
  lexinfo:partOfSpeech lexinfo:verb ,
  "locution verbale"@fr , "loc. verb."@fr</xsl:when>
<xsl:when test="./@type='interjection'">lexinfo:termType lexinfo:phraseologicalUnit ;
  lexinfo:partOfSpeech lexinfo:Interjection ,
  "locution interjective"@fr , "loc. interj."@fr</xsl:when>
<xsl:when test="./@type='prep'">lexinfo:termType lexinfo:phraseologicalUnit ;
  lexinfo:partOfSpeech lexinfo:Preposition ,
  "locution prépositive"@fr , "loc. prép."@fr</xsl:when>
<xsl:when test="./@type='pronoun'">lexinfo:termType lexinfo:phraseologicalUnit ;
  lexinfo:partOfSpeech lexinfo:Pronoun ,
  "locution pronominale"@fr , "loc. pron."@fr</xsl:when>
 <xsl:when test="./@type='noun'">lexinfo:termType lexinfo:phraseologicalUnit ;
  lexinfo:partOfSpeech lexinfo:Noun ,
  "locution nominale"@fr , "loc. subst."@fr</xsl:when>
<xsl:when test="./@type='conj'">lexinfo:termType lexinfo:phraseologicalUnit ;
  lexinfo:partOfSpeech lexinfo:Conjunction ,
  "locution conjonctive"@fr , "loc. conj."@fr</xsl:when>
<xsl:otherwise>rdfs:comment "locution unspecified"</xsl:otherwise></xsl:choose> ;
  ontolex:canonicalForm :<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_form .

:<xsl:for-each select="tokenize(.,' ')">
  <xsl:sequence select="replace(replace(replace(replace(., $single_quote, '_'), '^\*', 'asterisk_'), '\(|\)|\+|-|,', ''), '/', '_')"/>
  <xsl:if test="not(position() eq last())">_</xsl:if></xsl:for-each>_form a ontolex:Form ;
  ontolex:writtenRep "<xsl:value-of select="replace(., '\+', '')"/>"@fro ;
</xsl:template>
</xsl:stylesheet>
