<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" omit-xml-declaration="no" indent="no" />
	<xsl:variable name="fixedData">
	</xsl:variable>
	<xsl:strip-space elements="*" />

	<xsl:template match="entrada">

		<H01FMTNME>IOC020201I</H01FMTNME>
		<H01USERID>
			<xsl:call-template name="espaciosDer">
				<xsl:with-param name="data" select="userId" />
				<xsl:with-param name="largo" select="number(10)" />
			</xsl:call-template>
		</H01USERID>
		<H01CODBNK>01</H01CODBNK>
		<H01CODTRN>1123</H01CODTRN>
		<H01CODCNL>0005</H01CODCNL>
		<H01CODOPE>
			<xsl:call-template name="cerosIzq">
				<xsl:with-param name="data" select="estado" />
				<xsl:with-param name="largo" select="number(4)" />
			</xsl:call-template>
		</H01CODOPE>
		<H01CODCAN>
			<xsl:call-template name="espaciosDer">
				<xsl:with-param name="data" select="canalLlamada" />
				<xsl:with-param name="largo" select="number(4)" />
			</xsl:call-template>
		</H01CODCAN>
		<E01RUTSOL>
			<xsl:call-template name="espaciosDer">
				<xsl:with-param name="data" select="rut" />
				<xsl:with-param name="largo" select="string(25)" />
			</xsl:call-template>
		</E01RUTSOL>
		<E01NROSIM>
			<xsl:call-template name="cerosIzq">
				<xsl:with-param name="data" select="idSimulacion" />
				<xsl:with-param name="largo" select="number(12)" />
			</xsl:call-template>
		</E01NROSIM>
		<E01TELEFO>
			<xsl:call-template name="cerosIzq">
				<xsl:with-param name="data" select="telefono" />
				<xsl:with-param name="largo" select="number(15)" />
			</xsl:call-template>
		</E01TELEFO>
		<E01EMAIL>
			<xsl:call-template name="espaciosDer">
				<xsl:with-param name="data" select="email" />
				<xsl:with-param name="largo" select="string(60)" />
			</xsl:call-template>
		</E01EMAIL>
	</xsl:template>

	<!-- Definicion De funciones de Relleno And Padding -->
	<xsl:template name="cerosIzq">
		<xsl:param name="data" />
		<xsl:param name="largo" />
		<xsl:variable name="relleno"
			select="string('0000000000000000000000000000000000000000000000000000000000')" />
		<xsl:variable name="rellenoData" select="concat($relleno,$data)" />
		<xsl:value-of
			select="substring($rellenoData,string-length($rellenoData)-$largo+1,$largo)" />
	</xsl:template>

	<xsl:template name="espaciosIzq">
		<xsl:param name="data" />
		<xsl:param name="largo" />
		<xsl:variable name="relleno"
			select="string('                                                           ')" />
		<xsl:variable name="rellenoData" select="concat($relleno,$data)" />
		<xsl:value-of
			select="substring($rellenoData,string-length($rellenoData)-$largo+1,$largo)" />
	</xsl:template>

	<xsl:template name="espaciosDer">
		<xsl:param name="data" />
		<xsl:param name="largo" />
		<xsl:variable name="relleno"
			select="string('                                                              ')" />
		<xsl:variable name="rellenoData" select="concat($data, $relleno)" />
		<xsl:value-of select="substring($rellenoData,1,$largo)" />
	</xsl:template>

</xsl:stylesheet>