Airport Challenge
===================

The Airport Challenge is software to control the low of planes at an airport. The task is write required classes and respective methods.

The project uses Test Driven Design(TDD) with Rspec.

Class Responsibilites Collaborators (CRC)

Class - Plane
---------------------------------
Responsibilites		Collaborators
==================================
land                 Airport
Takeoff              Airport
Flying status

Class - Airport
-----------------------------------
Responsibilites      Collaborators
===================================
Allow Landing         plane/Weather
Allow departing       plane/Weather
check the weather     Weather(Module)
full                  plane
spaces /empty         plane
plane_count           plane
capacity              plane




Task
=====

Imagine you're writing software to control the flow of planes at an airport. The planes can land and take off provided that the weather is sunny. Occasionally it may be stormy, in which case no planes can land or take off. 

Your task is to create a set of classes/modules to makes the given test suite pass. You will need to use random number generator to set the weather (it is normally sunny but on rare occasions it may be stormy). In your tests, you'll need to use a double to override random weather. Finally, every plane must have a status indicating whether it's flying or landed. You may expand on the original tests.

Read the documentation to learn how to use test doubles: https://www.relishapp.com/rspec/rspec-mocks/docs. There’s an example of using a test double to test a die that’s relevant to testing random weather in the test.

The specs are located at: http://bit.ly/1dFD7f1. These specs are there just for the inspiration if you need it. You don’t have to implement every single example there and you aren’t limited by the examples there either. Feel free to modify the specs are you see fit.

Please create separate files for every class, module and test suite. Commit it to a repo on Github by the end of the day (or on the weekend if you started late).

The submission will be judged on the following criteria:
Tests pass
Tests coverage is good
The code is elegant: every class has a clear responsibility, methods are short etc.
Finally, don’t overcomplicate things. This task isn’t as hard as it may seem at first. 
