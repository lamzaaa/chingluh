<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/ZoneList">
		<div class="footer-title">
			<xsl:value-of select="ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<ul>
			<xsl:apply-templates select="Zone"></xsl:apply-templates>
		</ul>
	</xsl:template>
	<xsl:template match="Zone">
		<li>
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
				<em class="material-icons">circle</em>
				<span>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</span>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>
