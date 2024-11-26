# Prolog Logical Inference Subsystem

## Project Briefing:
The Smart City Initiative aims to develop “TrafficIQ,” an AI-equipped cloud-based traffic management
system that is designed to optimize urban traffic flow and reduce congestion. TrafficIQ will be integrated
within the city’s infrastructure to enhance transport efficiency and sustainability.
Our team is responsible for developing the AI prediction and inference engine of TrafficIQ. Project scoping
interviews with Smart City Initiative stakeholders has revealed the need for a modular system design
consisting of two critical sub-systems:
1. Traffic Prediction sub-system: To perform predictive modelling of traffic flow using neural
networks or other relevant machine learning algorithms.
2. Logical Inference sub-system: To utilize the neural network predictions and allow human users to
ask logical queries regarding traffic management (e.g., “What will happen to traffic volumes on
Street A if Street B is closed due to roadworks from 7-9 am on a Monday morning?”).
These sub-systems are combined to form the AI Prediction and Inference Engine of TrafficIQ, enabling
comprehensive decision-making for advanced urban traffic management.

## Logical Inference Sub-system.
A Logical Inference System must be developed that utilises the traffic volume predictions from the machine learning
model. The steps of involved in developing this Logical Inference Sub-system must involve:

a) Creating a Prolog Knowledge Base including defining predicates and facts as listed below to represent
different traffic conditions based on the machine learning model traffic volume predictions.

b) Defining the following facts for the knowledge base.
  
  (i) Low Traffic: Less than 5 cars.
  
  (ii) Medium Traffic: Between 6 to 20 cars.
  
  (iii) High Traffic: Greater than 21 cars.

c) Implementing predicates to check traffic conditions at different time intervals (1 minute, 5 minutes, 10
minutes, 30 minutes and 60 minutes).

d) Defining Predicates to provide Traffic Advisories:

(i) Low Traffic: “No Congestion. Clear Intersection Ahead”.

(ii) Moderate Traffic: “Moderate Traffic. Expect Some Delays”.

(iii) High Traffic: “High Traffic. Consider Alternate Routes”.

e) Simulating traffic volume predictions for a particular intersection to perform inferences and provide traffic
advisories.
