## Cyclones Around Antartica

We are going to work with the cyclone data set, described in 
[http://www.stat.ufl.edu/~winner/data/cyclone.txt](http://www.stat.ufl.edu/~winner/data/cyclone.txt), and available here:
[http://www.stat.ufl.edu/~winner/data/cyclone.dat](http://www.stat.ufl.edu/~winner/data/cyclone.dat)


### Data

`cyclone.dat` is a fixed-width delimited file, which represents a tabular data with 3 columns and 12 rows:

|   |   |      |
|---|---|------|
| 1 | 1 |  370 |
| 1 | 2 |  452 |
| 1 | 3 |  273 |
| 1 | 4 |  422 |
| 2 | 1 |  526 |
| 2 | 2 |  624 |
| 2 | 3 |  513 |
| 2 | 4 | 1059 |
| 3 | 1 |  980 |
| 3 | 2 | 1200 |
| 3 | 3 |  995 |
| 3 | 4 | 1751 |


### Objectives

- Use python to calculate the total number of cyclones per season, aiming to produce a "table" like this one:

| Season | Cyclones | 
|:-------|---------:|
| Fall	 |  1876    |
| Winter |  1781    |
| Spring |  3232    |
| Summer |  2276    |

- Create a simple report in latex that shows the table with the total number of cyclones in Antartica each season.

First we'll do everything in a jupyter notebook, and then we'll see how to modularize all the workflow.

-----

### Steps 

Below is the list of major steps that you will need to carry out. Read the list and think about how to organize the project: directory structure, how many files, etc.

- Create a new directory for this project
```bash
mkdir cyclones
cd cyclones
```
- Download both the data and its description
```bash
# download data file, and ipython notebook
curl -O http://www.stat.ufl.edu/~winner/data/cyclone.dat
curl -O http://www.stat.ufl.edu/~winner/data/cyclone.txt
```
- Open a new jupyter notebook
```bash
jupyter notebook cyclones.ipynb
```
- Read in cyclone.dat in python
- Extract season (second column) in a python list
- Extract count (third column) in a python list
- Write a function `naming_seasons()` that converts numeric season into a string season: 1 = 'Fall', 2 = 'Winter', 3 = 'Spring', 4 = 'Summer'
- Write an associated test function `test_naming_seasons()`
- Write a function `counting_cyclones_per_season()` that computes the total counts per season
- Write an associated test function `test_counting_cyclones_per_season()`
- Write a function `make_cyclones_table()` that creates a latex table with the total counts
- Export the table to a file `cyclones_table.tex`
- Fill in the latex report


#### Latex report

Inside your `cyclones` directory, create a `report` subdirectory. This is where we will put the `.tex` file for the report (see below), and the generated `cyclones_table.tex`:
```bash
mkdir report
cd report
```

Here is the code for a simple report in latex. Copy and paste it in a file `report.tex`. 

```tex
\documentclass[11pt]{article}

\usepackage[margin=0.75in]{geometry}
\usepackage{indentfirst}
\usepackage[utf8]{inputenc}
\usepackage{hyperref}


\title{Cyclones Near Antartica}

\author{
  Your Name
}

\begin{document}
\maketitle

\abstract{
This is a very simple report that includes a basic table.
}


\section{Introduction}
\noindent
Based on the \texttt{cyclone.dat} dataset at 
\url{http://www.stat.ufl.edu/~winner/data/cyclone.txt}, 
we wrote code in python to calculate 
the total number of cyclones per season.

\section{Results}
The following table contains the total counts of cyclones for each season:

\input{cyclones_table.tex}

\end{document}
```
