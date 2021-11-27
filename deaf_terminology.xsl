<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:m="http://www.deaf-page.de/ns/markup"
>

<!-- last change: ST 2020-12-10 -->
<xsl:template name="terminology_extern">
  olia:hasRegister olia:TechnicalRegister ;<xsl:choose>
<xsl:when test="./@type='medicine'">
  dct:subject dbr:Medicine ;</xsl:when>
<xsl:when test="./@type='astronomy'">
  dct:subject dbr:Astronomy ;</xsl:when>
<xsl:when test="./@type='grammar'">
  dct:subject dbr:Grammar ;</xsl:when>
<xsl:when test="./@type='histliterature'">
  dct:subject dbr:Literature ;</xsl:when>
<xsl:when test="./@type='geography'">
  dct:subject dbr:Geography ;</xsl:when>
<xsl:when test="./@type='music'">
  dct:subject dbr:Music ;</xsl:when>
<xsl:when test="./@type='architecture'">
  dct:subject dbr:Architecture ;</xsl:when>
<xsl:when test="./@type='heraldry'">
  dct:subject dbr:Heraldry ;</xsl:when>
<xsl:when test="./@type='marine'">
  dct:subject dbr:Marine_engineering ;</xsl:when>
<xsl:when test="./@type='botany'">
  dct:subject dbr:Botany ;</xsl:when>
<xsl:when test="./@type='pharmacy'">
  dct:subject dbr:Pharmacy ;</xsl:when>
<xsl:when test="./@type='theology'">
  dct:subject dbr:Theology ;</xsl:when>
<xsl:when test="./@type='falconry'">
  dct:subject dbr:Falconry ;</xsl:when>
<xsl:when test="./@type='equitation'">
  dct:subject dbr:Equitation ;</xsl:when>
<xsl:when test="./@type='agriculture'">
  dct:subject dbr:Agriculture ;</xsl:when>
<xsl:when test="./@type='law'">
  dct:subject dbr:Law ;</xsl:when>
<xsl:when test="./@type='mathematics'">
  dct:subject dbr:Mathematics ;</xsl:when>
<xsl:when test="./@type='cooking'">
  dct:subject dbr:Cooking ;</xsl:when>
<xsl:when test="./@type='liturgy'">
  dct:subject dbr:Liturgy ;</xsl:when>
<xsl:when test="./@type='philosophy'">
  dct:subject dbr:Philosophy ;</xsl:when>
<xsl:when test="./@type='onomastics'">
  dct:subject dbr:Onomastics ;</xsl:when>
<xsl:when test="./@type='veterinary'">
  dct:subject dbr:Veterinary ;</xsl:when>
<xsl:when test="./@type='war'">
  dct:subject dbr:War ;</xsl:when>
<xsl:when test="./@type='feudalism'">
  dct:subject dbr:Feudalism ;</xsl:when>
<xsl:when test="./@type='venery'">
  dct:subject dbr:Hunting ;</xsl:when>
<xsl:when test="./@type='game'">
  dct:subject dbr:Game ;</xsl:when>
<xsl:when test="./@type='craft'">
  dct:subject dbr:Craft ;</xsl:when>
<xsl:when test="./@type='history'">
  dct:subject dbr:History ;</xsl:when>
<xsl:when test="./@type='alchemy'">
  dct:subject dbr:Alchemy ;</xsl:when>
<xsl:when test="./@type='rhetoric'">
  dct:subject dbr:Rhetoric ;</xsl:when>
<xsl:when test="./@type='logic'">
  dct:subject dbr:Logic ;</xsl:when>
<xsl:when test="./@type='administration'">
  dct:subject dbr:Administration ;</xsl:when>
<xsl:when test="./@type='viticulture'">
  dct:subject dbr:Viticulture ;</xsl:when>
<xsl:when test="./@type='mineralogy'">
  dct:subject dbr:Mineralogy ;</xsl:when>
<xsl:when test="./@type='didactics'">
  dct:subject dbr:Didactic_method ;</xsl:when>
<xsl:when test="./@type='numismatic'">
  dct:subject dbr:Numismatics ;</xsl:when>
<xsl:when test="./@type='goldsmith'">
  dct:subject dbr:Goldsmith ;</xsl:when>
<xsl:otherwise>rdfs:comment "terminology unspecified"@en ;</xsl:otherwise></xsl:choose>
</xsl:template>
</xsl:stylesheet>
