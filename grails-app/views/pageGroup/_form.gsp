<%@ page import="ru.avtopark.PageGroup" %>



<div class="fieldcontain ${hasErrors(bean: pageGroupInstance, field: 'pages', 'error')} ">
	<label for="pages">
		<g:message code="pageGroup.pages.label" default="Pages" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${pageGroupInstance?.pages?}" var="p">
    <li><g:link controller="customPage" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="customPage" action="create" params="['pageGroup.id': pageGroupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'customPage.label', default: 'CustomPage')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: pageGroupInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="pageGroup.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${pageGroupInstance?.title}"/>

</div>

