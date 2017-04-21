package com.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.Idao.ICityDao;
import com.entity.CityVO;
import com.util.HibernateUtil;

public class CityDaoImpl implements ICityDao{
	
	@Override
	public List<CityVO> getAll() {
		List<CityVO> list = new ArrayList<CityVO>();
		Session  session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			
			Query query = session.createQuery("FROM CityVO");
			list = query.list();
			
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			// TODO Auto-generated 
		}
		
		return list;
	}

	public static void main(String[] args){
		List<CityVO> list = new ArrayList<CityVO>();
		CityDaoImpl dao = new CityDaoImpl();
		list = dao.getAll();
		System.out.println(list);
		for(CityVO vo:list){
			System.out.println(vo.getCityName());
		}
		System.out.println("Local master2");
	}
}
