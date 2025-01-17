# Python Error Boundary
[![PyPI version](https://badge.fury.io/py/py-error-boundary.svg)](https://badge.fury.io/py/py-error-boundary)
&nbsp;&nbsp;
![GitHub License](https://img.shields.io/github/license/suyogkulkarnigit/py_error_boundary)

**Python error boundary** is a lightweight Python package that simplifies error handling by providing explicit, easy-to-understand error messages. Created for a personal project to make debugging more intuitive and less frustrating.

---

## **Installation**

Install the package using `pip`:

```bash
pip install py_error_boundary
```

## **Description**


The `ErrorBoundary` class takes a callable function along with all its required parameters as class arguments. Using these, the class invokes your function. For example:
```python
ErrorBoundary(callable, param1, param2, ..., n)
```

**Example:**
```python
import requests
from py_error_boundary.error_boundary import ErrorBoundary

# Initialize ErrorBoundary instance
obj = ErrorBoundary()

# Define whatever function you want to call
url = 'http://www.example.com'
def get(url):
    return requests.get(url)

# Call the function using ErrorBoundary, passing the function and arguments
print(obj(get, url))
```
**Output**
```
An exception occurred at line 12 in file req.py.
Error: Invalid URL 'www.example.com': No scheme supplied. Perhaps you meant https://www.example.com?
```
---
### What’s happening:
1. **ErrorBoundary Class**: The `ErrorBoundary` class is initialized with the function (`get`) and its parameters (`url`), and it executes the function while handling any errors.
2. **Invalid URL**: In this case, the URL `'www.example.com'` is missing a scheme (such as `'http://'` or `'https://'`), which causes a `requests` exception to be raised.
3. **Error Handling**: The `ErrorBoundary` class catches the exception and provides detailed information about the error, including:
   - The exact line where the error occurred (`line 12` in `req.py`).
   - A clear error message: `"Invalid URL 'www.example.com': No scheme supplied. Perhaps you meant https://www.example.com?"`

---
## 🚨 **Important:** 

The `ErrorBoundary` class typically returns the file names for most environments, but if used in an interactive Python environment (e.g., the Python shell or Jupyter notebooks), it will return `<stdin>` as the file name. This is not an error, but rather a result of how the Python environment handles code execution in interactive sessions.

---
## **Cloning the repository**
- Clone
    ```
    git clone git@github.com:suyogkulkarnigit/py_error_boundary.git
    ```
- Dist Setup
    ```
    make setup
    ```
- Cleanup Setup
    ```
    make clean-setup
    ```

