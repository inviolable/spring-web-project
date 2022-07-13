package spring;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;

@Controller
public class MainController {

	@Autowired
	BoardDAO dao;
	
	@Autowired
	ReplyDAO dao02;
	
	@RequestMapping("/join")
	public String join() {
		return "/board/join";		
	}
	
	@RequestMapping("/join_ok")
	public String join_ok(Model m, MemberInfo info) {
		int result = dao.Insert(info);
		m.addAttribute("result",result);
		return "/board/join_ok";
	}
	
	
	@RequestMapping("/list")
	public String list(Model m) {
		List<MemberInfo> m1=dao.selectAllMemberList();
		
		m.addAttribute("m1",m1);
		return "/board/list1";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "/board/login_page";
	}
	
	@RequestMapping("/login_ok")
	public String login_ok(Model m, HttpServletRequest request, HttpSession session) {
		String id = request.getParameter("id");
		String password = request.getParameter("pass");
		//m.addAttribute("id",id);
		session.setAttribute("id", id);
		
		//System.out.println("id:"+id+",password:"+password);
		
		String password_confirm = dao.passwordById(id);
		if(password.equals(password_confirm)==true) {
			m.addAttribute("result", "success");
			session.setAttribute("login", "success");
		}else {
			m.addAttribute("result", "fail");
		}
				
		return "/board/login_ok";
		//return "redirect:/board01";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.setAttribute("login", "empty");
		return "redirect:/board01";
	}
	
	@RequestMapping("/naver_login")
	public String naver_login() {
		return "/board/naver_login";
	}
	
	@RequestMapping("/naver_callback")
	public String naver_callback() {
		JSONObject obj;
		return "/board/naver_callback";
	}
	
	@RequestMapping("/board01")
	public String mypage(Model m, HttpServletRequest request) {
		String page = request.getParameter("page");
		int count = dao.boardCount();
		int pageCount = count/10 + 1;
		
		m.addAttribute("count", count);
		int i=0;
		if(page == null)
			i=1;
		else
			i=Integer.parseInt(page);
		List<BoardInfo> b = dao.selectAllBoardList();
		List<BoardInfo> b2 = new ArrayList<>();
		int i2=pageCount+1-i;//페이지를 보수로 변환 ex)5->1, 1->5, 1->2, 2->1
		
		int end = count-1-(i-1)*10;
		int start = end-9;
		
		
		if(start <= 0)
			start = 0;
		System.out.println("count:"+count+",start:"+start+",end:"+end);		
		for(int j=end;j>=start;j--) {
			b2.add(b.get(j));
		}
		m.addAttribute("b2", b2);
		m.addAttribute("i", i);

		return "/board/board01";
	}
	
	@RequestMapping("/new_write")
	public String new_write(HttpSession session) {
		
		if(session.getAttribute("login") == null)
			return "/board/new_write_fail";
		
		if(session.getAttribute("login").equals("success"))
			return "/board/new_write";		
		
		return "/board/new_write_fail";
	}
	
	@RequestMapping("/saveBoard")
	public String saveBoard(BoardInfo info) {
		dao.Insert_board(info);
		return "redirect:/board01";
	}
	
	@RequestMapping("/read_content")
	public String read_content(Model m, HttpServletRequest request) {
		int no=Integer.parseInt(request.getParameter("bno"));
		BoardInfo b = this.dao.selectByNo(no);
		List<ReplyInfo> r = this.dao02.selectByNo(no);
		m.addAttribute("no", no);
		
		m.addAttribute("r", r);
		m.addAttribute("b", b);
		
		return "/board/read_content";
	}
	
	@RequestMapping("/editBoard")
	public String editBoard(BoardInfo info) {
		
		return "/board/editBoard";
	}
	
	@RequestMapping("editBoard_ok")
	public String editBoard_ok() {
		
		return "editBoard_ok";
	}
	
	@RequestMapping("/main")
	public String main() {
		return "/board/main";
	}
	
	@RequestMapping("/reply_add")
	public String reply_add(ReplyInfo info) {
		info.reply_cont.replace("\n", "<br>");
	
		System.out.println("privious="+info.reply_previous);
		this.dao02.insertReply(info);
		
		
		return "/board/read_content";
	}
	
	@RequestMapping("/logout02")
	public String logout02(HttpSession session) {
		session.removeAttribute("state");
		session.removeAttribute("nickname");
		return "redirect:/main";
	}
	
	@RequestMapping("/login02")
	public String login02() {
		return "redirect:/login";
	}
	
    private static String readBody(InputStream body){
        InputStreamReader streamReader = new InputStreamReader(body);


        try (BufferedReader lineReader = new BufferedReader(streamReader)) {
            StringBuilder responseBody = new StringBuilder();


            String line;
            while ((line = lineReader.readLine()) != null) {
                responseBody.append(line);
            }


            return responseBody.toString();
        } catch (IOException e) {
            throw new RuntimeException("API 응답을 읽는데 실패했습니다.", e);
        }
    }
	
	@RequestMapping("/main02")
	public String main02(HttpSession session) throws ParseException {
		
        String token = (String)session.getAttribute("access_token");
        String header = "Bearer " + token; // Bearer 다음에 공백 추가


        String apiURL = "https://openapi.naver.com/v1/nid/me";


        Map<String, String> requestHeaders = new HashMap<>();
        requestHeaders.put("Authorization", header);
        requestHeaders.put("Accept", "application/json");
        requestHeaders.put("Content-Type", "application/json");
        String responseBody = get(apiURL,requestHeaders);

        JSONObject obj = new JSONObject();
		JSONParser parser = new JSONParser();
		obj = (JSONObject)parser.parse(responseBody);
		
	
		JSONObject obj2 = (JSONObject)obj.get("response");
		
		String id2 = (String)obj2.get("id");
		String nickname = (String)obj2.get("nickname");
		System.out.println("아이디:"+id2);
		System.out.println("별명:"+nickname);
        
        session.setAttribute("nickname", nickname);
        System.out.println(responseBody);
		return "redirect:/main";
	}
	
    private static String get(String apiUrl, Map<String, String> requestHeaders){
        HttpURLConnection con = connect(apiUrl);
        try {
            con.setRequestMethod("GET");
            for(Map.Entry<String, String> header :requestHeaders.entrySet()) {
                con.setRequestProperty(header.getKey(), header.getValue());
                System.out.println("key:"+header.getKey()+", value:"+header.getValue());
            }


            int responseCode = con.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 호출
                return readBody(con.getInputStream());
            } else { // 에러 발생
                return readBody(con.getErrorStream());
            }
        } catch (IOException e) {
            throw new RuntimeException("API 요청과 응답 실패", e);
        } finally {
            con.disconnect();
        }
    }


    private static HttpURLConnection connect(String apiUrl){
        try {
            URL url = new URL(apiUrl);
            return (HttpURLConnection)url.openConnection();
        } catch (MalformedURLException e) {
            throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
        } catch (IOException e) {
            throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
        }
    }



}