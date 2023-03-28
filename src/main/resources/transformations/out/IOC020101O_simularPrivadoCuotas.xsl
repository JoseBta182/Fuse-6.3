<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output indent="yes" />
	<xsl:strip-space elements="*" />

	<xsl:variable name="contadorErrores" select="substring(trama,59,2)">
	</xsl:variable>

	<xsl:variable name="listadoErrores">
		<xsl:call-template name="tokenizeError">
			<xsl:with-param name="input" select="substring(trama,61)" />
			<xsl:with-param name="length" select="84" />
		</xsl:call-template>
	</xsl:variable>

	<xsl:include href="/formatonegativo.xsl" />

	<xsl:template match="/">

		<xsl:choose>

			<xsl:when test="contains(trama,'IOC020101O')">
						<simularPrivadoResponse>
							<salida>
								<Simula>
									<Simulador>
										<!--S01VALCUO -->
										<ValorCuota>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,11,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
											
										</ValorCuota>
										<!--S01VALCAE -->
										<CAE>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,26,9)" />
												<xsl:with-param name="decimales" select="6" />
											</xsl:call-template>
											
										</CAE>
										<!--S01VACAEV -->
										<CAEV>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,35,9)" />
												<xsl:with-param name="decimales" select="6" />
											</xsl:call-template>
											
										</CAEV>
										<!--S01COSTOT -->
										<MontoTotal>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,44,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
											
										</MontoTotal>
										<!--S01VACU12 -->
										<ValorCuota12>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,59,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
											
										</ValorCuota12>
										<!--S01VALC12 -->
										<CAE12>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,74,9)" />
												<xsl:with-param name="decimales" select="6" />
											</xsl:call-template>
											
										</CAE12>
										<!--S01VACA12 -->
										<CAEV12>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,83,9)" />
												<xsl:with-param name="decimales" select="6" />
											</xsl:call-template>
											
										</CAEV12>
										<!--S01CTOT12 -->
										<MontoTotal12>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,92,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
											
										</MontoTotal12>
										<!--S01VACU24 -->
										<ValorCuota24>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,107,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
											
										</ValorCuota24>
										<!--S01VALC24 -->
										<CAE24>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,122,9)" />
												<xsl:with-param name="decimales" select="6" />
											</xsl:call-template>
											
										</CAE24>
										<!--S01VACA24 -->
										<CAEV24>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,131,9)" />
												<xsl:with-param name="decimales" select="6" />
											</xsl:call-template>
											
										</CAEV24>
										<!--S01CTOT24 -->
										<MontoTotal24>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,140,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
											
										</MontoTotal24>
										<!--S01VACU36 -->
										<ValorCuota36>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,155,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
										
										</ValorCuota36>
										<!--S01VALC36 -->
										<CAE36>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,170,9)" />
												<xsl:with-param name="decimales" select="6" />
											</xsl:call-template>
										
										</CAE36>
										<!--S01VACA36 -->
										<CAEV36>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,179,9)" />
												<xsl:with-param name="decimales" select="6" />
											</xsl:call-template>
										
										</CAEV36>
										<!--S01CTOT36 -->
										<MontoTotal36>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,188,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
											
										</MontoTotal36>
										<!--S01VACU48 -->
										<ValorCuota48>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,203,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
										
										</ValorCuota48>
										<!--S01VALC48 -->
										<CAE48>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,218,9)" />
												<xsl:with-param name="decimales" select="6" />
											</xsl:call-template>
											
										</CAE48>
										<!--S01VACA48 -->
										<CAEV48>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,227,9)" />
												<xsl:with-param name="decimales" select="6" />
											</xsl:call-template>
										
										</CAEV48>
										<!--S01CTOT48 -->
										<MontoTotal48>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,236,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
										
										</MontoTotal48>
										<!--S01VACU60 -->
										<ValorCuota60>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,251,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
											
										</ValorCuota60>
										<!--S01VALC60 -->
										<CAE60>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,266,9)" />
												<xsl:with-param name="decimales" select="6" />
											</xsl:call-template>
										
										</CAE60>
										<!--S01VACA60 -->
										<CAEV60>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,257,9)" />
												<xsl:with-param name="decimales" select="6" />
											</xsl:call-template>
										
										</CAEV60>
										<!--S01CTOT60 -->
										<MontoTotal60>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,284,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
										
										</MontoTotal60>
										<!--S01VACU72 -->
										<ValorCuota72>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,299,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
										
										</ValorCuota72>
										<!--S01VALC72 -->
										<CAE72>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,314,9)" />
												<xsl:with-param name="decimales" select="6" />
											</xsl:call-template>
										
										</CAE72>
										<!--S01VACA72 -->
										<CAEV72>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,323,9)" />
												<xsl:with-param name="decimales" select="6" />
											</xsl:call-template>
									
										</CAEV72>
										<!--S01CTOT72 -->
										<MontoTotal72>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,332,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
									
										</MontoTotal72>
										<!--S01VACU84 -->
										<ValorCuota84>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,347,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
										
										</ValorCuota84>
										<!--S01VALC84 -->
										<CAE84>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,362,9)" />
												<xsl:with-param name="decimales" select="6" />
											</xsl:call-template>
										
										</CAE84>
										<!--S01VACA84 -->
										<CAEV84>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,371,9)" />
												<xsl:with-param name="decimales" select="6" />
											</xsl:call-template>
										
										</CAEV84>
										<!--S01CTOT84 -->
										<MontoTotal84>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,380,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
										</MontoTotal84>
										<!--S01NROSIM -->
										<NumeroSimulacion>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,1199,12)" />
												<xsl:with-param name="decimales" select="0" />
											</xsl:call-template>
										</NumeroSimulacion>
										<!--S01TASACR -->
										<Tasa>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,1241,9)" />
												<xsl:with-param name="decimales" select="6"/>
											</xsl:call-template>
										</Tasa>																					
									</Simulador>
								</Simula>
							</salida>
						</simularPrivadoResponse>
			</xsl:when>
			<xsl:when test="contains(trama,'ECNLERR   ')">
						<simularPrivadoResponse>
							<salida>
								<error>
									<formato>
										<xsl:value-of select="normalize-space(substring(trama,1,10))" />
									</formato>
									<identificador>
										<xsl:value-of select="normalize-space(substring(trama,11,24))" />
									</identificador>
									<correlativo>
										<xsl:value-of select="normalize-space(substring(trama,35,24))" />
									</correlativo>																		
									<numeroErrores>
										<xsl:value-of select="number(substring(trama,59,2))" />
									</numeroErrores>
									<errores>
										<xsl:for-each
											select="$listadoErrores/Errores[(position()&lt;number($contadorErrores)+1)]">
											<DetalleError>
												<codigo>
													<xsl:value-of select="number(substring(.,1,4))" />
												</codigo>
												<descripcion>
													<xsl:value-of select="normalize-space(substring(.,5,80))" />
												</descripcion>
												<origen>SimuladorPrivado_simuladorprivado</origen>
											</DetalleError>
										</xsl:for-each>
									</errores>
								</error>
							</salida>
						</simularPrivadoResponse>
			</xsl:when>
			<xsl:otherwise>
				<simularPrivadoResponse>
					<salida>
						<error>
							<errores>
								<DetalleError>
									<codigo>999</codigo>
									<descripcion>Operación no implementada.</descripcion>
								</DetalleError>
							</errores>
						</error>
					</salida>
				</simularPrivadoResponse>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="tokenize">
		<xsl:param name="input" />
		<xsl:param name="length" />
		<detalle>
			<xsl:value-of select="substring($input,1,$length)" />
		</detalle>
		<xsl:if test="substring($input,$length+1)">
			<xsl:call-template name="tokenize">
				<xsl:with-param name="input" select="substring($input,$length+1)" />
				<xsl:with-param name="length" select="$length" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>

	<xsl:template name="tokenizeError">
		<xsl:param name="input" />
		<xsl:param name="length" />
		<Errores>
			<xsl:value-of select="substring($input,1,$length)" />
		</Errores>
		<xsl:if test="substring($input,$length+1)">
			<xsl:call-template name="tokenizeError">
				<xsl:with-param name="input" select="substring($input,$length+1)" />
				<xsl:with-param name="length" select="$length" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>