package com.sist.mapper;

import java.util.*;

import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import com.sist.vo.*;

public interface EmpMapper {
	public List<EmpVO> empListData();
	
	/*
	 * @Results({
	 * 
	 * @Result(property = "dvo.dname", column="dname"),
	 * 
	 * @Result(property = "dvo.loc", column="loc"),
	 * 
	 * @Result(property = "svo.grade", column="grade") })
	 */
	@ResultMap("empMap")	//xml에 등록된 resultmap
	@Select("SELECT empno, ename, job, TO_CHAR(hiredate, 'YYYY-MM-DD') as dbday, sal"
			+ 	"dname, loc, grade"
			+ "FROM emp,dept,salgrade"
			+ "WHERE emp,deptno=dept.deptno"
			+ "AND sal BETWEEN losal AND hisal"
			+ "AND empno=#{empno}")
	public EmpVO emp_detailData(int empno);
	
	
}

