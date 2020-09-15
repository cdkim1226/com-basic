
$(function(){
	$('#searchBtn').on("click",function(){
				self.location="/board/board"
					+"${pageMaker.makeQuery(1)}"
					+"&searchType="
					+$("#searchType").val()
					/* + $("select option:selected").val() */
					+"&keyword="
					+$("#keyword").val();
	});
}); // ready 