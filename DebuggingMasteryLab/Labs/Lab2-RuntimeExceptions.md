# Lab 2: Debugging Runtime Exceptions

## 🏆 Learning Goal
Catch and fix crashes using breakpoints, the Exception Helper, and defensive coding.

## Step 1: Run the Code and Witness the Crash
- Start Debugging: Press F5.
- Observe: The app crashes with a System.Runtime.Serialization.SerializationException at `users = ser.ReadObject(ms) as User[];` in ReadToObject.

## Step 2: Set a Breakpoint to Investigate
- Set a Breakpoint: In GetJsonData, click the left margin next to `string str = ....`
- Restart Debugging: Press F5. Execution pauses at the breakpoint.

## Step 3: Inspect Variables with the Watch Window
- Step Over: Press F10.
- Inspect str: Hover over str or right-click → Add to Watch. Notice:
  - "points":4o: Should be 40 (number, not letter 'o').
  - "lastName":"Jackson": Case mismatch with lastname in User.
  - Missing points and firstname for Jackson.

## Step 4: Fix the Data and Add Exception Handling
- Fix the JSON in GetJsonData:

```csharp
public static string GetJsonData()
{
    string str = "[{\"points\":40,\"firstname\":\"Fred\",\"lastname\":\"Smith\"},{\"points\":25,\"firstname\":\"John\",\"lastname\":\"Jackson\"}]";
    return str;
}
```

- Fix ReadToObject and add try-catch:

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

## Step 5: Verify the Fix
- Remove Breakpoints: Debug → Delete All Breakpoints (Ctrl+Shift+F9).
- Run: Press F5. The app runs without crashing.

## Success Criteria
- Set breakpoints to pause execution.
- Use Watch window and DataTips to inspect variables.
- Interpret Exception Helper messages.
- Implement try-catch for robust error handling.
