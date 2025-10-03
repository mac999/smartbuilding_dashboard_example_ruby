class DashboardController < ApplicationController
  layout 'dashboard'
  
  def index
    # 스마트 빌딩 KPI 샘플 데이터
    @energy_consumption = {
      today: 2847.5,
      yesterday: 3120.2,
      change_percentage: -8.7,
      weekly_data: [2800, 3100, 2950, 3200, 2900, 3050, 2847.5]
    }

    @occupancy = {
      current: 142,
      capacity: 200,
      percentage: 71,
      hourly_data: [20, 35, 65, 85, 120, 142, 138, 125, 110, 95, 80, 60]
    }

    @temperature = {
      current: 22.5,
      target: 23.0,
      floors: [
        { floor: 1, temp: 22.8, status: 'optimal' },
        { floor: 2, temp: 22.3, status: 'optimal' },
        { floor: 3, temp: 23.1, status: 'high' },
        { floor: 4, temp: 21.9, status: 'low' },
        { floor: 5, temp: 22.7, status: 'optimal' }
      ]
    }

    @air_quality = {
      aqi: 35,
      status: 'good',
      co2: 420,
      humidity: 45,
      pm25: 12
    }

    @security = {
      active_cameras: 24,
      total_cameras: 26,
      access_logs: 89,
      alerts: 2
    }

    @maintenance = {
      pending_tasks: 7,
      completed_today: 12,
      next_scheduled: "HVAC System Check - Floor 3",
      equipment_status: {
        hvac: 'operational',
        elevators: 'operational', 
        lighting: 'maintenance_required',
        security: 'operational'
      }
    }

    # 차트 데이터
    @monthly_energy = [
      { month: 'Jan', consumption: 85000 },
      { month: 'Feb', consumption: 82000 },
      { month: 'Mar', consumption: 78000 },
      { month: 'Apr', consumption: 75000 },
      { month: 'May', consumption: 72000 },
      { month: 'Jun', consumption: 85000 },
      { month: 'Jul', consumption: 92000 },
      { month: 'Aug', consumption: 88000 },
      { month: 'Sep', consumption: 76000 },
      { month: 'Oct', consumption: 74000 }
    ]

    @floor_occupancy = [
      { floor: 'Floor 1', occupancy: 35 },
      { floor: 'Floor 2', occupancy: 28 },
      { floor: 'Floor 3', occupancy: 42 },
      { floor: 'Floor 4', occupancy: 21 },
      { floor: 'Floor 5', occupancy: 16 }
    ]
  end
end
