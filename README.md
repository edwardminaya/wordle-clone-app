# Worlde Clone

This is a simple program that clones the wordle game. If you have not played it you can check it out here from New York Times.

[Wordle](https://www.nytimes.com/games/wordle/index.html)

This project is to practice my programming skills and learn how to refactore and improve the code over time.

#### Method

I created the basic features of the game. The current state goes as follows

- A word is already generated from a list that is read through froma text file (words.txt)
- The user is then prompted to enter a word
- A functions was created to take in the word and check it against the generated word and also store it an array with it's status
- Another function was created to display the words and show the text with colors to show the user if they are matching letters or using letters that are in the generated word.

#### Later Improvements

- I hope to refactor the program to use classes and clean up the code a bit
- I also hope to add a few new features
  - allow users to get the definition of the word
  - allow users to see how many vowels are in the generated word
  - keep track of how many words tries it takes to get the correct word
  - keep track of how many words in the total list were completed

#### Bugs

- The double letter may be an issue. Right now the function is looking for letters to see if they are in the word through each iteration. This may lead to some deception of more than 1 of the same letters in a word.

#### Instructions to Use

Clone the repo to your machine and run the wordle.rb in your terminal with the following command

```
% ruby wordle.rb
```
