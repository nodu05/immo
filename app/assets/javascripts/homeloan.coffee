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
    $("#redemption").text("")
    # alert "ここで計算処理をする"

    loan = parseInt($('#loan1').val())                          # 借入希望金額
    bonus = document.getElementById('increase_bonus_no')        # ボーナス返済有無
    loan_bonus = parseFloat($('#loan_bonus').val())             # ボーナス返済総額   
    period = parseInt($('#period1').val())                      # 支払回数
    rate_type = document.getElementById("rate_type").value      # 適用後金利
    interest_rate_b = parseFloat($('#interest_rate_b1').val())  # 当初金利
    interest_rate_a = parseFloat($('#interest_rate_a').val())   # 適用後金利

    kariire = loan * (10 ** 4)                                  # 借入額
    getsuri = interest_rate_b / 100 / 12                        # 月利
    kaisu = period * 12                                         # 返済回数

    date = new Date()
    
    if rate_type <= 0
      if bonus.checked                                          # 元利均等返済かつボーナス返済なし
        # 毎月返済額 ＝ 借入額 × {月利（1＋月利）返済回数 /（1＋月利）返済回数 － 1}
        repayment = Math.floor(kariire * getsuri * (1 + getsuri)**(kaisu) / ((1 + getsuri)**(kaisu) - 1))
        $("#repayment").text(repayment + " 円")

        # 支払利息の合計金額 ＝（毎回の返済金額×返済回数）－借入金額 
        total_interest = (repayment * kaisu) - kariire
        $("#total_interest").text(total_interest + " 円")

        # 増額（ボーナス）月のご返済額（年2回）
        $("#bonus_repayment").text("ー")   

        # 年間返済額
        repayment_y = repayment * 12
        $("#repayment_y").text(repayment_y + " 円")

        # 最終支払い時の残元金
        f = Math.floor(((1 + getsuri) ** (kaisu) )* kariire - (repayment * ((1 + getsuri) ** (kaisu) - 1) / getsuri))
      
        # 償還表
        tbody = document.getElementById('redemption')
        i = 0
        while i < kaisu

          #tr エレメントを新規作成(ただ生成するだけ)
          tr = document.createElement('tr')
        
          # 返済回数        
          td = document.createElement('td')
          td.innerHTML = (i + 1)
          tbody.appendChild td

          # 返済年月
          date_y = date.getFullYear() 
          date_m = date.getMonth()+1 
          payment_date = date_y + "/" + date_m
          td = document.createElement('td')
          td.innerHTML = payment_date
          test = date.setMonth(date.getMonth()+1);
          tbody.appendChild td

          # 返済金額
          td = document.createElement('td')
          if i <= 0
            td.innerHTML = repayment + f
          else
            td.innerHTML = repayment
          tbody.appendChild td
          
          # 残元金
          td = document.createElement('td')
          remaining_funds = Math.floor(((1 + getsuri) ** (i + 1) )* kariire - (repayment * ((1 + getsuri) ** (i + 1) - 1) / getsuri) - f)
          td.innerHTML = remaining_funds
          tbody.appendChild td
          
          tbody.appendChild tr
          i++

        return   

      else                                                      # 元利均等返済かつボーナス返済あり
        bonus_kaisu = period * 2                                # ボーナス返済回数
        bonus_hensai = loan_bonus * (10 ** 4)                   # ボーナス分借入額
        bonus_kariire = kariire - bonus_hensai                  # ボーナス借入を除く借入額

        # 毎月返済額 ＝ 借入額 × {月利（1＋月利）返済回数 /（1＋月利）返済回数 － 1}
        repayment = Math.floor(bonus_kariire * getsuri * (1 + getsuri)**(kaisu) / ((1 + getsuri)**(kaisu) - 1))
        $("#repayment").text(repayment + " 円")
        
        # ボーナス返済額
        bonus_repayment = Math.floor(bonus_hensai * getsuri * (1 + getsuri)**(bonus_kaisu) / ((1 + getsuri)**(bonus_kaisu) - 1))
        # bonus_repayment = repayment + loan_bonus * 10 ** 4 
        $("#bonus_repayment").text(bonus_repayment + " 円")

        # 支払利息の合計金額 ＝（毎回の返済金額×返済回数）－借入金額
        interest = (repayment * kaisu) - bonus_kariire
        bonus_interest = (bonus_repayment * bonus_kaisu) - bonus_hensai
        total_interest = interest + bonus_interest
        $("#total_interest").text(total_interest + " 円")

        # 年間返済額
        repayment_y = repayment * 12 + bonus_repayment * 2
        $("#repayment_y").text(repayment_y + " 円")

        # 最終支払い時の残元金
        fa = Math.floor(((1 + getsuri) ** (kaisu) )* bonus_kariire - (repayment * ((1 + getsuri) ** (kaisu) - 1) / getsuri))
        fb = Math.floor(((1 + getsuri) ** (bonus_kaisu) )* bonus_hensai - (bonus_repayment * ((1 + getsuri) ** (bonus_kaisu) - 1) / getsuri))
        f = fa + fb

        # 償還表
        tbody = document.getElementById('redemption')
        i = 0
        j = 0
        while i < kaisu

          #tr エレメントを新規作成(ただ生成するだけ)
          tr = document.createElement('tr')
        
          # 返済回数        
          td = document.createElement('td')
          td.innerHTML = (i + 1)
          tbody.appendChild td

          # 返済年月
          date_y = date.getFullYear() 
          date_m = date.getMonth()+1
          payment_date = date_y + "/" + date_m
          td = document.createElement('td')
          td.innerHTML = payment_date
          test = date.setMonth(date.getMonth()+1);
          tbody.appendChild td

          # 返済金額
          td = document.createElement('td')
          if date_m == 1 or date_m == 7
            if i <= 0
              td.innerHTML = repayment + bonus_repayment + f
            else  
              td.innerHTML = repayment + bonus_repayment
          else
            if i <= 0
              td.innerHTML = repayment + f
            else 
              td.innerHTML = repayment 
          tbody.appendChild td
          
          # 残元金
          td = document.createElement('td')
          if date_m == 1 or date_m == 7
            remaining_funds2 = Math.floor(((1 + getsuri) ** (j + 1) )* bonus_hensai - (bonus_repayment * ((1 + getsuri) ** (j + 1) - 1) / getsuri))
            j++
          
          remaining_funds1 = Math.floor(((1 + getsuri) ** (i + 1) )* bonus_kariire - (repayment * ((1 + getsuri) ** (i + 1) - 1) / getsuri))

          if j <= 0
            remaining_funds = remaining_funds1 + bonus_hensai - f
          else
            remaining_funds = remaining_funds1 + remaining_funds2 - f
          # remaining_funds = Math.floor(((1 + getsuri) ** (i + 1) )* kariire - (repayment * ((1 + getsuri) ** (i + 1) - 1) / getsuri))
          td.innerHTML = remaining_funds
          tbody.appendChild td
          
          tbody.appendChild tr
          i++

        return   

    else
      if bonus.checked                                          # 元金均等返済かつボーナス返済なし
        
      else                                                      # 元金均等返済かつボーナス返済あり

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
