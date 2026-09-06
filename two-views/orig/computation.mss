@comment(-*- Fonts: SAIL12,HL14,HELVETICA14,JESS13 -*-)
@make(article)
@comment[device(lg1200)]
@device(postscript)

@style(Justification on)
@modify(quotation,size -2,facecode i)
@modify(itemize,spread=0.5,spacing=1)
@use(bibliography="Computation.bib")
@style(References=mybib)

@case(device,
postscript
"@define(doctext,use text,size 12)
@style(spacing 1.25)
@style(fontfamily=timesroman)",
lg1200
"@define(doctext,use text)")

@begin[doctext]
@begin(titlepage)
@begin(titlebox)
@majorheading(New Developments in Mathematics, Computing, the
Sciences, and New Views of Computation)

@begin(format,flushleft)
Albert Boulanger
BBN Laboratories
10 Moulton St.
Cambridge MA 02238
@end(format)

@heading(Abstract)
@begin(doctext,leftmargin +5,rightmargin +5)
This paper presents the idea that
an exciting synergy is occuring in theoretical work in
mathematics, computation, and natural sciences. 
The view of computation currently held by many is
"Newtonian", but alternative views are emerging, brought about by the
accessibility of massively parallel computers, research in very small
computing elements, and by the adoption of a new 
understanding of nonlinear dynamics occuring in
experimental mathematics and the sciences. The adoption of these views
of computation are analogous to the revolutions of thinking in physics.
Two examples are given to illustrate how the synergy is causing a
rethinking of the nature of computation.
@end(doctext)
@end(titlebox)

@end(titlepage)
@set(page=1)
@majorheading(New Developments in Mathematics, Computing, the
Sciences, and New Views of Computation)

@begin(format)
Albert Boulanger
BBN Laboratories
10 Moulton St.
Cambridge MA 02238
@end(format)

@section(Introduction)

The behavior of very large systems of computation and very small
computers often reflects the behavior of large and small systems in the
world. Consequently, it is not surprising that researchers in computer
science are adopting techniques traditionally used in describing and
analyzing behavior in the real world to the study of computation. Hillis
has put forth the idea that such fundamentally new views of computation
are needed so that problems scale with the capabilities of very large
parallel computers and very small quantum computing elements
@cite(Hillis82).  Two emerging views of computation in particular serve
this purpose: the @i(population statistics view) and the @i(quantum
view). The full development of these new views makes use of recent
developments in mathematics and the sciences. One major benefit of
applying such views to computation is that they allow for
non-synchronization between processes and thus can eliminate
synchronization overheads.


@section(The Current "Newtonian" View of Computation and Emerging Modern Views) 

The Newtonian view divides computation into components that interact
deterministically, with strict precedence observed for communication
between modules. In this view of computation, the need for maintaining
@i(spatial precedence) (communicating to the exact module) and
@i(temporal precedence) (communicating when planned) is paramount. Each
actor in this computational universe is following its role in a master
script, just as the pieces of the great clockwork universe of the
classical era of physics.
Strict precedence ensures the same behavior for
parallel and serial machines, except for a speedup whose extent is
limited by the number of processors. Maximum speedup is normally not
obtained because of the sequencing needs of communication among the
software modules.

The attempt to analyze systems with large numbers of actors
(gases) by Maxwell, Boltzmann and others, led to a
characterization of the macrostates of an ensemble system which is
called thermodynamics. A similar attempt to deal with a large number of
parallel computations is leading computer scientists to characterize the
macrostates of some global computation from the ensemble population of
computations. The individual computations are viewed as having
stochastic behavior or as interacting stochastically. In this view, the
population statistics of processes doing computation form the
collective computation of interest.

A Quantum view of computation is just beginning to emerge as computer
scientists think in terms of smaller and smaller computing
elements. At this level we have to contend
with quantum effects and several researchers have proposed quantum
computers of different types and abilities @cite(Benioff82), @cite(Feynman82),
@cite(Albert83), @cite(Deutsch85). Deutsch has argued that quantum
computers are more powerful than Turing machines in their ability to
compute random numbers @cite(Deutsch85).

