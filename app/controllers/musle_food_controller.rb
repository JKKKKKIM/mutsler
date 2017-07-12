require 'nokogiri'
require 'open-uri'
class MusleFoodController < ApplicationController
   # before_action :authenticate_user!
   def shop
#닭가슴살       
uri="http://www.edaily.co.kr/news/NewsRead.edy?SCD=JC21&newsid=02532166615966640&DCD=A00302&OutLnkChk=Y"
        result = Nokogiri::HTML(open(uri))
    @result = result.css("div#imgSubReTouchLoc_2 img")
    
#바나나
uri_2="http://nownews.seoul.co.kr/news/newsView.php?id=20160717601008"
        result = Nokogiri::HTML(open(uri_2))
    @result_2 = result.css("div.now_txt1 img")
#삼겹살    
    uri_3="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%82%BC%EA%B2%B9%EC%82%B4&order=popular"
        result = Nokogiri::HTML(open(uri_3))
    @result_3 = result.css("div.item img")[6]['src']
#사과            
    uri_4="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%82%AC%EA%B3%BC&order=popular"
        result = Nokogiri::HTML(open(uri_4))
    @result_4 = result.css("div.item img")[11]['src']
#감자    
    uri_5="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EA%B0%90%EC%9E%90&order=popular"
        result = Nokogiri::HTML(open(uri_5))
    @result_5 = result.css("div.item img")[4]['src']
#고구마
    uri_6="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EA%B0%90%EC%9E%90&order=popular"
        result = Nokogiri::HTML(open(uri_6))
    @result_6 = result.css("div.item img")[6]['src']
#딸기
    uri_7="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EB%94%B8%EA%B8%B0&order=popular"
        result = Nokogiri::HTML(open(uri_7))
    @result_7 = result.css("div.item img")[5]['src']
#파인애플
        uri_8="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%ED%8C%8C%EC%9D%B8%EC%95%A0%ED%94%8C&order=popular"
        result = Nokogiri::HTML(open(uri_8))
    @result_8 = result.css("div.item img")[11]['src']
#오렌지    
        uri_9="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%98%A4%EB%A0%8C%EC%A7%80&order=popular"
        result = Nokogiri::HTML(open(uri_9))
    @result_9 = result.css("div.item img")[9]['src']
end

    def food_inf
#삼겹살
       uri_3="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%82%BC%EA%B2%B9%EC%82%B4&order=popular"
        result = Nokogiri::HTML(open(uri_3))
    @result_3 = result.css("div.item img")[6]['src']
#치킨    
        uri="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%B9%98%ED%82%A8&order=popular"
        result = Nokogiri::HTML(open(uri))
    @result = result.css("div.item img")[8]['src']
#닭가슴살    
        uri_2="http://www.edaily.co.kr/news/NewsRead.edy?SCD=JC21&newsid=02532166615966640&DCD=A00302&OutLnkChk=Y"
        result = Nokogiri::HTML(open(uri_2))
    @result_2 = result.css("div#imgSubReTouchLoc_2 img")
#양고기        
        uri_4="http://neipkeuroba.tistory.com/entry/%EC%88%98%EC%9B%90%EB%A7%9B%EC%A7%91%EC%A0%95%EC%9E%90%EB%8F%99%EB%A7%9B%EC%A7%91-%EC%96%91%EA%B3%A0%EA%B8%B0-%EC%A0%84%EB%AC%B8%EC%A0%90-%EB%A8%B9%EC%B4%8C-%EC%96%91%EA%B0%88%EB%B9%84"
        result = Nokogiri::HTML(open(uri_4))
    @result_4 = result.css("div.imageblock img")[0]['src']
    
#소고기 안심
        uri_5="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%86%8C%EA%B3%A0%EA%B8%B0+%EC%95%88%EC%8B%AC&order=popular"
        result = Nokogiri::HTML(open(uri_5))
    @result_5 = result.css("div.item img")[0]['src']
    
#소고기 로스
        uri_6="http://likejp.com/3021"
        result = Nokogiri::HTML(open(uri_6))
    @result_6 = result.css("div.imageblock img")[9]['src']
# 곱창
     uri_7="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EA%B3%B1%EC%B0%BD&order=popular"
        result = Nokogiri::HTML(open(uri_7))
    @result_7 = result.css("div.item img")[0]['src']
    
# 목살    
    uri_8="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EB%AA%A9%EC%82%B4&order=popular"
        result = Nokogiri::HTML(open(uri_8))
    @result_8 = result.css("div.item img")[0]['src']
   
