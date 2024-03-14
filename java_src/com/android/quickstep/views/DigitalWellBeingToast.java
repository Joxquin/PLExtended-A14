package com.android.quickstep.views;

import android.app.ActivityOptions;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.graphics.Outline;
import android.graphics.Paint;
import android.icu.text.MeasureFormat;
import android.icu.util.Measure;
import android.icu.util.MeasureUnit;
import android.os.UserHandle;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.SplitConfigurationOptions$SplitBounds;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.time.Duration;
import java.util.Locale;
/* loaded from: classes.dex */
public final class DigitalWellBeingToast {
    static final int MINUTE_MS = 60000;
    private static final int SPLIT_BANNER_FULLSCREEN = 0;
    private static final int SPLIT_GRID_BANNER_LARGE = 1;
    private static final int SPLIT_GRID_BANNER_SMALL = 2;
    private static final float THRESHOLD_LEFT_ICON_ONLY = 0.4f;
    private static final float THRESHOLD_RIGHT_ICON_ONLY = 0.6f;
    private final BaseDraggingActivity mActivity;
    private long mAppRemainingTimeMs;
    private long mAppUsageLimitTimeMs;
    private View mBanner;
    private float mBannerOffsetPercentage;
    private boolean mHasLimit;
    private final LauncherApps mLauncherApps;
    private ViewOutlineProvider mOldBannerOutlineProvider;
    private int mSplitBannerConfig = 0;
    private SplitConfigurationOptions$SplitBounds mSplitBounds;
    private float mSplitOffsetTranslationX;
    private float mSplitOffsetTranslationY;
    private Task mTask;
    private final TaskView mTaskView;
    static final Intent OPEN_APP_USAGE_SETTINGS_TEMPLATE = new Intent("android.settings.action.APP_USAGE_SETTINGS");
    private static final String TAG = "DigitalWellBeingToast";

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    @interface SPLIT_BANNER_CONFIG {
    }

    public DigitalWellBeingToast(BaseDraggingActivity baseDraggingActivity, TaskView taskView) {
        this.mActivity = baseDraggingActivity;
        this.mTaskView = taskView;
        this.mLauncherApps = (LauncherApps) baseDraggingActivity.getSystemService(LauncherApps.class);
    }

    private String getContentDescriptionForTask(Task task, long j4, long j5) {
        return (j4 < 0 || j5 < 0) ? task.titleDescription : this.mActivity.getString(R.string.task_contents_description_with_remaining_time, new Object[]{task.titleDescription, getText(j5, true)});
    }

