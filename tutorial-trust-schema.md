---
layout: default
title: "Half-day Tutorial: Power of Trust Schemas for Easy and Secure Deployment of NDN Applications"
group: Tutorials

presenters:
- name: Alex Afanasyev
  affiliation: Florida International University
  homepage: https://users.cs.fiu.edu/~afanasyev
  bio: "
  Alex Afanasyev is an Assistant Professor in Florida International University, Miami. He received his Ph.D. degree in
  computer science from UCLA in 2013. His research focus is on the next-generation Internet architecture as part of
  the Named Data Networking (NDN) project. His research interests include a variety of topics that are vital for the success of NDN,
  including scalability of name-based routing, auto-configuration, distributed data synchronization, application and network security.
  Dr. Afanasyev is also leading the development effort of the overall NDN codebase."

- name: Tianyuan Yu
  affiliation: UCLA
  bio: "
  Tianyuan Yu is PhD student of Computer Science Department at University of California, Los Angeles (UCLA), under
  the supervision of Prof. Lixia Zhang. Before coming to UCLA, he received Bachelor degree on Electronic and Information
  Science and Technology from Sichuan University. Currently his research interests are Named Data Networking (NDN)
  and Internet of Things, specifically Lightweight Protocols for Named Data Networking of Things, Resilient and Secure
  Smart Home Systems, and High-level APIs for NDN with Security Built-in.
  "

- name: Kathleen Nichols
  affiliation: Pollere, Inc.
  bio: "
  Kathleen Nichols is CTO of Pollere, Inc. She received her Ph.D in electrical engineering from UC Berkeley and has
  worked in networking at large companies and start ups. Her current interests are in using NDN to solve edge network
  problems leading to the development of the open source Data-Centric Toolkit (DCT).
  "

- name: Lixia Zhang
  affiliation: UCLA
  bio: "
  Lixia Zhang is a Professor in the Computer Science Department of UCLA. She received her Ph.D in computer science
  from MIT and was a member of the research staff at Xerox PARC before joining UCLA. She is a fellow of ACM and IEEE,
  the recipient of IEEE Internet Award, and the holder of UCLA Postel Chair in Computer Science. Since 2010 she has been
  leading the effort on the design and development of the NDN architecture.
  "

---

## {{ page.title }}

### Overview
* TOC
{:toc}

### Preliminary Tutorial Program

{% assign abstractTitle="" %}
{% assign expanded=true %}
{% include program-online.html type="tutorial-ndn" %}

### Introduction

The biggest challenge facing the Internet today is security problems.
The Named Data Networking (NDN) design [1, 2, 7] enables resilient and secure communications by fetching semantically named data.
This new way of networking points to a new direction in building secure applications.
Instead of viewing networks as interconnections of nodes, NDN views the networked world as interconnections of different namespaces, with various trust relations among each other.
Applications developed for NDN secure data directly, and control data authenticity and confidentiality by utilizing application domain-specific trust relations instead of relying on external certificate authorities.

Running in a world of interconnected namespaces, NDN applications need (selected/assigned) hierarchical namespaces with the corresponding (global/local trust-level) certificates, together with application trust models (which keys should be trusted to sign which data) and basis of trust (trust anchors).
Having these pieces of information, an NDN application can be dropped in an NDN network and start functioning (either in ad hoc mode or, when infrastructure available, in a more global way).

The mechanics on how such NDN identities and rest of the essential security pieces are configured in the application have been a subject of research and development over the past several years.
The initial trust schema work [6] conceptually defined the ability of trust schemas to carry the majority of this information, defining trust relations between data and keys, and attaching trust anchor(s) to define trust scopes.
While it was envisioned to use the same trust schema for publisher operations to select appropriate keys to sign the data (and automatically generate key requests to NDNCERT [8] when ones are missing), the practical implementation (in ndn-cxx library) remained limited to the authentication operations, with cumbersome syntax to define the trust relations.
The recent work [3, 4] brought another angle on how trust schemas can be defined using a domain-specific data modeling language and used for both signing and authentication processes.
Moreover, the “bundled identity” can be used as a single piece of information that needs to installed in an NDN application to provide its identity and all necessary security parameters to function in an NDN world.
When this new approach is paired with the use of an NDN Sync protocol, applications are easier to write and application writing can be separated from the design of a namespace and trust rules for the application class.