# 돼지 갈비
    uri_9="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EB%8F%BC%EC%A7%80%EA%B0%88%EB%B9%84&order=popular"
        result = Nokogiri::HTML(open(uri_9))
    @result_9 = result.css("div.item img")[1]['src']
    
end
    def vegetable
  #키위  
    uri="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=vegetable%5C&order=popular"
        result = Nokogiri::HTML(open(uri))
    @result = result.css("div.item img")[1]['src']
#피망    
    uri_2="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=vegetable%5C&order=popular"
        result = Nokogiri::HTML(open(uri_2))
    @result_2 = result.css("div.item img")[6]['src']
#오렌지    
    uri_3="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=vegetable%5C&order=popular"
        result = Nokogiri::HTML(open(uri_3))
    @result_3 = result.css("div.item img")[9]['src']
#토마토    
    uri_4="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=vegetable%5C&order=popular"
        result = Nokogiri::HTML(open(uri_4))
    @result_4 = result.css("div.item img")[13]['src']
 #양파
    uri_5="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%95%BC%EC%B1%84&order=popular"
        result = Nokogiri::HTML(open(uri_5))
    @result_5 = result.css("div.item img")[0]['src']
#체리    
    @result_6 = result.css("div.item img")[3]['src']
#당근    
    @result_7 = result.css("div.item img")[5]['src']
#고추
    @result_8 = result.css("div.item img")[14]['src']
#브로콜리
    uri_9="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EB%B8%8C%EB%A1%9C%EC%BD%9C%EB%A6%AC&order=popular"
        result = Nokogiri::HTML(open(uri_9))
    @result_9 = result.css("div.item img")[1]['src']
end

def fruit
   #사과
    uri="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%82%AC%EA%B3%BC&order=popular"
        result = Nokogiri::HTML(open(uri))
    @result= result.css("div.item img")[11]['src']
    
    #배
       uri_2="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=pear&order=popular"
        result = Nokogiri::HTML(open(uri_2))
    @result_2= result.css("div.item img")[1]['src']
    
    #감
    uri_3="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EA%B0%90&order=popular"
        result = Nokogiri::HTML(open(uri_3))
    @result_3= result.css("div.item img")[1]['src']
    
   #포도 
    uri_4="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EA%B3%BC%EC%9D%BC&order=popular"
        result = Nokogiri::HTML(open(uri_4))
    @result_4= result.css("div.item img")[2]['src']
    
    #레몬
     uri_5="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EA%B3%BC%EC%9D%BC&order=popular"
        result = Nokogiri::HTML(open(uri_5))
    @result_5= result.css("div.item img")[3]['src']
    
    
    #석류
    @result_7= result.css("div.item img")[7]['src']
    
    #산딸기
    @result_8= result.css("div.item img")[0]['src']
    #라임
    uri_7="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EB%9D%BC%EC%9E%84&order=popular"
        result= Nokogiri::HTML(open(uri_7))
        @result_6=result.css("div.item img")[5]['src']
    
    #매실
     uri_6="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EB%A7%A4%EC%8B%A4&order=popular"
        result = Nokogiri::HTML(open(uri_6))
    @result_9= result.css("div.item img")[5]['src']
    
end

def shop_2
   #삼겹살
       uri_3="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%82%BC%EA%B2%B9%EC%82%B4&order=popular"
        result = Nokogiri::HTML(open(uri_3))
    @result_3 = result.css("div.item img")[6]['src']
#치킨    
        uri="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%B9%98%ED%82%A8&order=popular"
        result = Nokogiri::HTML(open(uri))
    @result = result.css("div.item img")[8]['src']
#연어    
        uri_2="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%97%B0%EC%96%B4&order=popular"
        result = Nokogiri::HTML(open(uri_2))
    @result_2 = result.css("div.item img")[1]['src']
#양고기        
        uri_4="http://neipkeuroba.tistory.com/entry/%EC%88%98%EC%9B%90%EB%A7%9B%EC%A7%91%EC%A0%95%EC%9E%90%EB%8F%99%EB%A7%9B%EC%A7%91-%EC%96%91%EA%B3%A0%EA%B8%B0-%EC%A0%84%EB%AC%B8%EC%A0%90-%EB%A8%B9%EC%B4%8C-%EC%96%91%EA%B0%88%EB%B9%84"
        result = Nokogiri::HTML(open(uri_4))
    @result_4 = result.css("div.imageblock img")[0]['src']
    
