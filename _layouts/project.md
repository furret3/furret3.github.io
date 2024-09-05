---
layout: page
---

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ page.title }}</title>
</head>
<body>

    <div class="project-content">
        <p>{{ page.description }}</p>
        <p><strong>Date:</strong> {{ page.date | date: "%d/%m/%Y" }}</p>
        <p><strong>Technologies:</strong> {{ page.technologies | join: ', ' }}</p>
    </div>

</body>
</html>