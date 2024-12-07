package com.jfsd.exam.service;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jfsd.exam.models.Customer;
import com.jfsd.exam.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService{
    @Autowired
    private CustomerRepository customerRepository;

    public Customer saveCustomer(Customer customer) {
        return customerRepository.save(customer);
    }

    public Customer updateCustomer(int id, String name, String address) {
        Optional<Customer> optionalCustomer = customerRepository.findById(id);
        if (optionalCustomer.isPresent()) {
            Customer customer = optionalCustomer.get();
            customer.setName(name);
            customer.setAddress(address);
            return customerRepository.save(customer);
        } else {
            throw new RuntimeException("Customer with ID " + id + " not found");
        }
    }
}
