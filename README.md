# Pewlett-Hackard-Analysis


## Overview: 

The purpose of this analysis is to review the number of employees who are eligible to retire per title at Pewlett-Hackard. The company is also looking to introduce a mentorship program where some of the qualified retirees could participate to help the new-hires succeed. 

## Results: 

1. I started by creating a table that held all of the employees who were born between 01/01/1952 and 12/31/1955 to determine which employees could potentially retire. Due to some employees switching titles over the years, there were duplicate entires for some employees. 

![retirement_titles]()

2. To solve for this I created a new table using the "DISTINCT ON" statement so that I could pull the first occurence of each employee number. I also added a filter to remove all employees that already left the company. This way we were left with an accurate number of employees that could retire. 

![unique_titles]()

3. After this, I created a new table using the data from the table created in step 2 to group the potential retirees by title to see which positions would be impacted the most. This should give insight into immediate hiring needs and the areas in the most danger of being understaffed. 

![retiring_titles]()

4. Finally I created a table to house the data for the active employees that are also eligible for the mentorship program. To be eligible, the employees birth date just needed to be between 01/01/1965 and 12/31/1965. 

![mentorship_eligibility]()

## Summary

### How many roles need to be filled as the "silver tsunami" begins to make an impact? 

When excluding duplicate employee numbers and only including current employees, the company will need to prepare to fill 72,458 roles. 


### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees? 

With there being 1,549 eligible employees for the mentorship program and there being 72,458 potential retires, I would say there are enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees. It would heavily depend on when the employees retired, but for every 47 potential mentors, there is only 1 employee eligible for the mentorship program. 

![mentorship_eligibility_vs_retirees]()


With that said, I created a couple of additional queries that will help provide more insight. 

The first one was to group the number of eligible active employees by title so that it's easier to understand how many employees there are for each of those spaces. This also made it easier to directly compare this to the number of potential retirees grouped by title. 

![mentorship_eligibility_vs_retirees]()

I also created an additional query to see what extended the range of birthdates would do to the number of employees eligible for the mentorship program,. By just changing the eligibility from 01/01/1965 to 12/31/1965, to 01/01/1963 to 12/31/1965, the number of eligible employees shot up from 1,549 to 38,401. Though the company may not want to extend the range this much, it may be something to consider depending on how many mentors the company wants to have available. Of course if a lot of people retire at one time, this would require more new hires that could be eligible for the mentorship program, but I still think it would be worth it to expand the range so that the company is not losing people to retirement that they may want to keep around to help their company grow.  

![mentorship_eligibility_vs_retirees]()
