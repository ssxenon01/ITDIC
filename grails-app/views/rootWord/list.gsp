
<%@ page import="mn.xenon.RootWord" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'rootWord.label', default: 'RootWord')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'rootWord.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="word" title="${message(code: 'rootWord.word.label', default: 'Word')}" />
                            <g:sortableColumn property="definition" title="${message(code: 'rootWord.definition.label', default: 'Definition')}" />

                            <g:sortableColumn property="alsoKnownAs" title="${message(code: 'rootWord.alsoKnownAs.label', default: 'Also Known As')}" />


                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${rootWordInstanceList}" status="i" var="rootWordInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${rootWordInstance.id}">${fieldValue(bean: rootWordInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: rootWordInstance, field: "word")}</td>


                            <td>${fieldValue(bean: rootWordInstance, field: "definition")}</td>
                            <td>${fieldValue(bean: rootWordInstance, field: "alsoKnownAs")}</td>

                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${rootWordInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
