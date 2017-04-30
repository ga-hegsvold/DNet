<?xml version="1.0"?>
<xsl:stylesheet version='1.0' xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

  <xsl:param name="header.image.filename">images/dragon.png</xsl:param>
  <xsl:param name="header.image.height">0.5cm</xsl:param>

  <xsl:template name="header.content">
    <xsl:param name="position" select="''"/>

    <fo:block>
      
      <xsl:choose>

        <xsl:when test="$position = 'left'">
          <fo:external-graphic>
            <xsl:attribute name="src">
              <xsl:call-template name="fo-external-image">
                <xsl:with-param name="filename" select="$header.image.filename"/>
              </xsl:call-template>
            </xsl:attribute>

            <xsl:attribute name="content-height">
              <xsl:value-of select="$header.image.height" />
            </xsl:attribute>

          </fo:external-graphic>
        </xsl:when>
      </xsl:choose>

    </fo:block>
  </xsl:template>

</xsl:stylesheet>
