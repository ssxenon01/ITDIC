
<%@ page import="mn.xenon.Translation" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'translation.label', default: 'Translation')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'translation.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="word" title="${message(code: 'translation.word.label', default: 'Word')}" />
                        
                            <g:sortableColumn property="addedDate" title="${message(code: 'translation.addedDate.label', default: 'Added Date')}" />
                        
                            <g:sortableColumn property="alsoKnownAs" title="${message(code: 'translation.alsoKnownAs.label', default: 'Also Known As')}" />
                        
                            <g:sortableColumn property="definition" title="${message(code: 'translation.definition.label', default: 'Definition')}" />
                        
                            <g:sortableColumn property="formalDefinition" title="${message(code: 'translation.formalDefinition.label', default: 'Formal Definition')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${translationInstanceList}" status="i" var="translationInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${translationInstance.id}">${fieldValue(bean: translationInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: translationInstance, field: "word")}</td>
                        
                            <td><g:formatDate date="${translationInstance.addedDate}" /></td>
                        
                            <td>${fieldValue(bean: translationInstance, field: "alsoKnownAs")}</td>
                        
                            <td>${fieldValue(bean: translationInstance, field: "definition")}</td>
                        
                            <td>${fieldValue(bean: translationInstance, field: "formalDefinition")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${translationInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
