<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/ZoneList">
        <xsl:apply-templates select="Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <section class="section home-6" data-aos="fade-up">
            <xsl:attribute name="setBackground">
                <xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
            </xsl:attribute>
            <div class="container">
                <div class="wraper-content">
                    <!-- <div class="desc">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </div> -->
                    <div class="section-title">
                        <xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <a class="btn btn-white mx-auto">
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of select="/ZoneList/JoinText" disable-output-escaping="yes"></xsl:value-of>
                    </a>
                </div>
            </div>
        </section>
    </xsl:template>
</xsl:stylesheet>