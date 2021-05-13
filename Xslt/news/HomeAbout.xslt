<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/ZoneList">
        <xsl:apply-templates select="Zone/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <section class="section home-1">
            <xsl:attribute name="setbackground">
                <xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
            </xsl:attribute>
            <div class="container">
                <div class="row">
                    <xsl:apply-templates select="News[2]"></xsl:apply-templates>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-10 mx-auto ">
            <div class="section-title color-text" data-aos="fade-up">
                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
            </div>
            <div class="brief-content" data-aos="fade-up">
                <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
            </div>
            <div class="wrap-btn" data-aos="fade-up">
                <a class="btn btn-primary">
                    <xsl:attribute name="data-fancybox">
                        <xsl:text disable-output-escaping="yes">Video</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="href">
                        <xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
                    </xsl:attribute>
                    <em class="material-icons">play_circle_outline</em>
                    <span>
                        <xsl:value-of select="/ZoneList/WVText" disable-output-escaping="yes"></xsl:value-of>
                    </span>
                </a>
                <a class="btn btn-primary">
                    <xsl:attribute name="href">
                        <xsl:text disable-output-escaping="yes">/who-we-are</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="target">
                        <xsl:value-of select="Target" disable-output-escaping="yes"></xsl:value-of>
                    </xsl:attribute>
                    <em class="material-icons">business</em>
                    <span>
                        <xsl:value-of select="/ZoneList/FacText" disable-output-escaping="yes"></xsl:value-of>
                    </span>
                </a>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>