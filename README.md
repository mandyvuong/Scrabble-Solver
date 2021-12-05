# Scrabble Solver

## Requirements

Given a word, compute the scrabble score for that word.

### Letter Values

You'll need these:

| Letter                       | Value |
| ---------------------------- | ----- |
| A, E, I, O, U, L, N, R, S, T | 1     |
| D, G                         | 2     |
| B, C, M, P                   | 3     |
| F, H, V, W, Y                | 4     |
| K                            | 5     |
| J, X                         | 8     |
| Q, Z                         | 10    |

Examples "cabbage" should be scored as worth 14 points:

3 points for C
1 point for A, twice
3 points for B, twice
2 points for G
1 point for E
And to total:

3 + 2×1 + 2×3 + 2 + 1

= 3 + 2 + 6 + 3

= 14

## Acceptance Criteria

```
scrabble = Scrabble.new('')
scrabble.score # => 0

scrabble = Scrabble.new(" \t\n")
scrabble.score # => 0

scrabble = Scrabble.new(nil)
scrabble.score # => 0

scrabble = Scrabble.new('a')
scrabble.score # => 1

scrabble = Scrabble.new('f')
scrabble.score # => 4

scrabble = Scrabble.new('street')
scrabble.score # => 6

scrabble = Scrabble.new('quirky')
scrabble.score # => 22

scrabble = Scrabble.new('OXYPHENBUTAZONE')
scrabble.score # => 41
```

## Plan

Class Scrabble
Method intialize, score, letter_value

| Input Scrabble.new(word) | Output scrabble.score | Description                                     |
| ------------------------ | --------------------- | ----------------------------------------------- |
| ''                       | 0                     | no score since it's argument is empty           |
| " \t\n"                  | 0                     | no score since it's argument is format          |
| nil                      | 0                     | no score since it's argument is nil             |
| 'A'                      | 1                     | return score with one capital letter argument   |
| 'a'                      | 1                     | return score with one lowercase letter argument |
| 'aA'                     | 2                     | return score with more than one letter argument |
| 'f'                      | 4                     | return score with different letter argument     |
| 'street'                 | 6                     | return score for a word                         |
| 'quirky'                 | 22                    | return score for a word                         |
| 'OXYPHENBUTAZONE'        | 41                    | return score for a word                         |

## Notes

This is post Makers Academy where I returned to full-time employment and have limited time to code. I've given myself small coding challenges by completing TDD in Ruby from the Makers Academy process workshop challenges. Lessons learned from this challenge is to spend more time planning.
