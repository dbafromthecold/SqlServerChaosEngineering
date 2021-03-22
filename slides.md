# Chaos Engineering for SQL Server

---

## Andrew Pruski

### SQL Server DBA, Microsoft Data Platform MVP, & Certified Kubernetes Administrator
<!-- .slide: style="text-align: left;"> -->
<i class="fab fa-twitter"></i><a href="https://twitter.com/dbafromthecold">  @dbafromthecold</a><br>
<i class="fas fa-envelope"></i>  dbafromthecold@gmail.com<br>
<i class="fab fa-wordpress"></i>  www.dbafromthecold.com<br>
<i class="fab fa-github"></i><a href="https://github.com/dbafromthecold">  github.com/dbafromthecold.com</a>

---

### Session Aim

How can Chaos Engineering be applied to SQL Server?

---

# What is Chaos Engineering?

---

### Netflix - Chaos Monkey
<!-- .slide: style="text-align: left;"> -->
<img src="images/chaosmonkey.png" style="float: right"/>

"Chaos Monkey is responsible for randomly terminating instances in production to ensure that engineers implement their services to be resilient to instance failures"<br>
<font size="6"><a href="netflix.github.io/chaosmonkey/">netflix.github.io/chaosmonkey</a></font>

---

### What is Chaos Engineering?
<!-- .slide: style="text-align: left;"> -->
"Chaos Engineering is the discipline of experimenting on a system in order to build confidence in the system’s capability to withstand turbulent conditions in production"
<font size="6"><a href="principlesofchaos.org">principlesofchaos.org</a></font>

---

### What Chaos Engineering is not!
<!-- .slide: style="text-align: left;"> -->
<p class="fragment">- Breaking things in production!</p>
<p class="fragment">- Staging or Production?</p>


---

# Getting Started

---

### What are we going to test?

<!-- .slide: style="text-align: left;"> -->
- Infrastructure<br>
    - Cloud, private data centre?
- Applications<br>
    - What's hitting our SQL instances?
- Monitoring<br>
    - How are we going to analyse the results of our experiments?
- Social<br>
    - How do people react to systems going down?

---

### Past Incident Analysis
<!-- .slide: style="text-align: left;"> -->
How has the system failed previously?<br>
What technologies/strategies are now in place?<br>
What was learnt from those previous failures?<br>

---

### Likelihood-Impact Map

<p align="center">
<img src="images/likelihoodImpactMap.png" />
</p>

---

### Potential scenarios to test!
<!-- .slide: style="text-align: left;"> -->
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

---

### Defining an experiment
<!-- .slide: style="text-align: left;"> -->
Which failure has the highest likelihood?<br>
Which failure has the highest impact?<br>
What will you gain from testing that failure?<br>
Is there anything else that can be tested?

---

# Running an experiment

---

### What failure are we going to test?
<!-- .slide: style="text-align: left;"> -->
- What happens if the primary node in an Availbility Group cluster fails?


---

### Defining the experiment
<!-- .slide: style="text-align: left;"> -->
- Hypothesis
    - The listener of the availbility group should remain online
- Method
    - Stop the SQL database engine service on the primary node
- Rollback
    - Restart the SQL database engine service on the primary node


---

# Demo

---

# SQL Server running on Kubernetes

---

### What is Kubernetes?
<!-- .slide: style="text-align: left;"> -->
"Kubernetes is a portable, extensible open-source platform for managing containerized workloads and services, that facilitates both declarative configuration and automation. It has a large, rapidly growing ecosystem. Kubernetes services, support, and tools are widely available"<br>
<font size="6"><a href="kubernetes.io">kubernetes.io</a></font>

---

# Demo

---

### KubeInvaders

<img src="images/KubeInvaders_75.png" style="float: center"/>

---

# Demo

---

## Resources
<!-- .slide: style="text-align: left;"> -->
<font size="6">
<a href="https://principlesofchaos.org">principlesofchaos.org</a><br>
<a href="https://github.com/dbafromthecold/SqlServerChaosEngineering">github.com/dbafromthecold/SqlServerChaosEngineering</a><br>
<a href="https://chaostoolkit.org">chaostoolkit.org</a><br>
<a href="https://github.com/dastergon/awesome-chaos-engineering">github.com/dastergon/awesome-chaos-engineering</a><br>
<a href="https://github.com/lucky-sideburn/KubeInvaders">github.com/lucky-sideburn/KubeInvaders</a>
</font>
