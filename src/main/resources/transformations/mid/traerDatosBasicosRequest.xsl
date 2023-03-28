<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" omit-xml-declaration="yes" indent="yes" />
	<xsl:strip-space elements="*" />
	
	<xsl:param name="rut"/>
	<xsl:param name="codigoCliente"/>
	<xsl:param name="userId"/>
	
	<xsl:template match="/">
		<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
			xmlns:per="http://persona.core.test.cl">
			<soapenv:Header />
			<soapenv:Body>
				<per:traerDatosBasicos>
					<!--Optional: -->
					<entrada>
						<rut><xsl:value-of select="$rut"/></rut>
						<userId><xsl:value-of select="$userId"/></userId>
						<codigoCliente><xsl:value-of select="$codigoCliente"/></codigoCliente>
					</entrada>
				</per:traerDatosBasicos>
			</soapenv:Body>
		</soapenv:Envelope>
	</xsl:template>
</xsl:stylesheet>