# include <stdio.h>

__global__ void hello_from_gpu()
{
    printf("Hello World from the GPU!\n");
}

int main(void)
{
    hello_from_gpu<<<2,4>>>(); // <<<>>>里面指代 线程块数,每个线程块中的线程数
    cudaDeviceSynchronize();
    return 0;
}