<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:mf="http://test.cl/mf" exclude-result-prefixes="mf xs">
	<xsl:output indent="yes"/>


	<xsl:template name="corrigenegativo">
		<xsl:param name="numero"/>
		<xsl:param name="decimales"/>
		
		<xsl:variable name="numerocorregido" select="mf:evaluanegativo($numero)">
		</xsl:variable>


		<xsl:choose>
			<xsl:when test="$decimales=0">
				<xsl:value-of select="format-number(number($numerocorregido),'#0')"/>
			</xsl:when>
			<xsl:when test="$decimales=1">
				<xsl:value-of select="format-number(number(concat(substring($numerocorregido,1,string-length($numerocorregido)-1),'.',substring($numerocorregido,string-length($numerocorregido)))),'#0.0')"/>
			</xsl:when>
			<xsl:when test="$decimales=2">
				<xsl:value-of select="format-number(number(concat(substring($numerocorregido,1,string-length($numerocorregido)-2),'.',substring($numerocorregido,string-length($numerocorregido)-1))),'#0.00')"/>
			</xsl:when>
			<xsl:when test="$decimales=3">
				<xsl:value-of select="format-number(number(concat(substring($numerocorregido,1,string-length($numerocorregido)-3),'.',substring($numerocorregido,string-length($numerocorregido)-2))),'#0.000')"/>
			</xsl:when>
			<xsl:when test="$decimales=4">
				<xsl:value-of select="format-number(number(concat(substring($numerocorregido,1,string-length($numerocorregido)-4),'.',substring($numerocorregido,string-length($numerocorregido)-3))),'#0.0000')"/>
			</xsl:when>
			<xsl:when test="$decimales=5">
				<xsl:value-of select="format-number(number(concat(substring($numerocorregido,1,string-length($numerocorregido)-5),'.',substring($numerocorregido,string-length($numerocorregido)-4))),'#0.00000')"/>
			</xsl:when>
			<xsl:when test="$decimales=6">
				<xsl:value-of select="format-number(number(concat(substring($numerocorregido,1,string-length($numerocorregido)-6),'.',substring($numerocorregido,string-length($numerocorregido)-5))),'#0.000000')"/>
			</xsl:when>
			<xsl:when test="$decimales=7">
				<xsl:value-of select="format-number(number(concat(substring($numerocorregido,1,string-length($numerocorregido)-7),'.',substring($numerocorregido,string-length($numerocorregido)-6))),'#0.0000000')"/>
			</xsl:when>			
			<xsl:when test="$decimales=8">
				<xsl:value-of select="format-number(number(concat(substring($numerocorregido,1,string-length($numerocorregido)-8),'.',substring($numerocorregido,string-length($numerocorregido)-7))),'#0.00000000')"/>
			</xsl:when>										
			<xsl:otherwise>
			</xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>
	
	<xsl:function name="mf:evaluanegativo" as="xs:string">
		<xsl:param name="dato"/>
		
		<xsl:variable name="datos" select="substring($dato,1,string-length($dato)-1)">
		</xsl:variable>
		<xsl:variable name="last" select="substring($dato,string-length($dato),1 )">
		</xsl:variable>

		<xsl:choose>
			<xsl:when test="$last='}'">
				<xsl:value-of select="concat('-',$datos,'0')"/>
			</xsl:when>
			<xsl:when test="$last='J'">
				<xsl:value-of select="concat('-',$datos,'1')"/>
			</xsl:when>
			<xsl:when test="$last='K'">
				<xsl:value-of select="concat('-',$datos,'2')"/>
			</xsl:when>
			<xsl:when test="$last='L'">
				<xsl:value-of select="concat('-',$datos,'3')"/>
			</xsl:when>
			<xsl:when test="$last='M'">
				<xsl:value-of select="concat('-',$datos,'4')"/>
			</xsl:when>
			<xsl:when test="$last='N'">
				<xsl:value-of select="concat('-',$datos,'5')"/>
			</xsl:when>
			<xsl:when test="$last='O'">
				<xsl:value-of select="concat('-',$datos,'6')"/>
			</xsl:when>
			<xsl:when test="$last='P'">
				<xsl:value-of select="concat('-',$datos,'7')"/>
			</xsl:when>
			<xsl:when test="$last='Q'">
				<xsl:value-of select="concat('-',$datos,'8')"/>
			</xsl:when>
			<xsl:when test="$last='R'">
				<xsl:value-of select="concat('-',$datos,'9')"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$dato"/>
			</xsl:otherwise>
		</xsl:choose>
		
	</xsl:function>
	
</xsl:stylesheet>