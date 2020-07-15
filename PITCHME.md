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

How can Chaos Engineering be applied to SQL Server?

---

# What is Chaos Engineering?

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
@ulend

---

# Getting Started

---

### Whate are we going to test?

@ul
- Infrastructure<br>
    - Cloud, private data centre?
- Applications<br>
    - What's hitting our SQL instances?
- Monitoring<br>
    - How are we going to analyse the results of our experiments?
- Social<br>
    - How do people react to systems going down?
@ulend

---

### Past Incident Analysis

How has the system failed previously?<br>
What technologies/strategies are now in place?<br>
What was learnt from those previous failures?<br>

---

### Likelihood-Impact Map

<p align="center">
<img src="assets/images/likelihoodImpactMap.png" />
</p>

---

### Potential scenarios to test!

@ul
- High Availability<br>
    - How will the primary node fail?
- Backups!<br>
    - Testing our restores
- Monitoring<br>
    - When were we alerted?
- User error<br>
    - Running an UPDATE statement without WHERE
- Disaster Recovery<br>
    - When did we last test our DR strategy?
@ulend

---

### Defining an experiment

Which failure has the highest likelihood?<br>
Which failure has the highest impact?<br>
What will you gain from testing that failure?<br>
Is there anything else that can be tested?

---

# Running an experiment

---

### What failure are we going to test?

@ul
- What happens if the primary node in an Availbility Group cluster fails?
@ulend

---

### Defining the experiment

@ul
- Hypothesis
    - The listener of the availbility group should remain online
- Method
    - Stop the SQL database engine service on the primary node
- Rollback
    - Restart the SQL database engine service on the primary node
@ulend

---

# Demo

---

# SQL Server running on Kubernetes

---

### What is Kubernetes?

@quote[Kubernetes is a portable, extensible open-source platform for managing containerized workloads and services, that facilitates both declarative configuration and automation. It has a large, rapidly growing ecosystem. Kubernetes services, support, and tools are widely available](kubernetes.io)

---

# Demo

---

### KubeInvaders

<img src="assets/images/KubeInvaders_75.png" style="float: center"/>

---

# Demo

---

## Resources

@size[0.8em](https://principlesofchaos.org)<br>
@size[0.8em](https://github.com/dbafromthecold/SqlServerChaosEngineering)<br>
@size[0.8em](https://chaostoolkit.org/)<br>
@size[0.8em](https://github.com/dastergon/awesome-chaos-engineering)<br>
@size[0.8em](https://github.com/lucky-sideburn/KubeInvaders)

---

## EightKB

<img src="assets/images/eightkb_website.png"/>

https://eightkb.online/

