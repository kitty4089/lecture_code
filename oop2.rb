#oop :  object oriented programming
#사람 C 동물 C 유기체
#학생 C 사람

module Move      #움직이는 것들이 담긴 모듈이다     #클래스 안에 include로 장착시킬 수 잇다. 공통되는 함수들은 모듈로 묶어서 관리 가능하다
    DESC = "움직에 관련된 모듈입니다"       # 상수 규칙! 전부 다 대문자로 해야 한다 / description의 DESC로 상수를 만들어 줬다
    def walk
        puts "뚜벅뚜벅"
    end
end


class Person
    @@number = 0       #클래스 변수를 정의하는 방법.@@를 붙여야 한다! 인스턴스들(붕어빵들)말고 클래스 자체에도 변수,method필요.
    #클래스 자체(붕어빵 틀!) 틀에도 정보가 있으면 좋다.
    #ex. 지금까지 인스턴스(사람)를 몇 개를 만들었는지 알고 싶을 때 등. 각각의 인스턴스들은 틀이 인스턴스(붕어빵)을 몇 개 만들었는 지 알 수없다.인스턴스를 가지고는.
    include Move    #Move모듈 장착 (include로)
    def initialize(name, age, gender)
        @name = name
        @age = age
        @gender = gender
        @@number += 1           #인스턴스 하나 추가될 때마다 숫자 1씩 늘리겠다
    end
    attr_accessor :name, :age, :gender

    def eat     #인스턴스 methods
        puts "냠냠"
    end

    #붕어빵 틀이 쓰는 method 정의 ==> 꼭 class이름을 앞에 붙여줘야 클래스의 method가 되는 것
    def Person.number
        @@number
    end

end

class Student < Person      #Person의 속성을 Student한테 주는. Student가 하위개념 (Student 함수들은 person에서 쓸 수 없다)
    #Student의 아빠가 Person
    #즉, Student의 ancestor 목록에 Person, Move 나올 것이다
end

class Robot
    include Move
    def initialize(name)
        @name = name
    end
end


# hongsuk = Student.new("홍석", "28", "male")   #홍석찡은 새로운 학생이에요
# puts hongsuk.name
# puts hongsuk.eat

hongsuk = Person.new("홍석", "28", "male")
yerim = Person.new("예림", "28", "female")
puts Person.number  #클래스 변수 가지고 정의한 클래스 method는 클래스에 적용하는 것.

donghyun = Robot.new("동현")
hongsuk.walk
donghyun.walk


puts Move::DESC    #모듈을 class 바깥에서도 쓰는 방법    #모듈 안에서 정의한 상수로 가능

#db 할 때 
=begin
    class 표 이름
        include DataMapper::Resource
        property :id, Serial
        .
        .
=end

#루비에서 이미 정장돼 있는 모듈 ==> Math
#자주 쓰이는 수식은 루비가 이미 Math모듈에 저장해 놨다
puts Math::PI    #파이 ㅠ값          
#::오른쪽은 상수값이라 바꿀 수 없다. (Math::PI = 5 이런 식으로 쓴다고 바꿀 수 없고 이미 상수라서 바꿀 수 없다고 에러 뜬다)


puts Student.ancestors