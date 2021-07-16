---
layout: default
title: Registration Information

registrations:
  fees:
    - type: Conference Registration
      price: ["$25", "$50"]
    - type: Student Registration
      price: ["$10", "$20"]
    - type: Retiree Registration
      price: ["Free", "Free"]
---

## Registration Information

<div class="border ui-corner-all ui-shadow">
  <table class="sponsorlevels">
    <tbody>
      <tr>
        <th style="text-align:left"></th>
        <th>ACM Member</th>
        <th>Non-Member</th>
      </tr>
      {% for reg in page.registrations.fees %}
      <tr>
        <th style="text-align:left">{{ reg.type }}</th>
        <td> {{ reg.price[0] }} </td>
        <td> {{ reg.price[1] }} </td>
      </tr>
      {% endfor %}
    </tbody>
  </table>
</div>


[Online registration](https://web.cvent.com/event/4373e21f-c5ad-45e8-94d2-f1373fa373ac/summary?locale=en-US&tm=TPn8ejs5YXpDdKE7pvC0hKVijyMycSPLQf82ABlJJ5c){: data-role="button" class="button" }

In case of problems with registration or billing, please contact the [Registration Chair](mailto:icn2021.reg@gmail.com).

### Financial Hardship Support

- We acknowledge the difficult times that some of the members of our community are facing. We want to be sure this is not an impediment for participating in the upcoming edition of ICN 2021 and we have allocated a number of registrations waivers for those experiencing financial hardship.

- Submit your application via this [form](https://docs.google.com/forms/d/e/1FAIpQLSd1eM07XTq6sh92SV8Z2XseRazwjGpEdBQd1CEDpAiB7l-WZQ/viewform?vc=0&c=0&w=1&flr=0). Upon acceptance, you will receive an email with a code that can be used to waive the registration fees.

- If you have any questions or concerns, please contact the [Registration Chair](mailto:icn2021.reg@gmail.com).

### A Special Note on Author Registration Policy

- Each accepted paper, poster, and demo must be accompanied by a Conference Registration. Each Conference Registration can cover multiple papers.

- Each accepted paper, poster, and demo must provide a pre-recording **and** <u>be virtually presented by one of its author(s) at the conference</u>. The presenting author(s) must be registered for the conference.

- Registration accepts Visa, MasterCard, American Express.
