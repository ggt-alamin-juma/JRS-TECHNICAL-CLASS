# Lab 1: Fixing Compile-Time Errors (The "Red Squiggles")

## 🏆 Learning Goal
Resolve compiler errors using Visual Studio's Error List and inline code analysis before the program runs.

## Step 1: Create the Project and See It Fail
- Create a new project: In Visual Studio, select File → New → Project → Console App (.NET).
- Name it: DebuggingMasteryLab.
- Add the buggy code: Replace the default code in Program.cs with the code below.
- Attempt to build: Press Ctrl+Shift+B. The build will fail (expected).

## Step 2: Use the Error List to Isolate the Problem
- Open the Error List: Go to View → Error List (Ctrl+\, E).
- Read the error: You'll see: CS0029: Cannot implicitly convert type 'string' to 'int' at `item.totalpoints += users[i].points;`.
- Locate the code: Double-click the error to jump to the problematic line in UpdateRecords.

## Step 3: Investigate and Fix the Type Mismatch
- Investigate totalpoints: Right-click totalpoints → Go To Definition (F12). It's an int.
- Investigate points: Check points. It's a string.
- Fix: Change points to int in the User class.

```csharp
// ❌ BEFORE
[DataMember]
internal string points;

// ✅ AFTER
[DataMember]
internal int points;
```

## Step 4: Verify the Fix
- Build again: Press Ctrl+Shift+B.
- Result: Build Succeeded. Error List shows 0 Errors.

## Success Criteria
- Use the Error List to find compile-time issues.
- Investigate type mismatches using Go To Definition.
- Build the project successfully.
