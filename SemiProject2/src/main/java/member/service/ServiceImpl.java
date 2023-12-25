package member.service;

import member.dao.Dao;
import member.dao.DaoImpl;
import model.Member;


public class ServiceImpl implements Service {

	private Dao dao;

	public ServiceImpl() {
		this.dao = new DaoImpl();
	}

	public void join(Member m) {
		// TODO Auto-generated method stub
		dao.insert(m);
	}

	public Member getMember(String email) {
		// TODO Auto-generated method stub
		return dao.select(email);
	}

	public void editMember(Member m) {
		// TODO Auto-generated method stub
		dao.update(m);
	}

	public void remMember(String email) {
		// TODO Auto-generated method stub
		dao.delete(email);
	}

	public boolean login(String email, String pw) {
		// TODO Auto-generated method stub
		Member m = dao.select(email);
		if (m == null || !m.getPw().equals(pw)) {
			return false;
		} else {
			return true;
		}
	}

	@Override
	public int getType(String email) {
		
		return dao.getType(email);
	}

}
