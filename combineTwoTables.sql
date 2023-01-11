# LeetCode problem 175

SELECT firstName, lastName, city, state
FROM Person
LEFT Join Address
On Person.PersonId = Address.PersonID
