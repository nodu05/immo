class HomeloanController < ApplicationController
    def index
        render plain: 'test'
    end

    def view
        @msg1 = 'お借入れご希望金額に対して、月々のご返済額をシミュレーションします。'

        @ask1 = 'お借入れご希望金額を入力してください。'
        @ask2 = '増額ご返済（ボーナス月増額）はされますか？'
        @ask3 = '増額（ボーナス月）返済額を入力してください。'
        @ask4 = 'お借り入れ期間を入力してください。'
        @ask5 = 'ご希望の金利タイプを選択してください。'
        @ask6 = '金利を入力してください。'
        @ask7 = '当初金利適用期間後の金利を入力してください。'
        
        @ans1 = 'お借入れ金利'
        @ans2 = '毎月のご返済額'
        @ans3 = '増額（ボーナス）月のご返済額（年2回）'
        @ans4 = '年間のご返済額'
    end
end
