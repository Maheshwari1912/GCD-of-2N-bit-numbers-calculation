# GCD-of-2N-bit-numbers-calculation

**Relation to the Euclidean Algorithm**

The Euclidean Algorithm has two main approaches:

**Modulo-based Euclidean Algorithm**

𝐺𝐶𝐷(𝐴,𝐵)=𝐺𝐶𝐷(𝐵,𝐴mod𝐵)

This is efficient and used in the first Verilog code I provided.

Subtraction-based Euclidean Algorithm

If 𝐴>𝐵, replace A with 𝐴−𝐵.

If 𝐵>𝐴, replace 𝐵 with 𝐵−𝐴.

Repeat until one value becomes zero.

The remaining non-zero value is the GCD.

Your code uses the subtraction-based method.

**How Your Code Works**

The always block executes on every positive clock edge or reset.

On reset, it initializes:

x = a

y = b

gcd = 0

done = 0

If both x and y are non-zero, it performs:

x = x - y if x > y

y = y - x if y > x

If x == 0, it assigns gcd = y, else gcd = x.

The computation stops when one value reaches zero, and done is set to 1.

**Key Differences Between Both Approaches**

Feature	Your Code (Subtraction)	Modulo-Based Version

Algorithm	Subtraction method	Modulo method

Efficiency	Slower (more iterations)	Faster (fewer iterations)

Implementation	Uses x = x - y	Uses x = x % y

Hardware Usage	Simpler (subtraction only)	Needs a divider (mod operation)

Clock Cycles	More	Fewer

Example Execution for GCD(56, 98)

x	   y	x - y or y - x

56	98	98 - 56 = 42

56	42	56 - 42 = 14

14	42	42 - 14 = 28

14	28	28 - 14 = 14

14	14	14 - 14 = 0

GCD = 14	

