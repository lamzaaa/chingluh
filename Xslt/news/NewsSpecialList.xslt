<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/NewsList">
        <section class="section home-2">
            <div class="container">
                <div class="wrap-title">
                    <div class="section-title" data-aos="fade-right">
                        <xsl:value-of select="ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <a class="btn btn-primary" data-aos="fade-left">
                        <xsl:attribute name="href">
                            <xsl:text disable-output-escaping="yes">/news-events-1</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of select="VMText" disable-output-escaping="yes"></xsl:value-of>
                    </a>
                </div>
                <div class="row">
                    <xsl:apply-templates select="News"></xsl:apply-templates>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News">
        <xsl:if test="position() = 1">
            <div class="col-md-4 col-sm-12" data-aos="fade-right">
                <div class="wrap-news">
                    <div class="newsitem">
                        <div class="date">
                            <em class="material-icons">date_range</em>
                            <time>
                                <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                            </time>
                        </div>
                        <a class="title text-uppercase">
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
                        <div class="briefcontent">
                            <p>
                                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                            </p>
                        </div>
                        <a class="link-viewmore">
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="target">
                                <xsl:value-of select="Target" disable-output-escaping="yes"></xsl:value-of>
                            </xsl:attribute>
                            <em class="lnr lnr-arrow-right-circle"></em>
                            <span>
                                <xsl:value-of select="/NewsList/VMText" disable-output-escaping="yes"></xsl:value-of>
                            </span>
                        </a>
                    </div>
                    <div class="newsimage">
                        <a class="img zoom-img">
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
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position() = 2">
            <div class="col-md-4 col-sm-12" data-aos="fade-up">
                <div class="wrap-news">
                    <div class="newsitem">
                        <div class="date">
                            <em class="material-icons">date_range</em>
                            <time>
                                <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                            </time>
                        </div>
                        <a class="title text-uppercase">
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
                        <div class="briefcontent">
                            <p>
                                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                            </p>
                        </div>
                        <a class="link-viewmore">
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="target">
                                <xsl:value-of select="Target" disable-output-escaping="yes"></xsl:value-of>
                            </xsl:attribute>
                            <em class="lnr lnr-arrow-right-circle"></em>
                            <span>
                                <xsl:value-of select="/NewsList/VMText" disable-output-escaping="yes"></xsl:value-of>
                            </span>
                        </a>
                    </div>
                    <div class="newsimage">
                        <a class="img zoom-img">
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
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position() = 3">
            <div class="col-md-4 col-sm-12" data-aos="fade-left">
                <div class="wrap-news">
                    <div class="newsitem">
                        <div class="date">
                            <em class="material-icons">date_range</em>
                            <time>
                                <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                            </time>
                        </div>
                        <a class="title text-uppercase">
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
                        <div class="briefcontent">
                            <p>
                                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                            </p>
                        </div>
                        <a class="link-viewmore">
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="target">
                                <xsl:value-of select="Target" disable-output-escaping="yes"></xsl:value-of>
                            </xsl:attribute>
                            <em class="lnr lnr-arrow-right-circle"></em>
                            <span>
                                <xsl:value-of select="/NewsList/VMText" disable-output-escaping="yes"></xsl:value-of>
                            </span>
                        </a>
                    </div>
                    <div class="newsimage">
                        <a class="img zoom-img">
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
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>