    private String getReadableDuration(Duration duration, MeasureFormat.FormatWidth formatWidth, int i4, boolean z4) {
        int intExact = Math.toIntExact(duration.toHours());
        int intExact2 = Math.toIntExact(duration.minusHours(intExact).toMinutes());
        if (intExact <= 0 || intExact2 <= 0) {
            if (intExact > 0) {
                Locale locale = Locale.getDefault();
                if (!z4) {
                    formatWidth = MeasureFormat.FormatWidth.WIDE;
                }
                return MeasureFormat.getInstance(locale, formatWidth).formatMeasures(new Measure(Integer.valueOf(intExact), MeasureUnit.HOUR));
            } else if (intExact2 > 0) {
                Locale locale2 = Locale.getDefault();
                if (!z4) {
                    formatWidth = MeasureFormat.FormatWidth.WIDE;
                }
                return MeasureFormat.getInstance(locale2, formatWidth).formatMeasures(new Measure(Integer.valueOf(intExact2), MeasureUnit.MINUTE));
            } else if (duration.compareTo(Duration.ZERO) > 0) {
                return this.mActivity.getString(i4);
            } else {
                Locale locale3 = Locale.getDefault();
                if (!z4) {
                    formatWidth = MeasureFormat.FormatWidth.WIDE;
                }
                return MeasureFormat.getInstance(locale3, formatWidth).formatMeasures(new Measure(0, MeasureUnit.MINUTE));
            }
        }
        return MeasureFormat.getInstance(Locale.getDefault(), formatWidth).formatMeasures(new Measure(Integer.valueOf(intExact), MeasureUnit.HOUR), new Measure(Integer.valueOf(intExact2), MeasureUnit.MINUTE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initialize$0(long j4, long j5) {
        if (j4 < 0 || j5 < 0) {
            setNoLimit();
        } else {
            setLimit(j4, j5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initialize$1() {
        LauncherApps.AppUsageLimit appUsageLimit;
        try {
            appUsageLimit = this.mLauncherApps.getAppUsageLimit(this.mTask.getTopComponent().getPackageName(), UserHandle.of(this.mTask.key.userId));
        } catch (Exception e4) {
            Log.e(TAG, "Error initializing digital well being toast", e4);
            appUsageLimit = null;
        }
        final long totalUsageLimit = appUsageLimit != null ? appUsageLimit.getTotalUsageLimit() : -1L;
        final long usageRemaining = appUsageLimit != null ? appUsageLimit.getUsageRemaining() : -1L;
        this.mTaskView.post(new Runnable() { // from class: com.android.quickstep.views.g
            @Override // java.lang.Runnable
            public final void run() {
                DigitalWellBeingToast.this.lambda$initialize$0(totalUsageLimit, usageRemaining);
            }
        });
    }

    private void replaceBanner(View view) {
        resetOldBanner();
        setBanner(view);
    }

    private void resetOldBanner() {
        View view = this.mBanner;
        if (view != null) {
            view.setOutlineProvider(this.mOldBannerOutlineProvider);
            this.mTaskView.removeView(this.mBanner);
            this.mBanner.setOnClickListener(null);
            this.mActivity.getViewCache().recycleView(this.mBanner, R.layout.digital_wellbeing_toast);
        }
    }

    private void setBanner(View view) {
        this.mBanner = view;
        if (view == null || this.mTaskView.getRecentsView() == null) {
            return;
        }
        setupAndAddBanner();
        setBannerOutline();
    }

    private void setBannerOutline() {
        this.mOldBannerOutlineProvider = this.mBanner.getOutlineProvider() != null ? this.mBanner.getOutlineProvider() : ViewOutlineProvider.BACKGROUND;
        this.mBanner.setOutlineProvider(new ViewOutlineProvider() { // from class: com.android.quickstep.views.DigitalWellBeingToast.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                DigitalWellBeingToast.this.mOldBannerOutlineProvider.getOutline(view, outline);
                outline.offset(0, Math.round(DigitalWellBeingToast.this.mSplitOffsetTranslationY + (-view.getTranslationY())));
            }
        });
        this.mBanner.setClipToOutline(true);
    }

    private void setLimit(long j4, long j5) {
        this.mAppUsageLimitTimeMs = j4;
        this.mAppRemainingTimeMs = j5;
        this.mHasLimit = true;
        TextView textView = (TextView) this.mActivity.getViewCache().getView(R.layout.digital_wellbeing_toast, this.mActivity, this.mTaskView);
        textView.setText(Utilities.prefixTextWithIcon(this.mActivity, R.drawable.ic_hourglass_top, getText()));
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.android.quickstep.views.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DigitalWellBeingToast.this.openAppUsageSettings(view);
            }
        });
        replaceBanner(textView);
        this.mTaskView.setContentDescription(getContentDescriptionForTask(this.mTask, j4, j5));
    }

    private void setNoLimit() {
        this.mHasLimit = false;
        this.mTaskView.setContentDescription(this.mTask.titleDescription);
        replaceBanner(null);
        this.mAppUsageLimitTimeMs = -1L;
        this.mAppRemainingTimeMs = -1L;
    }

    private void setupAndAddBanner() {
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        ((FrameLayout.LayoutParams) this.mBanner.getLayoutParams()).bottomMargin = ((ViewGroup.MarginLayoutParams) this.mTaskView.getThumbnail().getLayoutParams()).bottomMargin;
        Pair dwbLayoutTranslations = this.mTaskView.getPagedOrientationHandler().getDwbLayoutTranslations(this.mTaskView.getMeasuredWidth(), this.mTaskView.getMeasuredHeight(), this.mSplitBounds, deviceProfile, this.mTaskView.getThumbnails(), this.mTask.key.id, this.mBanner);
        this.mSplitOffsetTranslationX = ((Float) dwbLayoutTranslations.first).floatValue();
        this.mSplitOffsetTranslationY = ((Float) dwbLayoutTranslations.second).floatValue();
        updateTranslationY();
        updateTranslationX();
        this.mTaskView.addView(this.mBanner);
    }

    private void updateTranslationX() {
        View view = this.mBanner;
        if (view == null) {
            return;
        }
        view.setTranslationX(this.mSplitOffsetTranslationX);
    }

    private void updateTranslationY() {
        View view = this.mBanner;
        if (view == null) {
            return;
        }
        view.setTranslationY((this.mBannerOffsetPercentage * view.getHeight()) + this.mSplitOffsetTranslationY);
    }

    public String getText() {
        return getText(this.mAppRemainingTimeMs, false);
    }

    public boolean hasLimit() {
        return this.mHasLimit;
    }

    public void initialize(Task task) {
        this.mAppRemainingTimeMs = -1L;
        this.mAppUsageLimitTimeMs = -1L;
        this.mTask = task;
        Executors.THREAD_POOL_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.views.f
            @Override // java.lang.Runnable
            public final void run() {
                DigitalWellBeingToast.this.lambda$initialize$1();
            }
        });
    }

