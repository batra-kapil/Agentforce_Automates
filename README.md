# 🚗 Automates - Smart Vehicle Rental Assistant

## 🏆 TDX Bengaluru 2025 Hackathon Runner-Up

**Team Automates** built an AI-powered Vehicle Rental Assistant using Salesforce Agentforce, Data Cloud, Slack, and Retrieval-Augmented Generation (RAG) to transform how vehicle rental businesses interact with customers and manage operations.

Our solution secured the **Runner-Up position at the TDX Bengaluru 2025 Hackathon**, winning a **₹30,00,000 Grand Prize**.

---

## 📖 Problem Statement

Vehicle rental companies often struggle with:

- Manual booking processes
- Inventory visibility issues
- Double bookings
- Slow customer support
- Time-consuming insurance validations
- Operational inefficiencies at pickup locations
- Heavy reliance on employees for repetitive operational tasks

As rental businesses scale, these challenges directly impact customer experience, operational efficiency, and revenue growth.

---

## 🎯 Solution Overview

The Smart Vehicle Rental Assistant leverages Salesforce Agentforce to provide an intelligent conversational experience for both customers and store managers.

The solution consists of two AI-powered agents:

### 🤖 Customer Agent

Customers can:

- Search available vehicles
- Book vehicles
- Modify bookings
- Extend rental periods
- Cancel bookings
- Report vehicle issues
- Report accidents
- Retrieve booking details
- Access rental documents and instructions

### 💬 Store Manager Agent (Slack)

Store managers use a dedicated Agentforce-powered Slack assistant to:

- Confirm bookings after payment verification
- Mark vehicle returns
- Cancel no-show bookings
- Access insurance documents
- Validate insurance coverage using AI-powered document understanding

---

## 🏗️ Solution Architecture

### Salesforce Agentforce

Acts as the conversational layer responsible for:

- Understanding customer intent
- Driving booking workflows
- Performing actions
- Providing personalized responses

### Salesforce Data Cloud

Used for:

- Real-time vehicle inventory ingestion
- Customer profile management
- Unified customer and vehicle data
- Inventory visibility

### Slack Agent

Provides operational support for rental employees by enabling:

- Booking confirmations
- Vehicle return processing
- Booking cancellations
- Insurance validation assistance

### Retrieval-Augmented Generation (RAG)

RAG enables the solution to:

- Read vehicle insurance policy documents
- Understand coverage details
- Answer natural language questions
- Provide grounded and explainable responses

Example questions:

- Is tire damage covered?
- Does this policy include engine protection?
- Is accidental windshield damage covered?
- What is the deductible amount?

---

## 🚘 Vehicle Inventory Data Model

### VehicleInventory__dc

| Field API Name | Description |
|----------------|-------------|
| Vehicle_Id__c | Unique Vehicle Identifier |
| Name | Vehicle Name |
| Vehicle_Type__c | 2 Wheeler / 4 Wheeler |
| Transmission_Type__c | Automatic / Manual |
| Color__c | Vehicle Color |
| Condition__c | Vehicle Condition |
| Last_Service_Date__c | Last Service Date |
| Current_Status__c | Available / Booked / Maintenance |
| City__c | Vehicle City |
| State__c | Vehicle State |
| Pickup_Location_Name__c | Pickup Location |
| Daily_Rental_Price__c | Rental Price Per Day |
| Fuel_Type__c | Fuel Type |
| License_Plate__c | Vehicle Registration Number |

---

## 👤 Customer Journey

### 1. Customer Authentication

The agent verifies whether the customer already exists.

If customer does not exist:
- Create customer profile

If customer exists:
- Validate email and customer details

### 2. Vehicle Discovery

The agent collects:

- State
- City
- Rental Date
- Rental Duration
- Vehicle Preference

Vehicle preferences include:

- 2 Wheeler
- 4 Wheeler

### 3. Availability Check

The agent retrieves matching vehicles from Data Cloud and displays:

- Vehicle Name
- Vehicle Type
- Color
- Condition
- Last Service Date
- Pickup Location
- Daily Rental Price

### 4. Booking Creation

The agent:

- Creates booking
- Generates booking confirmation
- Sends payment instructions

### 5. Pickup Preparation

The agent shares the required documents:

- Driving License
- Government ID Proof
- Booking Confirmation

### 6. Rental Management

Customers can:

- Modify Booking
- Extend Rental
- Cancel Booking
- Report Vehicle Issues
- Report Accidents

---

## 💬 Slack Agent Workflow

### Booking Pickup

Store Manager:

- Receives booking notification
- Verifies payment
- Confirms booking

### Vehicle Return

Store Manager:

- Validates vehicle condition
- Marks booking complete
- Updates vehicle availability

### No-Show Handling

Store Manager:

- Cancels booking directly from Slack

### Insurance Validation Using RAG

Store Manager asks:

> Is bumper damage covered under Vehicle V1001 insurance policy?

The Agent:

1. Retrieves the insurance document
2. Uses RAG to identify relevant sections
3. Returns coverage information with explanation

This eliminates the need for employees to manually review lengthy insurance documents.

---

## 🧠 Why RAG?

Traditional chatbots cannot reliably answer document-specific questions.

RAG enables the system to:

- Ground responses in actual insurance documents
- Reduce hallucinations
- Provide explainable answers
- Improve operational efficiency
- Accelerate insurance-related decision making

---

## 📈 Business Impact

### Before

| Metric | Before |
|----------|---------|
| Average Booking Time | 12 Minutes |
| Pickup Processing Time | 15 Minutes |
| Insurance Validation | Hours |
| Staff Capacity | 20 Bookings / Day |
| Customer NPS | 48 |

### After

| Metric | After |
|----------|---------|
| Average Booking Time | 2 Minutes |
| Pickup Processing Time | 3 Minutes |
| Insurance Validation | Under 2 Minutes |
| Staff Capacity | 100+ Bookings / Day |
| Customer NPS | 86 |

### Results

- 🚀 83% Faster Booking Experience
- ⏱️ 80% Faster Pickup Operations
- 📈 5x Staff Productivity
- 💰 24% Revenue Growth
- 🧠 Faster Insurance Validation
- 😊 Improved Customer Satisfaction

---

## 🛠️ Technology Stack

- Salesforce Agentforce
- Salesforce Data Cloud
- Salesforce Flow
- Slack Integration
- Retrieval-Augmented Generation (RAG)
- Salesforce Core Platform
- PDF Knowledge Repository

---

## 🎥 Demo Video

Watch the complete demo:

https://www.youtube.com/watch?v=Vbr2xUoSqxw

---

## 👥 Team Automates

### Kapil Batra
**Role:** Solution Architect

Responsibilities:
- Solution Architecture
- Data Cloud Design
- End-to-End System Design
- Demo Strategy

### Monika Ramchandani
**Role:** Agentforce & Slack Developer

Responsibilities:
- Agent Development
- Slack Integration
- Business Workflow Automation
- AI Interactions

### Jyothsna Bitra
**Role:** Ideation & Presentation Lead

Responsibilities:
- Solution Brainstorming
- User Journey Design
- Storytelling
- Presentation Design

---

## 🚀 Future Enhancements

- Electric Vehicle Rentals
- Loyalty Programs
- Dynamic Pricing
- Predictive Maintenance
- Self-Service Pickup Kiosks
- AI-Powered Upselling
- Multi-City Expansion Support

---

## 🏁 Team Motto

> "We're your auto-mates on the road to smarter rentals."

Built with ❤️ by Team Automates.
