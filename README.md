<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->

# 📗 Grain Menu API

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)

  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Install](#install)
  - [Usage](#usage)

- [💡Performance Metrics](#performance-metrics)

<!-- PROJECT DESCRIPTION -->

# 📖 Grain Menu API <a name="about-project"></a>

This is a graphql endpoint to access menus, sections, items and, their modifier groups regarding Grain.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **Retrieve Menu Data**
- **Deployed Graphql Endpoint**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

- https://grain-menu-api-9y67.onrender.com/graphql

> You can test this by running the following in your shell.

```sh
curl -X POST https://grain-menu-api-9y67.onrender.com/graphql \
  -H "Content-Type: application/json" \
  -d '{
    "query": "query { menus { label state startDate endDate sections { id displayOrder label description items { id itemType label description price modifierGroups { id label selectionRequiredMax selectionRequiredMin modifiers { id displayOrder priceOverride defaultQuantity item { label } } } } } } }"
  }'
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- VS Code or any other code editor
- Chrome or any other browser
- Ruby installed
- Rails installed
- Postgresql installed

### Setup

Clone this repository to your desired folder:

```sh
  cd my-folder
  git clone git@github.com:anbehindY/grain-menu-api.git
```

### Install

Install this project with:

```sh
  cd grain-menu-api
  bundle
```

### Usage

To run the project:

Create the database by running the following command:

```sh
rails db:create
```

Migrate the database with the following command:

```sh
rails db:migrate
```

Load the database schema with this command:

```sh
rails db:schema:load
```

Seed the database with the following command:

```sh
rails db:seed
```

Start the server by running the following command:

```sh
rails server
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Key Metrics to Track <a name="performance-metrics"></a>

To effectively understand and track the performance of your GraphQL API app built with Rails 8, it's important to monitor a variety of metrics. I believe these metrics will help us identify potential bottlenecks, optimize performance, and ensure a smooth user experience.

### 1. Request Latency and Response Times

- **What to track**: Measure the time taken to process a request from the client to the server and send back a response.
- **Why it’s important**: High latency can result in a poor user experience. Monitoring this will help identify slow queries and inefficient GraphQL resolvers.
- **Tools to use**:
  - Rails built-in logging (`lograge` for clean logs).
  - New Relic, Datadog, or Skylight for detailed insights into response times.

### 2. GraphQL Query Execution Time

- **What to track**: Time taken to execute individual GraphQL queries and mutations.
- **Why it’s important**: GraphQL queries can be complex, and certain fields or resolvers might be slow. Tracking the time spent on specific queries helps identify slow parts of the API.
- **Tools to use**:
  - [Apollo Tracing](https://www.apollographql.com/docs/graphql-tools/apollo-tracing/) for performance tracking.
  - `graphql-ruby`'s built-in logging (via `ActiveSupport::Notifications`).

### 3. Throughput (Requests per Second)

- **What to track**: The number of requests your API handles per second.
- **Why it’s important**: Helps you understand how much load your application is handling and if it can scale under stress.
- **Tools to use**:
  - Rails log monitoring.
  - New Relic or Datadog to monitor throughput.

### 4. Database Query Performance

- **What to track**: Number of database queries and their execution time for each request.
- **Why it’s important**: Inefficient database queries (e.g., N+1 queries) can severely impact performance, especially in GraphQL where multiple fields can trigger different queries.
- **Tools to use**:
  - **Bullet Gem**: Detects N+1 queries.
  - Rails ActiveRecord Query Logs: Check for excessive or slow queries.
  - Database query analysis tools (e.g., New Relic, Datadog).

### 5. Error Rate and Error Details

- **What to track**: Track the rate of errors (e.g., 500, 400 responses) and capture details on failures.
- **Why it’s important**: Understanding the error rate and the types of errors is crucial for identifying system malfunctions and improving reliability.
- **Tools to use**:
  - **Sentry** or **Rollbar** (for real-time error tracking).
  - **Rails' built-in error logging**.

### 6. Memory Usage and Leaks

- **What to track**: Monitor the memory usage of your application and track potential memory leaks.
- **Why it’s important**: Memory leaks can slow down or crash your app over time, especially in long-running processes or high-traffic environments.
- **Tools to use**:
  - **New Relic** or **Datadog** for monitoring memory usage.
  - **Rack::MiniProfiler** or **Bullet Gem** to track memory allocation for database queries.

### 7. CPU Utilization

- **What to track**: Track the CPU usage of your Rails app, especially during query execution or high load.
- **Why it’s important**: High CPU usage can point to inefficient code or database queries that need optimization.
- **Tools to use**:
  - **Datadog**, **New Relic**, or **Skylight** for CPU monitoring.

### 8. GraphQL Query Complexity

- **What to track**: Track the complexity of the GraphQL queries (i.e., depth of queries, number of fields requested, nested resolvers).
- **Why it’s important**: Complex queries with deep nesting or large amounts of data can slow down the API or lead to performance degradation.
- **Tools to use**:
  - **GraphQL Complexity analysis**: Use the `graphql-ruby` gem’s `query complexity` feature to limit query complexity.

### 9. Cache Hit/Miss Rates

- **What to track**: Cache performance metrics (e.g., cache hits vs. misses, cache expiration times).
- **Why it’s important**: Caching can significantly improve performance by reducing database load. If cache hits are low, you may need to optimize caching strategies.
- **Tools to use**:
  - Rails built-in caching (`Rails.cache`).
  - **Memcached** or **Redis** for caching storage.
  - **New Relic** or **Datadog** for caching insights.

### 10. Network Latency

- **What to track**: Track the time it takes for network requests to travel from the client to the server and back.
- **Why it’s important**: Network latency can introduce delays, especially if the server is hosted far from the client or if there are issues with networking infrastructure.
- **Tools to use**:
  - **Pingdom** or **New Relic** for network monitoring.

### 11. CPU Time per Query or Mutation

- **What to track**: Track the CPU time per individual query or mutation to identify resource-intensive operations.
- **Why it’s important**: Identifies resource-heavy operations in the GraphQL API, which may need optimization or scaling.
- **Tools to use**:
  - **New Relic** or **Datadog** for detailed CPU profiling.

### 12. Traffic Distribution

- **What to track**: Identify which types of requests or queries are most frequent, and whether any query is particularly resource-hungry.
- **Why it’s important**: Identifies potential areas for optimization or features that need scaling.
- **Tools to use**:
  - **Rails logs**, **Apollo Client Metrics**, or **GraphQL API Analytics** tools.

## Tools to Implement Monitoring:

- **New Relic**, **Datadog**, **Skylight**, and **AppSignal**: For monitoring and optimizing Rails APIs.
- **Prometheus + Grafana**: For more customized monitoring and metrics collection, including custom Grafana dashboards.
- **Sentry**: For error tracking and notifications.
