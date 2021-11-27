<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:m="http://www.deaf-page.de/ns/markup"
>

<!-- neue POS, die mit der Digitalisierung von G - K hinzugekommen sind
(Liste ist noch offen, da die Digitalisierung von G noch nicht abgeschlosen ist)
particule d'affirmation
onomat.
v.a.
v.abs. (?)
v.n.
m. et adj.
adj. et m.
adj. pl.
m. (et f.?)
p.prés. pris comme subst.
p.p. pris comme subst.
p.p. f. pris comme subst.
f. ou m.
-->
<!-- last change: ST 2020-11-18 -->

<xsl:template name="pos_extern">
<xsl:choose>
<xsl:when test=".='m.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Noun ;
  lexinfo:gender lexinfo:masculine ;</xsl:when>
<xsl:when test=".='f.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Noun ;
  lexinfo:gender lexinfo:feminine ;</xsl:when>
<xsl:when test=".='s.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Noun ;</xsl:when>
<xsl:when test=".='s.m.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Noun ;
  lexinfo:gender lexinfo:masculine ;</xsl:when>
<xsl:when test=".='s.f.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Noun ;
  lexinfo:gender lexinfo:feminine ;</xsl:when>
<xsl:when test=".='m.pl.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Noun ;
  lexinfo:gender lexinfo:masculine ,
  lexinfo:number lexinfo:plural ;</xsl:when>
<xsl:when test=".='f.pl.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Noun ;
  lexinfo:gender lexinfo:feminine ;
  lexinfo:number lexinfo:plural ;</xsl:when>
<xsl:when test=".='s.pl.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Noun ;
  lexinfo:number lexinfo:plural ;</xsl:when>

<xsl:when test=".='adj.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Adjective ;</xsl:when>
<xsl:when test=".='adj. f.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Adjective ;
  lexinfo:gender lexinfo:feminine ;</xsl:when>
<xsl:when test=".='adj. m.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Adjective ;
  lexinfo:gender lexinfo:masculine ;</xsl:when>
<xsl:when test=".='adj. poss.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:possessiveAdjective ;</xsl:when>
<xsl:when test=".='adj. substantivé'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Noun ;</xsl:when>
<xsl:when test=".='adj. num.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:ordinalAdjective ;</xsl:when>
<xsl:when test=".='adj. num. ord.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:ordinalAdjective ;</xsl:when>

<xsl:when test=".='adv.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Adverb ;</xsl:when>
<xsl:when test=".='art. déf.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:definiteArticle ;</xsl:when>
<xsl:when test=".='art. indéf.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:indefiniteArticle ;</xsl:when>
<xsl:when test=".='prép.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Preposition ;</xsl:when>
<xsl:when test=".='interj.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Interjection ;</xsl:when>
<xsl:when test=".='conj.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Conjunction ;</xsl:when>
<xsl:when test=".=&quot;particule d'affirmation&quot;">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:AffirmativeParticle ;</xsl:when>
<xsl:when test=".='onomat.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  olia:OnomatopoeticWord ;</xsl:when>


<!-- pronouns -->
<xsl:when test=".='pron.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Pronoun ;</xsl:when>
<xsl:when test=".='pron. pers.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:personalPronoun ;</xsl:when>
<xsl:when test=".='pron. dém.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:demonstrativePronoun ;</xsl:when>
<xsl:when test=".='pron. indéfini'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:indefinitePronoun ;</xsl:when>
<xsl:when test=".='pron. interrog.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:interrogativePronoun ;</xsl:when>
<xsl:when test=".='pron. poss.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:possessivePronoun ;</xsl:when>
<xsl:when test=".='pron. rel.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:relativePronoun ;</xsl:when>
<xsl:when test=".='pron. adv.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:adverbialPronoun ;</xsl:when>

<!-- locutions -->
<xsl:when test=".='loc.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
 "locution"@fr ;
  lexinfo:termType lexinfo:phraseologicalUnit ;</xsl:when>
<xsl:when test=".='loc. adj.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  "locution adjectivale"@fr , lexinfo:Adjective ;
  lexinfo:termType lexinfo:phraseologicalUnit ;</xsl:when>
<xsl:when test=".='loc. adv.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  "locution adverbiale"@fr , lexinfo:Adverb ;
  lexinfo:termType lexinfo:phraseologicalUnit ;</xsl:when>
<xsl:when test=".='loc. verb.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  "locution verbale"@fr , lexinfo:Verb ;
  lexinfo:termType lexinfo:phraseologicalUnit ;</xsl:when>
<xsl:when test=".='loc. subst.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  "locution nominale"@fr , lexinfo:Noun ;
  lexinfo:termType lexinfo:phraseologicalUnit ;</xsl:when>
<xsl:when test=".='loc. interj.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  "locution interjective"@fr , lexinfo:Interjection ;
  lexinfo:termType lexinfo:phraseologicalUnit ;</xsl:when>
<xsl:when test=".='loc. prép.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  "locution prépositive"@fr , lexinfo:Preposition ;
  lexinfo:termType lexinfo:phraseologicalUnit ;</xsl:when>
<xsl:when test=".='loc. pron.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  "locution pronominale"@fr , lexinfo:Pronoun ;
  lexinfo:termType lexinfo:phraseologicalUnit ;</xsl:when>
<xsl:when test=".='loc. conj.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  "locution conjonctive"@fr , lexinfo:Conjunction ;
  lexinfo:termType lexinfo:phraseologicalUnit ;</xsl:when>
<xsl:when test=".='nom propre'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
    lexinfo:ProperNoun ;</xsl:when>

