# CGPA-Calculator

Dynamically updates subjects list based on department and semester selected

ABOUT:

      -> CGPA calculator is used to calculate Student's CGPA with respective grades secured in subjects. 

      -> Frontend : HTML, CSS, jQuery(JavaScript) with Ajax Call

      -> Backend : Servlet (MVC)

      -> Data Fetching using MySQL Queries in database

      -> Data exchange is done in JSON format.



 Step by Step Process :

      -> Select your department, semester, and no. of subjects in your semester and click get Subjects (Button).

      -> You will get a Table with a bunch of drop-down menus containing a list of subjects, subject type, credit point for each subject, and a grade menu.

      -> Select each subject with respective information about the subject and Grade secured in each subject.

      -> After selecting all data in the table, you will get your calculate CGPA as Alert.



Validation : 

      -> Without selecting your department, semester and subject count further operation cannot be provided.

      -> After filling out all data in the subjects table you can calculate your CGPA.

      -> Filling data in the Subject table can be done row by row.



Others :

      -> On page load a GET request (Ajax call) will be initiated to get the list of departments available for CGPA calculation.

      -> On clicking Get subject (Button), GET request (Ajax call) will be initiated to get the list of subjects and its information.

      -> To calculate CGPA, POST request with selected subject information will be initiated and its result will be calculated CGPA.

      -> Serialization and Deserialization is implemented to convert Map(POJO) into JSON data and vice versa.












