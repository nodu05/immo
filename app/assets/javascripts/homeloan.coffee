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



$ ->
  $("#calc1").click ->
    alert "ここで計算処理をする"
    loan = parseInt($('#loan1').val())

    loan_bonus = parseInt($('#loan_bonus').val())
    period = parseInt($('#period1').val())
    
    rate_type = $('#rate_type').val()
    
    interest_rate_b = parseFloat($('#interest_rate_b1').val())
    interest_rate_a = parseFloat($('#interest_rate_a').val())

    $("#interest_rate1").text(interest_rate_b)


    kariire = loan * (10 ** 4)  #借入額
    getsuri = interest_rate_b / 100 / 12  #月利
    kaisu = period * 12 #返済回数

    # 元利均等返済
    # 毎月返済額 ＝ 借入額 × {月利（1＋月利）返済回数 /（1＋月利）返済回数 － 1}
    # 10000000 * 3 / 100 / 12 * (1 + 3 / 12 / 100)**(20 * 12)/((1 + 3 / 100 / 12)**(20 * 12) - 1) 
    repayment = Math.floor(kariire * getsuri * (1 + getsuri)**(kaisu) / ((1 + getsuri)**(kaisu) - 1))
    $("#repayment").text(repayment)

    # 元金均等返済


    # 支払利息の合計金額の算出
    # 支払利息の合計金額＝（毎回の返済金額×返済回数）－借入金額 
    # (55459*20*12)-10000000 
    total_interest = (repayment * kaisu) - kariire
    $("#total_interest").text(total_interest)

    # result = loan + loan_bonus
    # $('#interest_rate').val result
  return

$ ->
  $("#calc2").click ->
    alert "借り入れ可能額計算"
    loan = parseInt($('#loan2').val())
    period = parseInt($('#period2').val())
    interest_rate_b = parseFloat($('#interest_rate_b2').val())

    $("#interest_rate2").text(interest_rate_b)

    hensai = loan * (10 ** 4)  #年間返済額
    
    # 借入可能金額（元金）の算出
    # 1500000*((1+4/100)^25-1)/(4/100*(1+4/100)^25) 

    borrowing = Math.floor(hensai * ((1 + interest_rate_b / 100 ) ** period - 1) / (interest_rate_b / 100 * (1 + interest_rate_b / 100) ** period))

    alert borrowing
    $("#borrowing").text(borrowing)
  return
