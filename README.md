# Improper Exception Handling in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code: insufficient exception handling. The `fetchData` function makes a network request.  The `try-catch` block catches exceptions, but only prints the error and rethrows it.  This is problematic because it doesn't provide meaningful feedback to the user and might not effectively handle various error types.

The solution demonstrates improved error handling: more informative error messages, and potentially a user-friendly experience.
