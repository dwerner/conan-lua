# conan-lua

[Conan.io](https://conan.io) package for lua library

## Build packages

Download conan client from [Conan.io](https://conan.io) and run:

    $ python build.py
    
## Upload packages to server

    $ conan upload lua/5.3.3@dwerner/testing --all
    
## Reuse the packages

### Basic setup

    $ conan install lua/5.3.3@dwerner/testing
    
### Project setup

If you handle multiple dependencies in your project is better to add a *conanfile.txt*
    
    [requires]
    lua/5.3.3@dwerner/testing

    [options]
    lua:shared=true # false
    
    [generators]
    txt
    cmake

Complete the installation of requirements for your project running:</small></span>

    mkdir build && cd build && conan install ..

Project setup installs the library (and all his dependencies) and generates the files *conanbuildinfo.txt* and *conanbuildinfo.cmake* with all the paths and variables that you need to link with your dependencies.
