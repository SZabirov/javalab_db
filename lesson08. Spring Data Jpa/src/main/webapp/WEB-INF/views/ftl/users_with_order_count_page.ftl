<html>
<head>

</head>
<body>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Orders count</th>
    </tr>
<#list usersWithCount as userWithCount>
     <tr>
         <td>${userWithCount.getUser().id}</td>
         <td>${userWithCount.getUser().name}</td>
         <td>${userWithCount.getCount()}</td>
     </tr>
</#list>
</table>
</body>
</html>