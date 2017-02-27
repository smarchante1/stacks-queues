# Learning about Stacks and Queues
In this project,
  1. Together, we will write an implementation for a stack.
  2. Together, we will test our implementation for a stack.
  3. With a partner, you will write and test an implementation for a queue.
  4. Together, we will think about how you might tackle the job-simulation problem identified below.
    - Questions to think about:
      + What should be the data type of `workers`?
      + What should be the data type of `waiting`?
  5. (OPTIONAL) On your own, you should use your implementation of stack and queue to code a solution to the job-simulation problem.
    - By "use your stack and queue", I mean at some point you should say:
      + something = `Stack.new`
      + something = `Queue.new`

# Job Simulation Problem
A company has a limited number of open positions (`jobs_available`) with more people wanting jobs (`job_seekers`) than the number of available positions. The company decides that they will allow people to work in three-month cycles. And at the end of each cycle, they will fire some people and hire others.

To begin this process:
- All people wanting jobs will be added to a `waiting` list as `Worker #1`, `Worker #2`, `Worker #3`, etc.
- Then all open positions will be filled by moving people from `waiting` to `workers`, in the order they were added to the waitlist

At the end of the three-month cycle, the managers will roll a die to determine the number of people who will lose their jobs. The company will use the policy of last-hired-first-fired. So, for example, if the die roll is 3, the last 3 people hired will lose their jobs to the first 3 people on the waiting list. People losing their jobs will be placed on the back of the waiting list in the order that they are fired. This process will continue for every cycle.

During one cycle:
- Roll a die (`roll`)
- Fire `roll` number of people
- Hire `roll` number of people

## Example
Yours doesn't need to look exactly like mine!
```
------------------------------
Before the simulation starts
Employed: ["Worker #1", "Worker #2", "Worker #3", "Worker #4", "Worker #5", "Worker #6"]
Waitlist: ["Worker #7", "Worker #8", "Worker #9", "Worker #10"]
------------------------------
<enter to cycle, anything else to quit>

-------Cycle 1-------
Managers roll a 6
FIRE:	Worker #6
FIRE:	Worker #5
FIRE:	Worker #4
FIRE:	Worker #3
FIRE:	Worker #2
FIRE:	Worker #1
HIRE:	Worker #7
HIRE:	Worker #8
HIRE:	Worker #9
HIRE:	Worker #10
HIRE:	Worker #6
HIRE:	Worker #5
Employed: ["Worker #7", "Worker #8", "Worker #9", "Worker #10", "Worker #6", "Worker #5"]
Waitlist: ["Worker #4", "Worker #3", "Worker #2", "Worker #1"]

-------Cycle 2-------
Managers roll a 2
FIRE:	Worker #5
FIRE:	Worker #6
HIRE:	Worker #4
HIRE:	Worker #3
Employed: ["Worker #7", "Worker #8", "Worker #9", "Worker #10", "Worker #4", "Worker #3"]
Waitlist: ["Worker #2", "Worker #1", "Worker #5", "Worker #6"]

-------Cycle 3-------
Managers roll a 3
FIRE:	Worker #3
FIRE:	Worker #4
FIRE:	Worker #10
HIRE:	Worker #2
HIRE:	Worker #1
HIRE:	Worker #5
Employed: ["Worker #7", "Worker #8", "Worker #9", "Worker #2", "Worker #1", "Worker #5"]
Waitlist: ["Worker #6", "Worker #3", "Worker #4", "Worker #10"]
end
```
