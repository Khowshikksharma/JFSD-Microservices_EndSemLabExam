package com.jfsd.exam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.jfsd.exam.models.Customer;
import com.jfsd.exam.service.CustomerService;

@RestController
@RequestMapping("/api/customers")
public class CustomerController {
    @Autowired
    private CustomerService customerService;

    @PostMapping
    public Customer addCustomer(@RequestBody Customer customer) {
        return customerService.saveCustomer(customer);
    }

    @PostMapping("/updatecustomer")
    public String updateCustomer(@RequestParam int cid, @RequestParam String cname, @RequestParam String caddress, Model model) {
        Customer updatedCustomer = customerService.updateCustomer(cid, cname, caddress);
        model.addAttribute("customer", updatedCustomer);
        return "customer-updated-success";
    }

}
