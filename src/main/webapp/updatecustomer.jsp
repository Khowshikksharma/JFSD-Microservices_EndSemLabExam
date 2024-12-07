<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Update Customer</title>
    <style>
        body {
            background-color: #1c1c1e;
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            color: #f7f7f7;
        }
        h3 {
            text-align: center;
            font-size: 36px;
            color: #f7bc08;
            margin-top: 20px;
        }
        .form-container {
            width: 80%;
            max-width: 800px;
            margin: 40px auto;
            padding: 30px;
            background-color: #28282b;
            border-radius: 15px;
            border: 1px solid #3a3a3c;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        }
        .form-container input[type="text"],
        .form-container input[type="email"] {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            box-sizing: border-box;
            background-color: #3a3a3c;
            border: 2px solid #4a4a4e;
            border-radius: 8px;
            color: #f7f7f7;
            font-size: 16px;
            transition: border 0.3s ease, background-color 0.3s ease;
        }
        .form-container input[type="submit"],
        .form-container input[type="reset"] {
            padding: 12px 25px;
            border: none;
            border-radius: 5px;
            background-color: #f7bc08;
            color: #1c1c1e;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }
        .form-container .button-container {
            text-align: center;
            margin-top: 30px;
        }
    </style>
</head>
<body>

    <h3>Update Customer Details</h3>
    <div class="form-container">
        <form method="post" action="updatecustomer">
            <table>
                <tr>
                    <td><label for="cid">Customer ID:</label></td>
                    <td><input type="text" id="cid" name="cid" readonly value="${customer.id}" required /></td>
                </tr>
                <tr>
                    <td><label for="cname">Name:</label></td>
                    <td><input type="text" id="cname" name="cname" value="${customer.name}" required /></td>
                </tr>
                <tr>
                    <td><label for="caddress">Address:</label></td>
                    <td><input type="text" id="caddress" name="caddress" value="${customer.address}" required /></td>
                </tr>
               
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Update" />
                        <input type="reset" value="Clear" />
                    </td>
                </tr>
            </table>
        </form>
    </div>

</body>
</html>
