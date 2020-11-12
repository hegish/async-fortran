! contact: Jan Hegewald <jan.hegewald@awi.de> Alfred Wegener Institute
module main_module
contains

  ! this procedure will be calles asynchronously from our thread
  subroutine thread_worker(index)
    integer, intent(in) :: index
    ! EO args
    integer i

    ! do the work you want to offload to a thread here
    ! make sure not to modify the data you use here from another thread
    do i=1,10
      print *,"worker thread",index,"running..." 
      call sleep(2)   
    end do
  end subroutine

end module


program main_program
  use async_threads_module
  use main_module
  implicit none
  
  type(thread_type) thread
  integer i

  call thread%initialize(thread_worker, 1)

  call thread%run() ! kick off the thread
  
  do i=1,10
    print *,"main thread running..." 
    call sleep(1)   
  end do
  
  print *,"main thread waiting for worker thread to join..." 
  call thread%join() ! each call to run() must have a matching call to join()
end program
