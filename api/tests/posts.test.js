import request from 'supertest';
import app from '../index.js';

// Mock data for testing
const mockPostData = {
  title: 'Test Post',
  desc: 'This is a test post.',
  img: 'test-image.jpg',
  cat: 'Test Category',
  date: '2023-12-31',
};

// CREATE
describe('POST /api/posts', () => {
  it('should add a new post', async () => {
    const response = await request(app)
      .post('/api/posts')
      .send(mockPostData);

    // ASSERTS
    expect(response.statusCode).toBe(200);
    // Verify that the response body contains a success message or specific data
    expect(response.body).toHaveProperty('message', 'Post has been created.');
    // Verify response body includes the ID of the created post
    const createdPostId = response.body.postId;
    expect(createdPostId).toBeDefined();

    // Verify that we get the created post by ID and verify its details
    const getPostResponse = await request(app).get(`/api/posts/${createdPostId}`);
    expect(getPostResponse.statusCode).toBe(200);
    expect(getPostResponse.body.title).toBe(mockPostData.title);
    expect(getPostResponse.body.desc).toBe(mockPostData.desc);

    // Clean up: Delete the created post to reset the database state
    const deleteResponse = await request(app).delete(`/api/posts/${createdPostId}`);
    expect(deleteResponse.statusCode).toBe(200);
    expect(deleteResponse.body).toHaveProperty('message', 'Post has been deleted.');
  });
});


// READ ALL
describe('GET /api/posts', () => {
  let createdPostId;

  beforeAll(async () => {
    // Create a new post before running the get all test
    const createResponse = await request(app)
      .post('/api/posts')
      .send(mockPostData);
    createdPostId = createResponse.body.postId;
  });

  it('should get all posts', async () => {
    const response = await request(app).get('/api/posts');

    // ASSERT
    expect(response.statusCode).toBe(200);
    expect(response.body).toBeInstanceOf(Array);

    // Check if the created post is included in the list
    const createdPostExists = response.body.some(post => post.id === createdPostId);
    expect(createdPostExists).toBe(true);
  });

  afterAll(async () => {
    // Clean up: Delete the created post to reset the database state
    const deleteResponse = await request(app).delete(`/api/posts/${createdPostId}`);
    expect(deleteResponse.statusCode).toBe(200);
    expect(deleteResponse.body).toHaveProperty('message', 'Post has been deleted.');
  });
});

// READ 
describe('GET /api/posts/:id', () => {
  let createdPostId;

  beforeAll(async () => {
    // Create a new post before running the get by ID test
    const createResponse = await request(app)
      .post('/api/posts')
      .send(mockPostData);
    createdPostId = createResponse.body.postId;
  });

  it('should get a specific post by ID', async () => {
    const response = await request(app).get(`/api/posts/${createdPostId}`);

    // ASSERT
    expect(response.statusCode).toBe(200);
    expect(response.body).toHaveProperty('id', createdPostId);
    
  });

  afterAll(async () => {
    // Clean up: Delete the created post to reset the database state
    const deleteResponse = await request(app).delete(`/api/posts/${createdPostId}`);
    expect(deleteResponse.statusCode).toBe(200);
    expect(deleteResponse.body).toHaveProperty('message', 'Post has been deleted.');
  });
});

// UPDATE
describe('PUT /api/posts/:id', () => {
  it('should update a specific post by ID', async () => {
    // Assuming there's a post ID in your database (replace 1 with an actual post ID)
    const postId = 1;

    // Mock data for updating the post
    const updatedPostData = {
      title: 'Updated Post Title',
      desc: 'Updated Post Description',
      img: 'updated-image.jpg',
      cat: 'Updated Category',
      date: '2023-12-31',
    };

    // Send a request to update the post
    const updateResponse = await request(app)
      .put(`/api/posts/${postId}`)
      .send(updatedPostData);

    // ASSERT
    expect(updateResponse.statusCode).toBe(200);

    // Verify that the post has been updated
    const getResponse = await request(app).get(`/api/posts/${postId}`);
    expect(getResponse.statusCode).toBe(200);

    // Verify that the properties of the updated post match the expected values
    const updatedPost = getResponse.body;
    expect(updatedPost).toHaveProperty('title', updatedPostData.title);
    expect(updatedPost).toHaveProperty('desc', updatedPostData.desc);
  });
});


// DELETE
describe('DELETE /api/posts/:id', () => {
  let createdPostId;

  beforeAll(async () => {
    // Create a new post before running the delete test
    const createResponse = await request(app)
      .post('/api/posts')
      .send(mockPostData);
    createdPostId = createResponse.body.postId;
  });

  it('should delete an existing post', async () => {
    const response = await request(app).delete(`/api/posts/${createdPostId}`);

    // ASSERT
    expect(response.statusCode).toBe(200);
    expect(response.body).toHaveProperty('message', 'Post has been deleted.');

    // Verify that the post is no longer present in the database
    const getResponse = await request(app).get(`/api/posts/${createdPostId}`);
    expect(getResponse.statusCode).toBe(404);
    expect(getResponse.body).toHaveProperty('message', 'Post not found.');
  });

  afterAll(async () => {
    // Clean up: Delete the created post to reset the database state
    const deleteResponse = await request(app).delete(`/api/posts/${createdPostId}`);
    expect(deleteResponse.statusCode).toBe(200);
    expect(deleteResponse.body).toHaveProperty('message', 'Post has been deleted.');
  });
});
