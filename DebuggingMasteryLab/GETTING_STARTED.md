# Getting Started with the Debugging Mastery Lab

This guide will help you get started with the Debugging Mastery Lab project.

## Prerequisites

Before you start, make sure you have the following installed:
- Visual Studio 2022 (Community, Professional, or Enterprise) with the ".NET desktop development" workload
- Visual Studio Code (for Lab 13) with the C# extension and .NET SDK installed
- Git for version control

## Setup Instructions

1. **Clone the Repository (if you haven't already)**
   ```bash
   git clone https://github.com/ggt-alamin-juma/JRS-TECHNICAL-CLASS.git
   cd JRS-TECHNICAL-CLASS
   ```

2. **Create Branch Structure**
   To set up the lab branches, run the provided script:
   ```bash
   cd DebuggingMasteryLab
   bash setup_branches.sh
   ```

3. **Open the Project in Visual Studio**
   - Open Visual Studio 2022
   - Select "Open a project or solution"
   - Navigate to the `DebuggingMasteryLab` folder and select `DebuggingMasteryLab.sln`

## Working with the Labs

Each lab is contained in a separate branch. To work on a lab:

1. **Switch to the lab branch**
   ```bash
   git checkout lab1-compile-time-errors  # For Lab 1
   # OR
   git checkout lab2-runtime-exceptions   # For Lab 2
   # etc.
   ```

2. **Read the Lab Instructions**
   - Lab instructions are available in the `Labs` folder
   - Each lab has a markdown file with detailed steps, e.g., `Labs/Lab1-CompileTimeErrors.md`

3. **Complete the Lab**
   - Follow the instructions in the lab markdown file
   - Use the debugging techniques described to fix the issues

4. **Check Your Solution (Optional)**
   - After completing a lab, you can compare your solution with the reference implementation
   - Each lab branch has a `solutions` folder with the correct implementation

5. **Move to the Next Lab**
   - Once you've completed a lab, switch to the next branch to continue
   ```bash
   git checkout lab2-runtime-exceptions  # After completing Lab 1
   ```

## Lab Overview

1. **Lab 1: Fixing Compile-Time Errors**
   - Learn to use the Error List and inline code analysis

2. **Lab 2: Debugging Runtime Exceptions**
   - Work with breakpoints and the Exception Helper

3. **Lab 3: Uncovering Logic Bugs**
   - Use step-by-step execution to trace program flow

4. **Lab 4: Mastering Advanced Debugging Tools**
   - Learn about Conditional Breakpoints, Call Stack, Immediate Window

5. **Lab 5: Analyzing Performance and Memory**
   - Use Diagnostic Tools to fix performance bottlenecks

6. **Lab 6: Debugging Async/Await Issues**
   - Resolve deadlocks and task issues

7. **Lab 7: Using Unit Tests for Debugging**
   - Create tests to reproduce and fix bugs

8. **Lab 8: Diagnosing Memory Issues**
   - Find and fix memory leaks

9. **Lab 9: Remote Debugging**
   - Debug running processes and crash dumps

10. **Lab 10: Debugging Multi-Threaded Code**
    - Fix race conditions in parallel code

11. **Lab 11: Debugging Third-Party Dependencies**
    - Work with external libraries and symbol files

12. **Lab 12: Static Analysis**
    - Use static analyzers to prevent bugs

13. **Lab 13: VS Code Debugging**
    - Debug .NET apps in Visual Studio Code

14. **Lab 14: Challenge Mode**
    - Apply all techniques to fix a complex bug

## Need Help?

If you get stuck or have questions:
1. Refer to the lab instructions again
2. Check the solutions folder for reference implementations
3. Reach out to the course instructor

Happy debugging!
