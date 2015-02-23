import java.util.*;
import java.io.*;
import java.util.Scanner.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class programming_language
{
   public static void main(String arg[])throws Exception
   {
          
    int classcount=0,endcount=0,defcount=0,i=0,j=0,k=0,l=0,m=0,e=0,v=0,open_bracketcount=0,close_bracketcount=0;
         String[] classname=new String[50];
	     String[] rubymethods=new String[50];  
         String[] phpmethods=new String[400]; 
         String[] access_specifiers=new String[50]; 
		 String[] java_method=new String[50];
		 String[] property=new String[50];
                 String[] variables=new String[400];
         String next;
	     Scanner sc = null;
		 Scanner indentcheck=null;
		 Scanner consoleinput=new Scanner(System.in);
		 FileInputStream fileInputname=null;

        System.out.println("enter the number for choice of  input file  choices:1>College.java 2>myClass.php 3>Student.java 4>binding.rb 5.class.smtp.php");
          System.out.println("--------------------------------------------------------------------");
         int fileinput=Integer.parseInt(consoleinput.nextLine());
          //file input
          switch(fileinput)
          {
             case 1 : sc=new Scanner(new FileInputStream("College.java"));
			        
					   fileInputname = new FileInputStream("College.java");
                      break;
             case 2 : sc=new Scanner(new FileReader("myClass.php"));
			       
					  fileInputname = new FileInputStream("myClass.php");
			          break;
             case 3 : sc=new Scanner(new FileReader("Student.java"));
			         
					   fileInputname = new FileInputStream("Student.java");
					  break;
             case 4 : sc=new Scanner(new FileReader("binding.rb"));
			          
					  fileInputname = new FileInputStream("binding.rb");
			          break;
		     case 5: sc=new Scanner(new FileReader("class.smtp.php"));
			         
					  fileInputname = new FileInputStream("class.smtp.php");
					  break;
             default : System.out.println("Not a valid choice");
                      break;
          }
		  
		 // code to check indentation of file
            int r1;
            while ((r1 = fileInputname.read()) != -1) {
             char c = (char) r1;
			 if(r1=='{')
			 {
			      open_bracketcount++;
			 }
			 if(r1=='}')
			 {
			      close_bracketcount++;
			 }
			 }
		
		if(open_bracketcount==close_bracketcount)
		{
		    System.out.println("program is correctly indented");
                      System.out.println("---------------------------");
		}
		else{
		    System.out.println("program is not correctly indented");
                      System.out.println("--------------------------------------");
		}
           //code to check language of program
          while(sc.hasNext())
          {
		String firstword=sc.next();
                if(firstword.equals("<?php"))
                {
                   System.out.println("Program is written in php language");
                     System.out.println("-----------------------------------------");
                   //code to identify and list php properties,methods and variables
		   while(sc.hasNext())
                   {
                       next=sc.next();
                       //code to check variables
                       if(next.charAt(0)=='$')
                       {
                          variables[++v]=new String();
                          variables[v]=next;
                        }
                        //code to neglect the comment content of the program
                        if(next.equals("//"))
						{
						   sc.nextLine();
						   continue;
						}
						else if(next.equals("/**"))
						{
						  while(!(sc.next().equals("*/")))
						  {
						     continue;
						  }
						  continue;
						}
                        //code to identify php classes
                        else if(next.equals("class"))
                         {
			    classname[++k]=new String();
			    classname[k]=sc.next();
					     }             
                        else if(((next.equals("public")||next.equals("protected")||next.equals("private")||next.equals("static"))&& sc.next().equals("function"))||next.equals("function"))
                         {
			     phpmethods[++j]=new String();
                             phpmethods[j]=sc.next();
						    
			    access_specifiers[++l]=new String();
                            access_specifiers[l]=next;
                         }     
                        else
                           continue;
                   }
                   //code to print all classes,properties,methods of php program
                   System.out.println("php classes");
                     System.out.println("---------------------------");
				    while(k!=0)
					   {
                             System.out.println("class:"+classname[k]);
							 k--;
				       }
                   System.out.println("method and thier access specifiers");
                   System.out.println("---------------------------");
					   while(j!=0&&l!=0)
					   {
                                                 
                                                 System.out.println(access_specifiers[l]);
						 System.out.println(phpmethods[j]);
							 j--;	  
							 l--;
                                                 
					    }
                      System.out.println("variables and properties");
                      System.out.println("---------------------------");
                                            while(v!=0)
                                            {
                                              System.out.println(variables[v]);
                                              v--;
                                            }
                }
                /**code to indentify if the file is a java program 
                 if the staring word is import than its java*/
                if(firstword.equals("import"))
                {
                   System.out.println("Program is written in java language");
                   System.out.println("---------------------------");
                }
         /**if staring word is not import and its class than its either ruby program or java
         the follwing code indentify the type of language(that is either java or ruby)
           and identify respective classes,methods and properties*/                   
                else if(firstword.equals("class"))
                { 
                       next=sc.next();
                       classcount++;
                       classname[++k]=new String();
                       classname[k]=next;
                       
                     while(sc.hasNext())
                    {
                       next=sc.next();
                                          //code to neglect to comment part of the program
					   if(next.equals("//"))
					   {
					     sc.nextLine();
						 continue;
					   }
					   if(next.equals("/**"))
					   {
					        while(!(sc.next().equals("*/")))
							{
							  sc.next();
							}
							continue;
					   }
			//code to identify the ruby variables		   
                       if(next.charAt(0)=='@')
                       {
                         variables[++v]=new String();
                         variables[v]=next;
                         
                       }
                       //code to identify the classes and methods of ruby and java
                       else{
                       switch(next)
                       {
                         case "def": defcount++;
                                     String temp=sc.next();
                                     rubymethods[++i]=new String();
                                     rubymethods[i]=temp;
                                     break;
                         case "end": endcount++;
                                     break;
                         case "class":classcount++;
                       	              classname[++k]=new String();
                                      classname[k]=sc.next();
                                     break;
			case "void": java_method[++m]=new String();
			             java_method[m]=sc.next();
                                     
                                     break;
	                case "public":
		        case "private": 
                        case "protected"://code to get methods of java classes
					  sc.next();
				          String line_match=sc.nextLine();
					  String pattern = "[$() {]";
                                          // Create a Pattern object
                                          Pattern r = Pattern.compile(pattern);
					 Matcher matchermethod = r.matcher(line_match);
					if(matchermethod.lookingAt())
                                         { 
					    java_method[++m]=new String();
					    java_method[m]=line_match;
                                            
					  }
					  access_specifiers[++l]=new String();
				          access_specifiers[l]=next;
                                            
					break;
						              
                         default: continue;
                                  
                       }
					   
		        }
	                }
                      //following code checkes if language is ruby and prints its classes and property 
                      if(defcount==(endcount-classcount))
                       {
                        System.out.println("Program is written in ruby");
                        System.out.println("-------------------------------");
                         System.out.println("classes are");
                         System.out.println("-------------------------------------");
                        while(k!=0)
                        {
                              System.out.println(classname[k]);
                              k--;
                        } 
			            System.out.println("properties are");
                         System.out.println("----------------------------------------");
                        while(v!=0)
                        {
                           System.out.println(variables[v]);
                           v--;
                          
                        }
                         System.out.println("methods are");
                         System.out.println("----------------------------------------");
                        while(i!=0)
                        {
                              System.out.println(rubymethods[i]);
                              i--;
                            
                        }
                         System.exit(0);
                       }
                       //following code identify if in java and prints variables and classes and methods
                       else
                       {
			                 System.out.println("Program is written in java");
                                         System.out.println("---------------------------");
                                         System.out.println("classes are");
                                           System.out.println("---------------------------");

                             while(k!=0)
                        {
                             
			      
                              System.out.println(classname[k]);
                              k--;
                        } 
		System.out.println("property,methods of classes and their access specifiers are");
                          System.out.println("---------------------------------------------");
						while(m!=0&&l!=0)
						{
						   
						System.out.println(access_specifiers[l]);
						System.out.println(java_method[m]);
						m--;
						l--;
						}
						
						
						
                         System.exit(0);
                            
                       }
                     
                     
                     
                }
            }
    }
 }
   
  

