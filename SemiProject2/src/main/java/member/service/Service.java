package member.service;

import model.Member;

public interface Service {
	void join(Member m);
	Member getMember(String email);
	void editMember(Member m);
	void remMember(String email);
	boolean login(String email, String pw);
	int getType(String email);
}
