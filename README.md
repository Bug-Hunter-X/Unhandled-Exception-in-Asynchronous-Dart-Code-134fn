# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in Dart: improper exception handling within asynchronous operations using `async` and `await`. The example shows how exceptions during an API call might not be handled correctly, and how to fix it.

## Bug Description:
The provided Dart code attempts to fetch data from an API. However, the `try-catch` block only handles exceptions locally. The `rethrow` statement passes the exception up the call stack, but if not caught higher up, it could lead to unhandled exceptions and app crashes. 

## Solution
The solution demonstrates how to correctly handle exceptions in asynchronous functions by catching them at a higher level, providing more robust error handling.