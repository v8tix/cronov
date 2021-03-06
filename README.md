![cronov image](./resources/cronov-title.png)

# Welcome

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="display: block; border-width:0; float: right" align="left" src="https://i.creativecommons.org/l/by/4.0/88x31.png"/></a><br/>

Welcome to the Cronov project. This image is part of the [k8sb](https://github.com/v8tix/k8sb) project.

#### Prerequisites
* Docker Engine installed.
* [Zemni](https://github.com/v8tix/zemni) 0.0.6.v20200416.

## What this guide covers
1. The Cronov image contexts.
2. Common operations.
### 1. The Cronov image contexts.
* The following figure shows these contexts:
![cronov contexts](resources/cronov-contexts.png)
* In this case Cronov only uses two contexts: 
  * Configuration and packages: 
    * In this context Cronov adds the repositories needed to execute the functions present on the External libraries' context.  
  * External libraries. 
    * Cronov makes use of the functions from the [Zemni](https://github.com/v8tix/zemni) project to add its user and group, and then the locale.
### 2. Common operations.
* At the root directory you will find the following directories.
  * configuration:
    * Here you can change the image name and its tag. 
  * build.
    * The Dockerfile, and the container artifacts need must be included here.
    * Also in this directory you can find the build.sh script. Execute it if you plan to build this image. 
    * Once the image was build, you can go to the executables directory.
  * executables.
    * Each script under this directory wraps a useful Docker command.
    * To give a try the container:
      * Execute the run.sh script. This will start a detached container.
      * To get a console, execute the attach.sh script.
      * :bulb: Like in SSH connections, type 'exit' and then press Enter to close the console.
      * When you are done, there are two ways to stop it:
        * If you want to stop it, and keep this image, execute the stop.sh script,         
        * Otherwise execute the delete.sh script instead.
## Authors
* Initial work

![v8tix logo](resources/v8tix-logo.jpg) <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Contact us](mailto:info@v8tix.com)</p>
## License  
<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="display: block; border-width:0; float: right" align="left" src="https://i.creativecommons.org/l/by/4.0/88x31.png"/>&nbsp;</a>This work is licensed under a [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).  
  













 