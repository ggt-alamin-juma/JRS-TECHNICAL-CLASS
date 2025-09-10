# Lab 3 Solution

The bug is in the `UpdateRecords` method where the `existingUser` boolean variable is declared outside the loop instead of inside it. This causes the variable to retain its value across iterations, causing the second record (John Jackson) to not be added to the database.

## The Bug:

```csharp
public static void UpdateRecords(List<User> db, User[] users)
{
    bool existingUser = false; // ❌ BUG: Variable declared outside the loop
    for (int i = 0; i < users.Length; i++)
    {
        foreach (var item in db)
        {
            if (item.lastname == users[i].lastname && item.firstname == users[i].firstname)
            {
                existingUser = true;
                item.totalpoints += users[i].points;
            }
        }
        if (existingUser == false)
        {
            User user = new User();
            user.firstname = users[i].firstname;
            user.lastname = users[i].lastname;
            user.totalpoints = users[i].points;
            db.Add(user);
        }
    }
}
```

## The Fix:

```csharp
public static void UpdateRecords(List<User> db, User[] users)
{
    for (int i = 0; i < users.Length; i++)
    {
        bool existingUser = false; // ✅ FIXED: Variable moved inside the loop
        foreach (var item in db)
        {
            if (item.lastname == users[i].lastname && item.firstname == users[i].firstname)
            {
                existingUser = true;
                item.totalpoints += users[i].points;
            }
        }
        if (existingUser == false)
        {
            User user = new User();
            user.firstname = users[i].firstname;
            user.lastname = users[i].lastname;
            user.totalpoints = users[i].points;
            db.Add(user);
        }
    }
}
```

The issue is that when `existingUser` is set to `true` for the first user (Fred Smith), it stays `true` for the second user (John Jackson), preventing the second user from being added to the database even though they don't exist in it.
