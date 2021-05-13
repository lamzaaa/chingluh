<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/LanguageList">
		<xsl:apply-templates select="Language[IsActive='true']" mode="Active"></xsl:apply-templates>
		<em class="material-icons">arrow_drop_down</em>
		<div class="language-dropdown">
			<xsl:apply-templates select="Language[IsActive='false']" mode="Drop"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="Language" mode="Active">
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
	</xsl:template>
	<xsl:template match="Language" mode="Drop">
		<a class="language__item">
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
	</xsl:template>
</xsl:stylesheet>
