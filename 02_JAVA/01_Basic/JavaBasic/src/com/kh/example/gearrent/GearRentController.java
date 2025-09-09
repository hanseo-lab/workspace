package com.kh.example.gearrent;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;

public class GearRentController {
	private HashMap<String, Device> catalog = new HashMap<>();
	private HashMap<String, Member> members = new HashMap<>();
	private HashMap<String, Loan> activeLoans = new HashMap<>();
	
	public boolean addDevice(Device device) {
		if(catalog.containsKey(device.getId())) {
			return false;
		}
		catalog.put(device.getId(), device);
		return true;
		//return catalog.putIfAbsent(device.getId(), device) == null; 내가 한거 
	}
	
	public boolean addMember(Member member) {
		if(members.containsKey(member.getId())) {
			return false;
		}
		members.put(member.getId(), member);
		return true;
		//return members.putIfAbsent(member.getId(), member) == null; 내가 한거
	}
	
	public Loan borrow(String memberId, String itemId, LocalDate today) {
		/* 강사님이 하신 거
		Device device = catalog.get(itemId);
		LocalDate due = today.plusDays(device.getBorrowLimitDays());
		Loan loan = new Loan(itemId, memberId, today, due);
		activeLoans.put(itemId, loan);
		device.increaseBorrowCount();
		return loan;
		*/
		
		if(!members.containsKey(memberId) || !catalog.containsKey(itemId) || activeLoans.containsKey(itemId)){
			return null;
		}
		Device device = catalog.get(itemId);
		LocalDate due = today.plusDays(device.getBorrowLimitDays());
		Loan loan = new Loan(itemId, memberId, today, due);
		activeLoans.put(itemId, loan);
		device.increaseBorrowCount();
		return loan;
		
	}
	
	public int returnItem(String itemId, LocalDate today) {
		/*강사님 하신 거
		Loan loan = activeLoans.get(itemId); //대여정보객체
		
		loan.setReturnedDate(today); //실제 반납일
		int overdue = loan.overdueDays(today);
		int fee = catalog.get(itemId).calcLateFee(overdue); //기기정보객체 연체료
		activeLoans.remove(itemId);
		
		return fee;
		*/
		
		Loan loan = activeLoans.get(itemId);
		if(loan == null) return -1;
		loan.setReturnedDate(today);
		int overdue = loan.overdueDays(today);
		int fee = catalog.get(itemId).calcLateFee(overdue);
		activeLoans.remove(itemId);
		return fee;
	}
	
	public ArrayList<Device> findByTag(String tag){
		if(tag == null) return new ArrayList<>();
		ArrayList<Device> result = new ArrayList<>();
		for(Device d : catalog.values()) {
			if(d.hasTag(tag)) result.add(d);
		}
		return result;
	}
	
	public ArrayList<Device> findByKeyword(String keyword){
		if(keyword == null || keyword.isEmpty()) return new ArrayList<>();
		String lower = keyword.toLowerCase();
		ArrayList<Device> result = new ArrayList<>();
		for(Device d : catalog.values()) {
			if(d.getName().toLowerCase().contains(lower) || d.getCategory().toLowerCase().contains(lower)) {
				result.add(d);
			}
		}
		return result;
	}
	
	public Collection<Device> getAllDevices(){
		//읽기전용 뷰를 만들어준다 -> 추가/삭제/수정 불가
		return Collections.unmodifiableCollection(catalog.values());
	}
	
	public Collection<Loan> getActiveLoans(){
		return Collections.unmodifiableCollection(activeLoans.values());
	}
}
