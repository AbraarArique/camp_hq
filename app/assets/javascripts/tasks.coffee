# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

init = ->
  $('div[data-checkboxalt]').click ->
    if $(this).css('background-color') != 'rgb(0, 140, 186)'
      $(this).css('background-color', '#008CBA')
      $('.check-box-alt p').css('color', '#FFFFFF')
    else
      $(this).css('background-color', '#FFFFFF')
      $('.check-box-alt p').css('color', '#222222')
    $('#task_completed').trigger 'click'
  if $('#task_completed').is(':checked')
    $('.check-box-alt').css('background-color', '#008CBA')
    $('.check-box-alt p').css('color', '#FFFFFF')

$ ->
  init()
$(document).on 'page:change', ->
  init()
