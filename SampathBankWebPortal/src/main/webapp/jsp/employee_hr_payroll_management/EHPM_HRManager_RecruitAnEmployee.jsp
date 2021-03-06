<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page  import="POJO_MODEL.employee_hr_payroll_management.Employee, POJO_MODEL.employee_hr_payroll_management.managers.CommonEntityManager,
POJO_MODEL.user_management.Gender, POJO_MODEL.user_management.Nationality, POJO_MODEL.employee_hr_payroll_management.Branch, 
POJO_MODEL.employee_hr_payroll_management.Designation"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="/SampathBankWebPortal/resources/css&js&jquery/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="/SampathBankWebPortal/resources/css&js&jquery/customized.css" type="text/css">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <title>Employee Recruitment</title>
		<%
			Employee employee = (Employee) session.getAttribute("employee");
			CommonEntityManager cem = (CommonEntityManager) session.getAttribute("commonEntityManager");
		
			if(employee == null || !employee.getDesignation().getDesignation().equals("human resource manager"))
				response.sendRedirect("/SampathBankWebPortal/jsp/user_management/UM_Login.jsp");
		%>
		<script type="text/javascript">
		  function autoFill() {
			  var date = new Date();
			  var currentDate = date.toISOString().slice(0,10);
			  
		    document.getElementById('EmpForm01BasicDetails02').value = "Gihan";
		    document.getElementById('EmpForm01BasicDetails03').value = "Abc";
		    document.getElementById('EmpForm01BasicDetails04').value = "Jayaweera";
		    document.getElementById('EmpForm01BasicDetails05').value = "Deflaunta";
		    document.getElementById('EmpForm01BasicDetails06').value = "male";
		    document.getElementById('EmpForm01ContactDetails01').value = "78/2 Karawita Road";
		    document.getElementById('EmpForm01ContactDetails02').value = "Bambaraella";
		    document.getElementById('EmpForm01ContactDetails03').value = "Pannipitya";
		    document.getElementById('EmpForm01ContactDetails04').value = "western";
		    document.getElementById('EmpForm01ContactDetails05').value = "10280";
		    document.getElementById('EmpForm01ContactDetails06').value = "0112333333";
		    document.getElementById('EmpForm01ContactDetails07').value = "0770057735";
		    document.getElementById('EmpForm01ContactDetails08').value = "jayaweera@gmail.com";
		    document.getElementById('EmpForm01Identification01').value = "969999999v";
		    document.getElementById('EmpForm01Identification03').value = "sinhalese";
		    document.getElementById('EmpForm01Identification04').value = "1996-02-02";
		    document.getElementById('EmpForm01CompanyRelated01').value = "branch 01 city";
		    document.getElementById('EmpForm01CompanyRelated02').value = "human resource";
		    document.getElementById('EmpForm01CompanyRelated03').value = "normal employee";
		    document.getElementById('EmpForm01CompanyRelated05').value = currentDate;
		    document.getElementById('EmpForm01CompanyRelated05').disabled = true;
		  }
		</script>
    </head>

    <body>
        <nav class="navbar fixed-top navbar-expand-md navbar-dark fixed-stuff">
            <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_Common_Employee_Homepage.jsp" title="Go to Employee Homepage">EmpHome</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_ViewProfile.jsp" title="View Profile">MyProfile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/SampathBankWebPortal/EmailInboxController" title="View Company Messages">MyInbox</a>
                    </li>
                </ul>
            </div>
            <div class="mx-auto order-0">
                <a class="navbar-brand mx-auto" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_Common_Employee_Homepage.jsp" title="Go to Employee Homepage">SampathEmpWeb</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item" title="Login">
                        <a class="nav-link" href="/SampathBankWebPortal/Logout"><span class="fa fa-sign-in"></span> Sign Out</a>
                    </li>
                </ul>
            </div>
        </nav>

        <header class="page-header" id="header01">
            <div class="header-mid">
                <a href="#" title="Go to Sampath Web Site">
                    <div class="container-fluid img-div">
                        <img src="/SampathBankWebPortal/resources/images/sampathbanklogo/SampathBankLogo01.png" alt="" class="logo">
                    </div>
                </a>
                <div style=" float: right">
                    <div class="container-fluid img_profile_div">
                        <img src="/SampathBankWebPortal/resources/images/ProfilePlaceholder.png" alt="" class="pro-pic">
                    </div>
                    <div class="container-fluid" style="float: right; clear: both;" >
                        <a href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_ViewProfile.jsp">Mr. <%=employee.getName().getFirstName()%><br/>
                        <%=employee.getName().getLastName() %></a>
                    </div>
                </div>
            </div>

            <div class="container-fluid" style="margin-top:10px;">
                <ul class="nav nav-pills nav-fill nav-justified nav-header">
                    <li class="nav-item dropdown" title="Click to See Your Duties">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; text-align: center; background-color: #FD4F00">Employee Duties</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="#" style="color:white">Recruit an Employee</a>
                            <a class="dropdown-item" href="/SampathBankWebPortal/OnlineEmployeeAccountController?abc=check" style="color:white">Create Employee Online Account</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/SampathBankWebPortal/ActiveInactiveSearchEmployees?deed=allActive" style="color:white">Active Employees</a>
                            <a class="dropdown-item" href="/SampathBankWebPortal/ActiveInactiveSearchEmployees?deed=inActive" style="color:white">Inactive Employees</a>
                            <a class="dropdown-item" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_HRManager_SearchForEmployees.jsp" style="color:white">Search for Employees</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/SampathBankWebPortal/HRLeaveRequestManagement?lmanage=getAllLeaveRequests" style="color:white">Leave Request Management</a>
                            <a class="dropdown-item" href="/SampathBankWebPortal/UpdateProfileDetailsHRSide?upmanage=retrieveAll" style="color:white">Update Details Request Management</a>
                            <a class="dropdown-item" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_HRManager_InitiateSalary.jsp" style="color:white">Salary Management</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown" title="Click to See Leave Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; background-color: #FD4F00">Leave Request Inquiry</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="/SampathBankWebPortal/LeaveHandlingEmployee?xyz=retrieveBase" style="color:white">Apply for Leave</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/SampathBankWebPortal/LeaveHandlingEmployee?xyz=retrieveHistory" style="color:white">Leave History</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown" title="Click to See Salary Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; background-color: #FD4F00">Salary Inquiry</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_CalculateSalary.jsp" style="color:white">Calculate Salary</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_Employee_Salary_Pay_Slip_PDF.jsp" style="color:white">Pay Slip</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown" title="Click to See Skills Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; text-align: center; background-color: #FD4F00">Documents & Reports</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_HRManager_AllEmployeeDetailsDocumentation.jsp" style="color:white">All Employee Details</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown" title="Click to See Mail Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; background-color: #FD4F00">Mailing System</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="/SampathBankWebPortal/EmailInboxController" style="color:white">Inbox</a>
                            <a class="dropdown-item" href="/SampathBankWebPortal/EmailOutboxController" style="color:white">Outbox</a>
                            <a class="dropdown-item" href="/SampathBankWebPortal/jsp/user_management/UM_EmailCompose.jsp" style="color:white">New Message</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown" title="Click to See Profile Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; background-color: #FD4F00">Profile Related</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_ViewProfile.jsp" style="color:white">Profile Details</a>
                            <a class="dropdown-item" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_UpdateProfile.jsp" style="color:white">Update Profile</a>
                        </div>
                    </li>
                </ul>
            </div>
        </header>

