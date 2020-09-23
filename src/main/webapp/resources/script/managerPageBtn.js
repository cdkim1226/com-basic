   var win = undefined;
    var i = 0;
    $(function(){
  	$("#dashBoard").click(function(){
        win = window.open("/manager/dashBoard");
        win.onbeforeunload = function(){
        	console.log(++i + " window closed");
        }
      })
    });