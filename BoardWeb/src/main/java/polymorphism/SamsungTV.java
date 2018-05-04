package polymorphism;

public class SamsungTV {
	public SamsungTV() {
		System.out.println("SamsungTV 객체 생성");
	}
	
	public void powerOn() {
		System.out.println("SaumsungTV 전원 켠다");
	}

	public void powerOff() {
		System.out.println("SausungTV 전원 끈다.");
	}
	
	public void volumeUp() {
		System.out.println("SausungTV 소리 울린다.");
	}
	
	public void volumeDown() {
		System.out.println("SausungTV 소리 내린다..");
	}
}
