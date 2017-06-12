/**
 * 
 */


$(document).ready(function() {
  $.ajaxSetup({ cache: false });
	$('#studentTableSearch').val('');
	var buttonStatus = "";
	$(document).on('click', '.edit-btn', function(){

	    $('#creatG7').collapse('show');
	   
    $("body, html").animate({ 
             scrollTop: $( $(this).attr('href') ).offset().top -140
         }, 500);      

 }); 
	
	
});


function saveStudent(){
			
			var formData = $("#studentSetupForm").serializeArray();
			
			$.ajax({

				type : "POST",
				url : $("#studentSetupForm").attr("action"),
				data : formData,
				success : function(response) {
					clearStudentData();
					loadStudentTable();
				},
				error : function(xhr, status, error) {
					alert("error");
				}
			});


}


function clearStudentData(){
	$('#id').val('');
	$('#studentNo').val('');
	$('#firstName').val('');

}

function loadStudentTable(){
	
	var q = $('#studentTableSearch').val();
	if (q != null) {
    	q = q.trim();
    	
    }
	var formdata = 'ajax=true&q='+q;
	try{
		$.ajax({
			type: "GET",
			url: "studentform/getStudentDetails",
			data: formdata,
			success: function(data) {
				$("#studentListId").html(data);
				$("#studentListId").displayTagAjax();
			},
			error :  function() {;
						alert("error");
			}
		});
		 $('#studentTableSearch').val(q);
	}
	catch(e){
		alert("Exception" + e);
	}
}




function editStudent(studentId){
	
	var formdata =  'studentId='+studentId;
	
	$.ajax({
	     type: "POST",
	     url: "studentform/getStudentForEditById",
	     data: formdata,
	     success: function(data) {
	    	 if(data.status == 'success'){
	    		 fillStudentDetail(data);
	    	 }else {
	    		 alert (data.status);
	    	 }
	     }
	 });
	
}

function fillStudentDetail(data){
	$('#id').val(data.id);

}


function deleteStudent(studentId){
	
	$.post('./studentform/deleteStudent',{
		studentId:studentId
		}, function(data) {
			if(data.status=='success'){
				clearStudentData();
				loadStudentTable();
			}else{
				alert (data.status);
			}
		});

}
