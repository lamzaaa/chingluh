<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/ZoneList">
        <div class="row">
            <xsl:apply-templates select="Zone/Zone"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="col-lg-3 col-md-4 col-sm-6">
            <div class="item-focus zoom-img">
                <div class="img">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <img class="lazyload">
                            <xsl:attribute name="data-src">
                                <xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </a>
                </div>
                <div class="content">
                    <div class="title">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="target">
                                <xsl:value-of select="Target" disable-output-escaping="yes"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </a>
                    </div>
                    <div class="button">
                        <a class="learn-more">
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="target">
                                <xsl:value-of select="Target" disable-output-escaping="yes"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of select="/ZoneList/LMText" disable-output-escaping="yes"></xsl:value-of>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>