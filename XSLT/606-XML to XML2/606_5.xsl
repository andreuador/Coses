<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
    <places>
        <xsl:apply-templates/>
    </places>
</xsl:template>
<xsl:template match="museum">
    <place type="museum">
        <location name="city">
            <xsl:value-of select="@city"/>
        </location>
        <location name="country">
            <xsl:value-of select="@country"/>
        </location>
        <name>
            <xsl:value-of select="@name"/>
        </name>
    </place>
</xsl:template>
</xsl:stylesheet>