<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page  import="POJO_MODEL.employee_hr_payroll_management.Employee"%>
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
		<title>Employee Homepage</title>
		<%
			Employee employee = (Employee) session.getAttribute("employee");
			
			if(null == employee)
				response.sendRedirect("/SampathBankWebPortal/jsp/user_management/UM_Login.jsp");
		%>
		
	<style>
	.body{
	font-family: "Ariel", Times, serif;
	}
	/* Stylings for Slideshow*/
	* {box-sizing: border-box;}

	.mySlides {display: none;}
	 img {vertical-align: middle;
	 height:480px;};

	/* Slideshow container */
	.slideshow-container {
 	max-width: 800px;
  	position: relative;
  	margin: auto;
  	padding: 10px 12px;
	}

	/* Caption text */
	.text {
 	color: #ffffff;
	font-size: 45px;
  	padding: 10px 12px;
  	position: absolute;
  	bottom: 8px;
 	width: 100%;
 	text-align: center;
	}

	/* Number text (1/3 etc) */
	.numbertext {
  	color: #f2f2f2;
  	font-size: 12px;
 	padding: 8px 12px;
  	position: absolute;
  	top: 0;
	}

	/* The dots/bullets/indicators */
	.dot {
	height: 8px;
	width: 8px;
	margin: 0 2px;
	background-color: #000000;
 	border-radius: 50%;
  	display: inline-block;
  	transition: background-color 0.6s ease;
	}

	.act {
 	 background-color: #717171;
	}

	/* Fading animation */
	.fade {
  	-webkit-animation-name: fade;
  	-webkit-animation-duration: 1.5s;
  	animation-name: fade;
  	animation-duration: 1.5s;
	}

	@-webkit-keyframes fade {
 	 from {opacity: .4} 
  	to {opacity: 1}
	}

	@keyframes fade {
  	from {opacity: .4} 
  	to {opacity: 1}
	}

	/* On smaller screens, decrease text size */
	@media only screen and (max-width: 300px) {
  	.text {font-size: 11px}
	}
	/* End of Stylings for Slideshow*/	
	
	/*Styings for News Section*/
	.section {
    padding: 70px;
    
		}
		/*End of News Section*/
	
	/*Stylings for panels*/
  .item h3 {
      font-size: 10px;
   
      line-height: 1.375em;
      font-weight: 400;
      font-style: italic;
      margin: 70px 0;
  }
  .item span {
      font-style: normal;
  }
  .panel {
      border: 1px solid #fd4f00; 
      border-radius:0 !important;
      transition: box-shadow 0.5s;
  }
  .panel:hover {
      box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
      border: 1px solid #fd4f00;
      background-color: #fff !important;
      color: #f4511e;
  }
  .panel-heading {
  	  height:12px;
      color: #fff !important;
      background-color: #FF8C00 !important;
      padding: 25px;
      border-bottom: 1px solid transparent;
      border-top-left-radius: 0px;
      border-top-right-radius: 0px;
      border-bottom-left-radius: 0px;
      border-bottom-right-radius: 0px;
  }
  .panel-footer {
      background-color: white !important;
  }
  .panel-footer h3 {
      font-size: 25px;
  }
  .panel-footer h4 {
      color: #aaa;
      font-size: 12px;
  }
  .panel-footer .btn {
      margin: 10px 0;
      height: 8px;
      background-color: #fd4f00;
      color: #fff;
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
  }
  /*Ending of Styling for panels*/
  
  /*Calender*/
 {
    box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column {
    float: left;
    width: 50%;
    padding: 10px;
    height: 240px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - makes the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
    .column {
        width: 100%;
    }
    
    .calenderP1{
    width:100px;
    padding-left:100%;
    
    }

  /*End of Calender*/
  
  
</style>
	</head>
	<body>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	%>
        <nav class="navbar fixed-top navbar-expand-md navbar-dark fixed-stuff">
            <div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#" title="You are Already in the Employee Homepage">EmpHome</a>
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
                <a class="navbar-brand mx-auto" href="#" title="You are Already in the Employee Homepage">SampathEmpWeb</a>
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
                <%if(employee.getDesignation().getDesignation().equals("human resource manager")) {%>
                    <li class="nav-item dropdown" title="Click to See Your Duties">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; text-align: center; background-color: #FD4F00">Employee Duties</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_HRManager_RecruitAnEmployee.jsp" style="color:white">Recruit an Employee</a>
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
                    <%} else if(employee.getDesignation().getDesignation().equals("admin")) {%>
                    <li class="nav-item dropdown" title="Click to See Your Duties">
                    	<a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; text-align: center; background-color: #FD4F00">Employee Duties</a>
                    	<div class="dropdown-menu nav-dropdown">
	                        <a class="dropdown-item" href="#" style="color:white">admin job 01</a>
	                        <div class="dropdown-divider"></div>
	                        <a class="dropdown-item" href="#" style="color:white">admin job 02</a>
	                        <div class="dropdown-divider"></div>
	                        <a class="dropdown-item" href="#" style="color:white">admin job 03</a>
	                        <div class="dropdown-divider"></div>
	                        <a class="dropdown-item" href="#" style="color:white">admin job 04</a>
	                        <div class="dropdown-divider"></div>
	                        <a class="dropdown-item" href="#" style="color:white">admin job 05</a>
                    	</div>
                	</li>
                    <%} else if(employee.getDesignation().getDesignation().equals("normal employee")) {%>
                    <li class="nav-item dropdown" title="Click to See Your Duties">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; text-align: center; background-color: #FD4F00">Employee Duties</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="#" style="color:white">normal employee job 01</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" style="color:white">normal employee job 02</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" style="color:white">normal employee job 03</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" style="color:white">normal employee job 04</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" style="color:white">normal employee job 05</a>
                        </div>
                    </li>
                   	<%} else if(employee.getDesignation().getDesignation().equals("user manager")) {%>
                    <li class="nav-item dropdown" title="Click to See Your Duties">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; text-align: center; background-color: #FD4F00">Employee Duties</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="/SampathBankWebPortal/CustomerRegistrationManagementController?var=getAllRequests" style="color:white">Online Customer Account Management</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="/SampathBankWebPortal/jsp/user_management/UM_CustomerManager_SearchForCustomer.jsp" style="color:white">Search For Customers</a>
                        </div>
                    </li>
                    <%} else if(employee.getDesignation().getDesignation().equals("head")) {%>
                    <li class="nav-item dropdown" title="Click to See Your Duties">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; text-align: center; background-color: #FD4F00">Employee Duties</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="/SampathBankWebPortal/RetreiveBranchItemServlet" style="color:white">Request Item from Warehouse</a>
                        </div>
                    </li>
                    <%} else if(employee.getDesignation().getDesignation().equals("inventory manager")) {%>
                    <li class="nav-item dropdown" title="Click to See Your Duties">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; text-align: center; background-color: #FD4F00">Employee Duties</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="/SampathBankWebPortal/RetreiveItemServlet" style="color:white">Item List</a>
                            <a class="dropdown-item" href="/SampathBankWebPortal/RetreiveHistoryServlet" style="color:white">History</a>
                            <a class="dropdown-item" href="/SampathBankWebPortal/RetreiveRequestServlet" style="color:white">Show Branch Request</a>
                            <a class="dropdown-item" href="/SampathBankWebPortal/IM_ShowWarehouse-Branch.jsp" style="color:white">Warehouse - Branch</a>
                            <a class="dropdown-item" href="/SampathBankWebPortal/IM_GenerateReports.jsp" style="color:white">Generate Reports</a>
                        </div>
                    </li>
                    <%} else if(employee.getDesignation().getDesignation().equals("transaction manager")) {%>
                    <li class="nav-item dropdown" title="Click to See Your Duties">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; text-align: center; background-color: #FD4F00">Employee Duties</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="/SampathBankWebPortal/showAllTransactDetailsServlet" style="color:white">Display  Transaction</a>
                            <a class="dropdown-item" href="/SampathBankWebPortal/approveTransactservlet" style="color:white">Approve Transactions</a>
                            <a class="dropdown-item" href="/SampathBankWebPortal/TM_empGenerateReports.jsp" style="color:white">Generate Reports</a>
                        </div>
                    </li>
                    <%} %>
                    
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
                    
<!-- DOCUMENTATION GENERATION -->
                	<%if(employee.getDesignation().getDesignation().equals("human resource manager")) {%>
                    <li class="nav-item dropdown" title="Click to See Documentation Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; text-align: center; background-color: #FD4F00">Documents & Reports</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="/SampathBankWebPortal/jsp/employee_hr_payroll_management/EHPM_HRManager_AllEmployeeDetailsDocumentation.jsp" style="color:white">All Employee Details</a>
                        </div>
                    </li>
                    <%} else if(employee.getDesignation().getDesignation().equals("user manager")) { %>
                    <li class="nav-item dropdown" title="Click to See Documentation Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; text-align: center; background-color: #FD4F00">Documents & Reports</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="/SampathBankWebPortal/jsp/user_management/UM_CustomerDetailsDocumentation.jsp" style="color:white">Customer Details</a>
                        </div>
                    </li>
                    <%} else if(employee.getDesignation().getDesignation().equals("inventory manager")) { %>
                    <li class="nav-item dropdown" title="Click to See Documentation Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; text-align: center; background-color: #FD4F00">Documents & Reports</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="/SampathBankWebPortal/IM_GenerateReports.jsp" style="color:white">Inventory Details</a>
                        </div>
                    </li>
                    <%} else if(employee.getDesignation().getDesignation().equals("transaction manager")) { %>
                    <li class="nav-item dropdown" title="Click to See Documentation Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; text-align: center; background-color: #FD4F00">Documents & Reports</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="/SampathBankWebPortal/TM_empGenerateReports.jsp" style="color:white">Transaction Details</a>
                        </div>
                    </li>
                    <%} else {%>
                    <li class="nav-item dropdown" title="Click to See Documentation Related Options">
                        <a class="nav-link nav-change" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false" style="border-radius: 15px; text-align: center; background-color: #FD4F00">Documents & Reports</a>
                        <div class="dropdown-menu nav-dropdown">
                            <a class="dropdown-item" href="#" style="color:white">Nothing to see here</a>
                        </div>
                    </li>
                    <%} %>
                    
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
		    <li class="breadcrumb-item active" aria-current="page">EmpHome</li>
		  </ol>
		</nav>
		
        <div class="container-fluid" style="margin-bottom: 100px; height: 100%">

			<div class="row">
				<div class="col-md-6"> 
					<br><br>
					<img alt="Sampath Bank" src="/SampathBankWebPortal/resources/images/employee.png"">
					<br><br>
				</div>
				<div class="col-md-6"> 
					<br><br><br><br><br><br><br><br><br><br>
					<p style="font-weight: bold;font-size: 30px" >&nbsp &nbsp &nbsp &nbsp Welcome to Sampath Bank Employee &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  Interface</p>
				</div>
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