@ECHO OFF
SET ARG=%1
IF NOT DEFINED ARG (
  docker build -t dspace/dspace-angular .
) ELSE (
  docker build -t dspace/dspace-angular --build-arg %1 .
)
