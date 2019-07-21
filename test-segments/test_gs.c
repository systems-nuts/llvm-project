
#include <assert.h>
#include <stdio.h>

#include <asm/prctl.h>
#include <sys/prctl.h>

unsigned long *gs_base = 0;
// TODO do type casting based on the actual type
#define ADJUST_GS_BASE(addr) ({ \
    long offset = (unsigned long)addr - (unsigned long)gs_base; \
    assert((offset>=0)); \
    offset; \
})

int aaa =32;
int bbb =33;

//defined by the compiler/linker
extern unsigned long __data_start;
extern unsigned long _end;

int main (int argc, char* argv [] ) {
  int ret = 0;
  /* move global variables, create a copy for now
   * __data_start and data_start define the start of the data section, but they
   * are not necessary page aligned
   * _end marks the end of the data section, again it is not page aligned
   */
#define PAGE_SIZE 4096
  unsigned long data_section_start = (unsigned long)&__data_start & ~(PAGE_SIZE -1);
  unsigned long data_section_end = ((unsigned long)&_end & ~(PAGE_SIZE -1)) + PAGE_SIZE;
  unsigned long data_section_size = data_section_end - data_section_start;
  unsigned long krn_gs_base =-1, orig_gs_base =-1;
  gs_base= (unsigned long*) data_section_start;    
  // todo we need an heap allocator gs based
    
  printf(" 0x%lx 0x%lx 0x%lx\n",
         (unsigned long)&__data_start, (unsigned long)&_end, (unsigned long)gs_base);
  
  printf("aaa: 0x%lx bbb 0x%lx\n", 
         (unsigned long) ADJUST_GS_BASE(&aaa), (unsigned long) ADJUST_GS_BASE(&bbb));

  ret = arch_prctl(ARCH_GET_GS, &orig_gs_base);
  if (ret == -1) {
      perror("arch_prctl failed GET orig_gs_base");
      return -1;
  } 
  ret = arch_prctl(ARCH_SET_GS, gs_base);
  if (ret == -1) {
      perror("arch_prctl failed SET gs_base");
      return -1;
  }
  ret = arch_prctl(ARCH_GET_GS, &krn_gs_base);
  if (ret == -1) {
      perror("arch_prctl failed GET krn_gs_base");
      return -1;
  }
  printf("gs_base: 0x%lx krn_gs_base: 0x%lx orig_gs_base: 0x%lx\n", (unsigned long)gs_base, krn_gs_base, orig_gs_base);
 
  krn_gs_base=-1;
  __asm__ volatile ("movq $4096, %%r8\n"
		    "lea %%gs:(%%r8), %%r9\n"
                    "movq %%r9, %0\n"
		    : "=r" (krn_gs_base) : : "%r8", "%r9");

  unsigned long aaa_offset = ADJUST_GS_BASE(&aaa);
  unsigned long value =-1;
  __asm__ volatile ("movq %1, %%r8\n"
                    "movq %%gs:(%%r8), %%r9\n"
                    "movq %%r9, %0\n"
                    : "=r" (value) : "r" (aaa_offset) : "%r8", "%r9");

/*  __asm__ volatile ("push %%gs\n"
		    "pop %%r9\n" : : : "%r9");
*/
  ret = arch_prctl(ARCH_SET_GS, orig_gs_base);
  if (ret == -1) {
      perror("arch_prctl failed SET orig_gs_base");
      return -1;
  }
 
printf("asm krn_gs_base: 0x%lx aaa_value: %d\n", krn_gs_base, (int)value);

  //here code is not gs based anymore
  printf("ret: 0x%x (%d) aaa: %d bbb: %d\n", ret, ret, aaa, bbb);
  return 0;
}