<!--
    BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY BODY
-->
		<nav aria-label="breadcrumb" class="breadcrumb-stuff">
		  <ol class="breadcrumb">
		    <li class="breadcrumb-item"><a href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_Common_Employee_Homepage.jsp">EmpHome</a></li>
		    <li class="breadcrumb-item">Employee Duties</li>
		    <li class="breadcrumb-item active" aria-current="page">Recruit An Employee</li>
		  </ol>
		</nav>

        <div class="container-fluid" style="margin-bottom: 100px; height: 1000px">
            <br><h3>Enter Required Details</h3>
            <div class="container" style="margin-top: 50px">
            
<!-- 
	FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM FORM
 -->
                <form action="/SampathBankWebPortal/EmployeeRecruitment" method="post">
                    <div style="float: left; margin-right: 5px;">
                        <div style="width: 550px; float: left; padding: 5px; border-width: 1px; border-style: solid; border-color: #FD4F00; margin-bottom: 5px;">
                            <h5>Basic Details</h5>
                            <div class="form-group row" style="padding: 4px; padding-left: 16px">
                                <label class="col-4 col-form-label" for="EmpForm01BasicDetails02">First Name: *</label>
                                <div class="col-8">
                                	<input type="text" class="form-control" id="EmpForm01BasicDetails02" name="empFirstName">
                                </div>
                            </div>
                            <div class="form-group row" style="padding: 4px; padding-left: 16px">
                                <label class="col-4 col-form-label" for="EmpForm01BasicDetails03">Middle Name:</label>
                                <div class="col-8">
                                    <input type="text" class="form-control" id="EmpForm01BasicDetails03" name="empMiddletName">
                                </div>
                            </div>
                            <div class="form-group row" style="padding: 4px; padding-left: 16px">
                                <label class="col-4 col-form-label" for="EmpForm01BasicDetails04">Last Name: *</label>
                                <div class="col-8">
                                	<input type="text" class="form-control" id="EmpForm01BasicDetails04" name="empLastName">
                                </div>
                            </div>
                            <div class="form-group row" style="padding: 4px; padding-left: 16px">
                                <label class="col-4 col-form-label" for="EmpForm01BasicDetails05">Other Names:</label>
                                <div class="col-8">
                                    <input type="text" class="form-control" id="EmpForm01BasicDetails05" name="empOtherNames">
                                </div>
                            </div>
                            <div class="form-group row" style="padding: 4px; padding-left: 16px">
                                <label class="col-4 col-form-label" for="EmpForm01BasicDetails06">Gender: *</label>
                                <div class="col-8">
                                    <select class="custom-select mr-sm-2" id="EmpForm01BasicDetails06" name="empGender">
                                        <option value="" disabled selected hidden="true">Choose...</option>
                                        <%for(Gender gender : (Collection<Gender>) cem.getGenderList()) {%>
                                        <option value="<%=gender.getGender()%>"><%=gender.getGender()%></option>
                                        <%} %>
                                        <option value="error%>">error</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div style="width: 550px; padding: 5px; padding: 5px; border-width: 1px; border-style: solid; border-color: #FD4F00; clear: both">
                            <h5>Contact Details</h5>
                            <div class="form-group row" style="padding: 4px; padding-left: 16px">
                                <label class="col-4 col-form-label">Street Address:</label>
                                <div class="col-8">
                                    <div class="form-group">
                                        <label for="EmpForm01ContactDetails01">Line 01: *</label>
                                        <input type="text" class="form-control" id="EmpForm01ContactDetails01" placeholder="1234 Main St" name="empAddLine01">
                                    </div>
                                    <div class="form-group">
                                        <label for="EmpForm01ContactDetails02">Line 02:</label>
                                        <input type="text" class="form-control" id="EmpForm01ContactDetails02" placeholder="Sub St" name="empAddLine02">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row" style="padding: 4px; padding-left: 16px">
                                <label class="col-2 col-form-label" for="EmpForm01ContactDetails03">City: *</label>
                                <div class="col-4">
                                    <input type="text" class="form-control" id="EmpForm01ContactDetails03" name="empAddCity">
                                </div>
                                <label class="col-2 col-form-label" for="EmpForm01ContactDetails04">Province: *</label>
                                <div class="col-4">
                                    <select class="custom-select mr-sm-2" id="EmpForm01ContactDetails04" name="empAddProvince">
                                        <option value="" disabled selected hidden="ture">Choose...</option>
                                        <option value="western">Western</option>
                                        <option value="eastern">Eastern</option>
                                        <option value="central">Central</option>
                                        <option value="sourthern">Sourthern</option>
                                        <option value="northern">Northern</option>
                                        <option value="north western">North Western</option>
                                        <option value="sabaragamuwa">Sabaragamuwa</option>
                                        <option value="north central">North Central</option>
                                        <option value="uva">Uva</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row" style="padding: 4px; padding-left: 16px">
                                <label class="col-3 col-form-label" for="EmpForm01ContactDetails05">ZIP Code: *</label>
                                <div class="col-4">
                                	<input type="number" class="form-control" id="EmpForm01ContactDetails05" name="empAddZip" title="5 digit number">
                                	<!-- pattern="[0-9]{3}" -->
                                </div>
                            </div>
                            <div class="form-group row" style="padding: 4px; padding-left: 16px">
                                <label class="col-4 col-form-label" for="EmpForm01ContactDetails06">Home Contact No: *</label>
                                <div class="col-8">
                                	<input type="text" class="form-control" id="EmpForm01ContactDetails06" name="empHomeContact" title="10 digits inluding the preceding 0">
                                	<!-- pattern="0[0-9]{9}" -->
                                </div>
                            </div>
                            <div class="form-group row" style="padding: 4px; padding-left: 16px">
                                <label class="col-4 col-form-label" for="EmpForm01ContactDetails07">Mobile:</label>
                                <div class="col-8">
                                    <input type="text" class="form-control" id="EmpForm01ContactDetails07" name="empMobileContact">
                                    <!-- pattern="0[0-9]{9}" -->
                                </div>
                            </div>
                            <div class="form-group row" style="padding: 4px; padding-left: 16px">
                                <label class="col-4 col-form-label" for="EmpForm01ContactDetails08">Personal Email: *</label>
                                <div class="col-8">
                               		<input type="email" class="form-control" id="EmpForm01ContactDetails08" name="empPersonalEmail">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div style="float: left;">
                        <div style="width: 550px; padding: 5px; border-width: 1px; border-style: solid; border-color: #FD4F00; margin-bottom: 5px;">
                            <h5>Identification</h5>
                            <div class="form-group row" style="padding: 4px; padding-left: 16px">
                                <label class="col-4 col-form-label" for="EmpForm01Identification01">NIC: *</label>
                                <div class="col-8">
                                    <input type="text" class="form-control" id="EmpForm01Identification01" name="empNic" title="9 digits followed by a v or a V">
                                    <!-- pattern="[0-9]{9}(v|V)" -->
                                </div>
                            </div>
                            <div class="form-group row" style="padding: 4px; padding-left: 16px">
                                <label class="col-4 col-form-label" for="EmpForm01Identification03">Nationality: *</label>
                                <div class="col-8">
                                    <select class="custom-select mr-sm-2" id="EmpForm01Identification03" name="empNationality">
                                        <option value="" disabled selected hidden>Choose...</option>
                                        <%for(Nationality nationality : (Collection<Nationality>) cem.getNationalityList()) {%>
                                        <option value="<%=nationality.getNationality()%>"><%=nationality.getNationality()%></option>
                                        <%} %>
                                        <option value="error%>">error</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row" style="padding: 4px; padding-left: 16px">
                                <label class="col-4 col-form-label" for="EmpForm01Identification04">Date of Birth: *</label>
                                <div class="col-8">
                                    <input type="date" class="form-control" id="EmpForm01Identification04" name="empDob">
                                </div>
                            </div>
                        </div>

                        <div style="width: 550px; padding: 5px; padding: 5px; border-width: 1px; border-style: solid; border-color: #FD4F00; clear: both; margin-bottom: 5px;">
                            <h5>Company Related</h5>
                            <div class="form-group row" style="padding: 4px; padding-left: 16px">
                                <label class="col-4 col-form-label" for="EmpForm01CompanyRelated01">Branch: *</label>
                                <div class="col-8">
                                    <select class="custom-select mr-sm-2" id="EmpForm01CompanyRelated01" name="empBranch">
                                        <option value="" disabled selected hidden>Choose...</option>
                                        <%for(Branch branch : (Collection<Branch>) cem.getBranchList()) {%>
                                        <option value="<%=branch.getBranchAddress().getAddressCity()%>"><%=branch.getBranchAddress().getAddressCity()%></option>
                                        <%} %>
                                        <option value="error%>">error</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row" style="padding: 4px; padding-left: 16px">
                                <label class="col-4 col-form-label" for="EmpForm01CompanyRelated02">Department: *</label>
                                <div class="col-8">
                                    <select class="custom-select mr-sm-2" id="EmpForm01CompanyRelated02" name="empDepartment" required>
                                        <option value="" disabled selected hidden>Choose...</option>
                                        <option value="human resource">human resource</option>
                                        <option value="inventory">inventory</option>
                                        <option value="transaction">transaction</option>
                                        <option value="loan">loan</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row" style="padding: 4px; padding-left: 16px">
                                <label class="col-4 col-form-label" for="EmpForm01CompanyRelated03">Designation: *</label>
                                <div class="col-8">
                                    <select class="custom-select mr-sm-2" id="EmpForm01CompanyRelated03" name="empDesignation">
                                        <option value="" disabled selected hidden>Choose...</option>
                                        <%for(Designation designation : (Collection<Designation>) cem.getDesignationList()) {%>
                                        <option value="<%=designation.getDesignation()%>"><%=designation.getDesignation()%></option>
                                        <%} %>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row" style="padding: 4px; padding-left: 16px">
                                <label class="col-4 col-form-label" for="EmpForm01CompanyRelated05">Recruitment Date:*</label>
                                <div class="col-8">
                                    <input type="date" class="form-control" id="EmpForm01CompanyRelated05" name="empPhyRegDate">
                                </div>
                            </div>
                        </div>
			            <div style="clear: both; float: right; margin-top: 20px;">
			                <div class="form-group row">
			                    <div>
			                    	<input type="reset" value="Reset" style="background-color: white; border-radius: 10px; color: black; border-color: #FD4F00; border-width: 2px; border-style: solid; font-size: 22px; margin-right:10px;"/>
			                        <input type="submit" value="Submit" style="background-color: white; border-radius: 10px; color: black; border-color: #FD4F00; border-width: 2px; border-style: solid; font-size: 22px; margin-right: 20px;"/>
			                        <button type="button" onClick="autoFill();" style="background-color: white; border-radius: 10px; color: black; border-color: #FD4F00; border-width: 2px; border-style: solid; font-size: 22px; margin-right: 20px;">Demo</button>
			                    </div>
			                </div>
			            </div>
                    </div>
                        
                </form>
            </div>
        </div>

        <!-- Footer -->
        <footer class="page-footer font-small blue pt-4 footer-all">
            <div class="container-fluid text-center text-md-left">
                <div class="row">
                    <div class="col-6 mt-md-0 mt-3 footer-all-stuff footer-legal-form-stuff" title="Our Legal Form">
                        <h5 class="text-uppercase">Legal Form</h5>
                        <p style="text-align: justify">A Public Limited Liability Company incorporated in Sri Lanka on 10th March 1986 under the Companies Act No 17 of 1982 and listed in the Colombo Stock Exchange. A licensed Commercial Bank under the Banking Act No 30 of 1988. Re-registered on 28th April 2008 under the Companies Act No 7 of 2007.</p>
                    </div>

                    <hr class="clearfix w-100 d-md-none pb-3">

                    <div class="col mb-md-0 mb-3 footer-all-stuff footer-other-stuff" title="Know About the Company">
                        <h5 class="text-uppercase">Company</h5>

                        <ul class="list-unstyled">
                            <li>
                                <a href="#!" style="color:white">Home</a>
                            </li>
                            <li>
                                <a href="#!" style="color:white">About Us</a>
                            </li>
                            <li>
                                <a href="#!" style="color:white">Contact Us</a>
                            </li>
                            <li>
                                <a href="#!" style="color:white">Privacy Policy</a>
                            </li>
                        </ul>
                    </div>

                    <div class="col mb-md-0 mb-3 footer-all-stuff footer-other-stuff">
                        <h5 class="text-uppercase">Profile Related</h5>

                        <ul class="list-unstyled">
                            <li>
                                <a href="#!" style="color:white">View Profile</a>
                            </li>
                            <li>
                                <a href="#!" style="color:white">Update Profile</a>
                            </li>
                            <li>
                                <a href="#!" style="color:white">Update History</a>
                            </li>
                        </ul>

                    </div>

                    <div class="col mb-md-0 mb-3 footer-all-stuff footer-last-stuff" title="Act as a Customer">
                        <h5 class="text-uppercase">Customer Related</h5>

                        <ul class="list-unstyled">
                            <li>
                                <a href="#!" style="color:white">Transaction</a>
                            </li>
                            <li>
                                <a href="#!" style="color:white">Loan Calculator</a>
                            </li>
                            <li>
                                <a href="#!" style="color:white">Lease Calculator</a>
                            </li>
                            <li>
                                <a href="#!" style="color:white">Complaint</a>
                            </li>
                        </ul>

                    </div>
                </div>

                <!-- Copyright -->
                <div class="footer-copyright text-left py-1 footer_copyright" title="Disclaimer">� All Rights Reserved @2018 |
                    <a href="#" title="Owners/ Group"> ITP-2018-MLB-G3-10.</a> |
                    <a href="#" title="Privacy Policy"> Privacy Policy.</a>
                </div>
                <!-- Copyright -->
            </div>
            <!-- Footer Links -->

        </footer>
        <!-- Footer -->
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="/SampathBankWebPortal/resources/css&js&jquery/jquery-3.3.1.slim.min.js"></script>
        <script src="/SampathBankWebPortal/resources/css&js&jquery/popper.min.js"></script>
        <script src="/SampathBankWebPortal/resources/css&js&jquery/bootstrap.min.js"></script>
        <script src="/SampathBankWebPortal/resources/css&js&jquery/customized.js"></script>
    </body>
</html>