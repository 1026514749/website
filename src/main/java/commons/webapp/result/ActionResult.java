package commons.webapp.result;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ActionResult implements Serializable{
	
	private static final long serialVersionUID = 8557493741073772187L;
	protected boolean success;
    protected Throwable error;
    protected String message;
    protected String timeStamp;
    protected String bizCode;
    protected Object object;
    protected Object extend;
	public boolean isSuccess() {
		return success;
	}
	public void setSuccess(boolean success) {
		this.success = success;
	}
	public Throwable getError() {
		return error;
	}
	public void setError(Throwable error) {
		this.error = error;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getTimeStamp() {
		return timeStamp;
	}
	public void setTimeStamp(String timeStamp) {
		this.timeStamp = timeStamp;
	}
	public String getBizCode() {
		return bizCode;
	}
	public void setBizCode(String bizCode) {
		this.bizCode = bizCode;
	}
	public Object getObject() {
		return object;
	}
	public void setObject(Object object) {
		this.object = object;
	}
	public Object getExtend() {
		return extend;
	}
	public void setExtend(Object extend) {
		this.extend = extend;
	}
	public ActionResult(boolean success) {
		super();
		this.success = success;
		this.timeStamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
	}
    public ActionResult() {
        super();
        this.timeStamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
    }
    
    public <T> T getResult() {
        return (T) this.object;
    }

    public <T extends ActionResult> T ok() {
        this.setSuccess(true);
        return (T) this;
    }

    public <T extends ActionResult> T fail() {
        this.setSuccess(false);
        return (T) this;
    }
    
    
}
