## Task - We need more Data Consistency

**Please add the following constraint rules for existing columns of the person_discounts table.**

- **person_id column should not be NULL (use constraint name ch_nn_person_id);**
- **pizzeria_id column should not be NULL (use constraint name ch_nn_pizzeria_id);**
- **discount column should not be NULL (use constraint name ch_nn_discount);**
- **discount column should be 0 percent by default;**
- **discount column should be in a range values from 0 to 100 (use constraint name ch_range_discount).**

RU: 

![Screenshot](../screenshots/scheme.jpg "Схема")\
*Схема*

![Screenshot](../screenshots/ex04.jpg "Решение")\
*Решение*