<h1>Terraform - Introduction to Terraform Infrastructure as code with GCP</h1>


<h2>Description</h2>
Project consists of simple steps to build a GCP infrastructure with Terraform, making use of GitOps practices.

<br />


<h2>Languages and Utilities Used</h2>

- <b>Visual Studio Code</b> 
- <b>Terraform</b>

<h2>Environments Used </h2>

- <b>Windows 11</b> (21H2)



<h2>1.1 Step 1 Create Repository:</h2>

Create a Git repository for the terraform project so whatever changes made to the terraform configuration, can actually work with the repository, so there’s a history of the changes and also other team members can check out the code and work on the same project as well.





<p align="center">
Create Repository: <br/>
<img src="https://imgur.com/ZfuOWcD.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Select the disk:  <br/>


<h2>1.2 Step 2 Connect local project with Git Repository:</h2>

The remote repository exists in Github now the local project can be connected to the remote repository. Which means we are going to make it into a Git project. In gitbash in the right folder project path  the git init command is used. What this does is it initialises an empty repository. To connect it to remote to push the existing repository the git remote add origin command is used.




<!--
 ```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
--!>