@section(Examples of the Synergy)
Below are two surveys of recent work that illustrate the population
statistics view and the quantum view. These surveys are  not intended to
be complete, but are intended to serve as a guide to the research areas
for anyone who would like to pursue the work further.

@subsection(Statistical Mechanics Models of Machine and Human
Computation) 

It is compelling, faced with the overwhelming complexity of the neural
network that makes up the mind,
to adopt the statistical mechanics view of computation
to describe such a network. This approach has been called
@i(statistical neurodynamics) @cite(Amari77)
@foot{See @cite(Levine83) for a research review of earlier work of the
population statistics view in this field.}. There has also been new work
analyzing the nonlinear dyamics of individual nerve systems and neural
networks and the nonlinear dynamics aspects of memory and
pattern-based cognition.
One may wonder how far one can go in analysis from such a
system-theoretic approach. In such systems as neural networks, one
adopts a capability-based view of computational processes since a
computational element by computational element analysis of the internal
state of a neural configuration that is doing something desired, such as
associative recall, is hopelessly complicated. One can go far, however,
if one knows the theoretical limitations in the capabilities of
different configurations since one of the primary abilities of these
organizations is to @i(evolve) into some state that displays the desired
behavior. This approach is described in the introduction of
Kohonen's book on a system-theoretic approach to associative memory:

@begin(quotation)
It seems that the basic operation of associative memory, the storage of
information together with the relations or links between the data items,
and the selective recall of stored information relative to a piece of
key or cue information presented, is not restricted to certain
computer-technological implementations but can also be reflected in more
general mathematically describable processes in certain physical or
other systems, especially in their adaptive state changes.@*
- @cite(Kohonen78), Preface.
@end(quotation) 

