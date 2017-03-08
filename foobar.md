Our Request

=======================
HTTP Verb: POST
Path: /r/tasks
Protocol and version: HTTP/1.1
Headers: Host: foobar.com
BODY:
task=row+back+to+spain
========================

Our Response
================
Status Code: 303
<!-- Go back to /r/tasks -->
================

Second Request
================
Gimme /r/tasks
===============

Second Response
================
Status Code 200
Body: updated html with your new task "row back to spain"
================
