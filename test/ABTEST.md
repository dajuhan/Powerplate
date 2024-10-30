### A/B Test 1: Progress Tracking Frequency (Daily vs. Weekly)
- **Metrics:** Retention, Engagement (frequency of use), User Satisfaction
- **Hypothesis:** Offering users the choice to see progress on a daily basis will increase engagement, as users feel more motivated by immediate feedback on their diet and macro tracking.
- **Problem & Impact:** Currently, only weekly progress tracking is available, which may reduce engagement for users who seek immediate feedback on their health journey.
- **Experiment:** 
  - **Audience:** 60% of users in daily tracking, 40% in weekly tracking to avoid overwhelming users.
  - **Tracking:** Firebase Analytics will track the frequency of progress tracking, user satisfaction, and retention metrics.
- **Variations:**
  - **Variation A:** Daily progress tracking option.
  - **Variation B:** Weekly progress tracking only.


## A/B Test 2: Home Page Macro Display – List vs. Progress Bars

### User Story Number
**US4 (Golden Path)**

### Metrics
- **Engagement**: Time spent on the home page
- **Adoption**: Frequency of meal logging
- **Satisfaction**: User-reported satisfaction with tracking interface (if feedback survey is implemented)

### Hypothesis
Displaying daily macros as progress bars instead of a simple list will make it easier for users to understand their progress and feel more motivated to log meals, increasing engagement and meal logging frequency.

### What Problem Are We Trying to Solve?
Currently, the home page of Powerplate displays daily macro totals in a simple list format. Although this format shows the data, it might not visually emphasize the user's progress toward their daily goals. Users may not immediately see how close they are to reaching their goals, potentially leading to decreased motivation to log meals regularly.

The bottleneck here is **engagement with daily tracking**, as the current format may not be as visually motivating or effective in conveying progress. Improving this could encourage more regular meal logging and potentially enhance the user’s satisfaction with the tracking experience.

### Experiment Setup
We will set up an A/B test in Firebase targeting all active users who log in and view the home page. The user base will be split as follows:
- **Group A (Control)**: 50% of users will see the current layout, with macros displayed as a simple list of numbers.
- **Group B (Variation)**: 50% of users will see the updated layout, with macros displayed as progress bars that fill up as they approach their daily goals.

Using Firebase Analytics, we will track:
- **Time spent on the home page**: Measured each time a user visits the home page.
- **Meal logging frequency**: Tracked each time a user logs a meal.
- **User satisfaction**: (Optional) Through a feedback survey prompt, users can rate their satisfaction with the display of their macro progress on a scale.

### Variations

#### Variation A (Control)
Daily macros displayed as a simple list of numbers:

- **Example**:
    - Fats: 20g  
    - Carbs: 30g  
    - Protein: 50g  
    - Calories: 500

#### Variation B (Progress Bars)
Each macro displayed as a progress bar that visually fills up based on the user’s progress toward their daily goal.

- **Example**:
    - Fats: `[███████---] 70%`
    - Carbs: `[█████████-] 90%`
    - Protein: `[█████-----] 50%`
    - Calories: `[███████---] 75%`

For this variation, we would implement a basic design with filled progress bars representing the percentage of each macro goal achieved. We can create mockups to illustrate how these progress bars might look to ensure they’re visually clear and easy to interpret.

---

This A/B test will help determine if progress bars improve users’ comprehension of their daily goals and if this visual representation motivates them to log meals more frequently, ultimately improving engagement with Powerplate's core tracking functionality.
