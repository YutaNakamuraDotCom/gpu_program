#include <stdio.h>

__global__ void helloFromeGPU(){
    printf("Hello World from GPU! %d\n",threadIdx.x);
}

int main(int argc, char **argv){
    printf("Hello World from CPU!\n");
    helloFromeGPU<<<1,100>>>();
    cudaDeviceReset();
    //cudaDeviceSynchronize();
    return 0;
}
