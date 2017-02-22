$('.form--auth .form__errors').empty().html('<%= @crm.errors.to_a.join('<br />') %>')
