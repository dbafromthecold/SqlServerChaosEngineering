# Chaos Engineering for SQL Server

---

## Andrew Pruski

### SQL Server DBA, Microsoft Data Platform MVP, & Certified Kubernetes Administrator
<!-- .slide: style="text-align: left;"> -->
<i class="fab fa-twitter"></i><a href="https://twitter.com/dbafromthecold">  @dbafromthecold</a><br>
<i class="fas fa-envelope"></i>  dbafromthecold@gmail.com<br>
<i class="fab fa-wordpress"></i>  www.dbafromthecold.com<br>
<i class="fab fa-github"></i><a href="https://github.com/dbafromthecold">  github.com/dbafromthecold</a>

---

### Session Aim
<!-- .slide: style="text-align: left;"> -->
How can Chaos Engineering be applied to SQL Server?

<p align="center">
<img src="images/chaos.gif"/>
</p>

---

# Chaos Engineering?

---

### What is Chaos Engineering?
<!-- .slide: style="text-align: left;"> -->
"Chaos Engineering is the discipline of experimenting on a system in order to build confidence in the system's capability to withstand turbulent conditions in production"<br>
<font size="6"><a href="principlesofchaos.org">principlesofchaos.org</a></font>

---

### What Chaos Engineering is not!
<!-- .slide: style="text-align: left;"> -->
<ul>
<li class="fragment">Breaking things in production!</li>
<li class="fragment">Staging or Production?</li>
<ul>

---

# Chaos Engineering Implementations

---

### Netflix - Chaos Monkey
<!-- .slide: style="text-align: left;"> -->
<img src="images/chaosmonkey.png" style="float: right"/>

"Chaos Monkey is responsible for randomly terminating instances in production to ensure that engineers implement their services to be resilient to instance failures"<br>
<font size="6"><a href="netflix.github.io/chaosmonkey/">netflix.github.io/chaosmonkey</a></font>

---

### Other Implementations
<!-- .slide: style="text-align: left;"> -->
<i class="fab fa-slack"></i><b> Slack - Diasterpiece Theatre</b>

"On going exercises to cause failure"

<i class="fab fa-google"></i><b> Google - DiRT"</b>
"Hope is not a strategy" - SRE Team motto

---

# Getting Started

---

### What are we going to test?

<!-- .slide: style="text-align: left;"> -->
<ul>
<li class="fragment">Infrastructure</li>
    <ul>
        <li class="fragment">Cloud, private data centre?</li>
    </ul>
<li class="fragment">Applications</li>
    <ul>
        <li class="fragment">What's hitting our SQL instances?</li>
    </ul>
<li class="fragment">Monitoring</li>
    <ul>
        <li class="fragment">How are we going to analyse the results of our experiments?</li>
    </ul>
<li class="fragment">Social</li>
    <ul>
        <li class="fragment">How do people react to systems going down?</li>
    </ul>
</ul>

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
<ul>
<li class="fragment">High Availability</li>
    <ul>
        <li class="fragment">How will the primary node fail?</li>
    </ul>
<li class="fragment">Backups!</li>
    <ul>
        <li class="fragment">Testing our restores</li>
    </ul>
<li class="fragment">Monitoring</li>
    <ul>
        <li class="fragment">When were we alerted?</li>
    </ul>
<li class="fragment">User error</li>
    <ul>
        <li class="fragment">Running an UPDATE statement without WHERE</li>
    </ul>
<li class="fragment">Disaster Recovery</li>
    <ul>
        <li class="fragment">When did we last test our DR strategy?</li>
    </ul>	
</ul>

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
<p class="fragment">What happens if the primary node in an Availbility Group cluster fails?</p>


---

### Defining the experiment
<!-- .slide: style="text-align: left;"> -->
<ul>
<li class="fragment">Hypothesis</li>
    <ul>
        <li class="fragment">The listener of the availbility group should remain online</li>
    </ul>
<li class="fragment">Method</li>
    <ul>
        <li class="fragment">Stop the SQL database engine service on the primary node</li>
    </ul>
<li class="fragment">Rollback</li>
    <ul>
        <li class="fragment">Restart the SQL database engine service on the primary node</li>
    </ul>
</ul>

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

### KubeInvaders

<img src="images/KubeInvaders_75.png" style="float: center"/>

---

# Demo

---

## Resources
<!-- .slide: style="text-align: left;"> -->
<img src="images/ChaosEngineeringQrCode.png" style="float: right"/>

<font size="6">
<a href="https://principlesofchaos.org">https://principlesofchaos.org</a><br>
<a href="https://chaostoolkit.org">https://chaostoolkit.org</a><br>
<a href="https://github.com/dastergon/awesome-chaos-engineering">https://github.com/dastergon/awesome-chaos-engineering</a><br>
<a href="https://github.com/lucky-sideburn/KubeInvaders">https://github.com/lucky-sideburn/KubeInvaders</a>
</font>


