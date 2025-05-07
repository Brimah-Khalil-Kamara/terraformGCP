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
Remote Repository: <br/>
<img src="https://i.imgur.com/1z5BOy8.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Select the disk:  <br/>




<h2>2 GCP Create GCP Cloud Storage Bucket:</h2>

To create buckets you can either create on on the fly or use an existing bucket if there is one available. [Create a new bucket](https://cloud.google.com/storage/docs/creating-buckets)



<p align="center">
Create Bucket: <br/>
<img src="https://i.imgur.com/EuNcS6h.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Select the disk:  <br/>

<h2></h2>

To create bucket in the GCP console type in buckets in the search area and select "Buckets cloud storage". Once in the buckets dashboard area select "create a bucket". In this area you select a name for your bucket and the region to where you want your data stored. Follow the dialogue and select create.



<p align="center">
Create Bucket: <br/>
<img src="https://i.imgur.com/2aXN0nQ.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Select the disk:  <br/>

<h2></h2>


Now Bucket has been created.

<p align="center">
Created Bucket: <br/>
<img src="https://i.imgur.com/mWyAz5G.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Select the disk:  <br/>

<h2>3 Create a terraform Service Account:</h2>

To create a Service account in the console select IAM and admin from the dashboard or alternatively you can search "Service Accounts in the search area. Select "Create Service account". When in the dialogue area select a Service Account name, this auto populates the Service Account ID dialogue box. You can copy and paste the name to the description dialogue box, after select create and continue

<p align="center">
Create Service Account: <br/>
<img src="https://i.imgur.com/aRqQ0rN.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Select the disk:  <br/>

<h2></h2>


Next we grant the Service Account permissions.

<p align="center">
Create Service Account: <br/>
<img src="https://i.imgur.com/QS8jfoo.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Select the disk:  <br/>

<h2></h2>


Service Account has been created 

<p align="center">
Created Service Account: <br/>
<img src="https://i.imgur.com/du7wtHj.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Select the disk:  <br/>



<h2>4 GCP Create Key:</h2>

From the Service Account create a key. Go 3 small dots located to the right of the Service Account created created and select manage keys

<p align="center">
Manage Keys: <br/>
<img src="https://i.imgur.com/F6z27e4.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Select the disk:  <br/>

<h2></h2>

After selecting Add key and selecting Json format the key will be downloaded locally, this key should be navigated and moved to the correct file path where all Terraform files will reside for building the basic infrastructure.

<p align="center">
Manage Keys: <br/>
<img src="https://i.imgur.com/oBOQ7M3.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Select the disk:  <br/>

<h2></h2>



<!--
 ```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
--!>
