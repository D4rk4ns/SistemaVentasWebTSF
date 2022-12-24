
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Sales</title>
</head>

<body>
    <div class="d-flex">
        <div class="col-sm-8">
            <form action="SaleController?menu=sale&accion=listSale" method="POST" style="display: flex; margin-bottom: 15px;"
                class="form-inline">
                <input type="search" name="idtext" class="form-control" style="width: 500px;">
                <button type="submit" name="accion" value="listSale" class="btn btn btn-outline-info ml-2"><Span><i
                            class="fas fa-search"></i></Span>Buscar</button>
            </form>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Cliente</th>
                        <th>Empleado</th>
                        <th>Número de serie</th>
                        <th>Fecha de Venta</th>
                        <th>Precio Total</th>
                        <th>Estado</th>
                        <th>Detalles</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="sale" items="${sale}">
                        <tr>
                            <td>${sale.getId_Sales()}</td>
                            <td>${sale.getClient()}</td>
                            <td>${sale.getEmployee()}</td>
                            <td>${sale.getSerial_Number()}</td>
                            <td>${sale.getSale_Date()}</td>
                            <td>${sale.getTotal_Price()}</td>
                            <td>${sale.getState()}</td>
                            <td>${sale.getDetails()}</td>
                            <td>
                                <form action="SaleController?menu=sale&accion=listSale" method="POST">
                                    <input type="hidden" name="id" value="${sale.getId_Sales()}">
                                    <button type="submit" name="accion" value="editar" class="btn btn-warning"
                                        style="color: black;"><Span><i class="fas fa-edit"></i></Span>Editar</button>
                                    <button type="submit" name="accion" value="eliminar" class="btn btn-danger"
                                        style="color: black;"><Span><i class="fas fa-trash-alt"></i>Eliminar</Span></button>
                                </form>
                            </td>
                        </tr>
                        </c:forEach>
                </tbody>
            </table>
        </div>

    </div>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>

</html>