In this tutorial we plan to give a conceptual overview of the application deployment in NDN networks and which role a trust schema can play in it. We will use a simple application to illustrate how one can configure basic trust policies and deploy them in the application. While we will primarily focus on the new trust schema developments [3, 5], we will also include examples based on other libraries to provide broader coverage, highlighting current features and limitations.

### Tutorial Description

This half-day tutorial is expected to run 3 hours including a 10-minute break in the middle. It will be mostly real-time presentations with a few pieces of recorded demonstrations.

#### Warming up (30 min)

We start the tutorial with an overview of NDN security concepts, the principal differences between today’s and NDN applications regarding their deployment requirements, as well as quickly introduce the concept of trust schema, the central piece of the tutorial.

#### Overview of Trust Schema (30+ minutes)

The basic concept of NDN trust schema was first introduced in [6].
Its goals are to define security policies that regulate data signing and verification.
The basic idea is to define such policies via formal relations between the names of keys and the names of data, applying rules and links to the namespace levels.
In this part of the tutorial we will explore in depth the concepts of the trust schema and how they are applied to secure the applications in our simple use case scenario.

#### Break (10 min)

#### Simplified Trust Schema in NDN-Lite (20+ min)

NDN-Lite is a framework to enable end user-controlled home IoT systems over NDN.
In this part we will showcase how NDN-Lite can realize home IoT apps via a pub-sub API, highlighting security features of the implementation.
Specifically, the developed pub-sub API is designed to hide all the cryptographic operation details, while being powered by name-based policies, a simplified realization of the trust schema.

#### Designing of a Simple Trust Schema for IoT (30 min)

In this part, we will use a simple IoT application as a demo case for securing NDN deployment.
Primarily we will use the new developments of the trust schema, but we also going to briefly introduce how similar can be accomplished (in limited capacity) with other library realizations.

#### Q & A (20 minutes)

In addition to addressing questions in real time during the tutorial, we will also use this dedicated Q & A session to cover the questions collected from the conference Slack channel that touch on broader scope or deserve deeper elaborations.
This session will also offer the audience opportunities to share their own work related to NDN API development and configuration challenges as well as solutions.

### Presenters

{% assign expand=true %}
{% include presenters.html presenters=page.presenters %}

### REFERENCES
[1] Alexander Afanasyev, Tamer Refaei, Lan Wang, and Lixia Zhang. 2018. A Brief Introduction to Named Data Networking. In Proc. of MILCOM.
[2] Van Jacobson, Diana K Smetters, JD Thronton, Michael F Plass, Nicholas H Briggs, and RL Braynard. 2009. Network Named Content. In Proc. of CoNEXT.
[3] Kathleen Nichols. 2019. Lessons Learned Building a Secure Network Measurement Framework using Basic NDN. In Proc. of ACM ICN.
[4] Kathleen Nichols. 2021. Trust Schemas and ICN: Key to Secure IoT. In Proc. of ACM ICN.
[5] Kathleen Nichols. 2021. Trust Schemas and ICN: Key to Secure IoT. In Proc. of ACM ICN.
[6] Yingdi Yu, Alexander Afanasyev, David Clark, kc claffy, Van Jacobson, and Lixia Zhang. 2015. Schematizing Trust in Named Data Networking. In Proceedings of 2nd ACM Conference on Information-Centric Networking. http://dx.doi.org/10.1145/2810156.2810170
[7] Lixia Zhang, Alexander Afanasyev, Jeffrey Burke, Van Jacobson, Patrick Crowley, Christos Papadopoulos, Lan Wang, Beichuan Zhang, et al. 2014. Named data networking. ACM SIGCOMM Computer Communication Review 44, 3 (2014), 66–73.
[8] Zhiyi Zhang, Yingdi Yu, Alex Afanasyev, and Lixia Zhang. 2017. NDN Certificate Management Protocol (NDNCERT). Technical Report NDN-0050. NDN.
