<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/ZoneList">
		<ul class="primary-menu">
			<xsl:apply-templates select="Zone" mode="Lv-1"></xsl:apply-templates>
		</ul>
	</xsl:template>
	<xsl:template match="Zone" mode="Lv-1">
		<li>
			<xsl:if test="count(Zone) = 0">
				<xsl:if test="IsActive = 'true'">
					<xsl:attribute name="class">
						<xsl:text disable-output-escaping="yes">active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<div class="title">
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
				</div>
			</xsl:if>
			<xsl:if test="count(Zone) > 0">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">dropdown</xsl:text>
				</xsl:attribute>
				<xsl:if test="IsActive = 'true'">
					<xsl:attribute name="class">
						<xsl:text disable-output-escaping="yes">dropdown active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<div class="title">
					<em class="material-icons">arrow_forward</em>
					<a href="javascript:;">
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
				<ul class="sub-menu">
					<xsl:apply-templates select="Zone" mode="Lv-2"></xsl:apply-templates>
				</ul>
			</xsl:if>
		</li>
	</xsl:template>
	<xsl:template match="Zone" mode="Lv-2">
		<li>
			<xsl:if test="IsActive = 'true'">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">active</xsl:text>
				</xsl:attribute>
			</xsl:if>
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
		</li>
	</xsl:template>
</xsl:stylesheet>
