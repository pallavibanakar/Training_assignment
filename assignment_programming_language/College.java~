import java.util.ArrayList;
import java.util.List;


/**Parent Class
 * @author webonise
 *
 */
public class College {

	private String collegeCode;
	String address;
	public String telephoneNumber;
	protected Long numberOfStudents;
	List<Faculty>listOfFaculty= new ArrayList<>();
	
	
	/**Gets the college code
	 * @return
	 */
	public String getCollegeCode() {
		return collegeCode;
	}
	/**Sets the college code
	 * @param collegeCode
	 */
	public void setCollegeCode(String collegeCode) {
		this.collegeCode = collegeCode;
	}
	/**Gets the address
	 * @return
	 */
	public String getAddress() {
		return address;
	}
	/**Sets the address
	 * @param address
	 */
	public void setAddress(String address) {
		this.address = address;
	}
	/**Gets number of students
	 * @return
	 */
	public Long getNumberOfStudents() {
		return numberOfStudents;
	}
	/**Sets number of students
	 * @param numberOfStudents
	 */
	public void setNumberOfStudents(Long numberOfStudents) {
		this.numberOfStudents = numberOfStudents;
	}
	
	
	
	/**Gets the telephone number
	 * @return
	 */
	public String getTelephoneNumber() {
		return telephoneNumber;
	}
	/**sets the telephone number
	 * @param telephoneNumber
	 */
	public void setTelephoneNumber(String telephoneNumber) {
		this.telephoneNumber = telephoneNumber;
	}
	/**Gets list of faculty
	 * @return
	 */
	public List<Faculty> getListOfFaculty() {
		return listOfFaculty;
	}
	/**Sets list of faculty
	 * @param listOfFaculty
	 */
	public void setListOfFaculty(List<Faculty> listOfFaculty) {
		this.listOfFaculty = listOfFaculty;
	}



	/**Nested Inner Class
	 * @author webonise
	 *
	 */
	class Faculty{
		private String name;
		private String subject;
		private Long salary;
		public String getName() {
			return name;
		}
		
		/**
		 * Sets the name
		 * @param name
		 */
		public void setName(String name) {
			this.name = name;
		}
		/**Gets the subject
		 * @return
		 */
		public String getSubject() {
			return subject;
		}
		/**Sets the subject
		 * @param subject
		 */
		public void setSubject(String subject) {
			this.subject = subject;
		}
		/**Gets the salary
		 * @return
		 */
		public Long getSalary() {
			return salary;
		}
		/**Sets the salary
		 * @param salary
		 */
		public void setSalary(Long salary) {
			this.salary = salary;
		}
		
		
		
	}
	
	public void main(String args[]){
		
		Faculty faculty=createFaculty();
		printTheFaculty(faculty);
	}
	
	/**Prints the attributes of the faculty
	 * @param faculty
	 */
	void printTheFaculty(Faculty faculty){
		System.out.println("Name is " +faculty.getName());
		System.out.println("Subject is " +faculty.getSubject());
		System.out.println("Salary is " +faculty.getSalary());
	}
	
	/**Creates a new faculty
	 * @return
	 */
	private Faculty createFaculty(){
		Faculty faculty= new Faculty();
		faculty.setName("Johnny");
		faculty.setSalary((long)1000);
		faculty.setSubject("Java");
		return faculty;
	}
	
	
}

