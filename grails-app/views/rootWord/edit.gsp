<%@ page import="mn.xenon.RootWord" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="layout" content="main"/>
  <g:set var="entityName" value="${message(code: 'rootWord.label', default: 'RootWord')}"/>
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
  <g:hasErrors bean="${rootWordInstance}">
    <div class="errors">
      <g:renderErrors bean="${rootWordInstance}" as="list"/>
    </div>
  </g:hasErrors>
  <g:form method="post">
    <g:hiddenField name="id" value="${rootWordInstance?.id}"/>
    <g:hiddenField name="version" value="${rootWordInstance?.version}"/>
    <div class="dialog">
      <table>
        <tbody>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="word"><g:message code="rootWord.word.label" default="Word"/></label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: rootWordInstance, field: 'word', 'errors')}">
            <g:textField name="word" value="${rootWordInstance?.word}"/>
          </td>
        </tr>



        <tr class="prop">
          <td valign="top" class="name">
            <label for="alsoKnownAs"><g:message code="rootWord.alsoKnownAs.label" default="Also Known As"/></label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: rootWordInstance, field: 'alsoKnownAs', 'errors')}">
            <g:textArea cols="4" rows="25" name="alsoKnownAs" value="${rootWordInstance?.alsoKnownAs}"/>
          </td>
        </tr>



        <tr class="prop">
          <td valign="top" class="name">
            <label for="definition"><g:message code="rootWord.definition.label" default="Definition"/></label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: rootWordInstance, field: 'definition', 'errors')}">
            <g:textArea cols="4" rows="25" name="definition" value="${rootWordInstance?.definition}"/>
          </td>
        </tr>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="formalDefinition"><g:message code="rootWord.formalDefinition.label" default="Formal Definition"/></label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: rootWordInstance, field: 'formalDefinition', 'errors')}">
            <g:textArea cols="4" rows="25" name="formalDefinition" value="${rootWordInstance?.formalDefinition}"/>
          </td>
        </tr>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="generalization"><g:message code="rootWord.generalization.label" default="Generalization"/></label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: rootWordInstance, field: 'generalization', 'errors')}">
            <g:textArea cols="4" rows="25" name="generalization" value="${rootWordInstance?.generalization}" />
          </td>
        </tr>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="moreInformation"><g:message code="rootWord.moreInformation.label" default="More Information"/></label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: rootWordInstance, field: 'moreInformation', 'errors')}">
            <g:textArea cols="4" rows="25" name="moreInformation" value="${rootWordInstance?.moreInformation}"/>
          </td>
        </tr>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="seeAlso"><g:message code="rootWord.seeAlso.label" default="See Also"/></label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: rootWordInstance, field: 'seeAlso', 'errors')}">
            <g:textArea cols="4" rows="25" name="seeAlso" value="${rootWordInstance?.seeAlso}"/>
          </td>
        </tr>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="specialization"><g:message code="rootWord.specialization.label" default="Specialization"/></label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: rootWordInstance, field: 'specialization', 'errors')}">
            <g:textArea cols="4" rows="25" name="specialization" value="${rootWordInstance?.specialization}"/>
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
