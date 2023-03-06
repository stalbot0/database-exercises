USE ymir_stephen;
# Write SQL queries to answer the following questions:
#
# For a given ad, what is the email address of the user that created it?
SELECT u.email 'Email Address for Advertisement'
FROM users u
    JOIN ads a
        ON u.id = a.user_id
WHERE a.title = 'Forks';

# For a given ad, what category, or categories, does it belong to?
SELECT a.title 'Ad Title',c.category 'Ad Categories'
FROM categories c
    JOIN category_ad ca
        ON c.id = ca.category_id
    JOIN ads a
        ON ca.ad_id = a.id
WHERE a.title = '2005 Mustang GT' OR a.title = '1986 Chrysler K Car';

# For a given category, show all the ads that are in that category.
SELECT a.title 'Ads in Cars Category'
FROM ads a
    JOIN category_ad ca
        ON a.id = ca.ad_id
    JOIN categories c
        ON ca.category_id = c.id
WHERE c.category = 'Cars' OR c.category = 'Automotive'
group by a.title;

# For a given user, show all the ads they have posted.
SELECT u.email "User's email", a.title "Ads they've posted"
FROM ads a
    JOIN users u on a.user_id = u.id
WHERE a.user_id = 1;
