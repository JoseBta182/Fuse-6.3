package cl.fuse.integracion.template;


import java.util.Arrays;

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
		
		RespuestaNumero RespuestaNumero = new RespuestaNumero();
		
		String num= (String) exchange.getProperty("numero");
		
		Double a = Double.parseDouble(num);
	
		if (a % 2 == 0) {
			RespuestaNumero.setTipoNum ("El numero " + a + " no es impar");
			
		}
		
		else {
			RespuestaNumero.setTipoNum ("El numero " + a +  " es impar");
			
		}
		
		exchange.getIn().setBody(RespuestaNumero);
	}
	
	
	public void MenorMayor (Exchange exchange) {
		
		RespuestaNumeros RespuestaNumeros = new RespuestaNumeros();
		
		String num1=(String) exchange.getProperty("numero1");
		String num2=(String) exchange.getProperty("numero2");
		String num3=(String) exchange.getProperty("numero3");
		String num4=(String) exchange.getProperty("numero4");
		String num5=(String) exchange.getProperty("numero5");
		
		
		Double a = Double.parseDouble(num1);
		Double b = Double.parseDouble(num2);
		Double c = Double.parseDouble(num3);
		Double d = Double.parseDouble(num4);
		Double e = Double.parseDouble(num5);
		Double numMayor, numMenor;
		
		
		
	if (a > b && a > c && a > d && a > e) {
            numMayor = a;
            RespuestaNumeros.setNumMayor("El numero mayor es:" + numMayor);
            
        } else if (b > a && b > c && b > d && b > e) {
            numMayor = b;
            RespuestaNumeros.setNumMayor("El numero mayor es:" + numMayor);
            
        } else if (c > a && c > b && c > d && c > e) {
            numMayor = c;
            RespuestaNumeros.setNumMayor("El numero mayor es:" + numMayor);
            
        } else if (d > a && d > b && d > c && d > e) {
            numMayor = d;
            RespuestaNumeros.setNumMayor("El numero mayor es:" + numMayor);
            
        } else if (e > a && d > b && d > c && d > e) {
            numMayor = d;
            RespuestaNumeros.setNumMayor("El numero mayor es:" + numMayor);
        }
		
	
	
	if (a < b && a < c && a < d && a < e) {
        numMenor = a;
        RespuestaNumeros.setNumMenor("El numero menor es:" + numMenor);
        
    	} else if (b < a && b < c && b < d && b < e) {
    	numMenor = b;
    	RespuestaNumeros.setNumMenor("El numero menor es:" + numMenor);
    	
    	} else if (c < a && c < b && c < d && c < e) {
    	numMenor = c;
    	RespuestaNumeros.setNumMenor("El numero menor es:" + numMenor);
        
    	} else if (d < a && d < b && d < c && d < e) {
    	numMenor = d;
    	RespuestaNumeros.setNumMenor("El numero menor es:" + numMenor);
        
    	} else if (e < a && e < b && e < c && e < d) {
    	numMenor = e;
    	RespuestaNumeros.setNumMenor("El numero menor es:" + numMenor);
       
    	}
	
		double []f = {a,b,c,d,e};
		Arrays.sort(f);
		RespuestaNumeros.setNumLista("La lista es" + Arrays.toString(f));
		
		exchange.getIn().setBody(RespuestaNumeros);
		
		}
	
		public void Carros (Exchange exchange) {
			
//		ConsultarArray consultarArray = new ConsultarArray();
//		String carros = consultarArray.getCars().get(0);
//		System.out.println(carros);
		
		RespuestaArray RespuestaArray = new RespuestaArray();
		String carro1=(String) exchange.getProperty("carro1");
		
		carro1 =carro1.toLowerCase();
		
		RespuestaArray.setPrecio("100.000.000");
		RespuestaArray.setCarro(carro1);
		
		exchange.getIn().setBody(RespuestaArray);
		
		
		}	
		
		
}
	

