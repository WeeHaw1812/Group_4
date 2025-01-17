<%-- 
    Document   : OrderList
    Created on : Oct 17, 2023, 4:39:35 PM
    Author     : HP
--%>

<%@page import="Models.Order"%>
<%@page import="DAOs.AdminDAOs"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Navbar với Bootstrap</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="<%out.print(request.getContextPath());%>/public/assets/css/adminOrderList.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="node_modules/bootstrap-social/bootstrap-social.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    </head>
    <body>

        <div class="container-fluid myheader">
            <div class="row">
                <div class="col-md-2">
                    <div class="row mt-2">
                        <div class="col-md-3 ">
                            <img src="<%out.print(request.getContextPath());%>/public/assets/imgs/Logo.png" alt="" style="height: 50px; width: 50px;" />
                        </div>
                        <div class="col-md-9 py-3">ADMIN</div>
                    </div>
                </div>

                <div class="col-md-8 mt-1 shope-inform">
                    <div class="row">
                        <div class="col-md-3 py-3 inform" style="border-radius: 10px; border: 1px solid black;">PRODUCT</div>
                        <div class="col-md-3 py-3 inform" style="border-radius: 10px; border: 1px solid black;">PRODUCT</div>
                        <div class="col-md-3 py-3 inform" style="border-radius: 10px; border: 1px solid black;">PRODUCT</div>
                        <div class="col-md-3 py-3 inform" style="border-radius: 10px; border: 1px solid black;">PRODUCT</div>
                    </div>
                </div>

                <div class="col-md-2">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-md-4 py-1">
                                    <i class="fa-solid fa-user fa-xl mt-md-4"></i>
                                </div>
                                <div class="col-md-8 py-3">
                                    <a href="link-to-profile-page">Name</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-md-4 py-1">
                                    <i class="fa-solid fa-right-from-bracket fa-xl mt-md-4"></i>
                                </div>
                                <div class="col-md-8 py-3">
                                    <a href="link-to-logout-page">Logout</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-2 list-group" style="background-color: grey; width: 100%; height: 520px;">
                    <div class="row row-cols-1 px-md-4">
                        <div class="row-3">
                            <div class="col-md-3 home">
                                <i class="fa-solid fa-house fa-xl" style="padding-top: 18px;"></i>
                            </div>
                            <div class="col-md-9 py-2">
                                <a href="link-to-home-page">Home</a>
                            </div>
                        </div>
                        <div class="row-3">
                            <div class="col-md-3 user">
                                <i class="fa-solid fa-user fa-xl" style="padding-top: 18px; padding-left: 3px;"></i>
                            </div>
                            <div class="col-md-9 py-2">
                                <a href="link-to-user-list">User List</a>
                            </div>
                        </div>
                        <div class="row-3">
                            <div class="col-md-3 order">
                                <i class="fa-solid fa-cart-shopping fa-xl" style="padding-top: 18px;"></i>
                            </div>
                            <div class="col-md-9 py-2">
                                <a href="link-to-order-list">Order List</a>
                            </div>
                        </div>
                        <div class="row-3">
                            <div class="col-md-3 import">
                                <i class="fa-solid fa-industry fa-xl" style="padding-top: 18px; padding-left: 2px;"></i>
                            </div class="import">
                            <div class="col-md-9 py-2">
                                <a href="link-to-import-source">Import Source</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-10">
                    <div class="update-form" style="padding: 100px">
                        <h1>Update Order</h1>
                        <%
                            Order od = (Order) session.getAttribute("orderInformation");
                        %>

                        <form method="post" action="AdminController">
                            <div class="mt-4">ID<input class="ml-2" readonly="true" type="text" name="ID" value="<%= od.getOrderID()%>" id=""></div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="mt-4">Date<input class="ml-5" style="width: 200px; height: 30px;" type="date"
                                                                 name="Date" value="<%= od.getDate()%>" id=""></div>
                                    <div class="mt-4">Address<input class="ml-4" style="width: 200px; height: 30px;" type="text"
                                                                    name="Address" value="<%= od.getAddress()%>" id=""></div>
                                    <div class="mt-4">Phone<input style="margin-left: 36px;width: 200px; height: 30px;" type="text"
                                                                  name="Phone" value="<%= od.getPhone()%>" id=""></div>
                                </div>
                                <div class="col-md-6">
                                    <div class="mt-4">Product<input style="margin-left: 41px; width: 200px; height: 30px;"
                                                                    type="text" name="Product" value="<%= od.getProduct()%>" id=""></div>
                                    <div class="mt-4">Price<input style="margin-left: 63px; width: 200px; height: 30px;" type="text"
                                                                  name="Price" value="<%= od.getPrice()%>" id=""></div>
                                    <div class="mt-4">DeliveryDate<input class="ml-2" style="width: 200px; height: 30px;"
                                                                         type="date" name="DeliveryDate" value="<%= od.getDeliveryDate()%>" id=""></div>
                                    <div class="mt-4">
                                        Status
                                        <select style="margin-left: 51px;" name="Status" value="<%= od.getStatus()%>" id="status">
                                            <option value="select">Select Status</option>
                                            <option value="wait">Wait</option>
                                            <option value="complete">Complete</option>
                                        </select>
                                    </div>
                                    <div class="mt-4" style="text-align: right; margin-right: 80px"> <input type="submit" value="UpdateOrder" name="btnUpdateOrder"></div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="<%out.print(request.getContextPath());%>/public/assets/js/adminOrderList.js"></script>
</body>
</html>
