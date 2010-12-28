
<%@ page import="mn.xenon.RootWord" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'rootWord.label', default: 'RootWord')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="rootWord.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: rootWordInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="rootWord.word.label" default="Word" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: rootWordInstance, field: "word")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="rootWord.addedDate.label" default="Added Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${rootWordInstance?.addedDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="rootWord.alsoKnownAs.label" default="Also Known As" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: rootWordInstance, field: "alsoKnownAs")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="rootWord.createdUser.label" default="Created User" /></td>
                            
                            <td valign="top" class="value"><g:link controller="user" action="show" id="${rootWordInstance?.createdUser?.id}">${rootWordInstance?.createdUser?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="rootWord.definition.label" default="Definition" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: rootWordInstance, field: "definition")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="rootWord.formalDefinition.label" default="Formal Definition" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: rootWordInstance, field: "formalDefinition")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="rootWord.generalization.label" default="Generalization" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: rootWordInstance, field: "generalization")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="rootWord.moreInformation.label" default="More Information" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: rootWordInstance, field: "moreInformation")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="rootWord.seeAlso.label" default="See Also" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: rootWordInstance, field: "seeAlso")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="rootWord.specialization.label" default="Specialization" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: rootWordInstance, field: "specialization")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="rootWord.translations.label" default="Translations" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${rootWordInstance.translations}" var="t">
                                    <li><g:link controller="translation" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="rootWord.updatedDate.label" default="Updated Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${rootWordInstance?.updatedDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="rootWord.updatedUser.label" default="Updated User" /></td>
                            
                            <td valign="top" class="value"><g:link controller="user" action="show" id="${rootWordInstance?.updatedUser?.id}">${rootWordInstance?.updatedUser?.encodeAsHTML()}</g:link></td>
                            
                        </tr>

                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${rootWordInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
