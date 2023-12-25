package member.dao;

import model.Member;

public interface Dao {
	void insert(Member m);
	Member select(String email);
	void update(Member m);
	void delete(String email);
	int getType(String email);
}
