$("#corpus_list").empty()
.append("<%= escape_javascript(render(:partial => 'checkbox')) %>")