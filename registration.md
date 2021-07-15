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

In case of problems with registration or billing, please contact [Registration Chair](mailto:need-mailto).


### A Special Note on Author Registration Policy

- Each accepted paper, poster, and demo must be accompanied by a Conference Registration. Each Conference Registration can cover multiple papers.

- Each accepted paper, poster, and demo must provide a pre-recording **and** <u>be virtually presented by one of its author(s) at the conference</u>. The presenting author(s) must be registered for the conference.

- Registration accepts Visa, MasterCard, American Express.