@paragraph(Kanerva's Theory of Memory and Attractors)
Kanerva @citemark(Kanerva84)@citemark(Kanerva85) [Kanerva 84,85] has
developed a conceptually elegant
theory of a population-statistics-based sparse distributed memory that
is claimed to have strong neurophysiological parallels.
Hofstadter @cite(Hofstadter85) characterized Kanerva's theory of gross
memory processing as follows:

@begin(quotation)
In short, locking-in - that is, convergent and self-stabilizing behavior
- will surely pervade the ultimate explanation of most mysteries of the
mind. One example is the question of memory retrieval. How do things
that are only vaguely similar to each other stir up rumblings of
recollection, and eventually trigger the retrieval of amazingly deep
abstract resemblances? One theory, best formulated and articulated by
cognitive scientist Pentti Kanerva of Stanford University, sees the
initial input as a @p(seed) - a vector in a very high-dimensional
space... The seed is fed into memory-retrieval mechanisms, which convert
it into an output vector that is then fed back in again. This cyclic
process continues until it either converges on a stable fixed point -
the desired memory trace - or is seen to be wandering erratically
without any likelihood of locking in, tracing out a chaotic sequence of
"points" in mind-space.@*
-@cite(Hofstadter85) Chapter 16 page 394-395.
@end(quotation)

@paragraph(Vision and Simulated Annealing)
Marroquin @cite(Marroquin85) and Poggio @cite(Poggio85) have viewed
early @foot{Early refers to early in the processing chain.}
visual perception in biological systems and machines as process
of @i(inverse optics).
Techniques to solve such inverse problems have used statistical
mechanics approaches @cite(Marroquin85),
@foot{It is interesting to note that Marroquin metions the possibility
of using quantum computers for the reconstruction of piecewise constant
functions.}
@cite(Carnevali85), as well as variational methods @cite(Poggio85). 
Marroquin and Poggio have analyzed such methods for
parallel hardware. Geman and Geman @cite(Geman84), Carnevali @cite(Carnevali85),
and Marroquin @cite(Marroquin85) have used @i(simulated annealing) as a
statistical mechanics approach to vision 
@foot{ Simulated annealing @cite(Kirkpatrick83) is a method of optimization
that "cools down" a system by lowering an application specific system
temperature by a schedule in analogy with the annealing of metals. This
gradual cooling allows the system to escape from local minima. Simulated
annealing has been used for several optimization problems such as VLSI
design, traveling salesman, and scheduling.  Ackley et al @cite(Ackley85)
have used this approach for more general computation in their so-called
Boltzmann Machine. The Boltzmann machine is an example of a
@i(connectionist) architecture. These architectures are
massively parallel machines with simple computing
elements. See the January-March 85 issue of Cognitive Science
for several papers dealing with connectionist models of mind and machine.}.
Researchers are finding useful analogies between the statistical
mechanical analysis of the dynamics of ensemble physical systems, such
as ferromagnetic materials, and the dynamics of computation in massively
parallel machines and neural networks which accomplish early visual processing.

@paragraph(Non-Synchronous Networks and Nonlinear Dynamics)

Researchers have also studied the effects or random communication time
delays and non-synchronization in neural networks. Hopfield @cite(Hopfield82)
studied this type architecture and its nonlinear dynamics. He indicated
that such an organization
implemented on silicon would provide rapid solutions to some
(unspecified) classes of computational problems.
Peretto and Niez @cite(Peretto86) have studied the stochastic
dynamics of non-synchronous neural networks, and they found that in such
networks, short term memory cannot be supported with loops of recursive
neural activity in structures without some modification means such as
the Hebbian rule for modifying synaptic strengths. They also emphasize
the close analogy between neural network models and current models of
statistical mechanics such as the Ising spin glass models of
ferromagnetic materials
@foot{These models view atoms as having two states: up or down. Atoms
can interact with a local neighborhood of other atoms and also with a
global magnetic field.
In such a system there are two macroscopic states: the ferromagnetic
state and
antiferromagnetic state. Interesting behavior is present in these 
systems in their phase
transitions and when one uses nonuniform fields.}.

One may wonder how much the new work cited in the above paragraphs goes
beyond the results in Minsky and Pappert's book on perceptons
@cite(Minsky69) which had a dampening effect on research of neuron-like
networks within the artificial intelligence community. There are several
differences with the new work cited and theirs. They studied synchonous
constructions and there is no evidence for such in real neural networks.
The analysis of constructions with strong feedback also proved to be
intractable with the analytic tools available at the time. It is evident
from the paragraphs above that feedback is now being considered. A major
missing tool was our present understanding of nonlinear dynamics
including chaotic behavior. Harth's @cite(Harth83) paper is on the
analysis of nonlinear dynamics of higher brain functions, and evidence
for chaotic behavior emerging from neural networks. Harth has also
related the information generating structure of neural networks to that
of the excellent work of Shaw @cite(Shaw81) on how information is
generated and moved from the microscale to the macroscale by nonlinear
systems. Guevara et al @cite(Guevara83) have studied chaotic behavior
at the neuronal level.

We see from this brief overview that a new understanding of
nonlinear dynamics is helping researchers who adopt a population
statistics view of neural dynamics go beyond the research on perceptons
in the 1960's 
@foot{IEEE Trans. on Systems Man and Cybernetics September-October 1983 is a
special issue devoted to new theories of neural dynamics and
computation.}.
We have also seen that people are drawing useful parallels
of the dynamics neural netorks to the dynamics of ensemble physical
systems, such as spin glasses. Finally researchers are going beyond
synchronous constructions and considering asynchronous constructions
because of the new analytical tools available
@foot{Progress in modelling neural networks is influencing
connectionist models of machine computation of artificial intelligence
and motivating work on random differential equations @cite(Geman79) and
Markov Random Fields (MRFs) @cite(Geman84).}.

@subsection(Quantum Mechanics and Quantum Computers)

Erber and Putterman @cite(Erber85) have proposed an experiment to
determine whether quantum systems are pseudorandom or random.  They
entertain the possibility of a physical basis for interpreting the
randomness of quantum-mechanical variables in terms of the mixing wich
is generated by the deterministic iteration of some appropriate
function.
This line of reasoning and the potential to test it is the result of
research in algorithmic complexity theory @cite(Chaitin75), the ability to
isolate single atoms @cite(Dehmelt83), and nonlinear systems and their
simulation @cite(Erber83).

@paragraph(The Quantum Computer; Too Powerful?)
Part of the motivation for suggesting that Quantum Mechanical
behavior may be due to a chaotic nonlinear system is due to the
startling paper by Deutsch @cite(Deutsch85) on
Quantum Theory and the Church-Turing principle. Deutsch attached
the computability of a Turing machine to physical reality in
what he calls the Church-Turing principle:

@begin(quotation)
Every finitely realizable physical system can be perfectly
simulated by a universal model computing machine operating by
finite means. @*
-1.2 in @cite(Deutsch85)
@end(quotation)

He argues that the more familiar formalization (known as the Turing
principle) is vague: 
@begin(quotation)
Every "function which would be naturally regarded as computable" can be
computed by the universal Turing machine.@*
-1.1 in @cite(Deutsch85)
@end(quotation)
compared to physical principles
such as the third law of thermodynamics:
@begin(quotation)
No finite process can reduce the entropy or temperature of a finitely
realizable physical system to zero.@*
-1.3 in @cite(Deutsch85)
@end(quotation)

He proposes to reinterpret the phrase "function which would be naturally
regarded as computable" as "function which may be in principle be
computed by a real physical system". This elevates the epistemological
status of the Turing principle to a physical principle - as stated by
the Church-Turing principle. Deutsch's thinking
has been shaped by C. H. Bennett's interest in the physical limitations
of computation @cite(Bennett85)
@foot{A new line of reasoning is developing; since computation has
to be carried out on something physically realizable, some questions of
computability may have interesting physical consequences, as is currently
being shown. Omohundro @cite(Omohundro84) mentions the question
of the possibility of a closed form solution of a set of Nonlinear PDEs
that describe a family of cellular automata as being related to the
unsolvability of the halting problem.}.

Deutsch also shows that a quantum mechanical computer is more
powerful than a Turing machine in its ability to generate arbitrary
length random sequences.
The tie between random sequences and the complexity of the
algorithms to compute them comes from the work of Chaitin, Kolmogorov,
and Solomonoff and is called algorithmic complexity theory @cite(Chaitin75).
Algorithmic complexity theory has been a very useful development
and along with chaotic systems has led to a new understanding of
the relationship of determinism and randomness in nature 
@foot{For a thought
provoking discussion on this subject see @cite(Ford83).}.
This theory says that a random sequence is one where the number of bits
used to describe how to generate it (say by a program)
is about the same as the number of bits used to represent the sequence explicitly.

We see from this that:
@begin(quotation)
In this respect, quantum mechanics implies that even the
simplest physical systems are equivalent to algorithms and
computers of unbounded complexity.@*
- @cite(Erber85)
@end(quotation)

The question arises; Maybe this is unrealistic? Hence the
motivation to find a new interpretation of Quantum Mechanics based on
pseudorandom processes.

@paragraph(The Ability to Isolate Single Atoms)
The ability to test the hypothesis of mixing transformations being the
underlying dynamics of Quantum Mechanics depends on the ability to
isolate single atoms. Tests which mix the statistical
behavior of a collection of atoms with the statistics of an isolated
quantum system make it hard to recover any pseudorandom
signature.  Erber and Putterman @cite(Erber85) suggest a double
resonance technique 
to measure the on/off time of an isolated ion's florescence. Based on
Erber's prior work in characterizing the properties of
pseudorandom sequences that are generated by computers, and assuming
that an isolated ion behaves like a computer in that it it has
access only to a finite number of states, they derive a relation that
predicts the number of cycles after which one would expect the system
to fall into a terminal loop and how large that loop would be.
The work by Erber and cohorts may lead us to adopt quantum
mechanics as a @i(mesoscopic)
description of nature if the suggested experiment confirms pseudo-random
behavior at the quantum level which would be at a more intermediate level than
the macroscopic view of statistical mechanics.

There is yet to be proposed a reason for the nonlinearity of the
underlying mechanism. However, it is interesting to speculate that the
nonlinearity arises from random time skews in the propagation of fields
at the scale of quantum mechanical systems resulting from the fractal
sponge of Wheeler space-time  
@foot{For a
readable introduction on the notion of a space time sponge see
@cite(DeWitt83).
@comment[This suggestion would please Einstein, since he was always
interested in the dynamics of geometry, and this is a geometric
explanation of the randomness in the dynamics of quantum systems. If our
present understanding of non-linear systems were available in Einstein's
day, I am sure he would have attempted to use deterministic chaos to
explain quantum behavior. The only alternative that he saw at the time
was hidden variables.]}. 
I suggest that, in any case, a study of chaotic systems due to random time
delays in the iterates of a mixing transform might lead to interesting results.
Possibly one might adopt a mesoscopic view
of computation that shares many of the principles of quantum mechanics.
This mesoscopic scale would cover small
clusters of computation interacting asynchronously. In limited
experiments I have done with asynchronous simulation, 
accomplished by relaxing communication precedence, some quantum
effects do arise @foot{One powerful idea to
be exploited in such an organization of computation is the fact that
different population statistics can either
wash out or carry quantum effects at the macro level in analogous
ways that quantum effects are either averaged-out as in everyday
materials or
carried upward to the macroscale as in superconductors and
superfluids.}.


@section(Conclusion)
From the examples surveyed, we have seen that the birth and maturation of
computers and computer science has
added a new member to the traditional team of
mathematician and natural philosopher. Developments in one field have been
beneficial to the others, and there are many examples in additon to
those discussed above. These include:

@begin(Itemize)

The relationship between cellular automata, fractals, and nonlinear
dynamics.
Wolfram @cite(Wolfram84) has been using cellular automata to model physical 
processes that generates materials with fractal geometry. Omohundro
@cite(Omohundro84) has modeled cellular automata as nonlinear
differential equations.
Orbach @cite(Orbach86) has studied the dynamics of fractal networks.

A more detailed study of simulated annealing and genetic algorithms
@foot{
Genetic algorithms take inspiration from genetic mechanisms in
biological systems and are used for optimization type problems.
@cite(Holland78)}
applied to vision processing, boltzmann machines, traveling salesman,
scheduling, other optimization problems and the relationship between
equilibrium systems and optimization @cite(Kirkpatrick85).

Statistical Mechanics applied to the study distributed systems @cite(Yemini83). 
This offers a macroscopic description of network dynamics that one does
not get with traditonal methods of analysis such as queueing theory.

Charles Bennett and others have studied the thermodynamics of
computation @cite(Bennett85). People have studied ways to make computation
reversible @cite(Fredkin82) and to embed irreversible computation in a
reversible cellular automata @cite(Toffoli77).

The use of computers to study nonlinear systems @cite(Campbell85). Much
of what we know of nonlinear dynamics comes from studies on the
computer.
@end(itemize)

As these examples illustrate, computer science has begun and will
continue to feed research in the natural sciences and mathematics.
Computer science in turn is adopting new views of computation based on
how natural science has described very large ensembles and very small
individuals. As was shown these new views have used recent results in
mathematics.
As a computer scientist, I am only beginning to investigate computation
within these two views. There are many aspects of these computational
systems worth investigating. For example, a current interest of
mine is the properties of numbers generated by combining the
results of pseudo-random number generators of non-synchronized
processes.
I hope my survey can be a source of inspiration for people to jump on
this exciting train to discovery.
@end[doctext]