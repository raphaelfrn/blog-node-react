import request from 'supertest';
import app from '../index.js';

describe('POST /api/posts', () => {
    it('should add a new post', async () => {

        const response = await request(app)
            .post('/api/posts')
            .send({
                title: 'Test Post',
        desc: 'This is a test post.',
        img: 'test-image.jpg',
        cat: 'Test Category',
        date: '2023-12-31',
            });

        // ASSERT
        expect(response.statusCode).toBe(200);
        // Add more asserts
    });
});