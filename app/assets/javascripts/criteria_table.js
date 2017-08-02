(function($) {
	$(document).ready(function(){
		$show = $(".checkboxItem:nth-child(2) input:checkbox, .checkboxItem:nth-child(3) input:checkbox, .prechecked");
		
		$show.each(function(){
			$this = $(this).attr('name');
			var columnShow = "table ." + $(this).attr("name");
			$(columnShow).show();
		});
		
		$('.yellow-button').parent().addClass('yellow-button-parent');
		
		$("input:checkbox:not(:checked)").each(function() {
			var column1 = "table ." + $(this).attr("name");
			$(column1).hide();
		});
		
		$("input:checkbox").click(function(){
			var column2 = "table ." + $(this).attr("name");
			$(column2).toggle();
		});
		
		var divs = $("#toggler > .checkboxItem");
		for(var i = 0; i < divs.length; i+=3) {
		  divs.slice(i, i+3).wrapAll("<div class='checkboxGroup'></div>");
		}		
	});
})(jQuery);