# v1-extractor


- Run overpass query: http://overpass-turbo.eu/s/DD1. Query returns all version 2 & version 3 nodes in csv format. Save these results in a csv file. In this case, I've saved it in `refugee-list.csv` file
- Clone this git repository: `git@github.com:ramyaragupathy/v1-extractor.git`
- cd into the working directory: `cd v1-extractor`
- Run `npm install` to install dependencies
- Copy your `refugee-list.csv` to this working directory
-  Next run `node v1-timestamp-extractor.js > v1-nodes.csv`. This saves all version 1 timestamp in a csv file

## Usage on windows

In Windows setup, you might encounter a `node-gyp rebuild` related issue while running `npm install`. Follow the [documentation from node-gyp](https://github.com/nodejs/node-gyp) for the installation to get through. Listing out the steps that was tested on Windows:

- Install all the required tools and configurations using Microsoft's windows-build-tools using `npm install --global --production windows-build-tools` from an elevated PowerShell or CMD.exe (run as Administrator).

- If you have multiple Python versions installed, you can identify which Python version node-gyp uses by setting the --python variable:

`node-gyp --python /path/to/python2.7`

- Then run `npm install`

