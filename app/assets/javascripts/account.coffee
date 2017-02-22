# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
form_messages = (obj)->
  form = $(obj).closest('form')
  notes = form.find('.form__notes')
  errors = form.find('.form__errors')
  notes.empty()
  errors.empty()

submit_form = (obj)->
  form_messages(obj)
  $(obj).closest('form').submit()

$(document).ready ->
  $('#submit_login').on 'click', ->
    submit_form(this)

  $('#submit_restore_password').on 'click', ->
    submit_form(this)

  $('.form--registration').on 'submit', ->
    form_messages(this)
