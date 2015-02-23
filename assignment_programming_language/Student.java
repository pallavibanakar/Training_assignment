
public class Student {

	//Member variables
	public String Name;
	protected String middleName;
	private Long age;
	Double aggregate;
	
	
	/** Gets the middle name
	 * @return middle Name
	 */
	public String getMiddleName() {
		return middleName;
	}
	/**Sets your middle name
	 * @param middleName
	 */
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	/**Gets the age
	 * @return
	 */
	public Long getAge() {
		return age;
	}
	/**Sets the age
	 * @param age
	 */
	public void setAge(Long age) {
		this.age = age;
	}
	/**Gets the aggregate
	 * @return
	 */
	public Double getAggregate() {
		return aggregate;
	}
	/**Set the aggregate
	 * @param aggregate
	 */
	public void setAggregate(Double aggregate) {
		this.aggregate = aggregate;
	}
	
	
	
	
}
