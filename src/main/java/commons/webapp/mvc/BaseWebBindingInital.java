package commons.webapp.mvc;

import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.support.WebBindingInitializer;
import org.springframework.web.context.request.WebRequest;

public class BaseWebBindingInital implements WebBindingInitializer {
	@Override
	public void initBinder(WebDataBinder binder, WebRequest request) {
		// TODO Auto-generated method stub
		
	}

	private String timeFormatter;



	public String getTimeFormatter() {
		return timeFormatter;
	}

	public void setTimeFormatter(String timeFormatter) {
		this.timeFormatter = timeFormatter;
	}
	

}
