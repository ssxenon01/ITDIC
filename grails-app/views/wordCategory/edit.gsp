

<%@ page import="mn.xenon.WordCategory" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'wordCategory.label', default: 'WordCategory')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${wordCategoryInstance}">
            <div class="errors">
                <g:renderErrors bean="${wordCategoryInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${wordCategoryInstance?.id}" />
                <g:hiddenField name="version" value="${wordCategoryInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="categoryName"><g:message code="wordCategory.categoryName.label" default="Category Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: wordCategoryInstance, field: 'categoryName', 'errors')}">
                                    <g:textField name="categoryName" value="${wordCategoryInstance?.categoryName}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="words"><g:message code="wordCategory.words.label" default="Words" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: wordCategoryInstance, field: 'words', 'errors')}">
                                    
<ul>
<g:each in="${wordCategoryInstance?.words?}" var="w">
    <li><g:link controller="rootWord" action="show" id="${w.id}">${w?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="rootWord" action="create" params="['wordCategory.id': wordCategoryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'rootWord.label', default: 'RootWord')])}</g:link>

                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
