<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>$Title$</title>
  <style>
    th {
      background-color: chartreuse;
      height: 50px;
      width: 128px;
    }
    td {
      text-align: center;
      border: 1px;
      border-style: solid;
      width: 150px;
      border-color: green;
    }
    tr {
      text-align: center;
    }
    input {
      border-style: none;
    }
    fieldset {
      background-color: lightcyan;
    }
    legend {
      color: green;;
    }
    button {
      width: 100px;
      background-color: cadetblue;
      height: 35px;
      color: lightcyan;
    }
  </style>
</head>
<body>
<form action="product" method="get">
  <button type="submit">Hiển thị danh sách khách hàng</button>
</form>
<%
  response.setContentType("text/html;charset=UTF-8");
  request.setCharacterEncoding("utf-8");
%>
<table>
  <thead>
  <tr>
    <th>
      Tên
    </th>
    <th>
      Ngày sinh
    </th>
    <th>
      Địa chỉ
    </th>
    <th>
      Ảnh
    </th>
  </tr>
  </thead>
  <tbody>
  <c:forEach items="${Product}" var="product">
    <tr>
      <td>
          ${product.name}
      </td>
      <td>
          ${product.birthDay}
      </td>
      <td>
          ${product.address}
      </td>
      <td>
        <img src="${product.img}" sizes="20" width='60' height='60'>
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>
</body>
</html>