"Kuhanje" by Robert

When play begins:
	play the sound of cooking;
	say "Hello, this is a game where the player has to find the missing ingredients.";


The display banner rule is listed before the when play begins stage rule in the startup rules.
	
Figure of map is the file "map.png".
Sound of cooking is the file "happy-cooking.ogg".
Figure of spicek is the file "spicek.png".

Mapping is an action applying to nothing.
Understand "map" as mapping.
Understand "look at map" as mapping.

After mapping:
	display the Figure of map;
	continue the action;
	
Taxi_to_Ducan is an action applying to nothing.
Understand "take taxi to Ducan" as Taxi_to_Ducan.
Understand "taxi to Ducan" as Taxi_to_Ducan.

Before Taxi_to_Ducan when the price of the money is less than $2.65:
	say "You don't have any money." instead.
	
After Taxi_to_Ducan:
	decrease the price of the money by the $2.65;
	say "You paid $2.65 for taxi, leaving you with [the price of the money].";
	now the player is in the Ducan;
	continue the action;
	
Taxi_to_Kuhinja is an action applying to nothing.
Understand "take taxi to Kuhinja" as Taxi_to_Kuhinja.
Understand "taxi to Kuhinja" as Taxi_to_Kuhinja.

Before Taxi_to_Kuhinja when the price of the money is less than $2.65:
	say "You don't have any money." instead.
	

After Taxi_to_Kuhinja:
	decrease the price of the money by the $2.65;
	say "You paid $2.65 for taxi, leaving you with [the price of the money].";
	now the player is in the Kuhinja;
	continue the action;

Price is a kind of value.
$9.99 specifies a price.
A thing has a price.	

The player carries a wallet. 
The wallet contains money. 
The price of the money is $10.77. 
The printed name of the money is "[price of the money] in cash". 
Understand "cash" as the money.

Kuhinja is a room. "You are in the kitchen. Food needs to be prepared, but some ingredients are missing. The recipe with the necessary ingredients is on the table. Chef Spicek will tell you where to find the ingredients that need to be brought to the table."
The table is here. "A wooden table with a recipe on it."
The table is scenery.
Before taking the table:
	instead say "The table is too heavy to take."
The recipe is on the table. "Ingredients: flour, carrot, parsley, meat and milk."
The recipe is scenery.
Before taking the recipe:
	instead say "The recipe must remain in the kitchen."
Spicek is a man. "Sipcek is a cook who prepares food. He's standing in front of you right now."
The description of Spicek is "Spicek is a man of medium height. He has short brown hair and brown eyes. He is dressed as a chef."
Spicek is here.
Understand "Ingredients" or "ingredients "as "[ingredients]".
Instead of asking Spicek about "[ingredients]", say "Spicek say :'The flour is in the room to the west of the Kuhinja, the carrots and parsley are in the Vrt, and you have to go to the Ducan to get meat and milk. First, you need to take the box that contains the key that opens the door to the Spajza. At any time you can look at the map and take a taxi to the Ducan or Kuhinja.'"
Before asking Spicek about "[ingredients]":
	display Figure of spicek.
Kljuc is a thing.
Kljuc can be discovered or undiscovered.
Kljuc is undiscovered.
The description of Kljuc is "This is the key that unlocks the Spajza."
Kljuc unlocks Vrata_spajza.
A box is here. 
The box is scenery.
The description of box is "You see a box with key in it."
The box is openable.
The box is closed.
Kljuc is in the box.
Instead of taking box:
	If Kljuc is undiscovered:
		say "You picked up the box and now you have the key that opens the door to Spajza.";
		now the player is carrying Kljuc;
		now Kljuc is discovered;
		stop the action.
		
Vrata_vrt is a door.
The description of Vrata_vrt is "Wooden door between rooms."
Vrata_vrt is closed.
Vrata_vrt is unlocked.
Vrata_vrt is east of Kuhinja and west of the Vrt.
Vrata_vrt is scenery.
Before taking the Vrata_vrt:
	instead say "You can't take the door, it's built in."
		
Vrt is a room. 
Vrt is east of Vrata_vrt. "You are in the garden. In front of you is a basket of vegetables. If you continue west, you will return to the Kuhinja."
The basket is here. "Basket with vegetables."
The basket is scenery.
Before taking the basket:
	instead say "The basket must remain in the Vrt."
