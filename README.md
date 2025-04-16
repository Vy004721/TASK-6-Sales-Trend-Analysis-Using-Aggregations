# TASK-6-Sales-Trend-Analysis-Using-Aggregations
# Monthly Revenue and Order Volume Report (2004)


## Query Overview

The SQL query performs the following operations:

- **Database Used:** `task6`
- **Tables Involved:** `orders`, `payments`
- **Join Condition:** Matches `orders` and `payments` on `customerNumber`
- **Filters:**
  - Considers orders placed between January 1, 2004, and December 31, 2004.
- **Grouping:**
  - Groups data by `year` and `month` of the order date.
- **Metrics Calculated:**
  - `monthly_revenue`: Total payment amount per month
  - `order_volume`: Count of distinct orders per month
