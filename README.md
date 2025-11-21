# OS Assignment 2 – fork, Linker & Loader

All working Makefile + explanations

Run:
make         → compile
make run     → execute everything + ldd
## Screenshots of compilation and execution
**required to install gcc : to compile C programs**

**1. outputs**  
![Compilation](osOutputs.PNG)

**2. Running all programs with make run :**
**Explanation: make run automatically all executions**

**fork() demonstration**
**Linker example**
**Loader example + ldd output showing dynamically loaded libraries**  
![make run](osmakerun.PNG)

**3. fork() Process Creation and its output** 
**Explanation: The fork() system call creates a child process.**
**Parent receives the child’s PID (> 0)**
**Child receives 0**
**Both processes run the same code and print their own messages.**
![fork](osProcess_creation_file.PNG)  
![fork](osProcess_Creation.PNG)

**4. Linker example: that links file1.c and file2.c you will see them linked in the output**
**Explanation:**
**The Linker (called by gcc file1.c file2.c) combines both object files in the output image**
![linker](osFile1.PNG)
![linker](osaFile2.PNG)

**5. Loader + ldd that list the dynamic libraries**
**Explanation:**
**The program uses** 
**printf("This is a simple program.\n").**
 **When executed, the Loader loads the executable and shared libraries into memory**
![ldd](osLoader.PNG)


**6. All files : lists all files**  
![files](osfiles.PNG)

**7.sleep:  Starting Processes in the Background**
**Explanation:**
**sleep 15 & starts the process in the background**
**jobs command lists running background jobs**

![stoping the processes](osSleep.PNG)

**8.kill : to stop Processes**
**Explanation:**
**ps aux | grep sleep → finds the sleeped process using grep**
    **kill  → terminates the process**
        **kill -STOP  : pauses/suspends the process**
          **kill -CONT  :resumes the paused process**

![kill](osKill.PNG)
![KILL](osKillpid.PNG)
![KILL](osKillStop_cont.PNG)

