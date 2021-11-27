<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:m="http://www.deaf-page.de/ns/markup"
>

<!-- last change: ST 2020-11-19 -->
<xsl:template name="etymology_extern">
<xsl:choose>
<xsl:when test="./@language='aangl.'">"ancien anglais"@fr , lexvo:ang ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@ang</xsl:when>
<xsl:when test="./@language='abfrq.'">"ancien bas-francique"@fr , lexvo:odt ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@odt</xsl:when>
<xsl:when test="./@language='afr.'">"ancien français"@fr , lexvo:fro ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@fro</xsl:when>
<xsl:when test="./@language='afrq.'">"ancien francique"@fr , lexvo:frk ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@frk</xsl:when>
<xsl:when test="./@language='aha.'">"ancien haut-allemand"@fr , lexvo:goh ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@goh</xsl:when>
<xsl:when test="./@language='mha.'">"moyen haut-allemand"@fr , lexvo:gmh ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@gmh</xsl:when>
<xsl:when test="./@language='all.'">"allemand"@fr , lexvo:deu ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/de.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@de</xsl:when>
<xsl:when test="./@language='angl.'">"anglais"@fr , lexvo:eng ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/en.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@en</xsl:when>
<xsl:when test="./@language='anglolt.'">"anglo-latin"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@???</xsl:when>
<xsl:when test="./@language='anord.'">"ancien nordique"@fr , lexvo:non ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@non</xsl:when>
<xsl:when test="./@language='aocc.'">"ancien occitan"@fr , lexvo:pro ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@pro</xsl:when>
<xsl:when test="./@language='aouestnord.'">"ancien ouest-nordique"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@???</xsl:when>
<xsl:when test="./@language='ar.'">"arabe"@fr , lexvo:ara ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/ar.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@ar</xsl:when>
<xsl:when test="./@language='asax.'">"ancien saxon"@fr , lexvo:osx ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@osx</xsl:when>
<xsl:when test="./@language='ball.'">"bas-allemand"@fr , lexvo:nds ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@nds</xsl:when>
<xsl:when test="./@language='bret.'">"breton"@fr , lexvo:bre ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/br.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@br</xsl:when>
<xsl:when test="./@language='celt.'">"celtique"@fr ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-2/cel.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@cel</xsl:when>
<xsl:when test="./@language='flam.'">"flamand"@fr , lexvo:nld ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/nl.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@nl</xsl:when>
<xsl:when test="./@language='flandr.'">"franҫais de la Flandre franҫaise"@fr ; ???
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@?????</xsl:when>
<xsl:when test="./@language='fr.'">"français"@fr , lexvo:fra ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/fr.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@fr</xsl:when>
<xsl:when test="./@language='frq.'">"francique"@fr , lexvo:vmf ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@vmf</xsl:when>
<xsl:when test="./@language='frq.'">"francique rhénan"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@???</xsl:when>
<xsl:when test="./@language='gall.'">"gallois"@fr , lexvo:cym ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/cy.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@cy</xsl:when>
<xsl:when test="./@language='gallolt.'">"gallolatin"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@???</xsl:when>
<xsl:when test="./@language='gallorom.'">"galloroman"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@???</xsl:when>
<xsl:when test="./@language='gasc.'">"gascon"@fr ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@oc-x-02q35735</xsl:when>
<xsl:when test="./@language='gaul.'">"gaulois"@fr , lexvo:xtg ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@xtg</xsl:when>
<xsl:when test="./@language='germ.'">"germanique"@fr ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-2/gem.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@gem</xsl:when>
<xsl:when test="./@language='got.'">"gotique"@fr , lexvo:got ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@got</xsl:when>
<xsl:when test="./@language='grec'">"grec"@fr , lexvo:ell  ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/el.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@el</xsl:when>
<xsl:when test="./@language='hit.'">"hautitalien"@fr ; ???
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@?????</xsl:when>
<xsl:when test="./@language='hébr.'">"hébreu"@fr , lexvo:heb ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/he.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@he</xsl:when>
<xsl:when test="./@language='indo-eur.'">"indo-européen"@fr ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-2/ine.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@ine</xsl:when>
<xsl:when test="./@language='irl.'">"irlandais"@fr , lexvo:gle ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/ga.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@ga</xsl:when>
<xsl:when test="./@language='isl.'">"islandais"@fr , lexvo:isl ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/is.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@is</xsl:when>
<xsl:when test="./@language='it.'">"italien"@fr , lexvo:ita ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/it.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@it</xsl:when>
<xsl:when test="./@language='lgb.'">"longobard"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@???</xsl:when>
<xsl:when test="./@language='lt.'">"latin"@fr , lexvo:lat ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/la.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@la</xsl:when>
<xsl:when test="./@language='lt.chrét.'">"latin chrétien"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@???</xsl:when>
<xsl:when test="./@language='lt.cl.'">"latin classique"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@???</xsl:when>
<xsl:when test="./@language='lt.tard.'">"latin tardif"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@???</xsl:when>
<xsl:when test="./@language='lt.vulg.'">"latin vulgaire"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@???</xsl:when>
<xsl:when test="./@language='mangl.'">"moyen anglais"@fr , lexvo:enm ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@enm</xsl:when>
<xsl:when test="./@language='mba.'">"moyen bas-allemand"@fr , lexvo:gml ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@gml</xsl:when>
<xsl:when test="./@language='mfr.'">"moyen français"@fr , lexvo:frm ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@frm</xsl:when>
<xsl:when test="./@language='mgr.'">"moyen grec"@fr , lexvo:grc ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@grc</xsl:when>
<xsl:when test="./@language='mlt.'">"moyen latin"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@???</xsl:when>
<xsl:when test="./@language='mnéerl.'">"moyen néerlandais"@fr , lexvo:dum ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@dum</xsl:when>
<xsl:when test="./@language='néerl.'">"néerlandais"@fr , lexvo:nld ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/nl.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@nl</xsl:when>
<xsl:when test="./@language='pers.'">"persan"@fr , lexvo:fas ,
  <xsl:text disable-output-escaping="yes"><![CDATA[<https://id.loc.gov/vocabulary/iso639-1/fa.html>]]></xsl:text> ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@fa</xsl:when>
<xsl:when test="./@language='prérom.'">"protoroman"@fr , lexvo:??? ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@???</xsl:when>
<xsl:when test="./@language='vén.'">"vénitien"@fr , lexvo:vec ;
  rdfs:label "<xsl:value-of select="lower-case(.)"/>"@vec</xsl:when>
<xsl:otherwise>"unspecified language 'etymology'"@en</xsl:otherwise></xsl:choose>
</xsl:template>
</xsl:stylesheet>
