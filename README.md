
  IUP is a portable toolkit for building graphical user interfaces. It offers a configuration API in three basic languages: C, Lua and LED. IUP's purpose is to allow a program to be executed in different systems without any modification, therefore it is highly portable. Its main advantages are:
    * high performance, due to the fact that it uses native interface elements.
    * fast learning by the user, due to the simplicity of its API.

  Build instructions and usage are available in the IUP documentation.

  For complete information, visit IUP's web site at http://www.tecgraf.puc-rio.br/iup
  or access its documentation in the HTML folder.

This code was checked out using

###The origin of the code is from
```
svn://svn.code.sf.net/p/iup/iup/trunk/iup

```
## Using the guide 
https://gist.github.com/ticean/1556967

to wrap svn to git

```sh

sudo apt-get install git-svn

git svn init svn://svn.code.sf.net/p/iup/iup/trunk/iup iup-mirror

cd iup-mirror

git svn fetch

#wait for a while

git remote add origin https://github.com/ivanceras/iup-mirror 

git push origin master

```


