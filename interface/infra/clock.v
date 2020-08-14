module infra

import repository
import time

// new_clock - 新しいClockの生成
pub fn new_clock() &repository.Clock {
	return &Clock{}
}

// Clock - 日時関連
struct Clock {
}

// now - 現在日時
fn (c &Clock) now() time.Time {
	return time.now()
}

fn (c &Clock) now2() time.Time {
	return time.now()
}
