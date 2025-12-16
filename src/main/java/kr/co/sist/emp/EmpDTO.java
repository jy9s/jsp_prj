package kr.co.sist.emp;

import java.util.Date;

/**
 * hiredateStr : Oracle에서 to_char함수를 사용하여 고정된 날짜 형식으로 얻기
 * hiredate : Java에서 rs.getDate() method로 얻어서 다양한 날짜형식으로 보여줄 때. 
 */
public class EmpDTO extends DeptDTO{
private int empno, sal,comm, mgr;
private String ename, job, hirdateStr;
private Date hiredate;

public EmpDTO(int deptno, String dname, String loc, int empno, int sal, int comm, int mgr, String ename, String job,
		String hirdateStr, Date hiredate) {
	super(deptno, dname, loc);
	this.empno = empno;
	this.sal = sal;
	this.comm = comm;
	this.mgr = mgr;
	this.ename = ename;
	this.job = job;
	this.hirdateStr = hirdateStr;
	this.hiredate = hiredate;
}
public EmpDTO() {
}
public int getEmpno() {
	return empno;
}
public void setEmpno(int empno) {
	this.empno = empno;
}
public int getSal() {
	return sal;
}
public void setSal(int sal) {
	this.sal = sal;
}
public int getComm() {
	return comm;
}
public void setComm(int comm) {
	this.comm = comm;
}
public int getMgr() {
	return mgr;
}
public void setMgr(int mgr) {
	this.mgr = mgr;
}
public String getEname() {
	return ename;
}
public void setEname(String ename) {
	this.ename = ename;
}
public String getJob() {
	return job;
}
public void setJob(String job) {
	this.job = job;
}
public String getHirdateStr() {
	return hirdateStr;
}
public void setHirdateStr(String hirdateStr) {
	this.hirdateStr = hirdateStr;
}
public Date getHiredate() {
	return hiredate;
}
public void setHiredate(Date hiredate) {
	this.hiredate = hiredate;
}
@Override
public String toString() {
	return "EmpDTO [empno=" + empno + ", sal=" + sal + ", comm=" + comm + ", mgr=" + mgr + ", ename=" + ename + ", job="
			+ job + ", hirdateStr=" + hirdateStr + ", hiredate=" + hiredate + "]";
}		


}
