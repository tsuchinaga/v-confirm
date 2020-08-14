module main

import infra

fn main() {
	clock := infra.new_clock()
	println(clock.now())
	// println(clock.now2()) // error: unknown method: `repository.Clock.now2`. Did you mean `now` ?
}
