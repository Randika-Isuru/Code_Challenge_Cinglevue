<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="tab-pane" id="tab">
	<div class="col-md-12 padding0">
		<div class="adv-table">
			<!--Start of Data Table-->
			<div class="row margin-bottom10 margin-top10">
				<div class="col-md-4 col-lg-4 col-sm-4">
					<button href="#creatG7" id="studentAddButton" onclick="clearStudetData()" class="panel-top-adbtn pull-left">
						<span class="btn-pls fa fa-plus"></span>Add
					</button>
						</div>
						
			<!-- ===========================================    Search bar Student   ==================================================== -->
							
							<div class="col-sm-8 col-md-4 col-lg-4 pull-right margin-addstyleroute margin">
								<div class="input-group custom-search-form " style="">
									<input type="text" class="form-control"
										id="studentTableSearch" placeholder="Search and Filter">
										<span class="input-group-btn">
											<button class="btn btn-info search-form-btn"
												onclick="loadStudentTable()" type="button">
													<span class="glyphicon glyphicon-search"></span>
											</button>
										</span>
								</div>
												<!-- /input-group -->
							</div>



			<!-- ===========================================   End of Search bar Student   =============================================== -->




			</div>
				<!--Start of Panel Body-->
				<div class="col-md-12 padding0">
					<div class="adv-table dataTables_wrapper scrollxonly">
						<div id="studentListId"></div>
					</div>
				</div>
				<!-- panel body end  -->


				<!--End of Data Table-->
				</div>
					</div>
						<div class="clearfix"></div>
							<div class="panel-group" id="createGroups7">
									<div class="panel panel-default panel-form-view ">
										<div class="panel-heading">
											<h6 class="panel-title margin-top6" data-toggle="collapse">
												<a class="accordion-toggle" data-toggle="collapse"
													data-parent="#creatG7" data-target="#creatG7"> <span
													class="pull-right slideupdowntoggle glyphicon glyphicon-chevron-up focus-panel-g7ico"
													style="padding: 6px 8px;"></span><a href="#creatG7" class="focus-panel-g7"><label>Student Details</label></a>
												</a>
											</h6>
										</div>
							<div id="creatG7" class="panel-collapse collapse">

							<!--START MODULE DETAILS PANEL BODY-->
							<div class="panel-body" id="studentDetailsForm">
								<form:form method="post" action="studentform" commandName="studentForm" id="studentSetupForm">
									<form:input path="id" type="hidden" />
								<div class="form-group  ">
									<div class="col-sm-6 col-md-6 col-lg-3 padding-left0">
										<label>Student No :</label>
										<div class="clearfix"></div>
											<form:input cssClass="form-control required-input" path="studentNo" type="text" maxlength="16" />
											<form:errors path="studentNo" cssClass="help-block"></form:errors>
										<span style="display: none" Class="validation-text" id="studentNoValidation"></span>
										</div>
										<div class="clearfix"></div>
										</div>
											<div class="clearfix"></div>
												<div class="form-group  ">
													<div class="col-sm-6 col-md-6 col-lg-3 padding-left0">
														<label>First Name :</label>
													<div class="clearfix"></div>
														<form:input cssClass="form-control required-input" path="firstName" type="text" maxlength="64" />
															<form:errors path="firstName" cssClass="help-block"></form:errors>
															<span style="display: none" Class="validation-text"
																id="firstNameValidation"></span>
														</div>
														<div class="clearfix"></div>
													</div>
													<div class="clearfix"></div>
													<div class="form-group  ">
														<div class="col-sm-6 col-md-6 col-lg-3 pull-left padding-left0 ">
															<button type="button" onclick="saveStudent()" class="btn btn-primary pull-left">Save</button>
															<button type="button" onclick="clearStudentData()" class="btn btn-clear margin-left10 pull-left">Clear</button>
														</div>
														<div class="clearfix"></div>
													</div>

													<div class="clearfix"></div>

												</form:form>

											</div>
											<!--END MODULE DETAILS PANEL BODY-->
										</div>
									</div>
								</div>

								<div class="clearfix"></div>


		</div>

</body>
</html>