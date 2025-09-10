# Lab 1 Solution

The bug is in the User class. The points property is defined as a string but needs to be an int.

## Change:
```csharp
[DataMember]
internal string points; // BUG: Should be int
```

## To:
```csharp
[DataMember]
internal int points;
```

This fixes the compile-time error because totalpoints is an int and can't accept a string value in the line:
```csharp
item.totalpoints += users[i].points;
```
