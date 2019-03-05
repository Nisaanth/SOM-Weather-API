# SOM-Weather-API
## Description

created a SOM (Service Object Model) for the Open Weather API and tested the current weather (https://openweathermap.org/current) and five day (https://openweathermap.org/forecast5) services. Tested both using city name and id using rspec.

## Languages used
* Ruby 

## Technologies used 
* Github
* VS Code

## Frameworks, Libraries and Gems used used
* Rspec
* HTTParty
* Json
* DotENV

## How to download
1. To download a copy click on 'clone or download' and you can download it as a zip file.
2. Unzip the file
3. Open in text editor 
4. Install gems if required using 'bundle init'

## Alternative
1. If you choose to clone it go into your terminal.
2. Create a directory
3. Type git clone followed by the link obtained via opening 'clone or download'
4. This will make a copy to the directory you're in.
5. Go to that directory
6. Open file

## How to test
1. Make sure you have rspec gem install beforehand 
2. When installed, within terminal type rspec 
3. Tests should then display in the terminal, whether they're correct or incorrect with associated contexts

## How to Use 
1. Create lib folder
2. Put the code into the lib folder
4. Instantiate the super class weatherapi.rb in your _spec.rb file
5. Open your spec_helper.rb and require_relative with the given path of the weatherapi.rb file
    ``` ruby
    eg. require 'rspec'
    require_relative '../weatherapi'
    ```
6. Run the method within that weatherapi.rb superclass


## Challenges 
1. thinking of creating different tests
2. deciding when to stop testing 
3. planning out loop methods on how to access elements in arrays or hash

## Learning points
1. Setting up the file structure
2. Testing the random postcode generator using unit test
3. develeloped better understanding of dealing with an api unit test