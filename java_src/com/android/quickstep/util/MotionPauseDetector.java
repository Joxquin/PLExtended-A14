package com.android.quickstep.util;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import com.android.launcher3.Alarm;
import com.android.launcher3.OnAlarmListener;
import com.android.launcher3.Utilities;
import com.android.launcher3.compat.AccessibilityManagerCompat;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class MotionPauseDetector {
    private static final long FORCE_PAUSE_TIMEOUT = 300;
    private static final long HARDER_TRIGGER_TIMEOUT = 400;
    private static final float RAPID_DECELERATION_FACTOR = 0.6f;
    private static final String TAG = "MotionPauseDetector";
    private static final long TEST_HARNESS_TRIGGER_TIMEOUT = 2000;
    private final Context mContext;
    private boolean mDisallowPause;
    private final Alarm mForcePauseTimeout;
    private boolean mHasEverBeenPaused;
    private boolean mIsPaused;
    private final boolean mMakePauseHarderToTrigger;
    private OnMotionPauseListener mOnMotionPauseListener;
    private Float mPreviousVelocity;
    private long mSlowStartTime;
    private final float mSpeedFast;
    private final float mSpeedSlow;
    private final float mSpeedSomewhatFast;
    private final float mSpeedVerySlow;
    private final SystemVelocityProvider mVelocityProvider;

    /* loaded from: classes.dex */
    public interface OnMotionPauseListener {
        default void onMotionPauseChanged(boolean z4) {
        }

        void onMotionPauseDetected();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class SystemVelocityProvider {
        private final int mAxis;
        private final VelocityTracker mVelocityTracker = VelocityTracker.obtain();

        public SystemVelocityProvider(int i4) {
            this.mAxis = i4;
        }

        public float addMotionEvent(MotionEvent motionEvent, int i4) {
            this.mVelocityTracker.addMovement(motionEvent);
            this.mVelocityTracker.computeCurrentVelocity(1);
            return this.mAxis == 0 ? this.mVelocityTracker.getXVelocity(i4) : this.mVelocityTracker.getYVelocity(i4);
        }

        public void clear() {
            this.mVelocityTracker.clear();
        }
    }

    public MotionPauseDetector(Context context) {
        this(context, false);
    }

    private void checkMotionPaused(float f4, float f5, long j4) {
        String str;
        String str2;
        float abs = Math.abs(f4);
        float abs2 = Math.abs(f5);
        boolean z4 = false;
        if (!this.mIsPaused) {
            if ((f4 < 0.0f) != (f5 < 0.0f)) {
                str2 = "Velocity changed directions";
            } else {
                float f6 = this.mSpeedVerySlow;
                boolean z5 = abs < f6 && abs2 < f6;
                if (z5 || this.mHasEverBeenPaused) {
                    str = "Pause requires back to back slow speeds";
                } else {
                    z5 = ((abs > (abs2 * 0.6f) ? 1 : (abs == (abs2 * 0.6f) ? 0 : -1)) < 0) && abs < this.mSpeedSomewhatFast;
                    str = "Didn't have back to back slow speeds, checking for rapid deceleration on first pause only";
                }
                if (!this.mMakePauseHarderToTrigger) {
                    z4 = z5;
                    str2 = str;
                } else if (abs < this.mSpeedSlow) {
                    if (this.mSlowStartTime == 0) {
                        this.mSlowStartTime = j4;
                    }
                    r3 = j4 - this.mSlowStartTime >= HARDER_TRIGGER_TIMEOUT;
                    str2 = "Maintained slow speed for sufficient duration when making pause harder to trigger";
                } else {
                    this.mSlowStartTime = 0L;
                    str2 = "Intentionally making pause harder to trigger";
                }
            }
            updatePaused(z4, str2);
        }
        float f7 = this.mSpeedFast;
        if (abs >= f7 && abs2 >= f7) {
            r3 = false;
        }
        str2 = "Was paused, but started moving at a fast speed";
        z4 = r3;
        updatePaused(z4, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Alarm alarm) {
        updatePaused(true, "Force pause timeout after " + alarm.getLastSetTimeout() + "ms");
    }

    private void updatePaused(boolean z4, String str) {
        boolean z5 = false;
        if (this.mDisallowPause) {
            str = "Disallow pause; otherwise, would have been " + z4 + " due to " + str;
            z4 = false;
        }
        if (this.mIsPaused != z4) {
            this.mIsPaused = z4;
            String str2 = "onMotionPauseChanged, paused=" + this.mIsPaused + " reason=" + str;
            if (Utilities.isRunningInTestHarness()) {
                Log.d(TAG, str2);
            }
            ActiveGestureLog.INSTANCE.addLog(str2);
            if (!this.mHasEverBeenPaused && this.mIsPaused) {
                z5 = true;
            }
            if (this.mIsPaused) {
                AccessibilityManagerCompat.sendPauseDetectedEventToTest(this.mContext);
                this.mHasEverBeenPaused = true;
            }
            OnMotionPauseListener onMotionPauseListener = this.mOnMotionPauseListener;
            if (onMotionPauseListener != null) {
                if (z5) {
                    onMotionPauseListener.onMotionPauseDetected();
                }
                OnMotionPauseListener onMotionPauseListener2 = this.mOnMotionPauseListener;
                if (onMotionPauseListener2 != null) {
                    onMotionPauseListener2.onMotionPauseChanged(this.mIsPaused);
                }
            }
        }
    }

    public void addPosition(MotionEvent motionEvent) {
        addPosition(motionEvent, 0);
    }

    public void clear() {
        this.mVelocityProvider.clear();
        this.mPreviousVelocity = null;
        setOnMotionPauseListener(null);
        this.mHasEverBeenPaused = false;
        this.mIsPaused = false;
        this.mSlowStartTime = 0L;
        this.mForcePauseTimeout.cancelAlarm();
    }

    public boolean isPaused() {
        return this.mIsPaused;
    }

    public void setDisallowPause(boolean z4) {
        this.mDisallowPause = z4;
        boolean z5 = this.mIsPaused;
        updatePaused(z5, "Set disallowPause=" + z4);
    }

    public void setOnMotionPauseListener(OnMotionPauseListener onMotionPauseListener) {
        this.mOnMotionPauseListener = onMotionPauseListener;
    }

    public MotionPauseDetector(Context context, boolean z4) {
        this(context, z4, 1);
    }

    public void addPosition(MotionEvent motionEvent, int i4) {
        long j4;
        if (Utilities.isRunningInTestHarness()) {
            j4 = TEST_HARNESS_TRIGGER_TIMEOUT;
        } else {
            j4 = this.mMakePauseHarderToTrigger ? HARDER_TRIGGER_TIMEOUT : 300L;
        }
        this.mForcePauseTimeout.setAlarm(j4);
        float addMotionEvent = this.mVelocityProvider.addMotionEvent(motionEvent, motionEvent.getPointerId(i4));
        Float f4 = this.mPreviousVelocity;
        if (f4 != null) {
            checkMotionPaused(addMotionEvent, f4.floatValue(), motionEvent.getEventTime());
        }
        this.mPreviousVelocity = Float.valueOf(addMotionEvent);
    }

    public MotionPauseDetector(Context context, boolean z4, int i4) {
        this.mPreviousVelocity = null;
        this.mContext = context;
        Resources resources = context.getResources();
        this.mSpeedVerySlow = resources.getDimension(R.dimen.motion_pause_detector_speed_very_slow);
        this.mSpeedSlow = resources.getDimension(R.dimen.motion_pause_detector_speed_slow);
        this.mSpeedSomewhatFast = resources.getDimension(R.dimen.motion_pause_detector_speed_somewhat_fast);
        this.mSpeedFast = resources.getDimension(R.dimen.motion_pause_detector_speed_fast);
        Alarm alarm = new Alarm();
        this.mForcePauseTimeout = alarm;
        alarm.setOnAlarmListener(new OnAlarmListener() { // from class: com.android.quickstep.util.C
            @Override // com.android.launcher3.OnAlarmListener
            public final void onAlarm(Alarm alarm2) {
                MotionPauseDetector.this.lambda$new$0(alarm2);
            }
        });
        this.mMakePauseHarderToTrigger = z4;
        this.mVelocityProvider = new SystemVelocityProvider(i4);
    }
}