#소고기 안심
        uri_5="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%86%8C%EA%B3%A0%EA%B8%B0+%EC%95%88%EC%8B%AC&order=popular"
        result = Nokogiri::HTML(open(uri_5))
    @result_5 = result.css("div.item img")[0]['src']
    
#소고기 로스
        uri_6="http://likejp.com/3021"
        result = Nokogiri::HTML(open(uri_6))
    @result_6 = result.css("div.imageblock img")[9]['src']
# 곱창
     uri_7="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EA%B3%B1%EC%B0%BD&order=popular"
        result = Nokogiri::HTML(open(uri_7))
    @result_7 = result.css("div.item img")[0]['src']
    
# 목살    
    uri_8="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EB%AA%A9%EC%82%B4&order=popular"
        result = Nokogiri::HTML(open(uri_8))
    @result_8 = result.css("div.item img")[0]['src']
   
# 돼지 갈비
    uri_9="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EB%8F%BC%EC%A7%80%EA%B0%88%EB%B9%84&order=popular"
        result = Nokogiri::HTML(open(uri_9))
    @result_9 = result.css("div.item img")[1]['src'] 
end
def shop_3
    #키위  
    uri="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=vegetable%5C&order=popular"
        result = Nokogiri::HTML(open(uri))
    @result = result.css("div.item img")[1]['src']
#파프리카    
    uri_2="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=vegetable%5C&order=popular"
        result = Nokogiri::HTML(open(uri_2))
    @result_2 = result.css("div.item img")[6]['src']
#오렌지    
    uri_3="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=vegetable%5C&order=popular"
        result = Nokogiri::HTML(open(uri_3))
    @result_3 = result.css("div.item img")[9]['src']
#토마토    
    uri_4="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=vegetable%5C&order=popular"
        result = Nokogiri::HTML(open(uri_4))
    @result_4 = result.css("div.item img")[13]['src']
 #양파
    uri_5="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%95%BC%EC%B1%84&order=popular"
        result = Nokogiri::HTML(open(uri_5))
    @result_5 = result.css("div.item img")[0]['src']
#체리    
    @result_6 = result.css("div.item img")[3]['src']
#당근    
    @result_7 = result.css("div.item img")[5]['src']
#고추
    @result_8 = result.css("div.item img")[14]['src']
#브로콜리
    uri_9="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EB%B8%8C%EB%A1%9C%EC%BD%9C%EB%A6%AC&order=popular"
        result = Nokogiri::HTML(open(uri_9))
    @result_9 = result.css("div.item img")[1]['src']
end
def shop_4
    #사과
    uri="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%82%AC%EA%B3%BC&order=popular"
        result = Nokogiri::HTML(open(uri))
    @result= result.css("div.item img")[11]['src']
    
    #배
       uri_2="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=pear&order=popular"
        result = Nokogiri::HTML(open(uri_2))
    @result_2= result.css("div.item img")[1]['src']
    
    #감
    uri_3="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EA%B0%90&order=popular"
        result = Nokogiri::HTML(open(uri_3))
    @result_3= result.css("div.item img")[1]['src']
    
   #포도 
    uri_4="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EA%B3%BC%EC%9D%BC&order=popular"
        result = Nokogiri::HTML(open(uri_4))
    @result_4= result.css("div.item img")[2]['src']
    
    #레몬
     uri_5="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EA%B3%BC%EC%9D%BC&order=popular"
        result = Nokogiri::HTML(open(uri_5))
    @result_5= result.css("div.item img")[3]['src']
    
    #라임
    @result_6= result.css("div.item img")[13]['src']
    
    #석류
    @result_7= result.css("div.item img")[7]['src']
    
    #산딸기
    @result_8= result.css("div.item img")[0]['src']
    
    #매실
     uri_6="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EB%A7%A4%EC%8B%A4&order=popular"
        result = Nokogiri::HTML(open(uri_6))
    @result_9= result.css("div.item img")[5]['src']
    
