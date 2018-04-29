To build bionitio, autoreconf, a C compiler (such as gcc), and zlib are required.

Run the commands:
```
$ autoreconf --install # first time only
$ ./configure
$ make
```

bionitio is built in the src directory.
  
Optionally, to install the tool, run the command:
```
$ sudo make install        
```
                           
Optionally, to generate a buildable distribution, run the command:
```
$ make dist
```
This builds a tar archive that can be distributed and built elsewhere.
