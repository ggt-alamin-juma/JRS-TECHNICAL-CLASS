# Lab 2 Solution

There are three issues that need to be fixed in this lab:

## 1. Fix the JsonSerializer Type Parameter

Change:
```csharp
DataContractJsonSerializer ser = new DataContractJsonSerializer(users.GetType());
```

To:
```csharp
DataContractJsonSerializer ser = new DataContractJsonSerializer(typeof(User[]));
```

The issue is that `users.GetType()` returns the type of an empty array, not an array of User objects.

## 2. Fix the Missing Fields in the JSON for Jackson

Change:
```csharp
string str = "[{ \"points\":40,\"firstname\":\"Fred\",\"lastname\":\"Smith\"},{\"lastName\":\"Jackson\"}]";
```

To:
```csharp
string str = "[{\"points\":40,\"firstname\":\"Fred\",\"lastname\":\"Smith\"},{\"points\":25,\"firstname\":\"John\",\"lastname\":\"Jackson\"}]";
```

## 3. Add Exception Handling

Change:
```csharp
public static User[] ReadToObject(string json)
{
    User[] users = { };
    MemoryStream ms = new MemoryStream(Encoding.UTF8.GetBytes(json));
    DataContractJsonSerializer ser = new DataContractJsonSerializer(typeof(User[]));
    users = ser.ReadObject(ms) as User[];
    ms.Close();
    return users;
}
```

To:
```csharp
public static User[] ReadToObject(string json)
{
    User[] users = { };
    try
    {
        MemoryStream ms = new MemoryStream(Encoding.UTF8.GetBytes(json));
        DataContractJsonSerializer ser = new DataContractJsonSerializer(typeof(User[]));
        users = ser.ReadObject(ms) as User[];
        ms.Close();
    }
    catch (SerializationException ex)
    {
        Console.WriteLine($"❌ JSON parsing failed: {ex.Message}");
        return new User[] { };
    }
    return users;
}
```

This adds error handling to catch any serialization exceptions that might occur.
