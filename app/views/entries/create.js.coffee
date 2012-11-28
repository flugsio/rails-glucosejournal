<% if @entry.valid? %>
html_entry = $('<%= j(render(:partial => @entry))%>');
$('#entries_first_row').after(html_entry);
<% end %>

html_form = $('<%= j(render(:partial => "form", :locals => {:entry => @form_entry}))%>');
$('#entry_form').html(html_form);
