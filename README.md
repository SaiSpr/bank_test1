You are a Data Scientist at a financial company, called "Prêt à spend", which offers consumer loans for people with little or no loan history.

The company wants to implement a “credit scoring” tool to calculate the probability that a customer will repay his credit, then classify the request as granted or refused credit. She therefore wishes to develop a classification algorithm based on various data sources (behavioral data, data from other financial institutions, etc.).

In addition, customer relationship managers have brought up the fact that customers are increasingly demanding transparency with regard to credit granting decisions. This customer demand for transparency is completely in line with the values ​​that the company wants to embody.

Ready to spend therefore decides to develop an interactive dashboard so that customer relationship managers can both explain credit granting decisions as transparently as possible, but also allow their customers to access their personal information and explore them easily.

Data
Here is the data you will need to create the dashboard. For simplicity, you can download them here .

You will probably need to join the different tables together.

Your mission
Build a scoring model that will automatically predict a client's bankruptcy probability.
Build an interactive dashboard for customer relationship managers to interpret the predictions made by the model, and improve the customer knowledge of customer relationship managers. Michaël, your manager, encourages you to select a Kaggle kernel to facilitate the preparation of the data necessary for the development of the scoring model. You will analyze this kernel and adapt it to ensure that it meets the needs of your mission.
This will allow you to focus on building the model, optimizing it, and understanding it.

Dashboard specifications
Michaël has provided you with specifications for the interactive dashboard. This must contain at least the following functionalities:

Allow to visualize the score and the interpretation of this score for each customer in an intelligible way for a person not expert in data science.
Allow to view descriptive information relating to a customer (via a filter system).
Allow descriptive information relating to a customer to be compared to all customers or to a group of similar customers.
