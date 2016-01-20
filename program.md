
Day1: Course Introduction (Wed)

- About me
- About you
- About the course
- The big picture: Data Analysis Cycle (DAC) cartoon
- How not to do a data analysis project
	- My typical workflow in grad school
	- The good, the ugly, and the bad
	- What if I want to re-do it again?
	- Collaborating with my future self (or with others)
	- Will I or others be able to understand what I did?
- Assignment: reproduciblity readings

-----------------------------------------------------------

Day 2: Reproducibility (Mon)

- Discussion of assigned readings
- What is reproducibility?
- Related terminology
- Importance; Should we care?
- Anecdotal information
- Confess your own irreproducibility
- We'll focus on computational reproducibility
- DAC fact 1: you'll be working with files
	- Becoming proficient with command line basics 

Lab 1: Shell basics and Filesystem

- Make sure everybody has the required software
- Basics of Command Line
- Understanding the file-system
- Pathnames (absolute, relative)
- Navigating the filesystem via commands
- Managing files and directories
- Manipulating files
- Thinking about "Project Organization" in terms of files and dirs:
	- How many directories
	- What about subdirectories
	- Independent top-level files (README, LICENSE, etc)
	- Naming styles and convention


Day 3: Version Control Basics (Wed)

- DAC fact 2: files will change
	- because we create scripts
	- because we will edit files
	- because files will be outputs
- Until completion, a project is a living creature
	- once completed, it may become dormant
	- or it may keep evolving
- Keeping track of changes
- Basics of version control
- Git: Distributed system
	- configuration
	- basic commands
	- adding changes and committing them
- Assignment: reading about Git


- Git Material:
	- how to use Git to manage files and source code
	- fundamentals of version control systems
	- understanding the architecture that Git uses
	- How Git tracks changes to files and source code:
		- adding, editing, deleting, or moving file
	- How to write clear messages that describe the changes
	- How to compare different versions of a file (line by line)
	- How to undo changes that you've made even
	- Create branches of our code to try new ideas
	- How to merge those changes into the project
	- How to use our remote repository to enable collaboration

-----------------------------------------------------------

Day 4: Git Branching and Remotes (Mon)

- DAC fact 3: experiment and test new ideas
- Git branches
- Branches and HEAD
- Master branch
- Merging branches

Lab 2: Git Practice

- Start a toy project
- Initialize it with a Git repository
- Add some files
- Apply `git add`, `git commit`, `git status`, `git log`
- Undoing changes
- Create a new branch
- Work on that branch
- Merge it with master


Day 5: Getting started with Python (Wed)

- Types (int, double, boolean, null, str)
- Basic Data structures:
	- lists, ranges, dictionaries
- methods
- objects
- functions
- scope
- namespaces

- [Python Fundamentals](https://github.com/dlab-berkeley/python-fundamentals)
- [Learn Python the Hard Way](http://learnpythonthehardway.org/book/index.html)
- [Python for you and me](http://pymbook.readthedocs.org/en/latest/index.html)
- [Scientific Python Basics](http://jkitzes.github.io/datasci-lessons/lessons/python/)
- For newbies:
	- [the Python track at Codecademy](http://www.codecademy.com/tracks/python)

-----------------------------------------------------------

Day 6: Intro to Python 1 (Mon)

- Control flows, classes, and data formats

Lab 3: Lightning talks about data sources 

- Description of the source (prefereably publicly available)
- Description of the data set(s) - metadata
- Main Research question(s)
- Format(s)
- Size
- Messiness
- Missingness
- What other sources would you think about?


Day 7: String Manipulation (Wed)

- DAC fact 4: you'll be working with text files
- manipulating strings
- regular expressions
- all code is text
- most data files are text files

-----------------------------------------------------------

Day 8: HOLIDAY (Mon)

Lab 4: HOLIDAY


Day 9: Numpy arrays (Wed)

-----------------------------------------------------------

Day 10: Coding Practices (Mon)

- DRY
- Naming style
- Indentation
- Comments
- Literate Programming
- Functions
- Be consistent
- Develop your own Style-guide

Lab 5: matplotlib


Day 11: Data Storage (Wed)

- ItDT chapter 5 (by Paul Murrell)
- DAC fact 5: Be ready to deal with an array of data sources
- Discussing different formats (a bunch of examples):
	- binary files (and text files)
	- text files -vs- other (e.g. enriched formats)
	- unstructured -vs- structured
	- character delimited (csv, tsv, etc)
	- XML and HTML
	- JSON
	- RDBMS (data-bases, SQL)
	- Domain specific (FASTA)
	- Propietary? (xls, sas, spss)
- Pros and Cons of formats
- Recommendations for character-delimited formats
	- How to share data with a statistician
	- Karl Broman's advising
- Practice: You will be given a toy data set, and you'll have to
			"store it" under different formats 
			(csv, xml, json, your own made up format)
- How to parse different types of files?

- Assignment reading: Tidy Data by Hadley Wickham

-----------------------------------------------------------

Day 12: Tidying-up Data (Mon)

- From raw formats to data tables:
	- Why do we need tables?
	- Why not just keep it "as is"?
- Statistical Data: Observations and Variables:
	- What is an observation?
	- What is a variable?
	- Variables from statistical standpoint:
		- Quantitative -vs- Qualitative
		- Continuous -vs- Discrete
		- Metric -vs- Non-metric
		- Scales: nominal, oridinal, interval, ratio
	- Variables from data analysis software:
		- native types -vs- variables
- Types of data tables:
	- observations and variables
	- contingency tables (crosstables)
	- distances and similarities
	- graphs
	- matrices
	- data cubes (tensors)
- Tabular data structures
	- tabular arrays stored in character delimited files
	- R matrices (arrays), Numpy arrays
	- data frames (in R, pandas)
- Tidy Data:
	- General Framework
	- reshape2, tidyr, dplyr, plyr
- Assignment reading: exploratory data analysis (by ???)

Lab 6: Manipulating Data Tables

- dplyr verbs:
	- select
	- subset
	- order (arrange)
	- mutate (transform)
	- group_by (aggregation)
	- summarize


Day 13: Exploratory Data Analysis (Wed)

- EDA
- Univariate Analysis:
	- distributions
	- measures of center
	- measures of spread
	- common categories
	- summary statistics
- Bivariate Analysis:
	- measures of association
	- quant-quant
	- qual-quant
	- qual-qual
- Multivariate Analysis:
	- exploratory, descriptive
	- PCA, CA, MCA, MDS, Clustering

-----------------------------------------------------------

Day 14: Data Visualization (Mon)

- Importance of visualization
- What is Data Visualization?
	- Statistical charts
	- Infographics
	- Computer (scientific) visualization
	- Data Art
- Visual perception
- Design Principles
- Colors (color theory?)
- Effective Statistical Graphics
	- Elements of common charts

Lab 7: Graphics in R

- Base graphics
- Colors in R:
	- names in english
	- Reg-Green-Blue (RGB)
	- hexadecimal
	- palettes
	- RColorBrewer
- ggplot2
- graphics devices


Day 15: shiny apps? (Wed)

-----------------------------------------------------------

Day 16: Markup Languages

Lab 8: LaTeX, BibTeX, Beamer


Day 17: Dynamic Docs and pandoc

-----------------------------------------------------------

Day 18: Spring Break
Day 19: Spring Break

-----------------------------------------------------------

Day 20: 

