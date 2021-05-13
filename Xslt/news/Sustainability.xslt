<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/NewsList">
		<div class="row">
			<xsl:apply-templates select="News"></xsl:apply-templates>

		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-lg-5 col-md-12">
			<div class="wrapper-content">
				<div class="content">
					<div class="sub-title">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="desc">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-7 col-md-12">
			<div class="wrapper-img">

				<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages">
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
</xsl:stylesheet>
