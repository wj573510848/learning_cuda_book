# include <stdio.h>

__global__ void hello_from_gpu()
{   
    const int bid = blockIdx.x;
    const int tid = threadIdx.x;
    printf("Hello World from block %d and thread %d!\n",bid,tid);
}

int main(void)
{
    hello_from_gpu<<<2,4>>>(); // <<<>>>里面指代 线程块数,每个线程块中的线程数
    cudaDeviceSynchronize();
    return 0;
}