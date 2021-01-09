package boardtwo.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.NamingException;

public class UserDAO {
	private static UserDAO instance = null;

	private UserDAO() {
	}

	public static UserDAO getInstance() {
		if (instance == null) {
			synchronized (BoardDAO.class) {
				instance = new UserDAO();
			}
		}
		return instance;
	}
	
	//회원가입
	public void insertMember(UserVO article) throws SQLException, ClassNotFoundException, NamingException {
        Connection conn = null;
        PreparedStatement pstmt = null;
        
        try {
            // 커넥션을 가져온다.
            conn = ConnUtil.getConnection();
            // 자동 커밋을 false로 한다.
            conn.setAutoCommit(false);
            // 쿼리 생성한다.
            StringBuffer sql = new StringBuffer();
            sql.append("insert into USERS values");
            sql.append("(?, ?, ?, ?, ?, ?)");        
           
            
            System.out.print(sql);
            pstmt = conn.prepareStatement(sql.toString());
            pstmt.setString(1, article.getId());
            pstmt.setString(2, article.getPassword());
            pstmt.setString(3, article.getName());
            pstmt.setString(4, article.getEmail());
            pstmt.setInt(5, article.getPhone());
            pstmt.setString(6, article.getGender());
            
            
            // 쿼리 실행
            pstmt.executeUpdate();
            // 완료시 커밋
            conn.commit(); 
            
       
        } catch (SQLException sqle) {
            // 오류시 롤백
            conn.rollback(); 
            
            throw new RuntimeException(sqle.getMessage());
        } finally {
            // Connection, PreparedStatement를 닫는다.
            try{
                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
                if ( conn != null ){ conn.close(); conn=null;    }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
        } // end try~catch 
    } // end insertMember()
	
	// 로그인
    public int memberLogin(String id, String pw){
    	Connection conn = null;
        PreparedStatement pstmt = null;
        
        int loginState = 0;

        try {
            conn = ConnUtil.getConnection();

            String query = "select id, password from USERS";
            System.out.println(query);
            pstmt = conn.prepareStatement(query);

            ResultSet rs = pstmt.executeQuery();

            while(rs.next()) {
                String id1 = rs.getString("id");
                String password = rs.getString("password");

                if(id1.equals(id)) {    // 아이디 일치
                    if(password.equals(pw)) {    // 비밀번호 일치
                        return 0;
                    }else {        // 비밀번호 불일치
                        return 2;
                    }
                }
            }

            pstmt.close();
            conn.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("loginState = " + loginState);
        return 1;    // 아이디 불일치
    }
}
 



