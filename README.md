# mkfilesys

Shell script to make a user specific file system. #gtd

## Usage
```
mkfilesys.sh ROOTDIRNAME | [-h]
```

## Example
```
$ mkfilesys.sh ~/jeremiah
Making directory structure at: /Users/jeremiahlant/jeremiah
```

Can run tree command in the created "root" directory and get the following:
```
$ cd ~/jeremiah
$ tree
.
├── archive
├── bin
├── data
│   ├── samples
│   └── yyyy-mm-dd-topic-source
├── documents
│   ├── groups
│   │   ├── scientific-computing-group
│   │   └── software-carpentry
│   ├── learning
│   │   ├── books
│   │   ├── courses
│   │   │   └── yyyy-mm-dd-topic-source
│   │   ├── docs
│   │   ├── papers
│   │   ├── presentations
│   │   └── tutorials
│   │       └── yyyy-mm-dd-topic-source
│   ├── me
│   │   ├── code-snippets
│   │   ├── docs
│   │   ├── notes
│   │   ├── papers
│   │   ├── playground
│   │   ├── presentations
│   │   └── templates
│   └── work
│       ├── admin
│       ├── conferences
│       │   └── yyyy-mm-dd-topic-name-location
│       ├── docs
│       ├── human-resources
│       ├── meetings
│       │   └── yyyy-mm-dd-topic-location
│       ├── people
│       └── training
│           └── yyyy-mm-dd-topic-name-location
├── inbox
├── multimedia
│   ├── pictures
│   └── videos
├── projects
│   ├── code-proj-name
│   └── yyyy-topic-location
├── software
└── tmp

46 directories, 0 files
```

