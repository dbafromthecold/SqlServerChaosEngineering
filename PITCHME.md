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

### Agenda

Identifying SQL Server weaknesses<br>
Running a Chaos Engineering experiment<br>
Testing SQL Server on Kubernetes<br>

---

# Identifying weaknesses

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

### KubeInvaders

<img src="assets/images/KubeInvaders_75.png" style="float: center"/>

---

## Resources

@size[0.8em](https://github.com/dbafromthecold/SqlServerChaosEngineering)<br>
@size[0.8em](https://github.com/lucky-sideburn/KubeInvaders)

![QR](assets/images/ChaosEngineeringQrCode.png)
