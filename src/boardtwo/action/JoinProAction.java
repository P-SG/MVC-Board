package boardtwo.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boardtwo.model.UserVO;
import boardtwo.model.UserDAO;

public class JoinProAction implements CommandAction {


	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		request.setCharacterEncoding("UTF-8");
		
		UserVO article = new UserVO();    
		article.setId(request.getParameter("id"));
		article.setPassword(request.getParameter("password"));
		article.setName(request.getParameter("name"));
		article.setEmail(request.getParameter("email"));
		article.setPhone(Integer.parseInt(request.getParameter("phone")));
		article.setGender(request.getParameter("gender"));
		
		UserDAO dao = UserDAO.getInstance();
		dao.insertMember(article);
		
		request.setAttribute("article", article);
		
		return "/boardtwo/joinPro.jsp";
		
		
	}
}