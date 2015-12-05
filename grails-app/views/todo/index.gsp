<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
	<meta name="layout" content="main"/>
	<asset:stylesheet src="todo.scc" />
    <title>TODO</title>
  </head>
  <body>
    <div class="container">
      <div class="page-header">
        <h1><g:message code="default.list.label" args="${[message(code: 'todo.label')]}" /></h1>
      </div>
      <g:hasErrors bean="${todo}">
        <g:renderErrors bean="${todo}" />
      </g:hasErrors>
      <div class="left-box">
        <g:form action="save" style="margin-bottom: 10px;">
          <div class="input-group">
            <g:textField class="form-control" name="content" value="${todo?.content}" />
            <span class="input-group-btn">
              <g:submitButton class="btn btn-success" name="create" value="${message(code: 'default.button.create.label')}" />
            </span>
          </div>
        </g:form>
        <g:form action="index">
          <div class="input-group">
            <g:textField class="form-control" name="keyword" value="${params.keyword}" />
            <span class="input-group-btn">
              <g:submitButton class="btn btn-default" name="filter" value="絞り込み" />
            </span>
          </div>
        </g:form>
      </div>
      <ul class="list-group right-box">
        <g:each in="${todos}" var="todo">
          <li class="list-group-item">
            ${todo.content}
            <g:form class="pull-right" action="delete" id="${todo.id}">
              <g:submitButton class="btn btn-danger btn-xs" name="delete" value="${message(code: 'default.button.delete.label')}" />
            </g:form>
          </li>
        </g:each>
      </ul>
    </div>
  </body>
</html>