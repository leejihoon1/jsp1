package koreait.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
// 위의 어노테이션 @ 는 lombok 라이브러리를 이용해서 자동으로 필요한 코드를 생성합니다.
// 외부평가에는 lombok 사용 못합니다. - 직접 코딩하세요.
public class HrdMember {
	private int custNo;
	private String custName;
	private String phone;
	private String address;
	private Date joinDate;
	private String grade;
	private String city;
	
}