<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:import href="../../../docbook/xsl/1.77.0/fo/docbook.xsl"/>

    <xsl:param name="fop.extensions" select="0"/>
    <xsl:param name="generate.toc" select="0"/>
    <xsl:param name="section.label.includes.component.label" select="1"/>
    <xsl:param name="chapter.autolabel" select="1"/>
    <xsl:param name="section.autolabel" select="1"/>
    <xsl:param name="paper.type" select="A4"/>
    <xsl:param name="hyphenate">false</xsl:param>
    <xsl:param name="hyphenate.verbatim" select="0"/>
    <xsl:param name="shade.verbatim" select="1"/>
    <xsl:param name="column.count.titlepage" select="1"/>
    <xsl:param name="column.count.body" select="1"/>
    <xsl:param name="column.count.lot" select="1"/>
    <xsl:param name="column.count.toc" select="1"/>
    <xsl:param name="body.font.master" select="8"/>
    <xsl:param name="body.end.indent" select="'0pt'"/>
    <xsl:param name="draft.mode" select="yes"/>
    
    <xsl:attribute-set name="section.title.level1.properties">
      <xsl:attribute name="border-top">1pt solid black</xsl:attribute>
      <xsl:attribute name="border-bottom">1pt solid black</xsl:attribute>
      <xsl:attribute name="padding-top">6pt</xsl:attribute>
      <xsl:attribute name="padding-bottom">3pt</xsl:attribute>
    </xsl:attribute-set>
</xsl:stylesheet>
