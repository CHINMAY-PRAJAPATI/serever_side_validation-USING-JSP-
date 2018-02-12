<%@page import="com.example.sample.RegistrationBean"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Registration Form</title>
</head>
<body>
<%
	String firstName="";
	String lastName="";
	String address ="";
	String emailId="";
	String gender="";
	String rollNo="";
	String branch[] = null;
	String languages[] = null;
	String sem="";
	String bday="";
	
	String firstNameErr="";
	String lastNameErr="";
	String addressErr ="";
	String emailIdErr="";
	String genderErr="";
	String rollNoErr="";
	String branchErr="";
	String languageErr="";
	String semErr="";
	String bdayErr="";
	String maleCounter="",femaleCounter="";
	int m1=0;
	int m2=0;
	int m3=0;
	int m4=0;
	int m5=0;
	int l1=0;
	int l2=0;
	int l3=0;
	int l4=0;
	int l5=0;
	
	RegistrationBean rb =(RegistrationBean)request.getAttribute("bean");
	
	if(rb != null)
	{
	
		firstName = rb.getFirstName();	
		lastName = rb.getLastName();
		address = rb.getAddress();
		emailId = rb.getEmailId();		
		gender = rb.getGender();
		rollNo = rb.getRollNo();
		branch = rb.getBranch();
		branch = rb.getBranch();
		languages = rb.getLanguages();
		sem = rb.getSem();
		bday = rb.getBday();
		
		firstNameErr = (String)request.getAttribute("firstNameErr");
		lastNameErr = (String)request.getAttribute("lastNameErr");
		addressErr = (String)request.getAttribute("addressErr");
		emailIdErr = (String)request.getAttribute("emailIdErr");
		genderErr = (String)request.getAttribute("genderErr");
		rollNoErr = (String)request.getAttribute("rollNoErr");
		branchErr = (String)request.getAttribute("branchErr");
		languageErr = (String)request.getAttribute("languageErr");
		semErr = (String)request.getAttribute("semErr");
		bdayErr = (String)request.getAttribute("bdayErr");
		
		if(branch != null)
		{
			int i=0;
			
			while(i !=  branch.length)
			{
				if("ce".equals(branch[i]))
				{
					 m1 = 1;
				}//end of if
				else if("cse".equals(branch[i]))
				{
					m2 = 1;
				}//end of else if
				else if("IT".equals(branch[i]))
				{
					m3 = 1;
				}//end of else if
				else if("EC".equals(branch[i]))
				{
					m4 = 1;
				}//end of else if
				else if("m".equals(branch[i]))
				{
					m5 = 1;
				}//end of else if
				i++;
			}//end of while
		}//end of if
		
		if(languages != null)
		{
			int i=0;
			while(i != languages.length)
			{
				if("e".equals(languages[i]))
				{
					l1 = 1;
				}//end of if
				else if("s".equals(languages[i]))
				{
					l2 = 1;
				}//end of else if
				else if("g".equals(languages[i]))
				{
					l3 = 1;
				}//end of else if
				else if("h".equals(languages[i]))
				{
					l4 = 1;
				}//end of else if
				else if("c".equals(languages[i]))
				{
					l5 = 1;
				}//end of else if
				i++;
			}//end of while
		}//end of if
	}//end of if
