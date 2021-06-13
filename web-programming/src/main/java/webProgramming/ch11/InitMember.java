package webProgramming.ch11;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class InitMember implements ServletContextListener {	// 톰캣 서버가 실행될 때 실행됨
	
	public void contextInitialized(ServletContextEvent sce) {
		ServletContext context = sce.getServletContext();
		ArrayList<Member> mlist = new ArrayList<Member>();
		
		for(int i = 0; i < 8; i++) {	// JSTL 예제를 위해 샘플 데이터 생성
			Member data = new Member("홍길동" + i, "test" + i + "@test.net");
			mlist.add(data);
		}
		
		// email이 빠진 2개 샘플 데이터 추가
		mlist.add(new Member("김철수", null));
		mlist.add(new Member("이영희", null));
		
		// application scope에 members 및 member 객체 저장
		context.setAttribute("members", mlist);
		context.setAttribute("member", new Member());
	}
	
	public void contextDestroyed(ServletContextEvent sce) {}	// 톰캣 서버가 종료될 때 실행
}
