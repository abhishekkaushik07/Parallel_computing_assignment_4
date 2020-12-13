#include<thrust/host_vector.h>
#include<thrust/device_vector.h>
#include<thrust/generate.h>
#include<thrust/sort.h>
#include<thrust/copy.h>
#include<cstdlib>

int main()
{
    thrust::host_vector<int> a(12);
    thrust::generate(a.begin(),a.end(),rand);
    thrust::device_vector<int> device_a=a;
    thrust::sort(device_a.begin(),device_a.end());
    thrust::copy(device_a.begin(),device_a.end(),a.begin());
    for(auto x:a)
      printf("%d ",x);
    return 0;
}