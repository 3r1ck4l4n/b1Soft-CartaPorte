package mx.com.b1soft.semillerodiciembre.cartaporte.b1projectcartaporte;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
    @RequestMapping("/")
    public String firstRoute(){

        System.out.println("AQUI*************************");
        return "home";

    }

    @RequestMapping("/login")
    public String loginRoute(){

        System.out.println("AQUI*************************");
        return "login";

    }

    @RequestMapping("/register")
    public String registerRoute(){

        System.out.println("AQUI*************************");
        return "registro";

    }

    @RequestMapping("/validarFormulario")
    public String validarRoute(){

        System.out.println("AQUI*************************");
        return "validar";

    }
    
    @RequestMapping("/RecuperarContraseña")
    public String recuverRoute(){

        System.out.println("AQUI*************************");
        return "recuver";

    }
    
    @RequestMapping("/CambiarContraseña")
    public String ChangePasswordRoute(){

        System.out.println("AQUI*************************");
        return "password";

    }
}
