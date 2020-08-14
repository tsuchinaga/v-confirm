module repository

import time

// Clock - 日時関連のインターフェース
pub interface Clock {
	now() time.Time
}
