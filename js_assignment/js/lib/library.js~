
var line=
{
	paserLine: function(a,b,c,range_start,range_end,step)
	{
	  this.a_constant=a;
	  this.b_constant=b;
	  this.c_constant=c;	
	  this.x_start=range_start;
	  this.x_end=range_end;
	  this.step_value=step;
	}
};

function parser(equation_st)
{
 
 var regular_equation=new RegExp("[a-z]|[0-9]+x[+|-][a-z]|[0-9]+y[+|-][a-z]|[0-9]+=0");
 var regular_equation_number=new RegExp("[1-9]+");
 var line_st=Object.create(line);
	
 
 if(equation_st=="")
  {

     alert("please enter the equation");
  }
  else if((regular_equation.test(equation_st)))
  {
       var a_constant=equation_st.substring(-1,equation_st.indexOf('x'));
       var b_constant=equation_st.substring((equation_st.indexOf('x'))+2,equation_st.indexOf('y'));
       var c_constant=equation_st.substring((equation_st.indexOf('y'))+2,equation_st.indexOf('='));

       if(regular_equation_number.test(a_constant))
       {
         line_st.a=a_constant;
       }
       if(regular_equation_number.test(b_constant))
       {
         line_st.b=b_constant;
       
       }
       if(regular_equation_number.test(c_constant))
       {
         line_st.c=c_constant;
      
       }
      
   }
   return line_st;
     
}


function draw_line(line_object,canvas)
{


var i;
var x_coordinate=parseInt(line_object.x_start);
var y_coordinate=parseInt(-((line_object.c)+x_coordinate*(line_object.a)))/(line_object.b);
console.log(x_coordinate,y_coordinate);
var context_line = canvas.getContext('2d');
context_line.beginPath();
context_line.moveTo(250,250);
for (var x= line_object.x_start;x<= line_object.x_end;x=x+line_object.step)
{
   y_coordinate=parseInt(-((line_object.c)+x_coordinate*(line_object.a)))/(line_object.b);
   context_line.lineTo(x,y_coordinate);
   context_line.stroke();
}


}

