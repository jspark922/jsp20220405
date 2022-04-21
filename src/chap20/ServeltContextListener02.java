package chap20;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ServeltContextListener02
 *
 */
@WebListener
public class ServeltContextListener02 implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public ServeltContextListener02() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
    	System.out.println("앱이 종료되어서 destroyed 메소드 실행됨");
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
    	System.out.println("앱이 실행되어서 initialized 메소드 실행됨");
    }
	
}
