package mx.com.b1soft.semillerodiciembre.cartaporte.b1projectcartaporte;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
    @RequestMapping("/")
    public String firstRoute(){

        System.out.println("AQUI*************************");
        return "login";

    }

    @RequestMapping("/login")
    public String loginRoute(){

        System.out.println("AQUI*************************");
        return "login";

    }
    
    @RequestMapping("/guia")
    public String guiaRoute(){

        System.out.println("AQUI*************************");
        return "guia";
    }

    @RequestMapping("/register")
    public String registerRoute(){

        System.out.println("AQUI*************************");
        return "registro";

    }

    @RequestMapping("/validate")
    public String validarRoute(){

        System.out.println("AQUI*************************");
        return "validar";

    }
    
    @RequestMapping("/recuverpassword")
    public String recuverRoute(){

        System.out.println("AQUI*************************");
        return "recuver";

    }
    
    @RequestMapping("/changepassword")
    public String ChangePasswordRoute(){

        System.out.println("AQUI*************************");
        return "password";

    }
}
