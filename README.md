# Git Workshop

This repo is a showcase to one scenario of "disappearing" updates in git, so that you can:

- Reflect on what happened
- Find a solution
- Extract a lesson

## Content

- A `scripts` folder for... you can guess... (Mac OS, Linux)
- A `scenarios` folder for, well, the scenarios
- A `code` folder that contains the code changes used in the scenarios

## Quick run

1. Run the `chmod+x.sh` to give execute permission to all scripts. (You'll have to give execute permission to this one first, of course.)
2. Go to the `scripts` folder
3. Run the command: `source set-path.sh` to add the scripts folder to the PATH for the session.
4. Go the `scenarios/4-merge-and-revert` folder
   - You'll see the scenario better if you open a new editor session in this folder  
5. Run the `./CLEAN.sh` script to get a clean start.
6. Run the `./RUN-merge-and-revert.sh`, read the messages and follow the prompts
   - Explore the git branches as you execute each step
   - After executing the last step, the changes introduced in step 3 will be gone without a warning or conflict!

## Get the answers

- Why did this happen?
- How could it be avoided?
- How would you solve this (without coding it back by hand)?
- What lessons can you extract from this scenario?

## Troubleshooting

If you don't get something like this when running step 6 above:

![](images/initial-run.png)

It's probable that:

- The scripts don't have execute permission (step 1 above)
- The `scripts` folder isn't in the current PATH (step 3 above)