end
def food_inf_2
    #순대
    uri="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%88%9C%EB%8C%80&order=popular"
        result = Nokogiri::HTML(open(uri))
    @result= result.css("div.item img")[0]['src']
    
    #베이컨
        uri_2="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=bacon&order=popular"
        result = Nokogiri::HTML(open(uri_2))
    @result_2= result.css("div.item img")[11]['src']
    
    #오리고기
    uri_3="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%98%A4%EB%A6%AC%EA%B3%A0%EA%B8%B0&order=popular"
    result = Nokogiri::HTML(open(uri_3))
    @result_3= result.css("div.item img")[0]['src']
    
    #갈메기살
    uri_4="http://www.dtnews24.com/news/article.html?no=422026"
    result = Nokogiri::HTML(open(uri_4))
    @result_4= result.css("div#news_body_area img")[0]['src']
 
    #부챗살
    uri_5="http://www.asiatoday.co.kr/view.php?key=20170613001914577"
    result = Nokogiri::HTML(open(uri_5)) 
    @result_5= result.css(".photo_Lsize img")[0]['src']
    
    #치맛살
    uri_6="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=meat&order=popular"
    result =Nokogiri::HTML(open(uri_6))
    @result_6= result.css("div.item img")[2]['src']
    
    #뒷고기
    uri_7="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EB%92%B7%EA%B3%A0%EA%B8%B0&order=popular"
    result=Nokogiri::HTML(open(uri_7))
    @result_7=result.css("div.item img")[0]['src']
    
    #꽃등심
    uri_8="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EA%BD%83%EB%93%B1%EC%8B%AC&order=popular"
    result=Nokogiri::HTML(open(uri_8))
    @result_8=result.css("div.item img")[0]['src']
    
    #차돌박이
    uri_9="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%B0%A8%EB%8F%8C%EB%B0%95%EC%9D%B4&order=popular"
    result=Nokogiri::HTML(open(uri_9))
    @result_9=result.css("div.item img")[0]['src']


end

def vegetable_2
    #가지
     uri="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=aubergine&order=popular"
        result = Nokogiri::HTML(open(uri))
    @result= result.css("div.item img")[15]['src']
    
    #양배추
    uri_9="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%96%91%EB%B0%B0%EC%B6%94&order=popular"
        result= Nokogiri::HTML(open(uri_9))
    @result_2= result.css("div.item img")[0]['src']
    
    #마늘
     uri_2="https://pixabay.com/ko/photos/?q=%EC%95%BC%EC%B1%84&image_type=&cat=&min_height=&min_width=&order=popular&pagi=2"
        result = Nokogiri::HTML(open(uri_2))
    @result_3= result.css("div.item img")[14]['src']
    
    #대파
    uri_3="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=scallion&order=popular"
        result = Nokogiri::HTML(open(uri_3))
    @result_4= result.css("div.item img")[7]['src']
    
    #오이
    uri_4="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%98%A4%EC%9D%B4&order=popular"
        result = Nokogiri::HTML(open(uri_4))
    @result_5= result.css("div.item img")[2]['src']    
    
    #상추
    uri_5="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%83%81%EC%B6%94&order=popular"
        result = Nokogiri::HTML(open(uri_5))
    @result_6= result.css("div.item img")[6]['src']
    #깻잎
        uri_6="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EA%B9%BB%EC%9E%8E&order=popular"
        result = Nokogiri::HTML(open(uri_6))
    @result_7= result.css("div.item img")[1]['src']
    #콩나물
        uri_7="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=bean+sprouts&order=popular"
        result = Nokogiri::HTML(open(uri_7))
    @result_8= result.css("div.item img")[8]['src']
    #쑥
        uri_8="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%91%A5&order=popular"
        result = Nokogiri::HTML(open(uri_8))
    @result_9= result.css("div.item img")[1]['src']

end
def fruit_2
    #멜론
        uri="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EB%A9%9C%EB%A1%A0&order=popular"
        result= Nokogiri::HTML(open(uri))
        @result=result.css("div.item img")[1]['src']
    #수박    
        uri_2="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%88%98%EB%B0%95&order=popular"
        result= Nokogiri::HTML(open(uri_2))
        @result_2=result.css("div.item img")[0]['src']
    #한라봉
        uri_3="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%ED%95%9C%EB%9D%BC%EB%B4%89&order=popular"
        result= Nokogiri::HTML(open(uri_3))
        @result_3=result.css("div.item img")[0]['src']
    #아보카도    
        uri_4="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%95%84%EB%B3%B4%EA%B0%80%EB%8F%84&order=popular"
        result= Nokogiri::HTML(open(uri_4))
        @result_4=result.css("div.item img")[0]['src']
    #자몽    
        uri_5="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%9E%90%EB%AA%BD&order=popular"
        result= Nokogiri::HTML(open(uri_5))
        @result_5=result.css("div.item img")[0]['src']
    #블루베리    
        uri_6="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EB%B8%94%EB%A3%A8%EB%B2%A0%EB%A6%AC&order=popular"
        result= Nokogiri::HTML(open(uri_6))
        @result_6=result.css("div.item img")[0]['src']
    #낑깡
        uri_7="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EB%82%91%EA%B9%A1&order=popular"
        result= Nokogiri::HTML(open(uri_7))
        @result_7=result.css("div.item img")[0]['src']
    #천혜향    
        uri_8="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%B2%9C%ED%98%9C%ED%96%A5&order=popular"
        result= Nokogiri::HTML(open(uri_8))
        @result_8=result.css("div.item img")[0]['src']
    #복숭아
        uri_9="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EB%B3%B5%EC%88%AD%EC%95%84&order=popular"
        result= Nokogiri::HTML(open(uri_9))
        @result_9=result.css("div.item img")[4]['src']
