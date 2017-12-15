# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  # checkboxのとき
  setActivateConnection("#checkbox", "true", undefined, "#text_field", "")
  # radiobuttonのとき
  setActivateConnection("input[name='increase[bonus]']", "yes", "no", "#loan_bonus", "")
  return

setActivateConnection = (triggerSelector, activeValue, disabledValue, targetSelector, targetInitialVal) ->
  $(triggerSelector).on 'change', ->
    switch this.type
      when "checkbox"
        checkedVal = $(triggerSelector + ":checked").val()
        if checkedVal is activeValue
          $(targetSelector).removeAttr('disabled')
        else if checkedVal is disabledValue
          $(targetSelector).val(targetInitialVal).attr('disabled','disabled')
      when "radio"
        if this.value is activeValue
          $(targetSelector).removeAttr('disabled')
        else if this.value is disabledValue
          $(targetSelector).val(targetInitialVal).attr('disabled','disabled')
  return