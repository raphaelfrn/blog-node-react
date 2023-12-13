const {sum} = require ('../sum.js');

describe('sum.js', () => {
    it('adds 1 + 2 to equal 3', () => {
       // ARRANGE
       const a = 1;
       const b = 2;

       // ACT 
       const result = sum(a,b);

       //ASSERT
        expect(result).toBe(3);
      });
});





