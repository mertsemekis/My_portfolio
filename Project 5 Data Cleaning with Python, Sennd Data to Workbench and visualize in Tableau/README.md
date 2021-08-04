<h1> Data Cleaning with Python, Sennd Data to Workbench and visualize in Tableau </h1>

<h3> This project is divided in three parts : 
  <ul>
    <li>Python (Jupyter Notebook)</li>
    <li>SQL (MySQL Workbench)</li>
    <li>Tableau</li>
  </ul>
  
  <h4>Python (Jupyter Notebook) :</h4>
  <p> I extracted the data from the web with the request library and I created a csv file with them, named googleplaystore.csv. With this file I created a DataFrame and I examined the dataset info.
    Afterwards, I cleaned the data filling the null values, renaming the columns and changing the datatypes. Moreover, I checked the correlation between the numerical and non numerical fields.
    At the end,  I connected python to my database and I filled a table with the values of my DataFrame</p>
  <p>For more details please open the data_cleaning.ipynb </p>
  
  <h4>SQL (MySQL Workbench) :</h4>
  <p> Before the creation of the connection between Python and MySQL, I created a databse named google_apps and the table google_data</p>
  <p> When I inserted the data to the table, at MySQL Workbench I exported the table as a csv file. I connected this file with Tableau. </p>
  <p> For more details please open the project_database_and_table.sql </p>
  
  <h4>Tableau :</h4>
  Follow this <a href='https://public.tableau.com/app/profile/angelos/viz/GoogleApps_16274039429850/Report'> link </a> to check my visualizations.
