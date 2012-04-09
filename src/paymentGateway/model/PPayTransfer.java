package paymentGateway.model;


import java.sql.Timestamp;

public class PPayTransfer {
	
	
	private int transferId;
	private int transactionId;
	private int PPayAccId;
	private int amount;
	private int transferStatus;
	private Timestamp transferTS;
	
	public PPayTransfer(){
		
	}
	
	public PPayTransfer(int transactionId, int pPayAccId, int amount,
			int transferStatus) {
		
		this.transactionId = transactionId;
		this.PPayAccId = pPayAccId;
		this.amount = amount;
		this.transferStatus = transferStatus;
	}
	
	
	public int getTransferId() {
		return transferId;
	}
	public void setTransferId(int transferId) {
		this.transferId = transferId;
	}
	public int getTransactionId() {
		return transactionId;
	}
	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}
	public int getPPayAccId() {
		return PPayAccId;
	}
	public void setPPayAccId(int pPayAccId) {
		PPayAccId = pPayAccId;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getTransferStatus() {
		return transferStatus;
	}
	public void setTransferStatus(int transferStatus) {
		this.transferStatus = transferStatus;
	}
	public Timestamp getTransferTS() {
		return transferTS;
	}
	public void setTransferTS(Timestamp transferTS) {
		this.transferTS = transferTS;
	}

}
