# Stage 1: Build React app
FROM node:20-alpine as build
WORKDIR /app
ENV REACT_APP_API_URL="groceries-backend/groceries"
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build

# Stage 2: Serve with Apache
FROM httpd:2.4-alpine
# Copy build output to Apache's public html directory
COPY --from=build /app/build /usr/local/apache2/htdocs/

# Expose port 80
EXPOSE 80

# Optionally, copy a custom httpd.conf if you want to tweak Apache settings
# COPY httpd.conf /usr/local/apache2/conf/httpd.conf

# Default command runs Apache in the foreground
CMD ["httpd-foreground"]
# us-central1-docker.pkg.dev/georgef-sandbox/groceries/
