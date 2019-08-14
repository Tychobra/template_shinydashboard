# template-shinydashboard
Template for creating a shinydashboard at Tychobra

Use deploy.R script to deploy the app

For a part of the app that doesn't need to be deployed, use an optional root directory.
Some common ones we use are "data_prep", "docs", and "analysis". We typically put csv, xlsx, and similar
files into "data_prep/provided/" and interact with them in R scripts in "data_prep/". Data to be deployed
with the app will generally be put in "shiny_app/data/".
