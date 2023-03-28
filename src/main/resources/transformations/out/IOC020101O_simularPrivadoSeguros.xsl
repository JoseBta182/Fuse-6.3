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
						<simularResponse>
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
								<Seguro>
									<Seguros>
										<!-- S01PVHS05 -->
										<numeroSeguroCesantia>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,791,2)" />
												<xsl:with-param name="decimales" select="0" />
											</xsl:call-template>

										</numeroSeguroCesantia>
										<!--S01CODCES -->
										<Cesantia>
											<xsl:value-of select="normalize-space(substring(trama,793,4))" />
										</Cesantia>
										<!--S01DESCES -->
										<Cesantia_D>
											<xsl:value-of select="normalize-space(substring(trama,797,50))" />
										</Cesantia_D>
										<!--S01SEGCES -->
										<Cesantia_M>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,847,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
										
										</Cesantia_M>
										<!--S01PVHFA5 -->
										<porcentajeCalculoSeguroCesantia>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,862,9)" />
												<xsl:with-param name="decimales" select="4" />
											</xsl:call-template>
										</porcentajeCalculoSeguroCesantia>
										<!--S01PVHOC5 -->
										<monedaCalculoSeguroCesantia>
											<xsl:value-of select="normalize-space(substring(trama,871,3))" />
										</monedaCalculoSeguroCesantia>
										<!--S01PVHOG5 -->
										<cuentaSeguroCesantia>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,874,16)" />
												<xsl:with-param name="decimales" select="0" />
											</xsl:call-template>
										</cuentaSeguroCesantia>
										<!--S01PVHS04 -->
										<numeroSeguroDesgravamen>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,692,2)" />
												<xsl:with-param name="decimales" select="0" />
											</xsl:call-template>
										</numeroSeguroDesgravamen>
										<!--S01CODDES -->
										<Desgravamen>
											<xsl:value-of select="normalize-space(substring(trama,694,4))" />
										</Desgravamen>
										<!--S01DESDES -->
										<Desgravamen_D>
											<xsl:value-of select="normalize-space(substring(trama,698,50))" />
										</Desgravamen_D>
										<!--S01SEGDES -->
										<Desgravamen_M>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,748,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
										
										</Desgravamen_M>
										<!--S01PVHFA4 -->
										<porcentajeCalculoSeguroDesgravamen>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,763,9)" />
												<xsl:with-param name="decimales" select="4" />
											</xsl:call-template>
										</porcentajeCalculoSeguroDesgravamen>
										<!--S01PVHOC4 -->
										<monedaCalculoSeguroDesgravamen>
											<xsl:value-of select="normalize-space(substring(trama,772,3))" />
										</monedaCalculoSeguroDesgravamen>
										<!--S01PVHOG4 -->
										<cuentaSeguroDesgravamen>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,775,16)" />
												<xsl:with-param name="decimales" select="0" />
											</xsl:call-template>
										</cuentaSeguroDesgravamen>
										<!--S01PVHS01 -->
										<numeroSeguroInvalidez>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,395,2)" />
												<xsl:with-param name="decimales" select="0" />
											</xsl:call-template>
										</numeroSeguroInvalidez>
										<!--S01CODINV -->
										<Invalidez>
											<xsl:value-of select="normalize-space(substring(trama,397,4))" />
										</Invalidez>
										<!--S01DESINV -->
										<Invalidez_D>
											<xsl:value-of select="normalize-space(substring(trama,401,50))" />
										</Invalidez_D>
										<!--S01SEGINV -->
										<Invalidez_M>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,451,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
									
										</Invalidez_M>
										<!--S01PVHFA1 -->
										<porcentajeCalculoSeguroInvalidez>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,466,9)" />
												<xsl:with-param name="decimales" select="4" />
											</xsl:call-template>
										</porcentajeCalculoSeguroInvalidez>
										<!--S01PVHOC1 -->
										<monedaCalculoSeguroInvalidez>
											<xsl:value-of select="normalize-space(substring(trama,475,3))" />
										</monedaCalculoSeguroInvalidez>
										<!--S01PVHOG1 -->
										<cuentaSeguroInvalidez>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,478,16)" />
												<xsl:with-param name="decimales" select="0" />
											</xsl:call-template>
										</cuentaSeguroInvalidez>
										<!--S01PVHS02 -->
										<numeroSeguroEnfermedad>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,494,2)" />
												<xsl:with-param name="decimales" select="0" />
											</xsl:call-template>
										</numeroSeguroEnfermedad>
										<!--S01CODENF -->
										<Enfermedades>
											<xsl:value-of select="normalize-space(substring(trama,496,4))" />
										</Enfermedades>
										<!--S01DESENF -->
										<Enfermedades_D>
											<xsl:value-of select="normalize-space(substring(trama,500,50))" />
										</Enfermedades_D>
										<!--S01SEGENF -->
										<Enfermedades_M>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,550,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
									
										</Enfermedades_M>
										<!--S01PVHFA2 -->
										<porcentajeCalculoSeguroEnfermedad>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,565,9)" />
												<xsl:with-param name="decimales" select="4" />
											</xsl:call-template>
										</porcentajeCalculoSeguroEnfermedad>
										<!--S01PVHOC2 -->
										<monedaCalculoSeguroEnfermedad>
											<xsl:value-of select="normalize-space(substring(trama,574,3))" />
										</monedaCalculoSeguroEnfermedad>
										<!--S01PVHOG2 -->
										<cuentaSeguroEnfermedad>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,577,16)" />
												<xsl:with-param name="decimales" select="0" />
											</xsl:call-template>
										</cuentaSeguroEnfermedad>
										<!--S01PVHS03 -->
										<numeroSeguroHospitalizacion>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,593,2)" />
												<xsl:with-param name="decimales" select="0" />
											</xsl:call-template>
										</numeroSeguroHospitalizacion>
										<!--S01CODHOS -->
										<Hospitalizacion>
											<xsl:value-of select="normalize-space(substring(trama,595,4))" />
										</Hospitalizacion>
										<!--S01DESHOS -->
										<Hospitalizacion_D>
											<xsl:value-of select="normalize-space(substring(trama,599,50))" />
										</Hospitalizacion_D>
										<!--S01SEGHOS -->
										<Hospitalizacion_M>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,649,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
										
										</Hospitalizacion_M>
										<!--S01PVHFA3 -->
										<porcentajeCalculoSeguroHospitalizacion>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,664,9)" />
												<xsl:with-param name="decimales" select="4" />
											</xsl:call-template>
										</porcentajeCalculoSeguroHospitalizacion>
										<!--S01PVHOC3 -->
										<monedaCalculoSeguroHospitalizacion>
											<xsl:value-of select="normalize-space(substring(trama,673,3))" />
										</monedaCalculoSeguroHospitalizacion>
										<!--S01PVHOG3 -->
										<cuentaSeguroHospitalizacion>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,676,16)" />
												<xsl:with-param name="decimales" select="0" />
											</xsl:call-template>
										</cuentaSeguroHospitalizacion>
										<!--S01PVHS07 -->
										<numeroSeguroVida23>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,1001,2)" />
												<xsl:with-param name="decimales" select="0" />
											</xsl:call-template>
										</numeroSeguroVida23>
										<!--S01CODV23 -->
										<Vida23>
											<xsl:value-of select="normalize-space(substring(trama,1003,4))" />
										</Vida23>
										<!--S01DESV23 -->
										<Vida23_D>
											<xsl:value-of select="normalize-space(substring(trama,1007,45))" />
										</Vida23_D>
										<!--S01SEGV23 -->
										<Vida23_M>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,1094,15)" />
												<xsl:with-param name="decimales" select="4" />
											</xsl:call-template>									
										</Vida23_M>
										<!--S01PVHOC7 -->
										<monedaCalculoSeguroVida23>
											<xsl:value-of select="normalize-space(substring(trama,1067,3))" />
										</monedaCalculoSeguroVida23>
										<!--S01PSGPLZ -->
										<numeroPolizaSeguro23>
											<xsl:value-of select="normalize-space(substring(trama,1070,20))" />
										</numeroPolizaSeguro23>
										<!--S01PSGCCD -->
										<codigoCompaniaSeguro23>
											<xsl:value-of select="normalize-space(substring(trama,1090,4))" />
										</codigoCompaniaSeguro23>
										<!--S01PSGMTP -->
										<montoPrimaVida23>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,1052,15)" />
												<xsl:with-param name="decimales" select="4" />
											</xsl:call-template>
										</montoPrimaVida23>
										<!--S01PVHS08 -->
										<numeroSeguroProtDocumentos>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,1109,2)" />
												<xsl:with-param name="decimales" select="0" />
											</xsl:call-template>
										</numeroSeguroProtDocumentos>
										<!--S01CODPDO -->
										<ProtDocumentos>
											<xsl:value-of select="normalize-space(substring(trama,1111,4))" />
										</ProtDocumentos>
										<!--S01DESPDO -->
										<ProtDocumentos_D>
											<xsl:value-of select="normalize-space(substring(trama,1115,50))" />
										</ProtDocumentos_D>
										<!--S01SEGPDO -->
										<ProtDocumentos_M>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,1165,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
								
										</ProtDocumentos_M>
										<!--S01PVHOC8 -->
										<monedaCalculoProtDocumento>
											<xsl:value-of select="normalize-space(substring(trama,1180,3))" />
										</monedaCalculoProtDocumento>
										<!--S01PVHOG8 -->
										<cuentaProtDocumento>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,1183,16)" />
												<xsl:with-param name="decimales" select="0" />
											</xsl:call-template>
										</cuentaProtDocumento>
										<!--S01PVHS06 -->
										<numeroSeguroNotario>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,890,2)" />
												<xsl:with-param name="decimales" select="0" />
											</xsl:call-template>
										</numeroSeguroNotario>
										<!--S01CODNOT -->
										<CodSegNotario>
											<xsl:value-of select="normalize-space(substring(trama,892,4))" />
										</CodSegNotario>
										<!--S01DESNOT -->
										<DesSegNotario>
											<xsl:value-of select="normalize-space(substring(trama,896,50))" />
										</DesSegNotario>
										<!--S01SEGNOT -->
										<SegNotario>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,946,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
										</SegNotario>
										<!--S01PVHFA6 -->
										<porcentajeCalculoNotario>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero" select="substring(trama,961,9)" />
												<xsl:with-param name="decimales" select="4" />
											</xsl:call-template>
										</porcentajeCalculoNotario>
										<!--S01PVHOC6 -->
										<monedaCalculoNotario>
											<xsl:value-of select="normalize-space(substring(trama,970,3))" />
										</monedaCalculoNotario>
										<!--S01PVHOG6 -->
										<cuentaNotario>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,973,16)" />
												<xsl:with-param name="decimales" select="0" />
											</xsl:call-template>
										</cuentaNotario>
										<!--S01PVHOA6 -->
										<numeroCuentaNotario>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,989,12)" />
												<xsl:with-param name="decimales" select="0" />
											</xsl:call-template>
										</numeroCuentaNotario>
										<!--S01GTOTAL -->
										<GastoTotal>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,1211,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
										</GastoTotal>
										<!--S01MBRUTO -->
										<MontoBruto>
											<xsl:call-template name="corrigenegativo">
												<xsl:with-param name="numero"
													select="substring(trama,1226,15)" />
												<xsl:with-param name="decimales" select="2" />
											</xsl:call-template>
										</MontoBruto>
									</Seguros>
								</Seguro>
							</salida>
						</simularResponse>
			</xsl:when>
			<xsl:when test="contains(trama,'ECNLERR   ')">
				<simularResponse>
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
									<detalleError>
										<codigo>
											<xsl:value-of select="number(substring(.,1,4))" />
										</codigo>
										<descripcion>
											<xsl:value-of select="normalize-space(substring(.,5,80))" />
										</descripcion>
										<origen>SimuladorPrivado_simuladorprivado</origen>
									</detalleError>
								</xsl:for-each>
							</errores>
						</error>
				</simularResponse>
			</xsl:when>
			<xsl:otherwise>
				<simularResponse>
						<error>
							<errores>
								<DetalleError>
									<codigo>999</codigo>
									<descripcion>Operación no implementada.</descripcion>
								</DetalleError>
							</errores>
						</error>
				</simularResponse>
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