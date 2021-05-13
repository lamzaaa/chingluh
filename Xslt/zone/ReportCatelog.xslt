<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/ZoneList">
		<div class="section-title">
			<xsl:value-of select="Zone/Zone[position() = 4]/Title" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="sort">
			<label>Năm </label>
			<div class="wrap-drop">
				<a class="title">
					<xsl:if test="CurrentZoneId != 92">
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
					</xsl:if>
					<xsl:if test="CurrentZoneId = 92">
						<xsl:attribute name="href">
							<xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						<xsl:text disable-output-escaping="yes">All</xsl:text>
					</xsl:if>
					<em class="lnr lnr-chevron-down"></em>
				</a>
				<ul class="drop-down">
					<xsl:apply-templates select="Zone/Zone/Zone"></xsl:apply-templates>
					<li>
						<xsl:if test="CurrentZoneId != 92">
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Zone/Zone[position() = 4]/Url" disable-output-escaping="yes"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="target">
									<xsl:value-of select="Target" disable-output-escaping="yes"></xsl:value-of>
								</xsl:attribute>
								<xsl:text disable-output-escaping="yes">All</xsl:text>
							</a>
						</xsl:if>
					</li>
				</ul>
			</div>
		</div>
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
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>
