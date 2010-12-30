<html>
<head>
  <title>Мэдээлэл технологийн тайлбар толь</title>
  <meta name="layout" content="main"/>

</head>

<body>

<div id="controllerList" class="dialog">
  <h2>Available Controllers:</h2>
  <ul>
    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
      <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
    </g:each>
  </ul>
</div>
</body>
</html>
