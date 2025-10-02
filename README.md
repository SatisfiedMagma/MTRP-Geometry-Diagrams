# Olympiad.asy
Download it from [dotfiles](https://github.com/SatisfiedMagma/hot_dotfiles/blob/main/.asy/olympiad.asy). Compiling and making diagrams is much easier.

# Overleaf Users
If the book is being compiled on _overleaf_, then copy the ``olympiad.asy`` from the above link. Make a file ``olympiad.asy`` in your overleaf project. That's all you need to do, rest everything will work out. 

# Putting the Asy Code in Overleaf
Remove the line
```
settings.outformat="pdf";
```
Also, you may change size of of font in diagram by adding ``defaultpen(fontsize(11pt))`` or the fontsize you want. 
The ``size(8cm)`` can be changed to whatever size you like to change on the final latex document.
