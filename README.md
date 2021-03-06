# ecosystem_simulator

A little side-project created during march 2020 COVID-19 quarantine. The project is freely inspired by Primer animations on Youtube (https://www.youtube.com/channel/UCKzJFdi57J53Vr_BkTfN3uQ).

The project is developed in MATLAB (maybe a Python version will be made sometimes) and implements a very simple ecosystem simulator.

The basic idea behind this project is to generate some simple creatures, put them in a simulation environment and observe their behaviour. The creatures are generated with a set of characteristic such as speed, size, and some rudimental intelligence. They are free to wander around a randomly generated 2D map. In the map, other creatures and food units are present. The creatures have to compete for the food, and only the ones who manage to eat some food survive long enough to reproduce. When reproducing, each creature generates an exact copy of itself, but with a slight mutation chance. Mutations are random. The simulation is intended to be run for a time long enough for the mutations to happen enough times to create some "specialized" creatures, i.e. creatures whose characteristic are optimized to compete for the food in a given environment. 

In "version 2 \[prey and predators\]" predators are added; they eat other creatures instead of food units. When introducing predators, some interesting population evolution can be observed; in particular, when the environment characteristics are well tuned, a behaviour resembling the one predicted by the Lotka-Volterra model (a simple prey-predator model, see https://it.wikipedia.org/wiki/Equazioni_di_Lotka-Volterra) can be observed.

The code is structured with a couple of classes (for the environment and for the creatures) and a main script. For a generic use of the simulatior, it is sufficient to run the main file, where the most relevant parameters can be set. Some parameters that can be tuned can be also found in the creature class. It is advised, however, to modify them only after understanding how the model works, since they are a little bit more difficult to tune.

There is a lot of space for improvements, additions and experimentation, so feel free to download and modify the code. If you manage to implement some interesting changes or obtain any valid result, let us know! Have fun, Gianpietro & Riccardo
