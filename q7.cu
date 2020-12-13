#include<thrust/host_vector.h>
#include<thrust/device_vector.h>
#include<thrust/sort.h>
#include<thrust/copy.h>
#include<thrust/generate.h>
#include<cstdlib>

int main()
{
    thrust::host_vector<int> arr(12);
    thrust::generate(arr.begin(),arr.end(),rand);
    thrust::device_vector<int> device_array=arr;
    thrust::sort(device_array.begin(),device_array.end());
    thrust::copy(device_array.begin(),device_array.end(),arr.begin());
    for(auto it:arr)
      printf("%d ",it);
    return 0;
}