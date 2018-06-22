class Student	#클래스 이름은 앞을 대문자로 하고 / 
    #단어로 더 길게 될 경우 camel case로 써준다 (ex. StudentName)
    #name, age, gender
    def initialize(name, age, gender) #초기화.애도 method 정의한 거다. ()안의 인자로 수정한다.
        #Studen의 공통 특징들을 말해줘야 한다.==> instance 변수 (이 클래스의 예시들이다 이렇게 구조화)
        #attribute들이라고 한다 아래 name/age/gender를
        #object == 인스턴스 == 객체들
        @name = name
        @age = age
        @gender = gender
        #값을 넣어보고 싶으면 @name = "창원" @gender = "male" 이런식으로 스트링으로 넣어
    end
   
   
   #----------------------------------------------
#    attr_reader :name  이 함수 코드 한 줄이 
#    def name
#         @name
#    end
#    이 함수를 만들어 준다.

#    여러 개 만들고 싶으면 
#    attr_reader :name, :age 이런 식으로 추가하면 된당
   #-----------------------------------------------
   #attr_reader :name, :age, :gender        
   #아래 모두를 이 위에 한 줄 코드로 대체 가능 (심벌로 만들어 주면 된다)
#   def name 	#나 앞으로 name이라는 method를 쓸 거야
#       @name	#.name을 쓰면 그 요소를 출력해줘
#   end
    
#   def age	# 이 class에 쓸 method들 정의하는 방법!  (이것도 함수다)
#       @age
#   end

#   def gender   # 클래스 안에 인스턴스 변수를 가져오는 함수 ==> getter
#       return @gender
#   end


    #attr_writer :name, :age, :gender
    #아래 모두를 이 위에 한 줄 코드로 대체 가능 (심벌로 만들어 주면 된다)
#   def gender=(input)   #=는 반드시 붙여서 써줘야 함 ==> setter (setting하는함수) 클래스 안에 인스턴스 변수를 설정하는 함수
#       @gender = input
#   end
   
#   def name=(input)
#       @name = input
#   end

#   def age=(input)
#       @name = input
#   end

    attr_accessor :name, :age, :gender
    #애는 두 함수를 동시에 만들어줌
#   def name
#       @name
#   end
#
#   def name=(input)
#       @name = input
#   end

    def sing
        puts "노래한다 지금 우훟훟"
    end

    def dance
        puts "아잉 싫어엉"
    end

end

#창원을 새로 만들 때는 창원은 새로운 학생이다 이렇게 만들게 된다
#세 가지 정보를 가진 인스턴스 한 명이 생성됨

#dfkdfd = Student.new()  #이런 식으로 비면 안된다. 3개를 정의했으면 무조건 3개 다 넣어줘야 한다.
yerim = Student.new("옒", "22", "female")       #instance (yerim 객체) 만든 것
changwon = Student.new("창원", "28", "male")    #instance (changwon 객체) 만든 것
#한 번에 모아서 정리할 때 이 class개념이 유용하게 쓰인다.

puts changwon.name
puts yerim.name

hongsuk = Student.new("홍석","00", "female")
hongsuk.gender = "male"     #gender=() 를 정의해줘야 값 바꾸는 것이 가능
puts hongsuk.gender

changwon.dance
changwon.sing