    public void openAppUsageSettings(View view) {
        try {
            BaseActivity.fromContext(view.getContext()).startActivity(new Intent(OPEN_APP_USAGE_SETTINGS_TEMPLATE).putExtra("android.intent.extra.PACKAGE_NAME", this.mTask.getTopComponent().getPackageName()).addFlags(268468224), ActivityOptions.makeScaleUpAnimation(view, 0, 0, view.getWidth(), view.getHeight()).toBundle());
        } catch (ActivityNotFoundException e4) {
            String str = TAG;
            Log.e(str, "Failed to open app usage settings for task " + this.mTask.getTopComponent().getPackageName(), e4);
        }
    }

    public void setBannerColorTint(int i4, float f4) {
        View view = this.mBanner;
        if (view == null) {
            return;
        }
        if (f4 == 0.0f) {
            view.setLayerType(0, null);
        }
        Paint paint = new Paint();
        paint.setColorFilter(Utilities.makeColorTintingColorFilter(f4, i4));
        this.mBanner.setLayerType(2, paint);
        this.mBanner.setLayerPaint(paint);
    }

    public void setBannerVisibility(int i4) {
        View view = this.mBanner;
        if (view == null) {
            return;
        }
        view.setVisibility(i4);
    }

    public void setSplitConfiguration(SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds) {
        this.mSplitBounds = splitConfigurationOptions$SplitBounds;
        if (splitConfigurationOptions$SplitBounds == null || !this.mActivity.getDeviceProfile().isTablet || this.mTaskView.isFocusedTask()) {
            this.mSplitBannerConfig = 0;
            return;
        }
        if (!this.mActivity.getDeviceProfile().isLandscape) {
            this.mSplitBannerConfig = 1;
            return;
        }
        int i4 = this.mTask.key.id;
        SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds2 = this.mSplitBounds;
        if (i4 == splitConfigurationOptions$SplitBounds2.leftTopTaskId) {
            this.mSplitBannerConfig = splitConfigurationOptions$SplitBounds2.leftTaskPercent < 0.4f ? 2 : 1;
        } else {
            this.mSplitBannerConfig = splitConfigurationOptions$SplitBounds2.leftTaskPercent > 0.6f ? 2 : 1;
        }
    }

    public void updateBannerOffset(float f4) {
        if (this.mBanner == null || this.mBannerOffsetPercentage == f4) {
            return;
        }
        this.mBannerOffsetPercentage = f4;
        updateTranslationY();
        this.mBanner.invalidateOutline();
    }

    private String getText(long j4, boolean z4) {
        int i4;
        if (j4 > 60000) {
            j4 = (((j4 + 60000) - 1) / 60000) * 60000;
        }
        String readableDuration = getReadableDuration(Duration.ofMillis(j4), MeasureFormat.FormatWidth.NARROW, R.string.shorter_duration_less_than_one_minute, false);
        if (z4 || (i4 = this.mSplitBannerConfig) == 0) {
            return this.mActivity.getString(R.string.time_left_for_app, new Object[]{readableDuration});
        }
        return i4 == 2 ? "" : readableDuration;
    }
}
