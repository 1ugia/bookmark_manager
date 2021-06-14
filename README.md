# Bookmark-Manager

## User story:
```
As a user
so that i can remember the websites i visited,
I'd like to see a list of bookmarks.

```

![FirstUserStory](https://i.imgur.com/v6fHGkZ.png)

---

### To set up the database

Connect to `psql` and create the `bookmark_manager` database:

```
CREATE DATABASE bookmark_manager;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.
