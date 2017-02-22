notes = $('.form--registration .form__notes')
errors = $('.form--registration .form__errors')
notes.empty()
errors.empty()

notes.html('Регистрационные данные отправлены на E-mail') if (<%= @cid.present? %>)
errors.html('<%= @crm.errors.to_a.join('<br />').html_safe %>') if (<%= @cid.blank? %>)
