---
title: Good to know about NoSQL
author: CitruXonve
tag: NoSQL
date: 2019-03-08 14:45:00
---
- NoSQL is non-relational

- ACID-compliant (only just recently with MongoDB)
    - Atomic/Atomacity: A change will not be saved but rolled back unless the entire transaction is completed.
    - Consistency: No intermediate state from one valid state to another. Always valid states.
    - Isolation: The effect of more than one concurrent transactions is the same as if they happen in sequence.
    - Durability: The data is there no matter whether database is shutdown, failures or crashes.