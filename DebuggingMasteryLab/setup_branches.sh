#!/bin/bash

# Script to create all the branches for the debugging labs
# Run this from the DebuggingMasteryLab directory

echo "Setting up branches for the DebuggingMasteryLab project..."

# Make sure we're starting from the main branch
git checkout main

# Create branches for each lab
echo "Creating branch for Lab 1..."
git checkout -b lab1-compile-time-errors
echo "This branch contains compile-time errors for Lab 1." > lab_status.md
git add lab_status.md
git commit -m "Set up Lab 1: Compile-Time Errors"

echo "Creating branch for Lab 2..."
git checkout main
git checkout -b lab2-runtime-exceptions
echo "This branch contains runtime exceptions for Lab 2." > lab_status.md
git add lab_status.md
git commit -m "Set up Lab 2: Runtime Exceptions"

echo "Creating branch for Lab 3..."
git checkout main
git checkout -b lab3-logic-bugs
echo "This branch contains logic bugs for Lab 3." > lab_status.md
git add lab_status.md
git commit -m "Set up Lab 3: Logic Bugs"

echo "Creating branch for Lab 4..."
git checkout main
git checkout -b lab4-advanced-debugging-tools
echo "This branch is set up for practicing advanced debugging tools in Lab 4." > lab_status.md
git add lab_status.md
git commit -m "Set up Lab 4: Advanced Debugging Tools"

echo "Creating branch for Lab 5..."
git checkout main
git checkout -b lab5-performance-memory
echo "This branch contains performance and memory issues for Lab 5." > lab_status.md
git add lab_status.md
git commit -m "Set up Lab 5: Performance and Memory"

echo "Creating branch for Lab 6..."
git checkout main
git checkout -b lab6-async-await-issues
echo "This branch contains async/await issues for Lab 6." > lab_status.md
git add lab_status.md
git commit -m "Set up Lab 6: Async/Await Issues"

echo "Creating branch for Lab 7..."
git checkout main
git checkout -b lab7-unit-tests
echo "This branch is set up for unit testing in Lab 7." > lab_status.md
git add lab_status.md
git commit -m "Set up Lab 7: Unit Tests"

echo "Creating branch for Lab 8..."
git checkout main
git checkout -b lab8-memory-issues
echo "This branch contains memory issues for Lab 8." > lab_status.md
git add lab_status.md
git commit -m "Set up Lab 8: Memory Issues"

echo "Creating branch for Lab 9..."
git checkout main
git checkout -b lab9-remote-debugging
echo "This branch is set up for remote debugging in Lab 9." > lab_status.md
git add lab_status.md
git commit -m "Set up Lab 9: Remote Debugging"

echo "Creating branch for Lab 10..."
git checkout main
git checkout -b lab10-multithreaded-code
echo "This branch contains multithreaded code issues for Lab 10." > lab_status.md
git add lab_status.md
git commit -m "Set up Lab 10: Multithreaded Code"

echo "Creating branch for Lab 11..."
git checkout main
git checkout -b lab11-third-party-dependencies
echo "This branch contains third-party dependency issues for Lab 11." > lab_status.md
git add lab_status.md
git commit -m "Set up Lab 11: Third-Party Dependencies"

echo "Creating branch for Lab 12..."
git checkout main
git checkout -b lab12-static-analysis
echo "This branch is set up for static analysis in Lab 12." > lab_status.md
git add lab_status.md
git commit -m "Set up Lab 12: Static Analysis"

echo "Creating branch for Lab 13..."
git checkout main
git checkout -b lab13-vscode-debugging
echo "This branch is set up for VS Code debugging in Lab 13." > lab_status.md
git add lab_status.md
git commit -m "Set up Lab 13: VS Code Debugging"

echo "Creating branch for Lab 14..."
git checkout main
git checkout -b lab14-challenge-mode
echo "This branch contains a mystery bug for Lab 14." > lab_status.md
git add lab_status.md
git commit -m "Set up Lab 14: Challenge Mode"

# Go back to main branch
git checkout main

echo "All branches created successfully! You can now start with Lab 1 by running:"
echo "git checkout lab1-compile-time-errors"
