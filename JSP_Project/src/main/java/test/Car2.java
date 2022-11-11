package test;

public class Car2 {
	public static Car2 car2;
//car2의 값이 null이면 아직 객체가 안만들어졌다는 의미
//car2의 값이 주소가 들어있으면 객체를 만들어서 램에 넣어뒀다는 의미

	private Car2() {
		
	}
	public static Car2 getInstance() {
		
		if(car2 == null) {
			car2 = new Car2();
		} 
		return car2;
	}
}
