<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/ZoneList">
        <section class="section why-choose">
            <div class="container">
                <div class="row">
                    <xsl:apply-templates select="Zone"></xsl:apply-templates>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="col-lg-6">
            <div class="wrap-content">
                <div class="section-title">
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </div>
                <div class="content">
                    <div class="desc">
                        <p>
                            <xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
                        </p>
                    </div>
                    <a class="btn btn-view-more hidden" href="">
                        <xsl:value-of select="/ZoneList/VMText" disable-output-escaping="yes"></xsl:value-of>
                    </a>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="wrap-img">
                <img class="lazyload">
                    <xsl:attribute name="data-src">
                        <xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>