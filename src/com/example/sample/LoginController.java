package com.example.sample;

import java.io.IOException;
import java.io.PrintWriter;

import com.example.sample.RegistrationBean;//old java bean class
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.corba.se.spi.protocol.RequestDispatcherDefault;

public class LoginController extends HttpServlet{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doPost(request, response);
	}//end of doGet()
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		//response.setContentType("text/html");
		boolean errorMsg = false ;
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String address = request.getParameter("address");
		String emailId = request.getParameter("emailId");
		String gender = request.getParameter("gender");         
		String rollNo = request.getParameter("rollNo");
		String branchs[] = request.getParameterValues("branch");
		String languages[] = request.getParameterValues("languages");
		String sem = request.getParameter("sem");
		String bday = request.getParameter("bday");
		
		RegistrationBean bean = new RegistrationBean();
		
		bean.setFirstName(firstName);
		bean.setLastName(lastName);
		bean.setAddress(address);
		bean.setEmailId(emailId);
		bean.setGender(gender);
		bean.setRollNo(rollNo);
		bean.setSem(sem);
		bean.setBranch(branchs);
		bean.setLanguages(languages);
		bean.setBday(bday);
	
		request.setAttribute("bean",bean);	
		
		if(firstName == null || firstName.trim().length()==0)
		{
			errorMsg = true;
			request.setAttribute("firstNameErr", "<span style=\"color:#442600;\">Please Enter First Name</span>");
		}//end of if 
		if(lastName == null || lastName.trim().length()==0)
		{
			errorMsg = true;
			request.setAttribute("lastNameErr", "<span style=\"color:#442600;\">Please Enter Last Name</span>");
		}//end of if
		if (address == null || address.trim().length() == 0) {
			errorMsg = true;
			request.setAttribute("addressErr", "<span style=\"color:#442600;\">Please Enter Address</span>");
		}//end of if
		if (emailId == (null) || emailId.trim().length() == 0) {
			errorMsg = true;
			request.setAttribute("emailIdErr", "<span style=\"color:#442600;\">Please Enter Email Id</span>");
		}//end of if
		if(gender == null)
		{
			errorMsg = true;
			request.setAttribute("genderErr", "<span style=\"color:#442600;\">Please Enter Gender</span>");	
		}//end of if
		
		if(rollNo == null || rollNo.trim().length()==0)
		{
			errorMsg = true;
			request.setAttribute("rollNoErr", "<span style=\"color:#442600;\">Please Enter Enrollment No</span>");
		}//end of if 
		if(sem == null || sem.trim().length()==0)
		{
			errorMsg = true;
			request.setAttribute("semErr", "<span style=\"color:#442600;\">Please Enter Sem</span>");
		}//end of if
		if(branchs == null)
		{
			errorMsg = true;
			request.setAttribute("branchErr", "<span style=\"color:#442600;\">Please Select Branch</span>");
		}//end of if
		if(languages == null)
		{
			errorMsg = true;
			request.setAttribute("languageErr", "<span style=\"color:#442600;\">Please Select languages</span>");
		}//end of if
		if(bday == null || bday.trim().length()==0)
		{
			errorMsg = true;
			request.setAttribute("bdayErr", "<span style=\"color:#442600;\">Please Enter Birth Date</span>");
		}//end of if
		
		if(errorMsg == (true))
		{
			RequestDispatcher rd = request.getRequestDispatcher("WelcomePage.jsp");
			rd.forward(request, response);			
		}//end of if
		else
		{
			PrintWriter out = response.getWriter();
			out.println("<h1 style=\"color:#442600;\">WELCOME MR."+firstName+" "+lastName+"</h1>");
		}//end of else
	}//end of doPost()
}//end of jspValidationController
