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

The remote repository exists in Github now the local project can be connected to the remote repository. Which means we are going to make it into a Git project. In gitbash in the right folder project path  the git init command is used.

```bash
git init
```

What this does is it initialises an empty repository. To connect it to remote to push the existing repository the git remote add origin command is used.

```bash
git remote add origin https://github.com/Brimah-Khalil-Kamara/terraformGCP.git
```


<p align="center">
Connect to Repository: <br/>
<img src="https://imgur.com/eJ4XcKq.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Select the disk:  <br/>


<h2>1.3 Step 3 Create .gitignore :</h2>

The thing is we don’t need to check all these files to the repository some of these files shouldn’t be checked in to the repository

So were not going to check the **.terraform** folder which basically just stores the providers that are installed locally so it doesn’t have to be part of the code. When we do a **terraform init** this will be downloaded on your computer locally. 

**terraform.tfstate** is another folder we want to ignore. It is a generated file that gets updated every time we do a **terraform apply.** We also want to ignore the backup file

In addition to this the json GCP private key information is sensitive as we dont want this in our repo so to omit the **.json** file adding it to the gitignore.


The git status command is ran, we can see all the files we ignored are not on the list, but we have the gitignore file.


```bash
git status
```

<p align="center">
gitignore file: <br/>
<img src="https://i.imgur.com/PRXQXqg.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Select the disk:  <br/>


<h2>1.4 Step 4 Check the remaining files in:</h2>

To push the files remotely to the github Repository created from our local computer we use the following commands.


```bash
git add .
```

```bash
git commit -m "initial commit"
```

```bash
git push -u origin main
```

The changes have been pushed to the remote repository and we can check this in the UI

<p align="center">
gitignore file: <br/>
<img src="https://i.imgur.com/1z5BOy8.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Select the disk:  <br/>












<!--
 ```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
--!>
