<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:m="http://www.deaf-page.de/ns/markup"
>

<!-- last change: ST 2021-04-14 -->
<!-- when all language tags are included and all unspecified scripta are counted (for evaluation) => erase `unassigned` to make the RDF valid in case there is one unspecified scripta -->
<xsl:template name="scriptae_extern">
<xsl:choose>
<xsl:when test="lemma/@language='afr.' or ./@language='afr.'">@fro</xsl:when>
<xsl:when test="lemma/@language='mfr.' or ./@language='mfr.'">@frm</xsl:when>
<xsl:when test="lemma/@language='agn.' or ./@language='agn.'">@xno</xsl:when>
<xsl:when test="lemma/@language='pic. norm. agn.' or ./@language='pic. norm. agn.'">@unassigned</xsl:when>
<xsl:when test="lemma/@language='norm. agn.' or ./@language='norm. agn.' or lemma/@language='agn. norm.' or ./@language='agn. norm.'">@unassigned</xsl:when>
<xsl:when test="lemma/@language='pic. norm.' or ./@language='pic. norm.' or lemma/@language='norm. pic.' or ./@language='norm. pic.'">@unassigned</xsl:when>
<xsl:when test="lemma/@language='pic. agn.' or ./@language='pic. agn.' or lemma/@language='agn. pic.' or ./@language='agn. pic.'">@unassigned</xsl:when>
<xsl:when test="lemma/@language='pic. wall.' or ./@language='pic. wall.' or lemma/@language='wall. pic.' or ./@language='wall. pic.'">@unassigned</xsl:when>
<xsl:when test="lemma/@language='flandr. lorr.' or ./@language='flandr. lorr.' or lemma/@language='lorr. flandr.' or ./@language='lorr. flandr.'">@unassigned</xsl:when>
<xsl:when test="lemma/@language='pic. lorr. flandr.' or ./@language='pic. lorr. flandr.'">@unassigned</xsl:when>
<xsl:when test="lemma/@language='pic. wall. lorr.' or ./@language='pic. wall. lorr.'">@unassigned</xsl:when>
<!-- hier noch alle auffüllen -->
<xsl:when test="lemma/@language='judéofr.' or ./@language='judéofr.'">@zrp</xsl:when>
<xsl:otherwise>@unassigned</xsl:otherwise></xsl:choose>
</xsl:template>
</xsl:stylesheet>

<!-- vorsicht: es gibt auch francoit. (?) => alle im System noch prüfen, die Liste in
Habil Anhang ist offenbar nicht vollständig
- auch : mnéerl. (in elvringout)-->
