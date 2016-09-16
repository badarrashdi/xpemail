

/* Create a namespace */
var xpCoin = {};

xpCoin.idIncr = function () {
	var count = 1;
   $(".email-list tbody input[type='checkbox']").each(function() {
      $(this).prop("id",'chkmail'+count);
      $(this).prop("name",'chkmail'+count);
      $(this).next('label').prop("for",'chkmail'+count);
       count++
   });

}

xpCoin.composeModals = function () {
	$('a.compose').click(function(){
		var thisID = $(this).attr('href');
		$(thisID).show();
	})
	$('#modalCompose .close').on('click', function(){
		$('#modalCompose').hide();
	})

	
}

 //$(".flex-item").niceScroll(".flex-item .inner-mail-detail",{boxzoom:true});
 var nice = $(".flex-item").niceScroll({
 	cursorwidth: "10px", 
 	cursorcolor:"#999"
 });

xpCoin.idIncr();
xpCoin.composeModals();
// function init
if ($('.form-group').length > 0) {
	$.validate();
}

$('#dob').datepicker({

});