The carrot is in the basket.
The parsley is in the basket.
The tomato is in the basket.

Vrata_spajza is a door.
The description of Vrata_spajza is "Wooden door between rooms."
Vrata_spajza is closed.
Vrata_spajza is locked.
Vrata_spajza is west of Kuhinja and east of the Spajza.
Vrata_spajza is scenery.
Before taking the Vrata_spajza:
	instead say "You can't take the door, it's built in."

Spajza is a room.
Spajza is west of the Vrata_spajza. "You are in the pantry. There are shelves in the pantry where certain ingredients are located. If you continue east, you will return to the Kuhinja."
The cabinet is here. "There are certain ingredients in the cabinet."
The cabinet is scenery.
Before taking the cabinet:
	instead say "You can't take the cabinet with you."
The flour is in the cabinet. 
The olive oil is in the cabinet.
The salt is in the cabinet.


Vrata_ulica is a door.
The description of Vrata_ulica is "Wooden door between rooms."
Vrata_ulica is closed.
Vrata_ulica is unlocked.
Vrata_ulica is north of Kuhinja and south of the Ulica.
Vrata_ulica is scenery.
Before taking the Vrata_ulica:
	instead say "You can't take the door, it's built in."

Ulica is a room.
Ulica is north of Vrata_ulica. "You are in the street. If you go north, you will reach the shop, and if you go south, you will return to the Kuhinja."
The trees are in the Ulica.
The trees are scenery.
Before taking the trees:
	instead say "You can't take the trees."
The parhway is in the Ulica.
The parhway is scenery.
Before taking the parhway:
	instead say "You can't take the parhway."
The bench is in the Ulica.
The bench is scenery.
Before taking the bench:
	instead say "You can't take the bench."

Vrata_ducan is a door.
The description of Vrata_ducan is "Wooden door between rooms."
Vrata_ducan is closed.
Vrata_ducan is unlocked.
Vrata_ducan is north of Ulica and south of the Ducan.
Vrata_ducan is scenery.
Before taking the Vrata_ducan:
	instead say "You can't take the door, it's built in."

Ducan is a room.
Ducan is north of Vrata_ducan. "You are in a shop. Groceries are in the fridge. If you continue south, you will come to a Ulica."
The fridge is here. "White fridge with groceries."
The fridge is scenery.
Before taking the fridge:
	instead say "You can't take the fridge with you, it's too heavy."
The eggs are in the fridge.
The price of eggs is $2.05.
Before buying eggs when the price of the money is less than the price of the eggs:
	say "You don't have any money." instead.
Instead of buying eggs:
	decrease the price of the money by the price of eggs;
	say "You paid [the price of the eggs] for eggs, leaving you with [the price of the money].";
	now the price of the eggs is $0.00;
	now the player is carrying the eggs.
The meat is in the fridge.
The price of meat is $4.49.
Before buying meat when the price of the money is less than the price of the meat:
	say "You don't have any money." instead.
Instead of buying meat:
	decrease the price of the money by the price of meat;
	say "You paid [the price of the meat] for meat, leaving you with [the price of the money].";
	now the price of the meat is $0.00;
	now the player is carrying the meat.
The milk is in the fridge.
The price of milk is $0.98.
Before buying milk when the price of the money is less than the price of the milk:
	say "You don't have any money." instead.
Instead of buying milk:
	decrease the price of the money by the price of milk;
	say "You paid [the price of the milk] for milk, leaving you with [the price of the money].";
	now the price of the milk is $0.00;
	now the player is carrying the milk.
The cheese is in the fridge.
The price of cheese is $8.76.
Before buying cheese when the price of the money is less than the price of the cheese:
	say "You don't have any money." instead.
Instead of buying cheese:
	decrease the price of the money by the price of cheese;
	say "You paid [the price of the cheese] for cheese, leaving you with [the price of the money].";
	now the price of the cheese is $0.00;
	now the player is carrying the cheese.

After putting on the table:
	If parsley is on the table and carrot is on the table and flour is on the table and meat is on the table and milk is on the table:
		end the story saying  "Spicek say :'You won. You brought me all the ingredients.'";
	Otherwise:
		say "More ingredients are missing".