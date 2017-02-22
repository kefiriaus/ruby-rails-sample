notes = $('.form--feedback .form__notes')
errors = notes = $('.form--feedback .form__errors')
notes.empty()
errors.empty()

notes.html('Ваш вопрос получен') if <%= @result.present? %>
errors.html('<%= @crm.errors.to_a.join('<br />') %>') if <%= @result.blank? %>
