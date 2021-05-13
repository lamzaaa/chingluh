<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/ZoneList">
		<xsl:apply-templates select="Zone"></xsl:apply-templates>

	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position() = 1">
			<section class="section our-people">
				<div class="container">
					<div class="row">
						<xsl:apply-templates select="News" mode="People"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 2">
			<section class="section work-environment">
				<div class="container">
					<div class="row">
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
								</div>
								<div class="desc">
									<p>
										<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 3">
			<section class="section living-facilities">
				<div class="container">
					<xsl:apply-templates select="News" mode="Living"></xsl:apply-templates>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="People">
		<div class="col-lg-6">
			<div class="wrap-content">
				<div class="section-title">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="content">
					<p>
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</div>
		</div>
		<div class="col-lg-6">
			<div class="wrap-img">
				<xsl:apply-templates select="NewsImages" mode="People"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages" mode="People">
		<div class="item">
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
	<xsl:template match="News" mode="Living">
		<div class="section-title">
			<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="wrap-slide-facilities">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="NewsImages" mode="Living-2"></xsl:apply-templates>
				</div>
			</div>
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages" mode="Living-2">
		<div class="swiper-slide">
			<div class="swiper-inner">
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
</xsl:stylesheet>
