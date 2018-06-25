GitHub Migration Script
===
This script allows the migration of as many repos as needed in an automated fashion.
This isu seful for when migrating from an Enterprise GitHub server to GitHub.com.

Step 1
===
To add the repos that you need to migrate add them to the ```name=()``` field.

Example 1
---

```name=(test test2 test3 test4)```

Step 2
===

Next, define the repo that you will clone by adding the User or Organization tied to that GitHub Repo.

Example 2
---

```git clone https://github.com/insertuserhere/"$name".git```
or if using ssh
```git@github.com:insertuserhere/"$name".git```

the "$name" variable is filled in by the ```name=()``` function definition.

Step 3
===

Finally add the location of the new repo by adding it to the ```git remote add new git@github.com:User or organization here/"$name".git``` command.

Example 3
---

```git remote add new git@github.com:Insertuserhere/"$name".git```
