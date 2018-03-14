<%@ page import="java.util.ArrayList" %>
<%@ page import="com.lxk.model.Goodsinsale" %><%--
  Created by IntelliJ IDEA.
  User: KitaharaHaruki
  Date: 2018/1/31
  Time: 12:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8" />
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- 可选的Bootstrap主题文件（一般不使用） -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="col-md-10">
    <!-- 载入左侧菜单指向的jsp（或html等）页面内容 -->
    <div id="content">
        <table class="table">
            <th>产品编号</th><th>产品名</th><th>剩余数量</th><th>生产地址</th><th>原价</th><th>折后价</th><th>操作</th>
            <%ArrayList mylist=(ArrayList) request.getAttribute("arraylist");
            %>
            <% if(mylist.size()!=0){for (java.lang.Object cus:
                    mylist) {
                cus=(Goodsinsale)cus;

            %>
            <tr>
                <td >
                    <%=((Goodsinsale) cus).getId()%>
                </td>
                <td >
                    <%=((Goodsinsale) cus).getName()%>
                </td>
                <td>
                    <%=((Goodsinsale) cus).getNumber()%>
                </td>
                <td>
                    <%=(((Goodsinsale) cus).getProductaddress())%>
                </td>
                <td>
                    <%=((Goodsinsale) cus).getPrice()%>
                </td>
                <td >
                    <%=((Goodsinsale) cus).getCountprice()%>
                </td>
                <td>
                    <button type="button" class="btn btn-primary " data-toggle="modal"
                            data-target="#myModal"onclick="setm(<%=((Goodsinsale) cus).getId()%>)">
                        查看详情</button>
                    <%--setm(<%=((Goodsinsale) cus).getId()%>,<%=((Goodsinsale) cus).getName()%>,<%=((Goodsinsale) cus).getCountprice()%>)--%>
                </td>
            </tr>
            <%}
            }%>
        </table>
    </div>
</div>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <form action="/Shopxingqi" method="post">
            <div class="modal-content">

                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myModalLabel">跳转提示</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" value="" id="hiddenid" name="cid">
                    <table class="table">
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
                    <input type="submit"  class="btn btn-primary" value="跳转"
                    >
                </div>
            </div>
        </form>
    </div>
</div>

</body>
</html>
