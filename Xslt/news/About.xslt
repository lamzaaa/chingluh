<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/ZoneList">
        <xsl:apply-templates select="Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position() = 1">
            <section class="section description">
                <xsl:attribute name="setBackground">
                    <xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="hero-description">
                        <xsl:value-of select="News[position() = 1]/FullContent" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 2">
            <section class="section our-vision">
                <div class="container">
                    <div class="hero-vision d-flex">
                        <div class="wrap-content">
                            <div class="section-title">
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </div>
                            <div class="desc">
                                <xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
                            </div>
                        </div>
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
            </section>
        </xsl:if>
        <xsl:if test="position() = 3">
            <section class="section our-history">
                <div class="container">
                    <div class="section-title">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <div class="container--tabs">
                        <ul class="nav-tabs">
                            <xsl:apply-templates select="Zone" mode="Catelog"></xsl:apply-templates>
                        </ul>
                        <div class="tab-content">
                            <xsl:apply-templates select="Zone" mode="Content"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 4">
            <section class="section our-business-philosophy">
                <div class="container">
                    <div class="row">
                        <xsl:apply-templates select="News" mode="PHILOSOPHY"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 5">
            <section class="section core-values">
                <xsl:attribute name="setBackground">
                    <xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="section-title color-white">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <div class="row">
                        <xsl:apply-templates select="News" mode="Core"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 6">
            <section class="section our-locations" id="location">
                <div class="container">
                    <div class="section-title">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <div class="container--tabs">
                        <ul class="nav-tabs">
                            <xsl:apply-templates select="Zone" mode="Loca"></xsl:apply-templates>
                        </ul>
                        <div class="tab-content">
                            <xsl:apply-templates select="Zone" mode="Location"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="Zone" mode="Catelog">
        <li>
            <xsl:if test="IsActive = 'true'">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a>
                <xsl:attribute name="href">
                    <xsl:text disable-output-escaping="yes">#tab-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="target">
                    <xsl:value-of select="Target" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
    <xsl:template match="Zone" mode="Content">
        <div class="tab-panel">
            <xsl:if test="IsActive = 'true'">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">tab-panel active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">tab-panel active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="id">
                <xsl:text disable-output-escaping="yes">tab-</xsl:text>
                <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
            </xsl:attribute>
            <div class="hero-slide-history">
                <div class="swiper-container gallery-thumbs">
                    <div class="swiper-wrapper">
                        <xsl:apply-templates select="News" mode="Year"></xsl:apply-templates>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
                <div class="swiper-container gallery-tops">
                    <div class="swiper-wrapper">
                        <xsl:apply-templates select="News" mode="FullContent"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Year">
        <div class="swiper-slide">
            <div class="swiper-inner">
                <div class="title">
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="FullContent">
        <div class="swiper-slide">
            <div class="swiper-inner">
                <div class="content">
                    <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                </div>
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
    </xsl:template>
    <xsl:template match="News" mode="PHILOSOPHY">
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
        <div class="col-lg-6">
            <div class="wrap-content">
                <div class="section-title">
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                </div>
                <div class="desc">
                    <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Core">
        <div class="col-lg-3 col-md-3 col-sm-4 col-6">
            <div class="item">
                <div class="img">
                    <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                <div class="wrap-content">
                    <div class="text color-white f-18">
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="Loca">
        <li>
            <xsl:if test="IsActive = 'true'">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a>
                <xsl:attribute name="href">
                    <xsl:text disable-output-escaping="yes">#tab-</xsl:text>
                    <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="target">
                    <xsl:value-of select="Target" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
    <xsl:template match="Zone" mode="Location">
        <div class="tab-panel" id="tab-1">
            <xsl:if test="IsActive = 'true'">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">tab-panel active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">tab-panel active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="id">
                <xsl:text disable-output-escaping="yes">tab-</xsl:text>
                <xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of>
            </xsl:attribute>
            <div class="wrapper-content">
                <div class="sub-title">
                    <xsl:value-of select="News/Title" disable-output-escaping="yes"></xsl:value-of>
                    <xsl:value-of select="News/EditLink" disable-output-escaping="yes"></xsl:value-of>
                </div>
                <div class="wrap-desc">
                    <xsl:apply-templates select="News/NewsAttributes"></xsl:apply-templates>
                </div>
            </div>
            <div class="wrapper-slide-location">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <xsl:apply-templates select="News/NewsImages" mode="Sile"></xsl:apply-templates>
                    </div>
                </div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="NewsAttributes">
        <div class="item">
            <div class="title">
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </div>
            <div class="desc">
                <xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="NewsImages" mode="Sile">
        <div class="swiper-slide">
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
    </xsl:template>
</xsl:stylesheet>