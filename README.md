# cloud-engineering day to day diary

## Day 1 
the beginning of my studies for better specialization in cloud engineering

I spent about 3 hours reading documentation and making notes, then made a simple .tf that creates a docker container with nginx running inside. 

I explored a bit with the variables and outputs file.

I then added a volume because i wanted to print a simple message and understand how i could mount an html page into the container in HCL!

Bottom line this was half a day well spent!!

<img width="681" height="395" alt="imagen" src="https://github.com/user-attachments/assets/a7079948-249b-4786-98bd-ad3df9e19327" />

## Day 2
I now created a local_file resource and experimented with .tfvars files.

Questions I can now easily answer:

1. What's the difference between a variable and a resource?

A resource is any infrastructure object you want to create and manage with Terraform.
A variable are dynamic and alterable values of resource configuration values. You can have variable blocks and then reference the block, inject them in the command line, have enviroment variables, etc. This way resources and modules are reusable and not hardcoded.

2. What is the difference between var.name and local.name?

As you can deduct from the name. a var.name is a VARIABLE name. It is not hardcoded and its injected into the configuration from a variable block, command line, .tfvars file...
A local.name is hardcoded and its defined internally in my terraform code. Its usually for repetitive or complex values that i dont want to change ever and for keeping my code clean.

3. What happens if a variable has no default?

Since a default value is mandatory it either prompts you to enter a value or gives and error message (in Automated, CI/CD Pipeline).

4. Why is variable validation useful?

When you give the user power to change code through variables you need to establish a set of rules applied through validations because the code also only works within a set of rules. You dont want it to break or for the user/developer to not understand what is filing. validations give you a sense of where the issues are when something regarding variables goes wrong because of the error messages.

