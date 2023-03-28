package cl.fuse.integracion.template;

import org.apache.camel.Exchange;

public class BeanJava {
	public void NuevoNombre(Exchange exchange) {
		
		ConsultarNombre ResponseNombre= new ConsultarNombre();
		ResponseNombre.setNombre("Pukis");
		exchange.getIn().setBody(ResponseNombre);
		
	}
	
	public void CedulaNombre (Exchange exchange) {
		
		RespuestaCedulaNombre RespuestaCedulaNombre= new RespuestaCedulaNombre();
		
		String nom= (String) exchange.getProperty("nombre");
		String cc= (String) exchange.getProperty("cedula");
		
		String nomcc= nom.toUpperCase() + cc;
		
		
		RespuestaCedulaNombre.setCedulaNombre(nomcc);
		exchange.getIn().setBody(RespuestaCedulaNombre);
	}
	
	public void NumImpar (Exchange exchange) {
		
		
		
	}
	
}
