<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page isELIgnored="false" %> <%-- Bắt buộc phải có dòng này để tránh bị ẩn chữ trên Tomcat 10+ --%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Bài 1: Truyền dữ liệu sang JSP</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; line-height: 1.6; }
        h1 { color: #2c3e50; }
        h2 { color: #7f8c8d; font-weight: normal; }
        hr { border: 0; height: 1px; background: #ccc; margin: 20px 0; }
    </style>
</head>
<body>

<h1>${message}</h1>
<h2>${now}</h2>

<hr>

<h3>Dữ liệu tải trực tiếp từ Request:</h3>
<p><strong>Message:</strong> <% out.print(request.getAttribute("message")); %></p>
<p><strong>Thời gian:</strong> <% out.print(request.getAttribute("now")); %></p>

</body>
</html>