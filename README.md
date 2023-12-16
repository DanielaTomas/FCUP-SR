# FCUP-SR

This repository contains the materials and documentation for two assignments focusing on injection and insecure design vulnerabilities and security measures.

Assignment #1: The goal is to produce a report describing and contextualing the topic and a discussion of the state-of-the-art regarding that topic.

Assignment #2: The goal is to design a proof-of-concept target application and attack, implement countermeasures, and evaluate their efficacy


## OWASP Top 10

OWASP is a non-profit organization that captures and catalogues the most common system vulnerabilities.
Its goal is to raise awareness about pervasive issues in IT, as well as to lead open-source software projects
focused on ensuring web security.
The goal of this work is to analyse and describe protections against 2 of the [Top 10 list of OWASP](https://owasp.org/www-project-top-ten/) vulnerabilities.

Our choices were:

### [A03:2021 – Injection](https://owasp.org/Top10/A03_2021-Injection/)

An application is vulnerable to attack when

- User-supplied data is not validated, filtered, or sanitized by the application.

- Dynamic queries or non-parameterized calls without context-aware escaping are used directly in the interpreter.

- Hostile data is used within object-relational mapping (ORM) search parameters to extract additional, sensitive records.

- Hostile data is directly used or concatenated. The SQL or command contains the structure and malicious data in dynamic queries, commands, or stored procedures.

Some of the more common injections are SQL, NoSQL, OS command, Object Relational Mapping (ORM), LDAP, and Expression Language (EL) or Object Graph Navigation Library (OGNL) injection. The concept is identical among all interpreters. Source code review is the best method of detecting if applications are vulnerable to injections. Automated testing of all parameters, headers, URL, cookies, JSON, SOAP, and XML data inputs is strongly encouraged. Organizations can include static (SAST), dynamic (DAST), and interactive (IAST) application security testing tools into the CI/CD pipeline to identify introduced injection flaws before production deployment.

### [A04:2021 – Insecure Design](https://owasp.org/Top10/A04_2021-Insecure_Design/)

A new category for 2021 focuses on risks related to design and architectural flaws, with a call for more use of threat modeling, secure design patterns, and reference architectures.

Insecure design is a broad category representing different weaknesses, expressed as “missing or ineffective control design.” Insecure design is not the source for all other Top 10 risk categories. There is a difference between insecure design and insecure implementation. We differentiate between design flaws and implementation defects for a reason, they have different root causes and remediation. A secure design can still have implementation defects leading to vulnerabilities that may be exploited. An insecure design cannot be fixed by a perfect implementation as by definition, needed security controls were never created to defend against specific attacks. One of the factors that contribute to insecure design is the lack of business risk profiling inherent in the software or system being developed, and thus the failure to determine what level of security design is required.