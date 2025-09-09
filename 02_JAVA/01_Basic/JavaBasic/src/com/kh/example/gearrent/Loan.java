package com.kh.example.gearrent;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

public class Loan {
	private String itemId;
	private String memberId;
	private LocalDate loanDate;
	private LocalDate dueDate;
	private LocalDate returnedDate;

	public Loan(String itemId, String memberId, LocalDate loanDate, LocalDate dueDate) {
		super();
		this.itemId = itemId;
		this.memberId = memberId;
		this.loanDate = loanDate;
		this.dueDate = dueDate;
	}

	public String getItemId() {
		return itemId;
	}

	public void setItemId(String itemId) {
		this.itemId = itemId;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public LocalDate getLoanDate() {
		return loanDate;
	}

	public void setLoanDate(LocalDate loanDate) {
		this.loanDate = loanDate;
	}

	public LocalDate getDueDate() {
		return dueDate;
	}

	public void setDueDate(LocalDate dueDate) {
		this.dueDate = dueDate;
	}

	public LocalDate getReturnedDate() {
		return returnedDate;
	}

	public void setReturnedDate(LocalDate returnedDate) {
		this.returnedDate = returnedDate;
	}

	public boolean isOverdue(LocalDate today) {
		
		//계산기준일(반납날짜 또는 오늘)
		LocalDate base = (returnedDate != null) ? returnedDate : today;
		
		//기준일 마감일(dueDate)보다 늦으면 연체 발생
		return base.isAfter(dueDate);
	}

	public int overdueDays(LocalDate today) {
		/*내가 한거
		LocalDate base = (returnedDate != null) ? returnedDate : today;
		return base.isAfter(dueDate) ? (int) ChronoUnit.DAYS.between(dueDate, base) : 0;
		*/
		
		//강사님이 하신거
	    // 계산기준일(반납날짜 또는 오늘)
		LocalDate base = (returnedDate != null) ? returnedDate : today;
		
		if (base.isAfter(dueDate)) {
			long days = ChronoUnit.DAYS.between(dueDate, base);
			
			return (int)Math.abs(days);
		}
		return 0;
	}

	@Override
	public String toString() {
		return "Loan[item=" + itemId + ", member=" + memberId + ", loan=" + loanDate + ", due=" + dueDate
				+ ", returnedDate=" + returnedDate + "]";
	}

}
