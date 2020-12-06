package mach;

kern_return_t :: c.int;

mach_timebase_info_type :: struct {
  numer: u32,
	denom: u32,
};

foreign {
  mach_timebase_info :: proc(info: ^mach_timebase_info_type) -> kern_return_t ---;
  mach_absolute_time :: proc() -> u64 ---;
}

ns_to_s :: proc(nanosecond: u64) -> u64 {
  return nanosecond / 1000000000;
}

ns_to_ms :: proc(nanosecond: u64) -> u64 {
  return nanosecond / 1000000;
}

ns_to_mc :: proc(nanosecond: u64) -> u64 {
  return nanosecond / 1000;
} 
