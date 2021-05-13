<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/ZoneList">
        <xsl:apply-templates select="Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position() = 1">
            <section class="section join-chingluh">
                <div class="container">
                    <div class="section-title">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="wrapper-list">
                                <div class="row">
                                    <xsl:apply-templates select="News" mode="POLICY"></xsl:apply-templates>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="wrap-img">
                                <div class="img">
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
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 2">
            <section class="section life-chingluh">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-6">
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
                        <div class="col-lg-6 col-md-6">
                            <div class="wrap-content">
                                <div class="section-title">
                                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                </div>
                                <div class="desc">
                                    <p>
                                        <xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
                                    </p>
                                </div>
                                <div class="button">
                                    <a class="btn btn-view-more">
                                        <xsl:attribute name="href">
                                            <xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
                                        </xsl:attribute>
                                        <xsl:attribute name="title">
                                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                                        </xsl:attribute>
                                        <xsl:attribute name="target">
                                            <xsl:value-of select="Target" disable-output-escaping="yes"></xsl:value-of>
                                        </xsl:attribute>
                                        <xsl:value-of select="/ZoneList/VMText" disable-output-escaping="yes"></xsl:value-of>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 3">
            <section class="section jobs-opening">
                <div class="container">
                    <div class="section-title color-white">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <div class="row">
                        <div class="col-lg-9 col-md-9">
                            <div class="desc">
                                <xsl:value-of select="News/BriefContent" disable-output-escaping="yes"></xsl:value-of>
                            </div>
                            <xsl:value-of select="News/FullContent" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                        <div class="col-lg-3 col-md-3">
                            <a class="btn btn-apply" href="javascript:;" data-src='#popup-form ' data-fancybox="">
                                <xsl:value-of select="/ZoneList/ApplyText" disable-output-escaping="yes"></xsl:value-of>
                            </a>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="POLICY">
        <div class="col-lg-6 col-md-6">
            <div class="item">
                <div class="title">
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                </div>
                <div class="desc">
                    <p>
                        <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                    </p>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>