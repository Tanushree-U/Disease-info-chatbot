#DiseaseInfoChatbot

##Description:
  DiseaseInfoChatbot is a Java Swing based UI which allows users to get information about few diseases though chatbot interface. The chatbot retrrives predefined answers which are stored in a MySQL database and presents it to users based on their input.

##Features:
1. It mimics a chatbot which makes it easy to use and interactive.
2. Users can type disease namest and get quick responses.
3. The UI is simple and user friendly.
4. Users can see the history of their coversation with chatbot.
5. It is case insensitive.

##Technologies used:
* Java (Swing): For the GUI.
* MySQL: For storing disease information.
* JDBC (Java Database Connectivity): For connecting java to mysql.

##Tools used:
* Eclipse IDE
* MySQL Workbench
* MySQL connector/J

##how to run the project?

1. Install MySQL:
   * Download and install MySQL Workbench and MySQL Server.
   * Open MySQL Workbench and create new database named healthdb.
   * Create a table named diseases.
   * Insert the required disease information to the table and commit the changes.

2. Install Java and Eclipse:
   * Download and install JDK(Java Development Kit).
   * Download and install Eclipse IDE.
  
3. Create java project:
   * Open Eclipse and create a new java project.
   * Create a package by right clicking on the project.
   * Inside package, create a class.
  
4. Add MySQL connector:
   * Download JDBC Driver or MySQL Connector/J.
   * Right click on the project -> Build path -> Configure build path -> libraries -> add external jars.
   * Add the MySQL Connector jar file.

5. Run the program:
   * Run the java program.

##Output:
  When the program runs, a chatbot interface opens. The users can type the name of the disease and send it to the chatbot. The chatbot displays the imformation related to the disease such as causes, symptoms and remedies. After displaying the information, the chatbot asks the user if they want to know about any other disease.

##Sample output:
  https://github.com/Tanushree-U/Disease-info-chatbot/blob/main/Screenshot%202026-02-25%20155540.png


