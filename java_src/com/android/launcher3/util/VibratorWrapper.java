package com.android.launcher3.util;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioAttributes;
import android.os.SystemClock;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.provider.Settings;
import com.android.launcher3.Utilities;
import java.util.Objects;
/* loaded from: classes.dex */
public final class VibratorWrapper {
    public static final VibrationEffect EFFECT_CLICK;
    public static final VibrationEffect OVERVIEW_HAPTIC;
    private final VibrationEffect mAssistEffect;
    private final VibrationEffect mBumpEffect;
    private final VibrationEffect mCommitEffect;
    private final VibrationEffect mDragEffect;
    private final boolean mHasVibrator;
    private boolean mIsHapticFeedbackEnabled;
    private long mLastDragTime;
    private final int mThresholdUntilNextDragCallMillis;
    private final Vibrator mVibrator;
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new K());
    public static final AudioAttributes VIBRATION_ATTRS = new AudioAttributes.Builder().setUsage(13).setContentType(4).build();

    static {
        VibrationEffect createPredefined = VibrationEffect.createPredefined(0);
        EFFECT_CLICK = createPredefined;
        OVERVIEW_HAPTIC = createPredefined;
    }

    private VibratorWrapper(Context context) {
        Vibrator vibrator = (Vibrator) context.getSystemService(Vibrator.class);
        this.mVibrator = vibrator;
        boolean hasVibrator = vibrator.hasVibrator();
        this.mHasVibrator = hasVibrator;
        if (hasVibrator) {
            final ContentResolver contentResolver = context.getContentResolver();
            this.mIsHapticFeedbackEnabled = Settings.System.getInt(contentResolver, "haptic_feedback_enabled", 0) == 1;
            contentResolver.registerContentObserver(Settings.System.getUriFor("haptic_feedback_enabled"), false, new ContentObserver(Executors.MAIN_EXECUTOR.getHandler()) { // from class: com.android.launcher3.util.VibratorWrapper.1
                @Override // android.database.ContentObserver
                public final void onChange(boolean z4) {
                    VibratorWrapper vibratorWrapper = VibratorWrapper.this;
                    vibratorWrapper.mIsHapticFeedbackEnabled = VibratorWrapper.e(vibratorWrapper, contentResolver);
                }
            });
        } else {
            this.mIsHapticFeedbackEnabled = false;
        }
        if (Utilities.ATLEAST_S && vibrator.areAllPrimitivesSupported(8)) {
            VibrationEffect.Composition startComposition = VibrationEffect.startComposition();
            for (int i4 = 0; i4 < 200; i4++) {
                startComposition.addPrimitive(8, 0.03f);
            }
            this.mDragEffect = startComposition.compose();
            this.mCommitEffect = VibrationEffect.startComposition().addPrimitive(7, 0.5f).compose();
            this.mBumpEffect = VibrationEffect.startComposition().addPrimitive(8, 0.4f).compose();
            this.mThresholdUntilNextDragCallMillis = (this.mVibrator.getPrimitiveDurations(8)[0] * 200) + 100;
        } else {
            this.mDragEffect = null;
            this.mCommitEffect = null;
            this.mBumpEffect = null;
            this.mThresholdUntilNextDragCallMillis = 0;
        }
        if (Utilities.ATLEAST_R && this.mVibrator.areAllPrimitivesSupported(4, 7)) {
            this.mAssistEffect = VibrationEffect.startComposition().addPrimitive(4, 0.25f).addPrimitive(7, 1.0f, 50).compose();
        } else {
            this.mAssistEffect = VibrationEffect.createPredefined(5);
        }
    }

    public static /* synthetic */ void a(VibratorWrapper vibratorWrapper, int i4, float f4, VibrationEffect vibrationEffect) {
        vibratorWrapper.getClass();
        boolean z4 = Utilities.ATLEAST_R;
        AudioAttributes audioAttributes = VIBRATION_ATTRS;
        Vibrator vibrator = vibratorWrapper.mVibrator;
        if (z4 && i4 >= 0 && vibrator.areAllPrimitivesSupported(i4)) {
            vibrator.vibrate(VibrationEffect.startComposition().addPrimitive(i4, f4).compose(), audioAttributes);
        } else {
            vibrator.vibrate(vibrationEffect, audioAttributes);
        }
    }

    public static /* synthetic */ VibratorWrapper c(Context context) {
        return new VibratorWrapper(context);
    }

    public static boolean e(VibratorWrapper vibratorWrapper, ContentResolver contentResolver) {
        vibratorWrapper.getClass();
        return Settings.System.getInt(contentResolver, "haptic_feedback_enabled", 0) == 1;
    }

    public final void cancelVibrate() {
        LooperExecutor looperExecutor = Executors.UI_HELPER_EXECUTOR;
        final Vibrator vibrator = this.mVibrator;
        Objects.requireNonNull(vibrator);
        looperExecutor.execute(new Runnable() { // from class: com.android.launcher3.util.L
            @Override // java.lang.Runnable
            public final void run() {
                vibrator.cancel();
            }
        });
        this.mLastDragTime = 0L;
    }

    public final void vibrate(final VibrationEffect vibrationEffect) {
        if (this.mHasVibrator && this.mIsHapticFeedbackEnabled) {
            Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: com.android.launcher3.util.I
                @Override // java.lang.Runnable
                public final void run() {
                    VibratorWrapper.this.mVibrator.vibrate(vibrationEffect, VibratorWrapper.VIBRATION_ATTRS);
                }
            });
        }
    }

    public final void vibrateForAssist() {
        VibrationEffect vibrationEffect = this.mAssistEffect;
        if (vibrationEffect != null) {
            vibrate(vibrationEffect);
        }
    }

    public final void vibrateForDragBump() {
        VibrationEffect vibrationEffect = this.mBumpEffect;
        if (vibrationEffect != null) {
            vibrate(vibrationEffect);
        }
    }

    public final void vibrateForDragCommit() {
        VibrationEffect vibrationEffect = this.mCommitEffect;
        if (vibrationEffect != null) {
            vibrate(vibrationEffect);
        }
        this.mLastDragTime = 0L;
    }

    public final void vibrateForDragTexture() {
        VibrationEffect vibrationEffect = this.mDragEffect;
        if (vibrationEffect == null) {
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime - this.mLastDragTime >= this.mThresholdUntilNextDragCallMillis) {
            vibrate(vibrationEffect);
            this.mLastDragTime = elapsedRealtime;
        }
    }

    public final void vibrate(final int i4, final float f4, final VibrationEffect vibrationEffect) {
        if (this.mHasVibrator && this.mIsHapticFeedbackEnabled) {
            Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: com.android.launcher3.util.J
                @Override // java.lang.Runnable
                public final void run() {
                    VibratorWrapper.a(VibratorWrapper.this, i4, f4, vibrationEffect);
                }
            });
        }
    }
}
