import jwt
import time
import requests

# Your GitHub App ID
app_id = 'YOUR_APP_ID'

# Path to your GitHub App private key file
private_key_path = 'path/to/your/private-key.pem'

# Read the private key
with open(private_key_path, 'r') as file:
    private_key = file.read()

# Create JWT (JSON Web Token)
now = int(time.time())
payload = {
    'iat': now,           # Issued at time
    'exp': now + (10 * 60),  # Expiration time (10 minutes)
    'iss': app_id         # Issuer
}
jwt_token = jwt.encode(payload, private_key, algorithm='RS256')

# Set up headers with the JWT
headers = {
    'Authorization': f'Bearer {jwt_token}',
    'Accept': 'application/vnd.github.v3+json'
}

# GitHub API URL to get the app information
api_url = 'https://api.github.com/app'

# Make the API request
response = requests.get(api_url, headers=headers)

# Print the response
print(response.json())

