# URLにアクセスするためのライブラリの読み込み
require 'open-uri'
# Nokogiriライブラリの読み込み
require 'nokogiri'
# スクレイピング先のURL
url = 'https://www.athome.co.jp/kodate/chuko/saitama/list/'
charset = nil
html = open(url) do |f|
  charset = f.charset # 文字種別を取得
  f.read # htmlを読み込んで変数htmlに渡す
end
# htmlをパース(解析)してオブジェクトを生成
doc = Nokogiri::HTML.parse(html, nil, charset)

doc.xpath('//div[@class="object-data"]').each do |node|
  p node.css('li').inner_text
  p node.css('a').inner_text
end