end        
        def shop_5
    #순대
    uri = "https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%88%9C%EB%8C%80&order=popular"
    result = Nokogiri::HTML(open(uri))
    @result = result.css("div.item img")[0]['src']
    
    #베이컨
        uri_2="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=bacon&order=popular"
        result = Nokogiri::HTML(open(uri_2))
    @result_2= result.css("div.item img")[11]['src']
    
    #오리고기
    uri_3="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%98%A4%EB%A6%AC%EA%B3%A0%EA%B8%B0&order=popular"
    result = Nokogiri::HTML(open(uri_3))
    @result_3= result.css("div.item img")[0]['src']
    
    #갈메기살
    uri_4="http://www.dtnews24.com/news/article.html?no=422026"
    result = Nokogiri::HTML(open(uri_4))
    @result_4= result.css("div#news_body_area img")[0]['src']
 
    #부챗살
    uri_5="http://www.asiatoday.co.kr/view.php?key=20170613001914577"
    result = Nokogiri::HTML(open(uri_5)) 
    @result_5= result.css(".photo_Lsize img")[0]['src']
    
    #치맛살
    uri_6="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=meat&order=popular"
    result =Nokogiri::HTML(open(uri_6))
    @result_6= result.css("div.item img")[2]['src']
    
    #뒷고기
    uri_7="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EB%92%B7%EA%B3%A0%EA%B8%B0&order=popular"
    result=Nokogiri::HTML(open(uri_7))
    @result_7=result.css("div.item img")[0]['src']
    
    #꽃등심
    uri_8="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EA%BD%83%EB%93%B1%EC%8B%AC&order=popular"
    result=Nokogiri::HTML(open(uri_8))
    @result_8=result.css("div.item img")[0]['src']
    
    #차돌박이
    uri_9="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%B0%A8%EB%8F%8C%EB%B0%95%EC%9D%B4&order=popular"
    result=Nokogiri::HTML(open(uri_9))
    @result_9=result.css("div.item img")[0]['src']


end
def shop_6
    #가지
     uri="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=aubergine&order=popular"
        result = Nokogiri::HTML(open(uri))
    @result= result.css("div.item img")[14]['src']
    
    #양배추
    uri_9="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%96%91%EB%B0%B0%EC%B6%94&order=popular"
        result= Nokogiri::HTML(open(uri_9))
    @result_2= result.css("div.item img")[0]['src']
    
    #마늘
     uri_2="https://pixabay.com/ko/photos/?q=%EC%95%BC%EC%B1%84&image_type=&cat=&min_height=&min_width=&order=popular&pagi=2"
        result = Nokogiri::HTML(open(uri_2))
    @result_3= result.css("div.item img")[14]['src']
    
    #대파
    uri_3="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=scallion&order=popular"
        result = Nokogiri::HTML(open(uri_3))
    @result_4= result.css("div.item img")[7]['src']
    
    #오이
    uri_4="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%98%A4%EC%9D%B4&order=popular"
        result = Nokogiri::HTML(open(uri_4))
    @result_5= result.css("div.item img")[2]['src']    
    
    #상추
    uri_5="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%83%81%EC%B6%94&order=popular"
        result = Nokogiri::HTML(open(uri_5))
    @result_6= result.css("div.item img")[6]['src']
    #깻잎
        uri_6="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EA%B9%BB%EC%9E%8E&order=popular"
        result = Nokogiri::HTML(open(uri_6))
    @result_7= result.css("div.item img")[1]['src']
    #콩나물
        uri_7="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=bean+sprouts&order=popular"
        result = Nokogiri::HTML(open(uri_7))
    @result_8= result.css("div.item img")[8]['src']
    #쑥
        uri_8="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%91%A5&order=popular"
        result = Nokogiri::HTML(open(uri_8))
    @result_9= result.css("div.item img")[1]['src']
