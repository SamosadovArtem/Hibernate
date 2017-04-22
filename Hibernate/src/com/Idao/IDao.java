package com.Idao;

public interface IDao<T, E> {
	public T getAll();

	public void insert(T vo);

	public void update(T vo);

	public void delete(T vo);

	public T findByPrimaryKey(E PK);
}