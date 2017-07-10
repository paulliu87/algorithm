import java.util.*

//give an array int[] nums, and the pivote pointe int k, and return an array
//params input: int[] array, int k

class solution {
	public void rotate(int[] nums, int k) {
		if (nums.length == 0) {
			return;
		}

		k = k % nums.length;
		swap(nums, 0, nums.length - k - 1);
		swap(nums, nums.length - k, nums.length - 1);
		swap(nums, 0, nums.length - 1);
	}

	private void swap(int[] nums, int start, int end) {
		while (start < end) {
			int temp = nums[start];
			nums[start] = nums[end];
			nums[end] = temp;
			start++; end--;
		}

		/*
			nums[start] = nums[end];
			nums[end] = nums[start];
			nums[start] = nums[end];

			this will cause runout time error if the nums is large enough
		*/
	}

	public static void main(String[] args) {
        int[] test = new int[]{1,2};
        for (int i = 0; i < test.length; i++) {
            System.out.print(test[i]);
        }
        rotateArray(test, 1);
        for (int i = 0; i < test.length; i++) {
            System.out.print(test[i]);
        }
    }
}