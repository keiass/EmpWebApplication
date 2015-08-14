package kr.co.javaspecialist.emp.listener;

import java.net.URL;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.log4j.Logger;

import kr.co.javaspecialist.emp.model.EmpDAO;
import scriptella.execution.EtlExecutor;
import scriptella.execution.EtlExecutorException;

public class WebDBInitializer implements ServletContextListener {

    private static final String WEBINIT_ETL_PATH = "/WEB-INF/classes/db/database.properties";
	static final Logger logger = Logger.getLogger(WebDBInitializer.class);

    static void initDatabase(URL etlUrl) throws EtlExecutorException {
        EtlExecutor exec = EtlExecutor.newExecutor(etlUrl);
        exec.execute();
    }

    public void contextInitialized(ServletContextEvent servletContextEvent) {
        ServletContext ctx = servletContextEvent.getServletContext();
        try {
            initDatabase(ctx.getResource("/WEB-INF/classes/db/database.init.xml"));
            logger.info("DB script executed");
        } catch (Exception e) {
        	logger.error("Unable to execute DB script", e);
        }
    }
    public void contextDestroyed(ServletContextEvent arg0)  { 
    }
	
}
