//source1: http://mrbool.com/creating-a-crud-form-with-html5-local-storage-and-json/26719
//source2: http://mrbool.com/how-to-add-edit-and-delete-rows-of-a-html-table-with-jquery/26721

/**
 * Created by behminyan on 31/7/15.
 */

$(function(){

	var operation = "A"; //"A"=Adding; "E"=Editing
	var selected_index = -1; //Index of the selected list item
	
	var data = JSON.parse(localStorage.getItem("data"));
	if(!data){
		data = JSON.parse('[{\"Fname\":\"Min Yan\",\"Lname\":\"Beh\",\"Phone\":"93441621\",\"Email\":\"behminyan@gmail.com\"},{\"Fname\":\"Sally\",\"Lname\":\"Tan\",\"Phone\":\"91234567\",\"Email\":\"sallytan95@gmail.com\"},{\"Fname\":\"Miranda\",\"Lname\":\"Ong\",\"Phone\":\"87654321\",\"Email\":\"mirandaOng@hotmail.com\"}]');
		localStorage.setItem("data", JSON.stringify(data));	
	}		

	var addEntry = function (){
		var isInvalid = ($("#txtFname").val() == "" && $("#txtLname").val() == "") ||  $("#txtPhone").val() == "" || $("#txtEmail").val() == "";
		if(isInvalid){
			alert("Please fill in a name, phone and email. \n(No in-built input validation)");
			return;
		}

		var newEntry = {
			Fname : $("#txtFname").val(),
			Lname : $("#txtLname").val(),
			Phone : $("#txtPhone").val(),
			Email : $("#txtEmail").val()
		};
		data.push(newEntry);
		localStorage.setItem("data", JSON.stringify(data));
		alert("Saved successfully.");
	};

	var editEntry = function (){
		data[selected_index] = {
				Fname : $("#txtFname").val(),
				Lname : $("#txtLname").val(),
				Phone : $("#txtPhone").val(),
				Email : $("#txtEmail").val()
			};//Alter the selected item on the table
		console.log(data[selected_index]);
		localStorage.setItem("data", JSON.stringify(data));

		alert("Edited successfully.");
		operation = "A"; //Return to default value
		return true;
	};

	var deleteEntry = function (){
		data.splice(selected_index, 1);
		console.log(data);
		localStorage.setItem("data", JSON.stringify(data));
		alert("Deleted successfully.");
	};

	var listEntries = function (){		
		$("#tblList").html("");
		$("#tblList").html(
			"<thead>"+
			"	<tr>"+
			"	<th></th>"+
			"	<th>First Name</th>"+
			"	<th>Last Name</th>"+
			"	<th>Phone</th>"+
			"	<th>Email Address</th>"+
			"	</tr>"+
			"</thead>"+
			"<tbody>"+
			"</tbody>"
			);
		$.each(data,function (index, params){
		  	$("#tblList tbody").append("<tr>"+
			 	 "	<td><img src='imgs/edit.png' alt='Edit"+index+"' class='btn-edit'/><img src='imgs/delete.png' alt='Delete"+index+"' class='btn-delete'/></td>" + 
				 "	<td>"+params.Fname+"</td>" + 
				 "	<td>"+params.Lname+"</td>" + 
				 "	<td>"+params.Phone+"</td>" + 
				 "	<td>"+params.Email+"</td>" + 
					 "</tr>");
		});
	};

	$("#address-form").bind("submit",function(){		
		if(operation == "A")
			return addEntry();
		else
			return editEntry();
	});

	listEntries();

	$(".btn-edit").bind("click", function(){
		operation = "E";
		selected_index = parseInt($(this).attr("alt").replace("Edit", ""));
		
		var toEdit = data[selected_index];
		$("#txtFname").val(toEdit.Fname);
		$("#txtLname").val(toEdit.Lname);
		$("#txtPhone").val(toEdit.Phone);
		$("#txtEmail").val(toEdit.Email);
		$("#txtLname").focus();
		$("#txtPhone").focus();
		$("#txtEmail").focus();
		$("#txtFname").focus();
	});

	$(".btn-delete").bind("click", function(){
		selected_index = parseInt($(this).attr("alt").replace("Delete", ""));
		deleteEntry();
		window.location.reload();
	});

	//
	/*
	generateDialog("Edited Successfully.");
	var generateDialog = function (message) {
	    var responseId = "response-dialog",
	      title = "Message",
	      responseDialog = $("#" + responseId),
	      buttonOptions;

	    if (!responseDialog.length) {
	      responseDialog = $("<div />", {
	        title: title,
	        id: responseId
	      }).appendTo($("body"));
	    }

	    responseDialog.html(message);

	    buttonOptions = {
	      "Ok" : function () {
	        responseDialog.dialog("close");
	      }
	    };

	    responseDialog.dialog({
	        autoOpen: true,
	        width: 400,
	        modal: true,
	        closeOnEscape: true,
	        buttons: buttonOptions
	    });
	}
	*/
});