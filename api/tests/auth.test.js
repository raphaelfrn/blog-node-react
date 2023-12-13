import request from 'supertest';
import app from '../index.js';
import { db } from '../db.js';
import bcrypt from 'bcrypt';

// Mock user data for testing
const mockUserData = {
  username: 'testuser',
  email: 'testuser@example.com',
  password: 'testpassword',
};

// REGISTER
describe('POST /api/register', () => {
  it('should register a new user', async () => {
    // Clean up: Delete the user if it already exists
    await deleteUserIfExists(mockUserData.username, mockUserData.email);

    // Send a request to register the user
    const response = await request(app)
      .post('/api/register')
      .send(mockUserData);

    // ASSERTS
    expect(response.statusCode).toBe(200);
    expect(response.body).toBe('User has been created.');
  });

  afterAll(async () => {
    // Clean up: Delete the registered user
    await deleteUserIfExists(mockUserData.username, mockUserData.email);
  });
});

// LOGIN
describe('POST /api/login', () => {
  beforeAll(async () => {
    // Register a user before running the login test
    await request(app).post('/api/register').send(mockUserData);
  });

  it('should log in an existing user', async () => {
    const response = await request(app)
      .post('/api/login')
      .send({
        username: mockUserData.username,
        password: mockUserData.password,
      });

    // ASSERTS
    expect(response.statusCode).toBe(200);
    expect(response.body).toHaveProperty('id');
    expect(response.body).toHaveProperty('username', mockUserData.username);

    // Clean up: Log out the user
    await request(app).post('/api/logout');
  });

  afterAll(async () => {
    // Clean up: Delete the registered user
    await deleteUserIfExists(mockUserData.username, mockUserData.email);
  });
});

// LOGOUT
describe('POST /api/logout', () => {
  beforeAll(async () => {
    // Register a user before running the logout test
    await request(app).post('/api/register').send(mockUserData);
    // Log in the user
    await request(app).post('/api/login').send({
      username: mockUserData.username,
      password: mockUserData.password,
    });
  });

  it('should log out the currently logged-in user', async () => {
    const response = await request(app).post('/api/logout');

    // ASSERTS
    expect(response.statusCode).toBe(200);
    expect(response.body).toBe('User has been logged out.');
  });

  afterAll(async () => {
    // Clean up: Delete the registered user
    await deleteUserIfExists(mockUserData.username, mockUserData.email);
  });
});

// Helper function to delete a user if it exists
async function deleteUserIfExists(username, email) {
  const deleteQuery = 'DELETE FROM users WHERE username = ? OR email = ?';
  await db.query(deleteQuery, [username, email]);
}
