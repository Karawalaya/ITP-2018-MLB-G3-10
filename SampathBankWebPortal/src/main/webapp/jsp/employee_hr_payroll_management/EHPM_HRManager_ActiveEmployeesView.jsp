<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page  import="POJO_MODEL.employee_hr_payroll_management.Employee, java.util.Collection, java.util.ArrayList"%>
<!DOCTYPE html>
<html>
	<head>
		<!-- Required meta tags -->
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="/SampathBankWebPortal/resources/css&js&jquery/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="/SampathBankWebPortal/resources/css&js&jquery/customized.css" type="text/css">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
		<title>Active Employees</title>
		<%
			Employee employee = (Employee) session.getAttribute("employee");
			if(employee == null)
				response.sendRedirect("/SampathBankWebPortal/jsp/user_management/UM_Login.jsp");
		%>
	</head>

    <body>
        <nav class="navbar fixed-top navbar-expand-md navbar-dark fixed-stuff">
            <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_Common_Employee_Homepage.jsp" title="Go to Employee Homepage">EmpHome</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" title="View Profile">MyProfile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" title="View Company Messages">MyInbox</a>
                    </li>
                </ul>
            </div>
            <div class="mx-auto order-0">
                <a class="navbar-brand mx-auto" href="#" title="Go to Employee Homepage">SampathEmpWeb</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item" title="Login">
                        <a class="nav-link" href="#"><span class="fa fa-sign-in"></span> Sign Out</a>
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
                        <a href="">Mr. <%=employee.getName().getFirstName()%><br/>
                        <%=employee.getName().getLastName() %></a>
                    </div>
                </div>
            </div>

            <div class="container-fluid" style="margin-top:10px;">
                <ul class="nav nav-pills nav-fill nav-justified nav-header">
                    <li class="nav-item dropdown" title="Click to See Your Duties">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; text-align: center; background-color: #FD4F00">Employee Duties</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_HRManager_RecruitAnEmployee.jsp" style="color:white">Recruit an Employee</a>
                            <a class="dropdown-item" href="/SampathBankWebPortal/OnlineEmployeeAccountController?abc=check" style="color:white">Create Employee Online Account</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/SampathBankWebPortal/ActiveInactiveSearchEmployees?deed=allActive" style="color:white">Active Employees</a>
                            <a class="dropdown-item" href="/SampathBankWebPortal/ActiveInactiveSearchEmployees?deed=inActive" style="color:white">Inactive Employees</a>
                            <a class="dropdown-item" href="#" style="color:white">Search for Employees</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" style="color:white">Leave Request Management</a>
                            <a class="dropdown-item" href="#" style="color:white">Update Details Request Management</a>
                            <a class="dropdown-item" href="#" style="color:white">Salary Management</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown" title="Click to See Leave Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; background-color: #FD4F00">Leave Request Inquiry</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="#" style="color:white">Apply for Leave</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" style="color:white">Leave History</a>
                            <a class="dropdown-item" href="#" style="color:white">Leave Status</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" style="color:white">Leave Analysis</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown" title="Click to See Salary Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; background-color: #FD4F00">Salary Inquiry</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="#" style="color:white">Calculate Salary</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" style="color:white">Salary History</a>
                            <a class="dropdown-item" href="#" style="color:white">Next Salary Details</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown" title="Click to See Skills Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; background-color: #FD4F00">Skills Management</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="#" style="color:white">Action</a>
                            <a class="dropdown-item" href="#" style="color:white">Another action</a>
                            <a class="dropdown-item" href="#" style="color:white">Something else here</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" style="color:white">Separated link</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown" title="Click to See Mail Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; background-color: #FD4F00">Mailing System</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="#" style="color:white">Inbox</a>
                            <a class="dropdown-item" href="#" style="color:white">Outbox</a>
                            <a class="dropdown-item" href="#" style="color:white">New Message</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown" title="Click to See Profile Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; background-color: #FD4F00">Profile Related</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="#" style="color:white">Profile Details</a>
                            <a class="dropdown-item" href="#" style="color:white">Update Profile</a>
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
		    <li class="breadcrumb-item"><a href="#">EmpHome</a></li>
		    <li class="breadcrumb-item"><a href="#">Employee Duties</a></li>
		    <li class="breadcrumb-item active" aria-current="page">Active Employees</li>
		  </ol>
		</nav>
		
		
        <div class="container-fluid" style="margin-bottom: 100px; height: 1000px">
        <% Collection<Employee> activeEmployeeList = (ArrayList<Employee>) session.getAttribute("activeEmployeeList"); %>
		<%if(activeEmployeeList != null) {%>
			<table class="table table-hover">
			  <thead class="thead-light">
			    <tr>
			      <th scope="col">Employee Id</th>
			      <th scope="col">Employee Name</th>
			      <th scope="col">Branch Id</th>
			      <th scope="col">Employee Type</th>
			      <th scope="col">Company Induction Date</th>
			      <th scope="col">Online Account</th>
			      <th scope="col">####</th>
			    </tr>
			  </thead>
			  <tbody>
			  <%for(Employee emp: activeEmployeeList) {%>
			    <tr>
			      <th scope="row"><%=emp.getPersonId() %></th>
			      <td style="font-weight: bold;"><%=emp.getName().getFirstName() %> <%=emp.getName().getLastName() %></td>
			      <td style="font-weight: bold;"><%=emp.getBranch().getBranchId() %></td>
			      <td style="font-weight: bold;"><%=emp.getEmployeeType() %></td>
			      <td style="font-weight: bold;"><%=emp.getRegistrationDates().getPhysicalRegistrationDate() %></td>
			      <td style="font-weight: bold;">
			      	<%if(emp.getOnlineSecurityKey() == null) {%>
			      		No
			      	<%} else {%>
			      		Yes
			      	<%} %>
			      </td>
			      <td>
			      	<form action="/SampathBankWebPortal/ActiveInactiveEmployeeManupulation" method="post">
			      		<input type="hidden" value="activeView" name="anotherDeed"/>
			      		<input type="hidden" value="<%=emp.getPersonId()%>" name="employeeId"/>
			      		<input type="submit" value="View Details" style="background-color: white; border-radius: 10px; color: black; border-color: #FD4F00; border-width: 1px; border-style: solid; font-size: 19px; margin-right: 20px;"/>
			      	</form>
			      </td>
			    </tr>
			    <%} %>
			  </tbody>
			</table>
		<%} else { %>
			There are no active employees as of now.
		<%} %>

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