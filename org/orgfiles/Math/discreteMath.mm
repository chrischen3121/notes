<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node text="Logic">
<node text="Basic Symbol" position="left">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>$$(\lnot : not) (\land: and) (\lor: or) (\oplus: exclusive)$$<br />- Conditional Statements<br />#+BEGIN_VERSE<br />$p \to q$: if /p/, then /q/. <br />When p is true, q is false, the statement is false, otherwise the statement is true.</p><p>converse: $q \to p$  <br />contrapositive: $\lnot{q} \to \lnot{p}$</p><p>$p\leftrightarrow{q}$: <i>p</i> if and only if <i>q</i><br />#+END_VERSE</p></body>
</html>
</richcontent>
</node>
</node>
<node text="Propositional Logic" folded="true" position="left">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+BEGIN_VERSE<br />$p\lor{\lnot{p}}$ is always true, called tautology.<br />$p\land{\lnot{p}}$ is always false, called contradiction.<br />#+END_VERSE<br />- Logical Equivalences<br />$p \equiv q$ :  if p\leftrightarrow q is always true.<br />- Negation laws<br />$$p \lor \lnot p \equiv T$$<br />$$p \land \lnot p \equiv F$$<br />- Identity laws<br />$$p \land T \equiv p$$<br />$$p \lor F \equiv p$$<br />- De Morgan's Laws<br />$$\lnot{(p\land{q})}\equiv\lnot{p}\lor\lnot{q}$$<br />$$\lnot{(p\lor{q})}\equiv\lnot{p}\land\lnot{q}$$<br />extension:<br />$$\lnot (p_1 \lor p_2 \lor ... \lor p_n) \equiv (\lnot p_1 \land \lnot p_2 \land ... \land \lnot p_n)$$ <br />and vice versa when symbol converses.<br />- Associative laws<br />$$(p\lor q) \lor r \equiv p \lor (q \lor r)$$<br />$$(p\land q) \land r \equiv p\land (q \land r)$$<br />- Distributive laws<br />$$p\lor{(q\land{r})}\equiv{(p\lor{q})\land(p\lor{r})}$$<br />$$p\land{(q\lor{r})}\equiv{(p\land{q})\lor(p\land{r})}$$<br />- Absorption laws<br />$$p \lor (p \land q)\equiv p$$<br />$$p \land (p \lor q)\equiv p$$</p></body>
</html>
</richcontent>
</node>
<node text="Equivalences Involving Conditional Statements">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>$$p \to q \equiv \lnot p \lor q$$<br />$$p \to q \equiv \lnot q \to \lnot p$$<br />$$p \lor q \equiv \lnot p \to q$$<br />$$p \land q \equiv \lnot (p \to \lnot q)$$<br />$$\lnot (p \to q) \equiv p \land \lnot q$$<br />$$(p \to q) \land (p \to r) \equiv p \to (q \land r)$$<br />$$(p \to r) \land (q \to r) \equiv (p \lor q) \to r$$<br />$$(p \to q) \lor (p \to r) \equiv p \to (q \lor r)$$<br />$$(p \to r) \lor (q \to r) \equiv (p \land q) \to r$$</p></body>
</html>
</richcontent>
</node>
</node>
<node text="Equivalences Involving Biconditional Statements">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>$$p \leftrightarrow q \equiv (p \to q) \land (q \to p)$$<br />$$p \leftrightarrow q \equiv \lnot p \leftrightarrow \lnot q$$<br />$$p \leftrightarrow q \equiv (p \land q) \lor (\lnot p \land \lnot q)$$<br />$$\lnot (p \leftrightarrow q) \equiv p \leftrightarrow \lnot q$$</p></body>
</html>
</richcontent>
</node>
</node>
<node text="Extension" folded="true">
<node text="DNF">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+BEGIN_VERSE<br />Disjuctive normal form is a disjuction of conjunctive clauses.<br />The only propositional operators in DNF are and, or, and not. <br />The not operator can only be used as part of a literal, which means <br />that it can only precede a propositional variable.<br />#+END_VERSE</p></body>
</html>
</richcontent>
</node>
</node>
<node text="Functional completeness">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+BEGIN_VERSE<br />A collection of logical operators is called functionally complete.<br />if <b>every</b> compound proposition is logically equivalent to<br />a compound proposition involving only these logical operators.<br />example: Every compound proposition is logically equivalent to<br />its DNF forms.<br />$$a \land b \lor c \equiv (\lnot a \land \lnot c)\lor ( \lnot b \land \lnot c)$$<br />In this case, $\lor$ , $\land$ and $\lnot$ form a functionallly complete.<br />#+END_VERSE</p></body>
</html>
</richcontent>
</node>
</node>
<node text="NAND and NOR">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- NAND<br />#+BEGIN_VERSE<br />The proposition p NAND q is true when either p<br />or q, or both, are false, and it is false when both p and q are<br />true.  $p \uparrow q \equiv \lnot (p \land q)$ (also called *sheffer stroke*) <br />#+END_VERSE<br />- NOR<br />#+BEGIN_VERSE<br />The proposition p NOR q is true when both p and q are<br />false, and it is false otherwise.  $p \downarrow q \equiv \lnot (p \lor q)$ <br />(also called <b>Peirce arrow</b> )<br />#+END_VERSE<br /></p></body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node text="Predicate Logic" folded="true" position="left">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+BEGIN_VERSE<br />Notation $\forall$: universal quantifier.<br />$\forall xP(x)$ means &quot;for all x P(x)&quot;<br />equivalent to $P(x_1) \land P(x_2) \land ... \land P(x_n)$</p><p>Notation $exists$: existential quntifier<br />$\exists xP(x)$ means &quot;x exists x P(x)&quot;<br />#+END_VERSE</p></body>
</html>
</richcontent>
</node>
<node text="Equivalences Involving Quantifiers">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>$$\forall x(P(x)\land Q(x)) \equiv \forall xP(x)\land \forall xQ(x)$$<br />- De Morgen's Laws for Quantifiers<br />$$\lnot \forall xP(x) \equiv \exists x \lnot P(x)$$<br />$$\lnot \exists x Q(x) \equiv \forall x \lnot Q(x)$$<br />| Negation              | Equivalent Statement   | When Neg. is true                      | When false                            |<br />| $\lnot \exists xP(x)$ | $\forall x \lnot P(x)$ | For every x, P(x) is false.            | There is an x for which P(x) is true. |<br />| $\lnot \forall xP(x)$ | $\exists x \lnot P(x)$ | There is an x for which P(x) is false. | P(x) is true for every x.             |</p></body>
</html>
</richcontent>
</node>
</node>
<node text="Nested Quantifiers" folded="true">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>$$\forall x \forall y P(x, y) = \forall y \forall x P(x, y)$$<br />$$\forall x \exists y P(x, y) \ne \exists x \forall y P(x, y)$$<br />$ \forall x \exists y P(x, y) $ There is a y such that for every x, P(x, y ).</p></body>
</html>
</richcontent>
</node>
<node text="Limit Definition">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>$$ \lim_{x \to a} = L$$<br />$$ \forall \epsilon&gt;0\exists \delta &gt; 0 \forall x(0&lt;|x-a|&lt;\delta \to |f(x)-L|&lt;\epsilon) $$</p></body>
</html>
</richcontent>
</node>
</node>
<node text="Every one has exactly one best friend">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+BEGIN_VERSE<br />Analysis:<br />There is a y who is the best frient of x, <br />and for every person z, if z is not y, then z is not the best frient of x.<br />#+END_VERSE<br />$$\forall x\exists y (B(x, y) \land \forall z  ((z\neq y)\to \lnot B(x, z)))$$<br />OR used uniqueness quantifier !,<br />$$\forall x \exists !y B(x, y)$$</p></body>
</html>
</richcontent>
</node>
</node>
<node text="There are exactly two systems that monitor every remote server">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>$$\exists x \exists y (x\neq y \land \forall z (\forall s M(z, s))) \leftrightarrow  (z=x\lor z=y)$$</p></body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node text="Rules of Inference">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>| <i>Tautology</i>                                      | <i>Name</i> |<br />| $(p\land(p \to q)) \to q$                        | Modus ponens           |<br />| $(\lnot q \land (p\to q)) \to \lnot p$           | Modus tollens          |<br />| $((p\to q)\land (q\to r)) \to (p \to r)$         | Hypothetical syllogism |<br />| $((p\lor q) \land \lnot p)\to q$                 | Disjuctive syllogism   |<br />| $p \to (p\lor q)$                                | Addition               |<br />| $(p \land q) \to p$                              | Simplification         |<br />| $(p) \land (q) \to (p \land q)$                  | Conjuction             |<br />| $((p\lor q)\land(\lnot p \lor r)) \to (q\lor r)$ | <b>Resolution</b>           |</p><p>| <i>Rule of Inference</i>                          | <i>Name</i>                     |<br />| $\forall xP(x) \to P(c)$                     | Universal instantiation    |<br />| P(c) for any arbitrary c $\to \forall xP(x)$ | Universal generalization   |<br />| $\exists xP(x) \to$ P(c) for some c          | Existential instantiation  |<br />| P(c) for some c $\to \exists xP(x)$          | Existential generalization |<br /></p></body>
</html>
</richcontent>
</node>
<node text="Two Fallacies">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+BEGIN_VERSE<br />Fallacy of affirming the conclusion <br />$((p\to q)\land q) \to p$ is not a tautology. (when p is false, q is true)</p><p>Fallacy of denying the hypothesis <br />$((p\to q)\land \lnot p$ is not a tautology. (when p is false, q is true)<br />#+END_VERSE</p></body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node text="Proof Methods and Strategy">
<node text="Basic(prove $p\to q$ is true)">
<node text="Direct Proofs">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>Assume p is true, use p to prove q is true, then the theorem is true.</p></body>
</html>
</richcontent>
</node>
</node>
<node text="Proof by Contraposition">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>Assume $\lnot q$ is true, prove $\lnot p$ is true, then the theorem is true.</p></body>
</html>
</richcontent>
</node>
</node>
<node text="Bacuous Proof">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>When we know p is false, we can quickly get $p \to q$ is true.</p></body>
</html>
</richcontent>
</node>
</node>
<node text="Trivial Proof">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>When we know q is true, we can quickly get $p \to q$ is true.</p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="Proofs by Contradiction">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>- prove p is true<br />#+BEGIN_VERSE<br />We want to prove p is true,<br />If we can find a contradiction q(q is always false), such that $\lnot p \to q$ is true.<br />then p is true.<br />Simple Explanation: $(\lnot q) \land (\lnot p \to q) \to p$<br />Simple contradiction: $r\land \lnot r$<br />Steps:<br />&#160;1 get $\lnot p$<br />&#160;2 find some argument $\lnot p \to q$ (q is a contradiction)<br />#+END_VERSE<br />- prove $p\to q$ is true<br />&#160;1) first get the negation $\lnot(p\to q)$ <br />&#160;2) we know $\lnot(p\to q) \equiv p\land \lnot q$ , so $\lnot (p \to q) \to p\land \lnot q$<br />&#160;3) if we can prove $p\land \lnot q$ is always false, then $p\to q$ is true.<br />&#160;4) prove $p$ and $\lnot q$ can not be both true.(If we can prove $\lnot q \to lnot p$ )<br />- prove several proposition are equivalent<br />$$p_1\leftrightarrow p_2 \leftrightarrow ... \leftrightarrow p_n$$<br />One way to prove:<br />$$\equiv (p_1\to p_2)\land(p_2\to p_3)\land ... \land (p_n \to p_1)$$</p></body>
</html>
</richcontent>
</node>
</node>
</node>
<node text="Puzzles" folded="true">
<node text="Q1">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+BEGIN_VERSE<br />Each inhabitant of a remote village always tells the truth<br />or always lies. A villager will give only a&#x201c;Yes&#x201d;or a&#x201c;No&#x201d;<br />response to a question a tourist asks. Suppose you are a<br />tourist visiting this area and come to a fork in the road.<br />One branch leads to the ruins you want to visit; the other<br />branch leads deep into the jungle. A villager is standing<br />at the fork in the road.What one question can you ask the<br />villager to determine which branch to take?</p><p>A: If I were to ask you whether the right branch<br />leads to the ruins, would you answer yes?<br />#+END_VERSE</p></body>
</html>
</richcontent>
</node>
</node>
<node text="Q2">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>#+BEGIN_VERSE<br />The nth statement in a list of 100 statements is&#x201c;Exactly<br />n of the statements in this list are false.&#x201d;<br />a) What conclusions can you draw from these state-<br />ments?<br />b) Answer part (a) if the nth statement is &#x201c;At least n of<br />the statements in this list are false.&#x201d;<br />c) Answer part (b) assuming that the list contains 99<br />statements.</p><p>Answer: <br />a) All statements are mutually exclusive. It means at most 1 statement is true.<br />&#160;&#160;&#160;&#160;If 0 statement is true, then 100th says &quot;all 100 statements are false&quot; which is a true statement.<br />&#160;&#160;&#160;&#160;This lead to a parabox.<br />&#160;&#160;&#160;&#160;If 1 statement is true, then 99 statements are false. 99th statement fits this situation.</p><p>b) if n+1 is true, then n is true. We need to find the boundary.<br />&#160;&#160;&#160;&#160;Assume n is true and n+1 is false. The statements from n+1 to 100 are false.<br />&#160;&#160;&#160;&#160;So we get the inequality, $100-n \ge  n$ and $100-(n+1) &lt; n$.  <br />&#160;&#160;&#160;&#160;Solution: $49.5 &lt; n \le 50$</p><p>c) Same as Question b). Get solution $49.5 &lt; n \le 49.5$. Lead to a parabox.<br />&#160;&#160;&#160;&#160;For the confused case, let 49th statement be true and 50th statement be false.<br />&#160;&#160;&#160;&#160;50th statement's complement: Less than n of the statements are false.<br />&#160;&#160;&#160;&#160;But if 50th is false, then the count of false statements is 50.<br />#+END_VERSE</p></body>
</html>
</richcontent>
</node>
</node>
<node text="Q3">
</node>
<node text="Q4">
<node style="bubble" background_color="#eeee00">
<richcontent TYPE="NODE"><html>
<head>
<style type="text/css">
<!--
p { margin-top: 3px; margin-bottom: 3px; }-->
</style>
</head>
<body>
<p>	Albert Einstein</p></body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</map>
