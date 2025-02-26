# Product Rental Service Application

This is a Laravel-based API for a Product Rental Service. The API allow users to retrieve product details, attributes, rental periods, and regional pricing.

## Prerequisites

- PHP >= 8.2
- Composer
- MySQL or any other supported database

## Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/masanam/product-rental-api.git
    ```

2. Navigate to the project directory:

    ```bash
    cd product-rental-api
    ```

3. Install PHP dependencies:

    ```bash
    composer install
    ```

4. Copy the `.env.example` file to `.env`:

    ```bash
    cp .env.example .env
    ```
    ```cmd
    scp .env.example .env
    ```

5. Configure the database in the `.env` file.

6. Generate the application key:

    ```bash
    php artisan key:generate
    ```

7. Run the database migrations and seeders:

    ```bash
    php artisan migrate --seed
    ```
    
8. Link the storage for the profiles pictures directory:

    ```bash
    php artisan storage:link
    ```

## Usage

1. Start the development server:

    ```bash
    php artisan serve
    ```

2. Access the application in your web browser at `http://localhost:8000`.
