<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
    <html>
            <xsl:apply-templates/>
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
    <table>
        <tr>
            <th>Cycle name</th>
            <th>Grade</th>
            <th>Year of title</th>
        </tr>
        <xsl:apply-templates/>
    </table>
</xsl:template>
<xsl:template match="cycle">
    <tr>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="grade"/></td>
        <td><xsl:value-of select="@year"/></td>
    </tr>
</xsl:template>
</xsl:stylesheet>