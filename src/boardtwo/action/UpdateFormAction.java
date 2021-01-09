package boardtwo.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boardtwo.model.BoardDAO;
import boardtwo.model.BoardVO;

public class UpdateFormAction implements CommandAction {

	
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		System.out.println("변수:");
		System.out.println(request.getParameter("num"));
		System.out.println(request.getParameter("pageNum"));
		int num = Integer.parseInt(request.getParameter("num"));
		String pageNum = request.getParameter("pageNum");
		BoardDAO dao = BoardDAO.getInstance();
		BoardVO article = dao.updateGetArticle(num);


		request.setAttribute("pageNum", new Integer(pageNum));
		request.setAttribute("article", article);

		
		return "/boardtwo/updateForm.jsp";
	}

}
