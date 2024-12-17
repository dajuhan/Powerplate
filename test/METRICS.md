https://docs.google.com/presentation/d/1eVf-o1HR4YoCYz2m-DOBT_evhTzHgA1_Qoye76FJsR8/edit?usp=sharing

### Metric 1: Daily Active Users
**Task**: Measure the amount of users that logged in throughout the day.

**How to collect**:We will track the number of unique user logins each day to measure daily active users using Firebase Analytics Authentication section labled Usage.

Metric 2 -
**Task Success (First Goal Entry, First Meal Logged, First Recipe Generated)**:
   - **First Goal Entry**:
     - **How to collect**: Create a custom Firebase Analytics event to log the first time a user enters their nutrition goals.
   - **First Meal Logged**:
     - **How to collect**: Add a Firebase Analytics event to record when a user logs their first meal. This will measure if users understand and can easily use the meal logging feature.
   - **First Recipe Generated**:
     - **How to collect**: Implement a Firebase Analytics event to track when a user generates a recipe for the first time, helping measure initial user success with this feature.


### Metric 3: CTR on logging meals
- **Task:** Track the click-through rate on logging in meals, will help us understand how many times users log their meals

### Metric 4: Onboarding Completion Rate
- **Task:** Measure the percentage of new users who complete the onboarding process on their first day to ensure they understand the app’s core features.
- **How to collect**: Set up a Firebase Analytics event to track when users finish each step of the onboarding process (e.g., account setup, tutorial finish). This immediate data will help assess users' early engagement and understanding of the app's features.


### Metric 5: Net Promoter Score
- **Task:** Measure with a survey on average how likely users are to recommend the app to others on a scale of 1-10.
- **How to collect**: Create a NPS survey screen that the user is redirected to after logging a meal.  When the user selects a score 1-10, store the score in their user document.  Use a cloud function to total the score of all of the users, then divide by the total number of users in order to find the average score.
