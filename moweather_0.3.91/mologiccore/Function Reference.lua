--[[
This file contains a list of functions built into MoLogicCore along with their inputs/outputs.

Documentation V1

--------------------------------------------
------------------MoEntity------------------
--------------------------------------------

--MoEntity.SubscribeOnBuilt(Ent,Name,Func)
Calls the inputed function when the inputed entity is constructed by a player.
Ent: String, The entity you want to detect when its built.
Name: String, A identifier for the subscription your creating.
Func: Function, The function you want called when the inputed entity is built.

--MoEntity.UnSubscribeOnBuilt(Ent,Name)
Removes a subscription to when a entity is built.
Ent: String, The entity your removing the subscription to.
Name: String, The subscription your removing.

--MoEntity.SubscribeOnDeath(Ent,Name,Func)
Calls the inputed function when the inputed entity is killed.
Ent: String, The entity you want to detect when its killed.
Name: String, A identifier for the subscription your creating.
Func: Function, The function you want called when the inputed entity is killed.

--MoEntity.getplayerpos(Num)
Returns the position of the inputed player.
Num: Number, The number id of the player you want to get the position of.

--MoEntity.addtoplayerpos(Num,X,Y)
Returns the position of the inputed player, with the addition of the inputed X and Y values.
Num: Number, The number id of the player you want to add to the position of.
X: Number, The X value of the position your adding.
y: Number, The Y value of the position your adding.

--MoEntity.closestplayer(X,Y)
Returns the closest player to the set of coordinates inputed.
X: Number, The X value of the position.
y: Number, The Y value of the position.

--MoEntity.addtoentpos(Ent,Vec)
Returns the position of the inputed entity, with the addition of the inputed vector.
Ent: Entity, The entity your adding the vector to its position.
Vec: Vector, The vector your adding.

--MoEntity.findentinsquareradius(Vec,Rad,Ent)
Returns all the entities of a given type within a radii around a vector.
Vec: Vector, The position your scanning around.
Rad: Number, The size of the radius your scanning.
Ent: Entity, The entity your scanning for.

--MoEntity.findentinradius()
This function is not finished yet.

--MoEntity.inline(Vec,Vec2)
Returns if two vectors are aligned on a horizontal or vertical line.
Vec: Vector, The first vector your checking.
Vec2: Vector, The second vector your checking.

--MoEntity.traceline(Vec,Vec2,Ent)
Returns if a entity can be placed along the entirety of two points.
Vec: Vector, The Vector your checking from.
Vec2: Vector, The Vector your checking to.
Ent: Entity, The entity your checking with.

--MoEntity.functraceline(Vec,Vec2,Ent,Func)
Exactly like traceline, except it has a extra function called for each position being tested. (If its open.)
Vec: Vector, The Vector your checking from.
Vec2: Vector, The Vector your checking to.
Ent: Entity, The entity your checking with.
Func: Function, The function thats called if the area is open.

--MoEntity.EntToKey(Ent)
Creates and returns a string key for the in-putted entity.
Ent: Entity, The entity you want to get the key from.

--MoEntity.KeyToEnt(Key)
Returns the entity bound to the key.
Key: String, The key you want to get a entity from.

--MoEntity.AddToLoop(Name,Ent,Ex)
Adds the entity into a loop that can be used later.
Name: String, The name of the loop your adding the entity to.
Ent: Entity, The entity your adding into the loop.
Ex: Any, Any data you want saved with the entity in the loop.

--MoEntity.RemoveFromLoop(Name,Ent)
Removes the entity from a loop.
Name: String, The loop your removing the entity from.
Ent: Entity, The entity your removing from the loop.

--MoEntity.GetDataFromLoop(Name,Ent)
Returns the data saved with the entity in the inputed loop.
Name: String, The name of the loop your getting data from.
Ent: Entity, The entity you want the loops data from.

--MoEntity.CallLoop(Name,Func)
Runs the function on all the entities saved in the inputed loop.
Name: String, The loop your calling.
Func: Function, The function thats called for all the entities.

--MoEntity.LoopThis(Table,Func)
Calls the function for all the data inside the inputed table.
Table: Table, The table your looping through.
Func: Function, The function that is called for all the data inside the table.

--------------------------------------------
-------------------MoMath-------------------
--------------------------------------------

--MoMath.Clamp(N1,N2,N3)
Returns an inputed number clamped between two other inputed numbers.
N1: Number, The number your clamping.
N2: Number, The Maximum N1 can be before being clamped.
N3: Number, The Minimum N1 can be before being clamped.

--MoMath.Sign(N1)
Returns the sign of a number. Aka if its greater equal or lesser then 0.
N1: Number, The number your getting the sign of.

--MoMath.Approach(N1,N2,N3)
Increments the first variable towards the second at the rate of the third.
N1: Number, The number your incrementing.
N2: Number, The number your approaching.
N3: Number, The rate N1 approaches N2 at.

--MoMath.GetKJ() --MoMath.GetMJ() --MoMath.GetGJ()
Returns the amount of Joules in a KJ/MJ/GJ. 

When dealing with the electrical network the game uses joules.

--MoMath.JtoKJ(N1) --MoMath.MJtoKJ(N1) --MoMath.GJtoKJ(N1)
Converts J/MJ/GJ into KJs.
N1: Number, The amount of energy your converting.

--MoMath.JtoMJ(N1) --MoMath.KJtoMJ(N1) --MoMath.GJtoMJ(N1)
Converts J/KJ/GJ into MJs.
N1: Number, The amount of energy your converting.

--MoMath.JtoGJ(N1) --MoMath.KJtoGJ(N1) --MoMath.MJtoGJ(N1)
Converts J/KJ/MJ into GJs.
N1: Number, The amount of energy your converting.

--MoMath.KJtoJ(N1) --MoMath.MJtoJ(N1) --MoMath.GJtoJ(N1)
Converts KJ/MJ/GJ into Js.
N1: Number, The amount of energy your converting.

--------------------------------------------
-------------------MoMisc-------------------
--------------------------------------------
These functions are outdated and sometimes unneeded.

--MoMisc.PlaySound(Sound,Pos)
Is a shortcut to creating entities at the targeted position.
Sound: String, Name of the entity being spawned.
Pos: Vector, The position the entity will spawn at.

--MoMisc.Print(Text)
Prints the inputed text to the player.
Text: String, The string your printing to the player.

--MoMisc.Random(Seed,Min,Max)
Returns a random number between the Min and Max.
Seed: Number, Unused variable.
Min: Number, The minimum number your random number can be.
Max: Number, The maximum number your random number can be.

--------------------------------------------
------------------MoTimers------------------
--------------------------------------------

--MoTimers.CacheFunction(Name,Function)
Caches a function so timers don't error when the function doesn't exist.
Name: String, The Name of the cache for the function.
Function: Function, The function you are caching.

--MoTimers.CreateTimer(Name,Length,Repeat,Over,CallBack,Data)
Creates a timer that will call a function after a defined time.
Name: String, The name of the timer you are creating.
Length: Number, How long the timer waits in seconds before it calls the callback function.
Repeat: Number, How many times the timer repeats before it self destructs. 0 Repeats the timer forever.
Over: Boolean, Wither or not the timer overrides existing timers of the same name.
Callback: Function, The function thats called each time the timer counts down. Automaticly cached.
Data: Any, Any Data you want to pass along to the function when its called.

--MoTimers.DeleteTimer(Name)
Deletes a timer.
Name: String, The name of the timer your deleting.

--MoTimers.TimerTimeLeft(Name)
Returns how much time a timer has left.
Name: String, The name of the timer your getting the time left of.

--MoTimers.GetTimers()
Returns all currently existing timers. Only Accounts for timers created by your mod.

]]