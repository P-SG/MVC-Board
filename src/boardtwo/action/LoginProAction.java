package boardtwo.action;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boardtwo.model.UserDAO;

public class LoginProAction implements CommandAction {


	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		UserDAO dao = UserDAO.getInstance();
		int memberLogin = dao.memberLogin(id, pw);
		
		if(memberLogin == 0) {
			request.setAttribute("loginSuccess", id);
			return "/boardtwo/loginPro.jsp";
		}else if(memberLogin == 1) {
			request.setAttribute("loginFailed", id);
			return "/boardtwo/loginFail.jsp";
		}else if(memberLogin == 2) {
			request.setAttribute("loginFailed", pw);
			request.setAttribute("id", id);
			return "/boardtwo/loginFail.jsp";
		}
		
		return "error";
	}
		
}