<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/BannerList">
		<section id="home-banner">
			<div class="home-banner">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="Banner"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Banner">
		<div class="swiper-slide">
			<div class="wrap-banner desktop">
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
				<xsl:if test="Description != ''">
					<div class="wrap-inner bl-title">
						<div class="title">
							<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</xsl:if>
				<div class="wrap-inner icon">
					<div class="btn-scrolldown">
						<em class="material-icons">expand_more</em>
					</div>
				</div>
			</div>
			<div class="wrap-banner mobile">
				<div class="img">
					<img class="lazyload">
						<xsl:attribute name="data-src">
							<xsl:value-of select="ThumbnailUrl" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<xsl:if test="Description != ''">
					<div class="wrap-inner bl-title">
						<div class="title">
							<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</xsl:if>
				<div class="wrap-inner icon">
					<div class="btn-scrolldown">
						<em class="material-icons">expand_more</em>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
