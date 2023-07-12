## LIQUIBASE CMD LINE

Liquibase cmd line has many operations related to database.

[CompleteList](https://docs.liquibase.com/commands/home.html)

we shall perform few of them using liquibase cmd line via docker image.

 - validate

 - update-sql

 - update 

 - update-count

 - tag

 - rollback

 - rollback-count



### Build Liquibase Image

Build custom docker image with singledstore database jar

docker build . -t mysinglestore/db:1



### Validate

 Validates the changelog file to detect if there are any issues with a changelog before running the update command. Validation helps you avoid a partial update, where only some changesets are applied due to an error in your changelog file.


```
docker run --net="host" --rm -v .\changelog:/liquibase/changelog mysinglestore/db:1 --defaults-file=/liquibase/changelog/liquibase.properties validate 
```


### Update-SQL

The update-sql command is used when you want to inspect the raw SQL before running the update command, so you can correct any issues that may arise before running the command.

```
docker run --net="host" --rm -v .\changelog:/liquibase/changelog mysinglestore/db:1 --defaults-file=/liquibase/changelog/liquibase.properties update-sql 
```

### Update

The update command is typically used to apply database changes that are specified in the changelog file to your database.

```
docker run --net="host" --rm -v .\changelog:/liquibase/changelog mysinglestore/db:1 --defaults-file=/liquibase/changelog/liquibase.properties update 
```

### Update Count

The update-count command is mainly used when you want to apply changes and update changesets sequentially, starting with the changesets from the top of the changelog file until the number specified is reached.

```
docker run --net="host" --rm -v .\changelog:/liquibase/changelog mysinglestore/db:1 --defaults-file=/liquibase/changelog/liquibase.properties update-count 2 
```

### Tag

The tag command is typically used to mark the current database state, version, release, or any other information by adding the tag to the last row in the DATABASECHANGELOG table. After setting the tag, you can use the rollback command to roll back all changes up to that tag.

```
docker run --net="host" --rm -v .\changelog:/liquibase/changelog mysinglestore/db:1 --defaults-file=/liquibase/changelog/liquibase.properties tag --tag=mytag 
```

### Rollback

The rollback command is typically used to revert all changes that were made to the database after the tag you specify.

```
docker run --net="host" --rm -v .\changelog:/liquibase/changelog mysinglestore/db:1 --defaults-file=/liquibase/changelog/liquibase.properties rollback --tag=mytag 
```

### Rollback Count

Use the rollback-count command when you want to roll back changes sequentially, starting with the most recent changes and working backward until the count you specify is reached.

```
docker run --net="host" --rm -v .\changelog:/liquibase/changelog mysinglestore/db:1 --defaults-file=/liquibase/changelog/liquibase.properties rollback-count --count=2
```

