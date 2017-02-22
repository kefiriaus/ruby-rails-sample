notes = $('.form--pass .form__notes')
errors = $('.form--pass .form__errors')
notes.empty()
errors.empty()

notes.html('Новый пароль отправлен на почту') if <%= @result %>
errors.html('<%= @crm.errors.to_a.join('<br />') %>') unless <%= @result %>