%>
	<h1><center style="height: 55px; ">Registration-Form</center></h1>
	<center>
		<table style=" position: fixed;">
			<form method="post" action="jspValidationController">
			<tr>
				<th>First Name:</th>
				<td><input type="text" name="firstName" value=<%= firstName != null ? firstName : "" %>></td>
				<td><%= firstNameErr != null ? firstNameErr : ""%><br></td>
			</tr>
			<tr>
				<th>Last Name:</th>
				<td><input type="text" name="lastName" value=<%= lastName != null ? lastName : "" %>></td>
				<td><%= lastNameErr != null ? lastNameErr : "" %><br></td>
			</tr>
			 <tr> 
				 <td><h3>Address: </h3></td> 
				 <td><textarea name="address" cols="25" rows="3" ><%=address != null ? address :"" %> </textarea>
				 <td><%= addressErr !=null ? addressErr : "" %></td> 
			 </tr> 
			  <tr> 
				 <td><h3>Email Id: </h3></td> 
				 <td><input type="email" name="emailId" value=<%=emailId!=null?emailId:"" %>>
				 <td><%= emailIdErr!=null ? emailIdErr : "" %></td> 
			 </tr> 
			<tr>
				<th>gender:</th>
				<% if("male".equals(gender)){%>
					<td><input type="radio" name="gender" value="male" checked="checked">MALE</td>
				<%} 
				else{
				%><td><input type="radio" name="gender" value="male">MALE</td>
				<%} %>
				<% if("female".equals(gender)){%>
					<td><input type="radio" name="gender" value="female" checked="checked">FEMALE</td>
				<%} 
				else{
				%><td><input type="radio" name="gender" value="female">FEMALE</td>
				<%} %>
				<td><%=genderErr != null ? genderErr : "" %><br></td>
			</tr>
			<tr>
				<th>Enrollment No:</th>
				<td><input type="text" name="rollNo" value=<%= rollNo != null ? rollNo : ""%>></td>
				<td><%=rollNoErr != null ? rollNoErr : "" %><br></td>
			</tr>
			<tr>
				<th>Known Language: </th>
				<%if(l1 == 1){ %>
					<tr><td><input type="checkbox" name="languages" value="e" checked="checked">English</td></tr>
				<%}else{ %>
					<tr><td><input type="checkbox" name="languages" value="e" >English</td></tr>
				<%}if(l2 == 1){ %>
					<tr><td><input type="checkbox" name="languages" value="s" checked="checked">Spanish</td></form>tr>
				<%}else{ %>
					<tr><td><input type="checkbox" name="languages" value="s" >Spanish</td></tr>
				<%}if(l3 == 1){ %>
					<tr><td><input type="checkbox" name="languages" value="g" checked="checked">Germany</td></tr>
				<%}else{ %>
					<tr><td><input type="checkbox" name="languages" value="g" >Germany</td></tr>
				<%}if(l4 == 1){ %>
					<tr><td><input type="checkbox" name="languages" value="h" checked="checked">Hindi</td></tr>
				<%}else{ %>
					<tr><td><input type="checkbox" name="languages" value="h" >Hindi</td></tr>
				<%}if(l5 == 1){ %>
					<tr><td><input type="checkbox" name="languages" value="c" checked="checked">Chinese</td></tr>
				<%}else{ %>
					<tr><td><input type="checkbox" name="languages" value="c" >Chinese</td></tr>
				<%} %>
				<td><%= languageErr != null ? languageErr : ""  %></td>
			</tr>
			<tr>
				<th>Sem:</th>
				<td><input type="text" name="sem" value=<%= sem != null ? sem : "" %>></td>
				<td><%= semErr != null ? semErr : "" %><br></td>
			</tr>
			<tr>
				<th>Birth Date: </th>
				<td><input type="date" name="bday" value=<%=bday != null ? bday : "" %>></td>
				<td><%=bdayErr != null ? bdayErr : "" %><br></td>
				<td><br></td>
			</tr>
			<tr>
				<th>Branch:</th>
				<td>
					<select name="branch" multiple="multiple" <%= branch != null ? branch : "" %>>
						<%if(m1 == 1){ %>	
							<option value="ce" selected>Computer Engg.</option>
						<%}else{ %>
							<option value="ce" >Computer Engg.</option>
						<%}if(m2 == 1){ %>
							<option value="cse" selected>Computer Sci.</option>
						<%}else{ %>
							<option value="cse" >Computer Sci.</option>
						<%}if(m3 == 1){ %>
							<option value="IT" selected>IT</option>
						<%}else{ %>	
							<option value="IT" >IT</option>
						<%}if(m4 == 1){ %>
							<option value="EC" selected>EC</option>
						<%}else{ %>	
							<option value="EC">EC</option>
						<%}if(m5 == 1){ %>
							<option value="m" selected>Mech</option>
						<%}else{ %>	
							<option value="m">Mech</option>
						<%} %>
					</select>
				</td>
				<td><%=branchErr != null ? branchErr : "" %><br></td>
			</tr>
			<tr>
				<td>
				<input type="submit">
				</td>
			</tr>
			</form>
		</table>
	</center>
</body>
</html>