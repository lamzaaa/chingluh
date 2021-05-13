<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/NewsList">
		<div class="section-title">
			<xsl:value-of select="ZoneTitle" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="desc">
			<xsl:value-of select="ZoneDescription" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="wrapper-list-download">
			<ul>
				<xsl:apply-templates select="News"></xsl:apply-templates>
			</ul>
		</div>

	</xsl:template>
	<xsl:template match="News">
		<li>
			<a download="">
				<xsl:attribute name="href">
					<xsl:value-of select="FileUrl" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		</li>
	</xsl:template>
</xsl:stylesheet>
