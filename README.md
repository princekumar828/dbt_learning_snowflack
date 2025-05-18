# dbt Semantic Layer Project

This project implements a semantic layer on top of existing data models to enhance data accessibility and usability. The semantic layer provides a structured way to define metrics, dimensions, and relationships, making it easier for users to interact with the data.

## Project Structure

- **models/**: Contains the data models and their metadata.
  - **marts/**: Contains SQL files for calculating metrics and generating reports.
    - **core/**: Core metrics related to customers and orders.
      - `customer_metrics.sql`: SQL queries for customer metrics.
      - `order_metrics.sql`: SQL queries for order metrics.
    - **reporting/**: Reporting SQL files.
      - `customer_order_summary.sql`: Summary report of customer orders.
- **metrics/**: Defines metrics related to customers and orders.
  - `customer_metrics.yml`: Metrics for customers.
  - `order_metrics.yml`: Metrics for orders.
- **semantic_models/**: Defines the semantic layer for customer and order data.
  - `customers.yml`: Semantic definitions for customer data.
  - `orders.yml`: Semantic definitions for order data.
- **dbt_project.yml**: Configuration file for the dbt project.
- **README.md**: Documentation for the project.

## Setup Instructions

1. Clone the repository to your local machine.
2. Navigate to the project directory.
3. Install the necessary dependencies.
4. Configure your database connection in the `dbt_project.yml` file.
5. Run the dbt models to build the semantic layer.

## Usage

- Use the defined metrics in the `metrics/` directory to analyze customer and order data.
- Access the semantic models in the `semantic_models/` directory to explore dimensions and measures.
- Generate reports using the SQL files in the `models/marts/reporting/` directory.

## Additional Information

This project aims to provide a clear and structured approach to data modeling and analysis, enabling users to derive insights from the data efficiently. For any questions or contributions, please refer to the project's issue tracker.