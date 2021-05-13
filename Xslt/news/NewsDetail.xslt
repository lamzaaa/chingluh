<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/NewsDetail">
		<section class="section detail-news">
			<div class="container">
				<div class="hero-wrapper">
					<div class="title">
						<h1>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>

						</h1>
					</div>
					<div class="wrapper-bottom">
						<div class="time">
							<em class="material-icons">date_range</em>
							<span>
								<xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
							</span>
						</div>
						<div class="share-media">
							<div class="fb-like" data-width="" data-layout="button" data-action="like" data-size="small" data-share="true">
								<xsl:attribute name="data-href">
									<xsl:value-of select="FullUrl" disable-output-escaping="yes"></xsl:value-of>
								</xsl:attribute>
							</div>
						</div>
					</div>
					<div class="wrap-article">
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</section>
		<section class="section news-other">
			<div class="container">
				<div class="section-title">Other News</div>
				<div class="other-slide">
					<div class="swiper-container">
						<div class="swiper-wrapper">

							<xsl:apply-templates select="NewsOther"></xsl:apply-templates>
						</div>
					</div>
					<div class="swiper-button-next"></div>
					<div class="swiper-button-prev"></div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="swiper-slide">
			<div class="item-news zoom-img">
				<div class="wrap-content">
					<div class="time">
						<em class="material-icons">date_range</em>
						<span>
							<xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
						</span>
					</div>
					<div class="title">
						<a class="lcl lcl-2">
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
					<div class="desc">
						<p class="lcl lcl-3">
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</p>
					</div>
					<div class="button">
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
							<em class="lnr lnr-arrow-right-circle"></em>
							<span>View more</span>
						</a>
					</div>
				</div>
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
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
