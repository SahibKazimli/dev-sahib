#!/bin/bash

echo "Setting up secure Redis configuration..."

# Generate a strong password
PASSWORD=$(openssl rand -base64 32 | tr -d "=+/" | cut -c1-25)

# Create redis.conf from template
cp redis.conf.template redis.conf
sed -i "s/YOUR_STRONG_PASSWORD_HERE/$PASSWORD/g" redis.conf

# Create .env file in root directory
cat > ../../.env << EOF
# Redis Configuration
REDIS_PASSWORD=$PASSWORD
REDIS_HOST=127.0.0.1
REDIS_PORT=6379

# API Configuration
API_KEY=your_api_key_here
EOF

echo "Redis configuration created!"
echo "Password: $PASSWORD"
echo "Redis will only accept connections from localhost"
echo "Update your application code to use this password"
echo ".env file created in project root" 