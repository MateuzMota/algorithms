/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */

// o resultado esperado é que a soma de dois números presentes no array seja igual ao valor de "target"
// formula: currentPosition + x = target
// x = target - currentPosition

var twoSum = function(nums, target) {
  for(let current = 0; current < nums.length; current++) {
      for(let counter = current + 1; counter < nums.length; counter++) {
          if(nums[counter] === target - nums[current]) return [current, counter]
      }
  }
};

// Testcase
console.log(twoSum([2, 7, 11, 15], 9)) // output: [ 0, 1 ]
console.log(twoSum([3, 2, 4], 6)) // output: [ 1, 2 ]
console.log(twoSum([3, 3], 6)) // output: [ 0, 1 ]

