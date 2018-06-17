import com.bookstagram.DTO.User;
import com.bookstagram.service.SignupService;

public class Test {

	public static void main(String[] args) {
		User user =new User();
		user.setUserName("sahil");
		user.setEmail("xyz@xyz.com");
		user.setPassword("dfdsggf");
		SignupService signupService = new SignupService();
		signupService.SignUp(user);
	}

}
