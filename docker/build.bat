@ECHO OFF
SET ARG=%1
IF NOT DEFINED ARG (
  docker build -t atmire/dspace-angular .
) ELSE (
  docker build -t atmire/dspace-angular --build-arg %1 .
)
