## Hotel Reservation Cancellation Prediction

## Project Overview
This machine learning project predicts whether hotel customers will cancel their reservations based on historical booking data. Using the Light Gradient Boosting Machine (LGBM) algorithm, the model achieves high accuracy in identifying potential cancellations, helping hotels optimize their operations and revenue management strategies.
Business Context
Hotel reservation cancellations can significantly impact revenue and resource planning. This project provides a data-driven solution to:

- Reduce Revenue Loss: Predict cancellations to enable proactive overbooking strategies
- Identify Fraudulent Behavior: Detect customers who repeatedly make and cancel bookings
- Enable Targeted Marketing: Focus retention efforts on customers with high cancellation probability

## Dataset
The project uses the Hotel Reservations Classification Dataset from Kaggle, which includes booking information and whether the reservation was ultimately canceled.
Key Features

- lead_time: Number of days between booking and arrival date
- no_of_special_request: Number of special requests made by the customer
- avg_price_per_room: Average price per room
- arrival_month: Month of arrival
- arrival_date: Date of arrival
- market_segment_type: Market segment designation
- no_of_week_nights: Number of weeknights booked
- no_of_weekend_nights: Number of weekend nights booked
- type_of_meal_plan: Type of meal plan selected
- room_type_reserved: Type of room reserved
- and more ...

## Project Structure

![Screenshot 2025-05-20 220816](https://github.com/user-attachments/assets/d5f3bc55-6060-455f-b924-59635ae087aa)


## Model Pipeline
The project implements a complete ML pipeline:

- Data Ingestion (data_ingestion.py): Loads and splits the dataset
- Data Preprocessing (data_preprocessing.py): Handles missing values, encoding, and feature engineering
- Model Training (model_training.py): Implements LGBM training with hyperparameter tuning
- Pipeline Orchestration (training_pipeline.py): Coordinates the end-to-end process

## Model Performance
- Accuracy87.35%
- Precision86.08%
- Recall89.11%
- F1 Score87.57%

## Key Insights

Lead time is a strong predictor of cancellation probability
The Booking is high in the winter months Due to which the avg rates price of room are also increased.
Approx 60% of booking is stake by the couples.Which give the lead about the target customoer are more couples.

## CI/CD Pipeline
The project includes a Jenkinsfile that enables continuous integration and deployment:

Automated testing
Model retraining with new data
Docker image building and deployment

At last the project is deploy on google cloud platform 
here is the link -:https://ml-project-702319311745.us-central1.run.app/

## Project Docker Hub link
https://hub.docker.com/r/chiragjogi27/hotel-reservation-prediction

