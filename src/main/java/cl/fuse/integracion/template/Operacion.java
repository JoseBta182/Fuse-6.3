package cl.fuse.integracion.template;

import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apache.camel.Body;


@Path("/")

public interface Operacion {

@POST
@Path("/consultarCCNombre")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public void consultarCCNombre(@Body ConsultarCedulaNombre body);



@POST
@Path("/consultarNombre")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public void consultarNombre(@Body ConsultarNombre body);



}