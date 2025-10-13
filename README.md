# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

Summary:

In this lab, I learned how binary subtraction is performed in digital systems and how it relates to the number theory concepts used in computing. The lab explored how Half Subtractors differ from Half Adders, and how signed number representations such as One’s Complement and Two’s Complement influence subtraction operations and system design. Understanding these differences is essential for designing arithmetic circuits and handling binary operations correctly in digital logic.

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.

The Half Adder and Half Subtractor both operate on two binary inputs, but they serve very different functions. A Half Adder performs binary addition and produces two outputs: the Sum and the Carry. In contrast, a Half Subtractor performs binary subtraction and produces the Difference and the Borrow. In terms of logic, the Sum and Difference outputs are both generated using the XOR gate (A ⊕ B), but the Carry and Borrow are produced differently. The Carry output of the Half Adder is given by A·B, while the Borrow output of the Half Subtractor is given by ¬A·B. This difference means that while a Half Adder indicates when an overflow occurs during addition, the Half Subtractor indicates when a borrow is required during subtraction. The Half Subtractor also uses an additional NOT gate compared to the Half Adder, which increases its complexity slightly.
### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
In One’s Complement representation, negative numbers are represented by inverting all the bits of their positive counterparts. When performing addition in this system, an end-around carry can occur if there is a carry-out from the most significant bit (MSB). To obtain the correct result, this carry must be added back into the least significant bit (LSB). While this method works conceptually, it introduces complications in hardware implementation because it requires an additional addition step to handle the carry. This extra step increases the circuit’s complexity and processing time. Furthermore, if the end-around carry is not correctly managed, the arithmetic operation may produce incorrect results. Due to these implementation difficulties, One’s Complement arithmetic is less efficient and less commonly used than Two’s Complement arithmetic in modern computing systems.

### 3 - What is the edge case and problem with Two’s Complement number representation?

Two’s Complement is widely used because it simplifies subtraction and eliminates the need for an end-around carry. In this system, negative numbers are represented by inverting all bits of the corresponding positive number and adding one. However, Two’s Complement introduces a unique edge case: the most negative number in the system cannot be represented as a positive number.
