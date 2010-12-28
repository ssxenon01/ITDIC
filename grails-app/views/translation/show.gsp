
<%@ page import="mn.xenon.Translation" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'translation.label', default: 'Translation')}" />
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
                            <td valign="top" class="name"><g:message code="translation.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: translationInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="translation.word.label" default="Word" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: translationInstance, field: "word")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="translation.addedDate.label" default="Added Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${translationInstance?.addedDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="translation.alsoKnownAs.label" default="Also Known As" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: translationInstance, field: "alsoKnownAs")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="translation.comments.label" default="Comments" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${translationInstance.comments}" var="c">
                                    <li><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="translation.definition.label" default="Definition" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: translationInstance, field: "definition")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="translation.formalDefinition.label" default="Formal Definition" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: translationInstance, field: "formalDefinition")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="translation.generalization.label" default="Generalization" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: translationInstance, field: "generalization")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="translation.moreInformation.label" default="More Information" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: translationInstance, field: "moreInformation")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="translation.rootWord.label" default="Root Word" /></td>
                            
                            <td valign="top" class="value"><g:link controller="rootWord" action="show" id="${translationInstance?.rootWord?.id}">${translationInstance?.rootWord?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="translation.specialization.label" default="Specialization" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: translationInstance, field: "specialization")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="translation.user.label" default="User" /></td>
                            
                            <td valign="top" class="value"><g:link controller="user" action="show" id="${translationInstance?.user?.id}">${translationInstance?.user?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="translation.vote.label" default="Vote" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${translationInstance.vote}" var="v">
                                    <li><g:link controller="vote" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${translationInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
