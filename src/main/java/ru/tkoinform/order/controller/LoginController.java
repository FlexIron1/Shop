package ru.tkoinform.order.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ru.tkoinform.order.constant.Role;
import ru.tkoinform.order.entity.User;

@Controller
public class LoginController {


    @GetMapping("/")
    public String getLoginPage(Model model,
                               @AuthenticationPrincipal User user) {
        String username = user.getUsername();
        if (username == null) {
            return "redirect:/login";
        }
        model.addAttribute("username", username);
        if (user.getRoles().contains(Role.ADMIN)) {
            return "redirect:/addProduct";
        } else if (user.getRoles().contains(Role.USER)) {
            return "redirect:/productList";
        } else {
            return "redirect:/orderList";
        }
    }

}
