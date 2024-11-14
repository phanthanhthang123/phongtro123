export const getNumbersPrice = (string) =>
  string
    .match(/\d+/g) // Matches all numbers in the string
    .map(Number); // Converts the matches to numbers

export const getNumbersArea = (string) =>
  string
    .match(/\d+/g) // Matches all numbers in the string
    .map(Number); // Converts the matches to numbers

