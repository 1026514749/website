package commons.webapp.result;

public class UploadResult extends ActionResult {
	private static final long serialVersionUID = 8557493741073772188L;
	private String fileGuid;

	public String getFileGuid() {
		return fileGuid;
	}

	public void setFileGuid(String fileGuid) {
		this.fileGuid = fileGuid;
	}

	public UploadResult(boolean success) {
		super(success);
	}
	
}
