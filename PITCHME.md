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

### What is Chaos Engineering?

@quote[Chaos Engineering is the discipline of experimenting on a system in order to build confidence in the system’s capability to withstand turbulent conditions in production.](principlesofchaos.org)

---

### What Chaos Engineering is not!

Breaking things in production!

---

### Staging or Production?

Blast Radius<br>
Fallout

---

### Scientific Method<br>

@ol[](false)
1. Observation
2. Declaration of the end goal or issue
3. Forming a hypothesis
4. Testing the hypothesis
5. Analysis of results
6. Conclusion
@olend

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

### Failure Mode and Effect Analysis (FMEA)

@quote[Begun in the 1940s by the U.S. military, failure modes and effects analysis is a step-by-step approach for identifying all possible failures in a design, process, product, or service.](asq.org/quality-resources/fmea)

---

### Likelihood-Impact Map

<img src="assets/images/likelihoodImpactMap.png" style="align: center"/>

---

### Defining an experiment

Which failure has the highest failure likelihood and impact?<br>
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

### Pre-requisities

Before you go any further!

---

### High availability

---

### Diaster Recovery

---

### Defining the first experiment

---

# Demo

---

### Chaos Engineering Tools

---

### Netflix - Chaos Monkey

<img src="assets/images/chaosmonkey.png" style="float: right"/>

@quote[Chaos Monkey is responsible for randomly terminating instances in production to ensure that engineers implement their services to be resilient to instance failures.](netflix.github.io/chaosmonkey/)

---

### KubeInvaders

<img src="assets/images/KubeInvaders_75.png" style="float: center"/>

---

## Resources

@size[0.8em](https://principlesofchaos.org)<br>
@size[0.8em](Learning Chaos Engineering - Russ Miles - O'Reilly)<br>
@size[0.8em](https://github.com/dastergon/awesome-chaos-engineering)<br>
@size[0.8em](https://github.com/lucky-sideburn/KubeInvaders)