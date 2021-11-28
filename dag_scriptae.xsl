<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:m="http://www.deaf-page.de/ns/markup"
>

<!-- last change: ST 2021-11-28 -->
<!-- scriptae for DAG -->
<!-- when all language tags are included and all unspecified scripta are counted (for evaluation) => erase `unassigned` to make the RDF valid in case there is one unspecified scripta -->
<xsl:template name="scriptae_extern">
<xsl:choose>
<xsl:when test="lemma/@language='gasc.' or ./@language='gasc.'">@oc-x-02q35735</xsl:when>
<xsl:when test="lemma/@language='agasc.' or ./@language='agasc.'">@oc-x-02q35735-241050--1500</xsl:when>
<xsl:when test="lemma/@language='occ.' or ./@language='occ.'">@oc</xsl:when>
<xsl:when test="lemma/@language='aocc.' or ./@language='aocc.'">@pro</xsl:when>
<xsl:when test="lemma/@language='béarn.' or ./@language='béarn.'">@oc-x-00bearnais-35136075732</xsl:when>
<xsl:when test="lemma/@language='land.' or ./@language='land.'">@unassigned</xsl:when>
<xsl:when test="lemma/@language='agasc. en contexte lt.' or ./@language='agasc. en contexte lt.'">@unassigned ;
  dct:language "ancien gascon en contexte latin"@fr</xsl:when>
<xsl:when test="lemma/@language='agasc. en contexte fr.' or ./@language='agasc. en contexte fr.'">@unassigned ;
  dct:language "ancien gascon en contexte français"@fr</xsl:when>
<xsl:when test="lemma/@language='agasc. lat.' or ./@language='agasc. lat.'">@unassigned ;
  dct:language "ancien gascon latinisé"@fr</xsl:when>
<xsl:when test="lemma/@language='abéarn.' or ./@language='abéarn.'">@oc-x-00bearnais-241050--1500-35136075732</xsl:when>
<xsl:when test="lemma/@language='abéarn. lat.' or ./@language='abéarn. lat.'">@unassigned ;
  dct:language "ancien béarnais latinisé"@fr</xsl:when>
<xsl:when test="lemma/@language='apérig.' or ./@language='apérig.'">@unassigned</xsl:when>
<xsl:when test="lemma/@language='apérig. lat.' or ./@language='apérig. lat.'">@unassigned ;
  dct:language "ancien périgourdin latinisé"@fr</xsl:when>
<xsl:when test="lemma/@language='aland.' or ./@language='aland.'">@unassigned</xsl:when>
<xsl:when test="lemma/@language='aland. lat.' or ./@language='aland. lat.'">@unassigned ;
  dct:language "ancien landais latinisé"@fr</xsl:when>
<xsl:when test="lemma/@language='aagen.' or ./@language='aagen.'">@unassigned</xsl:when>
<xsl:when test="lemma/@language='aagen. lat.' or ./@language='aagen. lat.'">@unassigned ;
  dct:language "ancien agenais latinisé"@fr</xsl:when>
<xsl:when test="lemma/@language='aarmagn.' or ./@language='aarmagn.'">@unassigned</xsl:when>
<xsl:when test="lemma/@language='aarmagn. lat.' or ./@language='aarmagn. lat.'">@unassigned ;
  dct:language "ancien armagnacais latinisé"@fr</xsl:when>
<xsl:when test="lemma/@language='abig.' or ./@language='abig.'">@unassigned</xsl:when>
<xsl:when test="lemma/@language='abig. lat.' or ./@language='abig. lat.'">@unassigned ;
  dct:language "ancien bigourdan latinisé"@fr</xsl:when>
<xsl:when test="lemma/@language='amédoc.' or ./@language='amédoc.'">@unassigned</xsl:when>
<xsl:when test="lemma/@language='amédoc. lat.' or ./@language='amédoc. lat.'">@unassigned ;
  dct:language "ancien médoquin latinisé"@fr</xsl:when>
<xsl:when test="lemma/@language='acomm.' or ./@language='acomm.'">@unassigned</xsl:when>
<xsl:when test="lemma/@language='acomm. lat.' or ./@language='acomm. lat.'">@unassigned ;
  dct:language "ancien commingeois latinisé"@fr</xsl:when>
<xsl:when test="lemma/@language='alang.' or ./@language='alang.'">@unassigned</xsl:when>
<xsl:when test="lemma/@language='alang. lat.' or ./@language='alang. lat.'">@unassigned ;
  dct:language "ancien languedocien latinisé"@fr</xsl:when>
<xsl:when test="lemma/@language='adauph.' or ./@language='adauph.'">@unassigned</xsl:when>
<xsl:when test="lemma/@language='adauph. lat.' or ./@language='adauph. lat.'">@unassigned ;
  dct:language "ancien dauphinois latinisé"@fr</xsl:when>
<xsl:otherwise>@unassigned</xsl:otherwise></xsl:choose>
</xsl:template>
</xsl:stylesheet>