<!-- verbs and VerbFrame -->
<xsl:when test=".='v.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:verb ;</xsl:when>
<xsl:when test=".='v.tr.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:verb ;
  synsem:synBehavior
    [ a synsem:SyntacticFrame , lexinfo:TransitiveFrame ] ;</xsl:when>
<xsl:when test=".='v.intr.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:verb ;
  synsem:synBehavior
    [ a synsem:SyntacticFrame , lexinfo:IntransitiveFrame ] ;</xsl:when>
<xsl:when test=".='v.pron.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:verb ;
  synsem:synBehavior
    [ a synsem:SyntacticFrame , lexinfo:ReflexiveFrame ] ;</xsl:when>
<xsl:when test=".='v.pron. à valeur neutre'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:verb ;
  synsem:synBehavior
    [ a synsem:SyntacticFrame , lexinfo:ReflexiveFrame ] ;</xsl:when>
<xsl:when test=".='v.pron. à valeur réfléchie'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:verb ;
  synsem:synBehavior
    [ a synsem:SyntacticFrame , lexinfo:ReflexiveFrame ] ;</xsl:when>
<xsl:when test=".='v.pron. à valeur réciproque'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:verb ;
  synsem:synBehavior
    [ a synsem:SyntacticFrame , lexinfo:ReciprocalFrame ] ;</xsl:when>
<xsl:when test=".='v.pron. à valeur passive'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:verb ;
  synsem:synBehavior
    [ a synsem:SyntacticFrame , lexinfo:ReflexiveFrame ] ;</xsl:when>
<xsl:when test=".='v.tr. + c.o.i.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:verb ;
  synsem:synBehavior
    [ a synsem:SyntacticFrame , lexinfo:TransitivFrame ] ;
  lexinfo:case lexinfo:dativeCase ;</xsl:when>
<xsl:when test=".='v.tr. + c.o.d.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:verb ;
  synsem:synBehavior
    [ a synsem:SyntacticFrame , lexinfo:TransitivFrame ] ;
  lexinfo:case lexinfo:accusativeCase ;</xsl:when>
<xsl:when test=".='emploi abs.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:verb ;
  synsem:synBehavior
    [ a synsem:SyntacticFrame , lexinfo:TransitivFrame ] ;
  lexinfo:case lexinfo:absolutiveCase ;</xsl:when>
<xsl:when test=".='inf. substantivé'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
    lexinfo:Noun ;</xsl:when>
<xsl:when test=".='p.p.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ;
  lexinfo:verbFormMood lexinfo:participle ;</xsl:when>
<xsl:when test=".='p.p. pris comme adj.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:pastParticipleAdjective ;</xsl:when>
<xsl:when test=".='p.prés.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ;
  lexinfo:verbFormMood lexinfo:participle ;</xsl:when>
<xsl:when test=".='p.prés. pris comme adj.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:presentParticipleAdjective ;</xsl:when>
<xsl:when test=".='?'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ;</xsl:when>

<!-- neue POS aus G - K -->
<xsl:when test=".='f. et m.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Noun ;
  lexinfo:gender lexinfo:masculine , lexinfo:feminine ;</xsl:when>
<xsl:when test=".='f. et m. (?)'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Noun ;
  lexinfo:gender lexinfo:masculine , lexinfo:feminine ;</xsl:when>
<xsl:when test=".='f. et m.pl.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Noun ;
  lexinfo:gender lexinfo:masculine , lexinfo:feminine ;
  lexinfo:number lexinfo:plural ;</xsl:when>
<xsl:when test=".='v.a.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:verb ;
  synsem:synBehavior
    [ a synsem:SyntacticFrame , lexinfo:TransitiveFrame ] ;</xsl:when>
<xsl:when test=".='v.abs. (?)'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:verb ;
  lexinfo:case lexinfo:absolutiveCase ;</xsl:when>
<xsl:when test=".='v.n.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:verb ;
  lexinfo:case lexinfo:absolutiveCase ;</xsl:when>
<xsl:when test=".='p.p. comme adj.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
    lexinfo:pastParticipleAdjective ;</xsl:when>
<xsl:when test=".='p.prés. comme adj.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:presentParticipleAdjective ;</xsl:when>
<xsl:when test=".='m. et adj.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Adjective, lexinfo:Noun ;
  lexinfo:gender lexinfo:masculine ;</xsl:when>
<xsl:when test=".='adj. et m.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Adjective, lexinfo:Noun ;
  lexinfo:gender lexinfo:masculine ;</xsl:when>
<xsl:when test=".='adj. pl.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Adjective ;
  lexinfo:number lexinfo:plural ;</xsl:when>
<xsl:when test=".='m. (et f.?)'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Noun ;
  lexinfo:gender lexinfo:masculine , lexinfo:feminine ;</xsl:when>
<xsl:when test=".='p.prés. pris comme subst.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Noun ;</xsl:when>
<xsl:when test=".='p.p. pris comme subst.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Noun ;</xsl:when>
<xsl:when test=".='p.p. f. comme subst.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Noun;
  lexinfo:gender lexinfo:feminine ;</xsl:when>
<xsl:when test=".='f. ou m.'">lexinfo:partOfSpeech "<xsl:value-of select="."/>"@fr ,
  lexinfo:Noun ;
  lexinfo:gender lexinfo:masculine , lexinfo:feminine ;</xsl:when>
<xsl:otherwise>lexinfo:partOfSpeech "PartOfSpeech unspecified"@en ;</xsl:otherwise></xsl:choose>
</xsl:template>
</xsl:stylesheet>
