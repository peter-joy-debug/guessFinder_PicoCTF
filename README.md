# Hidetosee Problem Creation Walkthrough

This walkthrough will step you through what's needed to get a working hidetosee on a cmgr challenge server.

A hidetosee ptoblem challenge is a very simple challenge, that test your investigative skills and reasoning. You are presented with an image, then it is left for you to find a way of extracting information out of it



## Pre-requisites:

1. You have `cmgr`.

    - Refer to the [setup section in the index](/README.md#setup)
      if this is not the case for you.



## Overview

We are going to create a "hide to see" problem, often refered to simply as
"hidetosee". This problem would be simple, it just requires a bit of critical thinking and investigative analysis.


The following walkthough has 3 parts:

1. File listing

2. Deployment

3. Testing



## Walkthrough

### File Listing

Using cmgr, the Sanity Download problem is just 2 files:

  1.  [problem.md](/example-problems/hidetosee/problem.md) specifies
      the name of the problem, the description, and other metadata about the
      problem. Here is the [specification](https://github.com/ArmyCyberInstitute/cmgr/blob/master/examples/markdown_challenges.md)
      for this file in general.

  2.  [Makefile](/example-problems/hidetosee/Makefile) specifies the
      creation of the 'artifacts' or files associated with the problem,
      including the flag.



### Deployment

We are going to take this problem from just 2 files to actual deployment.

1. Clone this repo.
2. `$ cd start-problem-dev/example-problems`
3. Update cmgr with the sanity problem:
    - `$ cmgr update hidetosee/`
4. Ensure problem appears in cmgr list:
    - `$ cmgr list`
    - Expected output: `syreal/examples/sanity-download`
5. Deploy problem in playtest mode:
    - `$ cmgr playtest syreal/examples/hidetosee`
    - NOTE: this command might take a few minutes.
    - Expected output is something like: `challenge information available at: http://localhost:4242/`
6. Ensure you get the problem details by browsing to the listed host and port. It should look like this:
    - ![Successful deploy]



### Testing

Testing of problems involves at least 3 things:
  * Testing that an incorrect flag is incorrect
  * Testing that a correct flag is correct
  * Testing that the correct flag can be found by using the materials given for
    the problem.

1. To test an incorrect flag, try submitting `aaa` as a flag to the problem.
    - Expected output: `That is not the correct flag`
    
2. To test the correct flag and that the correct flag can be found using the 
   given materials, download the flag from the problem and submit it
    - Expected output: `Correct`



## Conclusion

With this walkthrough, we deployed a problem from the two most required files
in a cmgr problem, creating a hide to see problem, that involves downloading an image and embedding a text file into it.

We also demonstrated some basic testing practices by proving that an incorrect
flag is incorrect, a correct flag is correct, and that the player can get the
correct flag from the materials given.



[Return to the index](/README.md#walkthroughs)