end
def shop_7
        #멜론
        uri="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EB%A9%9C%EB%A1%A0&order=popular"
        result= Nokogiri::HTML(open(uri))
        @result=result.css("div.item img")[1]['src']
    #수박    
        uri_2="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%88%98%EB%B0%95&order=popular"
        result= Nokogiri::HTML(open(uri_2))
        @result_2=result.css("div.item img")[0]['src']
    #한라봉
        uri_3="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%ED%95%9C%EB%9D%BC%EB%B4%89&order=popular"
        result= Nokogiri::HTML(open(uri_3))
        @result_3=result.css("div.item img")[0]['src']
    #아보카도    
        uri_4="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%95%84%EB%B3%B4%EA%B0%80%EB%8F%84&order=popular"
        result= Nokogiri::HTML(open(uri_4))
        @result_4=result.css("div.item img")[0]['src']
    #자몽    
        uri_5="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%9E%90%EB%AA%BD&order=popular"
        result= Nokogiri::HTML(open(uri_5))
        @result_5=result.css("div.item img")[0]['src']
    #블루베리    
        uri_6="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EB%B8%94%EB%A3%A8%EB%B2%A0%EB%A6%AC&order=popular"
        result= Nokogiri::HTML(open(uri_6))
        @result_6=result.css("div.item img")[0]['src']
    #낑깡
        uri_7="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EB%82%91%EA%B9%A1&order=popular"
        result= Nokogiri::HTML(open(uri_7))
        @result_7=result.css("div.item img")[0]['src']
    #천혜향    
        uri_8="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EC%B2%9C%ED%98%9C%ED%96%A5&order=popular"
        result= Nokogiri::HTML(open(uri_8))
        @result_8=result.css("div.item img")[0]['src']
    #복숭아
        uri_9="https://pixabay.com/ko/photos/?hp=&image_type=&cat=&min_width=&min_height=&q=%EB%B3%B5%EC%88%AD%EC%95%84&order=popular"
        result= Nokogiri::HTML(open(uri_9))
        @result_9=result.css("div.item img")[4]['src']
end

def supplement
    #슈퍼 제네시스 게이너
        uri="http://blog.happydong.kr/364"
        result= Nokogiri::HTML(open(uri))
        @result=result.css(".article img")[0]['src']

    #게이너 WPI
        uri_2="http://item.gmarket.co.kr/Item?goodscode=216583625"
        result = Nokogiri::HTML(open(uri_2))
        @result_2=result.css(".viewer img")[0]['src']
    
    #게이너 WPH
        uri_3="http://item.gmarket.co.kr/Item?goodscode=209093273&pos_shop_cd=SH&pos_class_cd=111111111&pos_class_kind=T&keyword_order=wph&keyword_seqno=12387212773&search_keyword=wph"
        result = Nokogiri::HTML(open(uri_3))
        @result_3 = result.css(".viewer img")[0]['src']
end

def max
        uri="http://m.blog.naver.com/hyunxzin/220823719464"
        result = Nokogiri::HTML(open(uri))
        @result= result.css(".se_viewArea img")[1]['src']
        
        uri_2="http://blog.naver.com/PostView.nhn?blogId=akssmddls24&logNo=220302264183&parentCategoryNo=17&categoryNo=&viewDate=&isShowPopularPosts=true&from=search"
        result = Nokogiri::HTML(open(uri_2))
        @result_2=result.css("div#postViewArea img")[0]['src']
        
        uri_3="https://www.healthkart.com/sv/ronnie-coleman-king-mass/SP-29984"
        result=Nokogiri::HTML(open(uri_3))
        @result_3=result.css(".variant-image img")[0]['src']
end

def way
        uri="http://yozmidea.tistory.com/94"
        result=Nokogiri::HTML(open(uri))
        @result=result.css(".imageblock img")[0]['src']
        
        uri_2="http://muscle7.tistory.com/13"
        result=Nokogiri::HTML(open(uri_2))
        @result_2=result.css(".imageblock img")[0]['src']
        
        uri_3="http://item.gmarket.co.kr/Item?goodscode=623058897"
        result=Nokogiri::HTML(open(uri_3))
        @result_3=result.css(".viewer img")[0]['src']
end
end