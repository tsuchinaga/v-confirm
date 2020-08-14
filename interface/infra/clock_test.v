module infra

import time

fn test_clock_now() {
	want := time.now()
	got := Clock{}.now()
	assert !got.lt(want)
}

fn test_clock_now2() {
	want := time.now()
	got := Clock{}.now2()
	assert !got.lt(want)
}
