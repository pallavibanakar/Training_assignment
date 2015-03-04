$(document).ready(function(){

                $("#form_equation").submit(function(e){
                //var st_line=Object.create(line);
			
		var parse_equation=$("#equation_st").val();
             
		var st_line=parser(parse_equation);
                
			console.log("returned object"+st_line);
                   if(st_line.a)
                   {
                        $("#a_value").val(st_line.a);
                         
                   }
                    if(st_line.b)
                   {
                        $("#b_value").val(st_line.b);
                       
                   }
                    if(st_line.c)
                   {
                        $("#c_value").val(st_line.c);
                      
                   }

                   $("#draw").click(function(){
              
                     
                     st_line.a=parseInt($("#a_value").val());
		     st_line.b=parseInt($("#b_value").val());
                     st_line.c=parseInt($("#c_value").val());
                     st_line.x_start=parseInt($("#start_range").val());
                     st_line.x_end=parseInt($("#end_range").val());
                     st_line.step=parseInt($("#step").val());
                     var canvas=$("#graph")[0];
                    	
                     draw_line(st_line,canvas);
                     

                   });
                
               e.preventDefault();
          });

           

});
