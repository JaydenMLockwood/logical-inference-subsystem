% Author: Jayden Lockwood
% Assignment: Artifact 3
% Grade: High Distinction
% FAN: *******
% Date of Creation: 08/11/24
% Prolog knowledge base for trafficIQ subsystem


% Facts for knowledge base

% less than 5 cars
low_traffic(X) :-
    X < 5.

% Between 6 to 20 cars
medium_traffic(X) :-
    X > 6,
    X < 20.

% Greater than 21 cars
high_traffic(X) :-
    X > 21.

% Predicates to check time conditions at different intervals

% 1 minute
traffic_1_minute(Traffic, Traffic_Volume) :-
    (low_traffic(Traffic) -> Traffic_Volume = low;
    medium_traffic(Traffic) -> Traffic_Volume = medium;
    high_traffic(Traffic) -> Traffic_Volume = high).

% 5 minutes
traffic_5_minutes(Traffic, Traffic_Volume) :-
    (low_traffic(Traffic) -> Traffic_Volume = low;
    medium_traffic(Traffic) -> Traffic_Volume = medium;
    high_traffic(Traffic) -> Traffic_Volume = high).

% 10 minutes
traffic_10_minutes(Traffic, Traffic_Volume) :-
    (low_traffic(Traffic) -> Traffic_Volume = low;
    medium_traffic(Traffic) -> Traffic_Volume = medium;
    high_traffic(Traffic) -> Traffic_Volume = high).

% 30 minutes
traffic_30_minutes(Traffic, Traffic_Volume) :-
    (low_traffic(Traffic) -> Traffic_Volume = low;
    medium_traffic(Traffic) -> Traffic_Volume = medium;
    high_traffic(Traffic) -> Traffic_Volume = high).

% 60 minutes
traffic_60_minutes(Traffic, Traffic_Volume) :-
    (low_traffic(Traffic) -> Traffic_Volume = low;
    medium_traffic(Traffic) -> Traffic_Volume = medium;
    high_traffic(Traffic) -> Traffic_Volume = high).

% Predicate for Traffic Advisories

advisories(Traffic_Volume, Response) :-
    (Traffic_Volume = low -> Response = 'No Congestion. Clear Intersection Ahead';
    Traffic_Volume = medium -> Response = 'Moderate Traffic. Expect Some Delays';
    Traffic_Volume = high -> Response = 'High Traffic. Consider Alternate Routes').

% example query ?- traffic_1_minute(3,X), advisories(X, Response) 
% wiil respond with: Response = 'No Congestion. Clear Intersection Ahead'.

% Creating simulated data

% Rule to generate simulated data

simulated_data(Time_Interval, Volume) :-
    member(Time_Interval, [1, 5, 10, 30, 60]),
    random(1, 35, Volume).

% example query: 
% ?- simulated_data(1,Volume), traffic_1_minute(Volume, X), advisories(X, Response).
% Volume = 32,
% X = high,
% Response = 'High Traffic. Consider Alternate Routes' 


%Creating a predicate to reduce the length of a query
%users now only have to ask trafficquery(1, Response) for traffic response 1 minute away

trafficquery(Time_Interval, Response):-
    (
        Time_Interval =< 1 -> simulated_data(1, Traffic_Volume), traffic_1_minute(Traffic_Volume, Traffic_Level);
        Time_Interval =< 5 -> simulated_data(5, Traffic_Volume), traffic_5_minutes(Traffic_Volume, Traffic_Level);
        Time_Interval =< 10 -> simulated_data(10, Traffic_Volume), traffic_10_minutes(Traffic_Volume, Traffic_Level);
        Time_Interval =< 30 -> simulated_data(30, Traffic_Volume), traffic_30_minutes(Traffic_Volume, Traffic_Level);
        Time_Interval =< 60 -> simulated_data(60, Traffic_Volume), traffic_60_minutes(Traffic_Volume, Traffic_Level)
    ),
    advisories(Traffic_Level, Response).





