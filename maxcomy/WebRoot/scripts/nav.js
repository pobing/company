	//<![CDATD[
		$(function(){
			/*$(document).bind('dbclick',ajaxheader=function(){
				$('#header').load("header.html");
			}).trigger('dbclick',ajaxheader);
			*/
			var index = 0;
			$("#header .nav ul li").click(function(){
				index = $("#header .nav ul li").index(this);
				$(this).addClass("navattr").siblings("li").removeClass("navattr");
				$("div.lastnavul>ul").eq(index).show().siblings().hide();
			})
			$("#header .language ul li").click(function(){
				$(this).addClass("height").siblings("li").removeClass("height");
			})
			$("div.lastnavul ul li").click(function(){
				$(this).addClass("lastnavheight").siblings("li").removeClass("lastnavheight")
			})
			$(document).keypress(function(event){
										if(event.keyCode ==116)
										//alert(event.keyCode)
										  return false;
										  });
		})
					function  SetCwinHeight(obj){   
						var  cwin=obj;   
									if(document.getElementById){   
											if (cwin &&  !window.opera) {   
													if (cwin.contentDocument &&cwin.contentDocument.body.offsetHeight)   
															cwin.height = cwin.contentDocument.body.offsetHeight;       
													else if(cwin.Document  && cwin.Document.body.scrollHeight)   
															cwin.height = cwin.Document.body.scrollHeight;   
											}   
									}   
							};
							
						
	//]]>