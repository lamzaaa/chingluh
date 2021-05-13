<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/NewsDetail">
        <section class="section message-detail">
            <div class="container">
                <div class="section-title">
                    <h1>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                    </h1>
                </div>
                <div class="full-content">
                    <h2 class="sub-title">
                        <xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
                    </h2>
                    <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </section>
    </xsl:template>
</xsl:stylesheet>