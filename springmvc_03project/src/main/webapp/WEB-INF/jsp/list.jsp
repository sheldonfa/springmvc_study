<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>查询商品列表</title>
</head>
<body>

<form action="${pageContext.request.contextPath }/deleteItem.do"
      method="post">
    查询条件：
    <table width="100%" border=1>
        <tr>
            <td>
                商品名称：<input type="text" name="item.name" value=""/>
                <input type="submit" value="查询" />
            </td>
        </tr>
    </table>
    商品列表：<input type="submit" value="批量删除">
    <table width="100%" border=1>
        <tr>
            <td>商品id</td>
            <td>商品名称</td>
            <td>商品价格</td>
            <td>生产日期</td>
            <td>商品描述</td>
            <td>操作</td>
        </tr>
            <tr>
                <td><input type="checkbox" name="ids" value="1"></td>
                <td>笔记本</td>
                <td>8000</td>
                <td>2018-07-15 17:22:30</td>
                <td>国产的质量越来越好了，放心使用</td>
                <td>
                    <a href="${pageContext.request.contextPath }/queryItemById.do?id=1">修改</a>
                </td>
            </tr>
            <tr>
                <td><input type="checkbox" name="ids" value="2"></td>
                <td>笔记本</td>
                <td>台式机</td>
                <td>5000</td>
                <td>2018-07-15 17:22:30</td>
                <td>国产的质量越来越好了，放心使用</td>
                <td>
                    <a href="${pageContext.request.contextPath }/queryItemById.do?id=2">修改</a>
                </td>
            </tr>

    </table>
</form>

<form action="${pageContext.request.contextPath }/deleteItem2.do"
      method="post">
    查询条件：
    <table width="100%" border=1>
        <tr>
            <td>
                商品名称：<input type="text" name="item.name" value=""/>
                <input type="submit" value="查询" />
            </td>
        </tr>
    </table>
    商品列表：<input type="submit" value="批量删除list方式">
    <table width="100%" border=1>
        <tr>
            <td>商品id</td>
            <td>商品名称</td>
            <td>商品价格</td>
            <td>生产日期</td>
            <td>商品描述</td>
            <td>操作</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="ids" value="1"></td>
            <td>笔记本</td>
            <td>8000</td>
            <td>2018-07-15 17:22:30</td>
            <td>国产的质量越来越好了，放心使用</td>
            <td>
                <a href="${pageContext.request.contextPath }/queryItemById.do?id=1">修改</a>
            </td>
        </tr>
        <tr>
            <td><input type="checkbox" name="ids" value="2"></td>
            <td>笔记本</td>
            <td>台式机</td>
            <td>5000</td>
            <td>2018-07-15 17:22:30</td>
            <td>国产的质量越来越好了，放心使用</td>
            <td>
                <a href="${pageContext.request.contextPath }/queryItemById.do?id=2">修改</a>
            </td>
        </tr>

    </table>
</form>

<form action="${pageContext.request.contextPath }/editItem.do"
      method="post">
    查询条件：
    <table width="100%" border=1>
        <tr>
            <td>
                商品名称：<input type="text" name="item.name" value=""/>
                <input type="submit" value="查询" />
            </td>
        </tr>
    </table>
    商品列表：<input type="submit" value="批量修改">
    <table width="100%" border=1>
        <tr>
            <td>商品id</td>
            <td>商品名称</td>
            <td>商品价格</td>
            <td>生产日期</td>
            <td>商品描述</td>
            <td>操作</td>
        </tr>
        <tr>
            <td><input type="checkbox" name="ids" value="1"></td>
            <td><input name="items[0].name" value="笔记本"></td>
            <td><input name="items[0].price" value="8000"></td>
            <td><input name="items[0].createtime" value="2018-07-15 17:22:30"></td>
            <td><input name="items[0].detail" value="国产的质量越来越好了，放心使用"></td>
            <td>
                <a href="${pageContext.request.contextPath }/queryItemById.do?id=1">修改</a>
            </td>
        </tr>
        <tr>
            <td><input type="checkbox" name="ids" value="2"></td>
            <td><input name="items[1].name" value="笔记本"></td>
            <td><input name="items[1].price" value="8000"></td>
            <td><input name="items[1].createtime" value="2018-07-15 17:22:30"></td>
            <td><input name="items[1].detail" value="国产的质量越来越好了，放心使用"></td>
            <td>
                <a href="${pageContext.request.contextPath }/queryItemById.do?id=2">修改</a>
            </td>
        </tr>

    </table>
</form>

</body>

</html>
