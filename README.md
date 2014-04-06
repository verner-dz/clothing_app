Common Fibers

Summary:
I want to build a website for people to get Original Factory Manufactured clothes before branding on the cheap. Suppliers that sell on Alibaba also supply big brands but they sell the clothes in bulk without a brand logo. So this is what I was thinking the site could be like.
1.	Think of it like a Kickstarter but you're funding a batch order of Shirts, pants, hats, sunglasses, etc...
2.	Lets say the bulk order is $500 for 100 pairs of pre branded Banana Republic Chinos. You need 100 backers at $8 each to compensate shipping costs. Once the money is pledged, the order will be made in the sizes and colors requested when you pledged the money. When the order is received, the pants are packaged and sent out to you. 
So you basically get a $60 pair of pants for $8.
The orders would not be filled until enough money is pledged so you only pay if it reaches the goal.
Advantages: Inexpensive and stylish clothes


Link to erd: http://imgur.com/fcdkSNc

Link to user stories: https://www.pivotaltracker.com/s/projects/1047226

Technologies:
Action Mailer API

User stories completed:
- Users and suppliers can create, login and logout of their accounts.
- Supplier can add, edit, delete their product inventory.
- Users can purchase items.
- Users can view their purchased items.
- Users can checkout their purchases.
- When order is completed, all the users that purchased the items get an email notifying them that their order is on the way.

Backlog:
- Validation for purchased items.
- Create admin tools.
- Add comments and reviews for products.
- Users can edit, and delete their purchases.
- Every time a product is sold out, and suppliers update their inventory, it'll be created as a new object in the database. This is so that each product is assigned to their unique users until the inventory is sold out. 


Heroku link: http://sheltered-woodland-9672.herokuapp.com/
