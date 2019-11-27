# Chaos Engineering for SQL Server

---

## Andrew Pruski

### SQL Server DBA & Microsoft Data Platform MVP

@fa[twitter] @dbafromthecold <br>
@fa[envelope] dbafromthecold@gmail.com <br>
@fa[wordpress] www.dbafromthecold.com <br>
@fa[github] github.com/dbafromthecold

---

### Session Aim

To provide an overview of Chaos Engineering and discuss how it can be applied to SQL Server

---

### Agenda

Chaos Engineering Definition<br>
Apply Chaos Engineering to SQL Server<br>
Running a Chaos Engineering experiment<br>
Tools for Chaos Engineering<br>

---

# Chaos Engineering

---

### Netflix - Chaos Monkey

<img src="assets/images/chaosmonkey.png" style="float: right"/>

@quote[Chaos Monkey is responsible for randomly terminating instances in production to ensure that engineers implement their services to be resilient to instance failures.](netflix.github.io/chaosmonkey/)

---

### What is Chaos Engineering?

@quote[Chaos Engineering is the discipline of experimenting on a system in order to build confidence in the system’s capability to withstand turbulent conditions in production.](principlesofchaos.org)

---

### What Chaos Engineering is not!

@ul
- Breaking things in production!<br>
- Staging or Production?<br>
- Blast Radius<br>
- Fallout
@ulend

---

### Define your system

Infrastructure<br>
Applications<br>
Monitoring<br>

---

### Past Incident Analysis

How has the system failed previously?<br>
What technologies/strategies are in place to minimise impact?<br>
What was learnt from those previous failures?<br>

---

### Failure Mode and Effect Analysis

@quote[Begun in the 1940s by the U.S. military, failure modes and effects analysis is a step-by-step approach for identifying all possible failures in a design, process, product, or service.](asq.org/quality-resources/fmea)

---

### Likelihood-Impact Map

<img src="assets/images/likelihoodImpactMap.png" style="align: center"/>

---

### Scientific Method

@ol[](false)
1. Observation
2. Declaration of the end goal or issue
3. Forming a hypothesis
4. Testing the hypothesis
5. Analysis of results
6. Conclusion
@olend

---

### Defining an experiment

Which failure has the likelihood?<br>
Which failure has the highest impact?<br>
What will you gain from testing that failure?<br>
Is there anything else that can be tested?<br>
Experiment can be performed manually or scripted<br>
Organise a time slot to perform the experiment<br>

---

### Running the experiment

Who needs to be involved?<br>
Active participants vs Observers<br>
Have a saftey monitor<br>
Communicate!

---

# Applying to SQL Server

---

### Before you go any further!


Check your backups!<br>
What is your restore strategy!<br>
High availability<br>
Diaster Recovery

---

### What failure are we going to test?

What happens if a node in a Availbility Group cluster fails?

---

### Defining the experiment

@ul[](false)
- Steady-state hypothesis
    - The listener of the availbility group should be online
- Method
    - Stop the SQL database engine service on the primary node
- Rollback
    - Restart the SQL database engine service on the primary node
@ulend

---

### Chaos Engineering Tools

Chaos Toolkit - https://chaostoolkit.org/

---

# Demo

---

### KubeInvaders

<img src="assets/images/KubeInvaders_75.png" style="float: center"/>

---

## Resources

@size[0.8em](https://principlesofchaos.org)<br>
@size[0.8em](Learning Chaos Engineering - Russ Miles - O'Reilly)<br>
@size[0.8em](https://github.com/dastergon/awesome-chaos-engineering)<br>
@size[0.8em](https://github.com/lucky-sideburn/KubeInvaders)