<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <body>
                <xsl:text>&#10;</xsl:text>
                <h1>
                    <xsl:value-of select="secondary-school/name"/>
                </h1>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="web">
        <p>Web page: <a>
            <xsl:attribute name="href">
                <xsl:value-of select="."/>
            </xsl:attribute>
        </a>
    </p>
</xsl:template>
<xsl:template match="cycles">
    <ul>
        <xsl:apply-templates/>
    </ul>
</xsl:template>
<xsl:template match="cycle">
    <li>
        <xsl:value-of select="name"/>
    </li>
</xsl:template>
</xsl:stylesheet>