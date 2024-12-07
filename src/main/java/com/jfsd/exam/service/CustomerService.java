package com.jfsd.exam.service;

import com.jfsd.exam.models.Customer;

public interface CustomerService {

    public Customer saveCustomer(Customer customer);

    public Customer updateCustomer(int id, String name, String address);
}
