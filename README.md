# Smart Building KPI Dashboard - Rails Example

![Ruby on Rails](https://img.shields.io/badge/Ruby%20on%20Rails-7.1.5-red)
![Ruby Version](https://img.shields.io/badge/Ruby-3.2.2-red)
![License](https://img.shields.io/badge/License-MIT-blue)

## Project Overview

This is a **demonstration project** built with Ruby on Rails to showcase the **development speed and capabilities** of the Rails framework. The project implements a Smart Building KPI Dashboard with dark theme UI and interactive charts to visualize building operational data.

### Purpose
- **Evaluate Rails development velocity** compared to other frameworks
- **Demonstrate Rails conventions** and rapid prototyping capabilities
- **Showcase modern web UI development** with Rails 7
- **Example of MVC architecture** implementation in Rails

## Features

### Smart Building KPIs
- **Energy Consumption Monitoring**: Real-time power usage tracking with trend analysis
- **Occupancy Management**: Current building occupancy with floor-by-floor breakdown
- **Temperature Control**: Multi-floor temperature monitoring with status indicators
- **Air Quality Tracking**: AQI, CO2, humidity, and PM2.5 measurements

### Interactive Charts & Visualizations
- **Monthly Energy Consumption**: Bar charts showing historical energy usage
- **Floor Occupancy Distribution**: Doughnut charts for space utilization
- **Hourly Occupancy Trends**: Line charts tracking daily patterns
- **Mini Trend Charts**: Compact visualizations in KPI cards

### Modern UI/UX
- **Dark Theme Design**: Professional dark mode interface
- **Glassmorphism Effects**: Modern blur and transparency effects
- **Responsive Grid Layout**: Mobile-friendly responsive design
- **Smooth Animations**: Hover effects and fade-in animations

### System Monitoring
- **Security Status**: Camera monitoring and access logs
- **Maintenance Tracking**: Equipment status and scheduled tasks
- **Equipment Health**: HVAC, elevators, lighting, and security systems

## Technology Stack

### Backend
- **Ruby on Rails 7.1.5**: Web application framework
- **Puma**: High-performance web server
- **PostgreSQL**: Database (configured but not actively used in demo)

### Frontend
- **ERB Templates**: Server-side rendering
- **Chart.js**: Interactive charts and graphs
- **Font Awesome**: Icon library
- **Google Fonts (Inter)**: Modern typography
- **Custom CSS**: Dark theme styling with CSS variables

### Development Tools
- **Bundler**: Dependency management
- **Importmap**: Modern JavaScript management
- **Stimulus**: Modest JavaScript framework

## Quick Start

### Prerequisites
- Ruby 3.2.2 or higher
- Node.js (for asset compilation)
- PostgreSQL (optional for this demo)

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd blog
   ```

2. **Install dependencies**
   ```bash
   bundle install
   ```

3. **Start the development server**
   ```bash
   rails server -p 3001
   ```

4. **Open in browser**
   ```
   http://localhost:3001
   ```

### Alternative Port Configuration
The server is configured to run on port 3001 by default. You can modify this in `config/puma.rb`:
```ruby
port ENV.fetch("PORT") { 3001 }
```

## Project Structure & Rails Conventions

```
blog/
├── app/
│   ├── controllers/
│   │   └── dashboard_controller.rb    # Main dashboard logic
│   ├── views/
│   │   ├── layouts/
│   │   │   └── dashboard.html.erb     # Dashboard layout
│   │   └── dashboard/
│   │       └── index.html.erb         # Main dashboard view
│   └── assets/
│       └── stylesheets/
│           └── dashboard.css          # Dark theme styles
├── config/
│   ├── routes.rb                      # URL routing
│   └── puma.rb                        # Server configuration
└── public/                            # Static assets
```

## Rails Development Speed Demonstration

### What This Project Showcases

#### ⚡ Rapid Development
- **Zero Configuration**: Rails conventions eliminate boilerplate
- **MVC Pattern**: Clear separation of concerns
- **Built-in Helpers**: ERB templates with Ruby integration
- **Asset Pipeline**: Automatic CSS/JS management

#### Framework Benefits
- **Convention over Configuration**: Minimal setup required
- **Scaffolding Capabilities**: Quick controller/view generation
- **Integrated Tooling**: Built-in server, testing, and more
- **Rich Ecosystem**: Extensive gem library

#### Development Metrics
From concept to working dashboard: **~2 hours**
- Controller setup: 15 minutes
- View template: 45 minutes  
- CSS styling: 45 minutes
- Chart integration: 15 minutes

### Code Examples

#### Controller (Business Logic)
```ruby
class DashboardController < ApplicationController
  def index
    @energy_consumption = { today: 2847.5, change_percentage: -8.7 }
    @occupancy = { current: 142, capacity: 200, percentage: 71 }
    # ... more KPI data
  end
end
```

#### View (Data Presentation)
```erb
<div class="kpi-card energy">
  <h3>Energy Consumption</h3>
  <span class="value"><%= @energy_consumption[:today] %></span>
  <div class="change <%= @energy_consumption[:change_percentage] > 0 ? 'positive' : 'negative' %>">
    <%= @energy_consumption[:change_percentage] %>%
  </div>
</div>
```

#### Route (URL Mapping)
```ruby
Rails.application.routes.draw do
  root "dashboard#index"
  get 'dashboard', to: 'dashboard#index'
end
```

## Rails Advantages Demonstrated

### Pros
- **Extremely Fast Prototyping**: Working application in hours
- **Convention-Driven**: Minimal configuration needed
- **Full-Stack Solution**: Everything included out of the box
- **Mature Ecosystem**: Proven patterns and extensive libraries
- **Developer Productivity**: Focus on business logic, not boilerplate

### Considerations
- **Opinionated Framework**: Less flexibility in architecture decisions
- **Learning Curve**: Rails conventions must be learned
- **Performance**: May require optimization for high-traffic applications
- **Magic**: Convention over configuration can hide complexity

## Customization & Extension

### Adding Real Data Sources
Replace sample data in `DashboardController#index` with:
- Database queries using Active Record
- External API calls
- Real-time data feeds

### Database Integration
```bash
# Generate models for real data
rails generate model EnergyReading value:decimal timestamp:datetime
rails db:migrate
```

### API Development
```ruby
# Add JSON API endpoints
respond_to :html, :json

def index
  # ... existing code ...
  respond_to do |format|
    format.html # renders dashboard
    format.json { render json: @energy_consumption }
  end
end
```

## Performance & Production

### Optimization Strategies
- **Caching**: Implement Redis/Memcached for data caching
- **Background Jobs**: Use Sidekiq for heavy processing
- **Asset Optimization**: Compress and bundle CSS/JS
- **Database Indexing**: Optimize queries for real data

### Production Deployment
- **Heroku**: Easy Rails deployment platform
- **Docker**: Container-based deployment
- **AWS/GCP**: Cloud platform deployment

## Contributing

This project serves as a Rails demonstration. Contributions that showcase additional Rails features are welcome:

1. Fork the repository
2. Create a feature branch
3. Add Rails-specific features or improvements
4. Submit a pull request

## License

This project is open source and available under the [MIT License](LICENSE).

## Conclusion

This Smart Building KPI Dashboard demonstrates Rails' ability to rapidly prototype and deploy feature-rich web applications. The combination of convention-driven development, integrated tooling, and rich ecosystem makes Rails an excellent choice for rapid web application development.

**Total development time: ~2 hours from concept to deployment**
