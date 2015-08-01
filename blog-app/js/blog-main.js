$(function() {

  var data = JSON.parse(localStorage.getItem("data"));
  if(!data){
    data = {};
    //data = JSON.parse('[{\"Fname\":\"Min Yan\",\"Lname\":\"Beh\",\"Phone\":"93441621\",\"Email\":\"behminyan@gmail.com\"},{\"Fname\":\"Sally\",\"Lname\":\"Tan\",\"Phone\":\"91234567\",\"Email\":\"sallytan95@gmail.com\"},{\"Fname\":\"Miranda\",\"Lname\":\"Ong\",\"Phone\":\"87654321\",\"Email\":\"mirandaOng@hotmail.com\"}]');
    //localStorage.setItem("data", JSON.stringify(data)); 
  }   

  $.each(data,function (index, params){
    $('<li>').text(params.text).prependTo('.posts');
  });

  $('.btn').click(function() {
    var post = $('.status-box').val();
    $('<li>').text(post).prependTo('.posts');

    var id, newEntry;

    id = new Date().getTime();
    newEntry = {
      id : id,
      text: post,
      date: new Date()
    };

    console.log(newEntry);
    data[id] = newEntry;
    console.log(data);
    localStorage.setItem("data", JSON.stringify(data));
    //data.push(newEntry);
    //localStorage.setItem("data", JSON.stringify(data));

    $('.status-box').val('');
    $('.counter').text('140');
    $('.btn').addClass('disabled'); 

    Materialize.toast('Post Success!  <a class="btn-flat yellow-text" href="">OK!<a>', 2000);
  });
  
  $('.status-box').keyup(function() {
    var postLength = $(this).val().length;
    var charactersLeft = 140 - postLength;
    $('.counter').text(charactersLeft);
  
    if(charactersLeft < 0) {
      $('.btn').addClass('disabled'); 
    }
    else if(charactersLeft == 140) {
      $('.btn').addClass('disabled');
    }
    else {
      $('.btn').removeClass('disabled');
    }
  });
  
  $('.btn').addClass('disabled');
});