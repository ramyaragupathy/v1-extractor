# v1-extractor


- Run overpass query: http://overpass-turbo.eu/s/DD1. Query returns all version 2 & version 3 nodes in csv format. Save these results in a csv file. In this case, I've saved it in `refugee-list.csv` file
- Clone this git repository: `git@github.com:ramyaragupathy/v1-extractor.git`
- cd into the working directory: `cd v1-extractor`
- Run `npm install` to install dependencies
- Copy your `refugee-list.csv` to this working directory
-  Next run `node v1-timestamp-extractor.js > v1-nodes.csv`. This saves all version 1 timestamp in a csv file
