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
        <link rel="stylesheet" href="/SampathBankWebPortal/resources/css&js&jquery/customized02.css" type="text/css">
		<title>Compose Email</title>
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
                            <a class="dropdown-item" href="#" style="color:white">New Message</a>
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
		    <li class="breadcrumb-item active">Mailing System</li>
		    <li class="breadcrumb-item active" aria-current="page">Compose Email</li>
		  </ol>
		</nav>
		
        <div class="container-fluid" style="margin-bottom: 100px; height: 100%">
			<div class="container-fluid">
				<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'>
				<div class="mail-box">
                  <aside class="sm-side">
                      <div class="user-head">

                      </div>
                      <div class="inbox-body">

                      <ul class="inbox-nav inbox-divider">
                          <li>
                              <a href="/SampathBankWebPortal/EmailInboxController"><i class="fa fa-inbox"></i> Inbox </a>
                          </li>
                          <li>
                              <a href="/SampathBankWebPortal/EmailOutboxController"><i class="fa fa-envelope-o"></i> Sent Mail</a>
                          </li>
                          <li class="active">
                              <a href="#"><i class="fa fa-bookmark-o"></i> Compose</a>
                          </li>
                      </ul>
                  </aside>
                  <aside class="lg-side">
                      <div class="inbox-head">
                          <h3>Compose Mail</h3>
                      </div>
                      <div class="inbox-body">
                          <table class="table table-inbox table-hover">
                            <tbody>
                              <tr class="unread">
                                  <td class="inbox-small-cells">
				                       <form action="/SampathBankWebPortal/EmailComposeController" method="post">
											<div class="modal-dialog">
				                             	<div class="modal-content">
													<div class="modal-body">
				                                    	<form role="form" class="form-horizontal">
			                                            	<div class="form-group">
			                                                  <label class="col-lg-2 control-label">To</label>
			                                                  <div class="col-lg-10">
			                                                      <input type="email" name="receiver" placeholder="receiver@Company.com"/ class="form-control">
			                                                  </div>
			                                            	</div>
				                                            <div class="form-group">
				                                                  <label class="col-lg-2 control-label">From</label>
				                                                  <div class="col-lg-10">
				                                                      <input type="email" name="sender" value="<%=employee.getCompanyEmail() %>" disabled class="form-control">
				                                                  </div>
				                                            </div>
				                                            <div class="form-group">
			                                                 	<label class="col-lg-2 control-label">Subject</label>
			                                                 	<div class="col-lg-10">
			                                                     	<input type="text" name="subject" class="form-control">
			                                                 	</div>
				                                            </div>
				                                              <div class="form-group">
				                                                  <label class="col-lg-2 control-label">Message</label>
				                                                  <div class="col-lg-10">
				                                                      <textarea rows="10" cols="20" id="" name="content"  class="form-control"></textarea>
				                                                  </div>
				                                              </div>
				
				                                              <div class="form-group">
				                                                  <div class="col-lg-offset-2 col-lg-10">
				                                                      <span class="btn green fileinput-button">
				                                                        <i class="fa fa-plus fa fa-white"></i>
				                                                        <span>Attachment</span>
				                                                        <input type="file" name="files[]" multiple="">
				                                                      </span>
				                                                      <button class="btn btn-send" type="submit">Send</button>
				                                                  </div>
				                                              </div>
				                                          </form>
				                                      </div>
				                                  </div><!-- /.modal-content -->
				                              </div><!-- /.modal-dialog -->
				                       </form>
				            		</td>
				            	</tr>
                          	</tbody>
                          </table>
                      </div>
                  </aside>
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