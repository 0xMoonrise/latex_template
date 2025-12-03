# Latex Template

This is my personal document template, for homework, articles and more. I compile my `.tex` files with Makefile.

Web viewer server
_https://pypi.org/project/reloadserver/_
```bash
python3 -m reloadserver --watch viewer.html --watch build/path/to/example.pdf
```

```
http://localhost:8000/viewer.html?path=Test_PDF/example.pdf
```

Note: The colours have been inverted; change the `viewer.html` styles if you prefer normal colours.

Environment variables are required to configure the document. Add the following to a `.env` file:

```bash
TITLE="Example Title"
SUBJECT="Example Subject"
SEMESTER="Third"
PROFESSOR="Dr. Someone"
UNIVERSITY="University Name"
CAREER="Career Name"
DEPARTMENT="Department Name"
WHERE="City, State"
NAME="example"
NAMES="Name 1 \\ Name 2 \\ Name 3 \\ Name 4 \\"
```
