<%@ page import="mn.xenon.Translation" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="layout" content="main"/>
  <g:set var="entityName" value="${message(code: 'translation.label', default: 'Translation')}"/>
  <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>
<body>
<div class="nav">
  <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
  <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></span>
  <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></span>
</div>
<div class="body">
  <h1><g:message code="default.edit.label" args="[entityName]"/></h1>
  <g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
  </g:if>
  <g:hasErrors bean="${translationInstance}">
    <div class="errors">
      <g:renderErrors bean="${translationInstance}" as="list"/>
    </div>
  </g:hasErrors>
  <g:form method="post">
    <g:hiddenField name="id" value="${translationInstance?.id}"/>
    <g:hiddenField name="version" value="${translationInstance?.version}"/>
    <div class="dialog">
      <table>
        <tbody>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="word"><g:message code="translation.word.label" default="Word"/></label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: translationInstance, field: 'word', 'errors')}">
            <g:textField name="word" value="${translationInstance?.word}"/>
          </td>
        </tr>


        <tr class="prop">
          <td valign="top" class="name">
            <label for="alsoKnownAs"><g:message code="translation.alsoKnownAs.label" default="Also Known As"/></label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: translationInstance, field: 'alsoKnownAs', 'errors')}">
            <g:textField name="alsoKnownAs" value="${translationInstance?.alsoKnownAs}"/>
          </td>
        </tr>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="definition"><g:message code="translation.definition.label" default="Definition"/></label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: translationInstance, field: 'definition', 'errors')}">
            <g:textField name="definition" value="${translationInstance?.definition}"/>
          </td>
        </tr>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="formalDefinition"><g:message code="translation.formalDefinition.label" default="Formal Definition"/></label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: translationInstance, field: 'formalDefinition', 'errors')}">
            <g:textField name="formalDefinition" value="${translationInstance?.formalDefinition}"/>
          </td>
        </tr>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="generalization"><g:message code="translation.generalization.label" default="Generalization"/></label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: translationInstance, field: 'generalization', 'errors')}">
            <g:textField name="generalization" value="${translationInstance?.generalization}"/>
          </td>
        </tr>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="moreInformation"><g:message code="translation.moreInformation.label" default="More Information"/></label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: translationInstance, field: 'moreInformation', 'errors')}">
            <g:textField name="moreInformation" value="${translationInstance?.moreInformation}"/>
          </td>
        </tr>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="rootWord.id"><g:message code="translation.rootWord.label" default="Root Word"/></label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: translationInstance, field: 'rootWord', 'errors')}">
            <g:select name="rootWord.id" from="${mn.xenon.RootWord.list()}" optionKey="id" value="${translationInstance?.rootWord?.id}"/>
          </td>
        </tr>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="specialization"><g:message code="translation.specialization.label" default="Specialization"/></label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: translationInstance, field: 'specialization', 'errors')}">
            <g:textField name="specialization" value="${translationInstance?.specialization}"/>
          </td>
        </tr>



        </tbody>
      </table>
    </div>
    <div class="buttons">
      <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}"/></span>
      <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/></span>
    </div>
  </g:form>
</div>
</body>
</html>
