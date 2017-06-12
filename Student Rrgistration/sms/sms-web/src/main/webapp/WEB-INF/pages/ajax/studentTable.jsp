<%@ include file="/common/taglibs.jsp"%>

<display:table name="studentList" class="tblDisplay display table table-bordered dynamic-table display_header_class" cellspacing="0" requestURI="./studentform/getStudentDetails" id="studentList" sort="external" partialList="true" size="${size}" pagesize="${gridSize}" export="true">
<display:column property="studentNo" sortName="studentNo" sortable="true" titleKey="Student Code" headerClass="text-center sortable sorted order1"/>
<display:column property="firstName" sortName="firstName" sortable="true" titleKey="First Name" headerClass="text-center sortable sorted order1"/>
<display:column sortable="false" headerClass="text-center"  class="text-center" titleKey="<a>Actions</a>" media="html">
    			<div class="text-center margin-right10">
				<button type="button" id="subjectEditButton" onclick="editStudent(${emssStudentList.id});"  class="edit-btn margin-right10" href="#creatG7"><span class="fa fa-edit"> </span>  Edit</button>
       			<button type="button" onclick="deleteStudent(${emssStudentList.id})" class="delete-btn"><span class="fa fa-close"> </span>  Delete</button>		
       			</div>
    	</display:column>
<display:setProperty name="basic.empty.showtable" value="true" /> 
</display:table>