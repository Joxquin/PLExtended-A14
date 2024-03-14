package com.android.quickstep.interaction;

import android.animation.Animator;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import com.airbnb.lottie.LottieAnimationView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.taskbar.TaskbarManager;
import com.android.launcher3.util.Executors;
import com.android.quickstep.GestureState;
import com.android.quickstep.OverviewComponentObserver;
import com.android.quickstep.TouchInteractionService;
import com.android.quickstep.util.LottieAnimationColorUtils;
import com.android.quickstep.util.TISBindHelper;
import com.android.systemui.shared.R;
import java.net.URISyntaxException;
import java.util.Map;
import java.util.Objects;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class AllSetActivity extends Activity {
    private static final float ANIMATION_PAUSE_ALPHA_THRESHOLD = 0.1f;
    private static final String EXTRA_ACCENT_COLOR_DARK_MODE = "suwColorAccentDark";
    private static final String EXTRA_ACCENT_COLOR_LIGHT_MODE = "suwColorAccentLight";
    private static final String EXTRA_DEVICE_NAME = "suwDeviceName";
    private static final float HINT_BOTTOM_FACTOR = 0.060000002f;
    private static final String LOG_TAG = "AllSetActivity";
    private static final String LOTTIE_PRIMARY_COLOR_TOKEN = ".primary";
    private static final String LOTTIE_TERTIARY_COLOR_TOKEN = ".tertiary";
    private static final int MAX_SWIPE_DURATION = 350;
    private static final String URI_SYSTEM_NAVIGATION_SETTING = "#Intent;action=com.android.settings.SEARCH_RESULT_TRAMPOLINE;S.:settings:fragment_args_key=gesture_system_navigation_input_summary;S.:settings:show_fragment=com.android.settings.gestures.SystemNavigationGestureSettings;end";
    private LottieAnimationView mAnimatedBackground;
    private BgDrawable mBackground;
    private Animator.AnimatorListener mBackgroundAnimatorListener;
    private View mRootView;
    private float mSwipeUpShift;
    private TISBindHelper mTISBindHelper;
    private Vibrator mVibrator;
    private final AnimatedFloat mSwipeProgress = new AnimatedFloat(new b(1, this));
    private AnimatorPlaybackController mLauncherStartAnim = null;

    /* renamed from: com.android.quickstep.interaction.AllSetActivity$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Animator.AnimatorListener {
        final /* synthetic */ VibrationEffect val$vibrationEffect;

        public AnonymousClass1(VibrationEffect vibrationEffect) {
            AllSetActivity.this = r1;
            this.val$vibrationEffect = vibrationEffect;
        }

        public /* synthetic */ void lambda$onAnimationRepeat$1(VibrationEffect vibrationEffect) {
            AllSetActivity.this.mVibrator.vibrate(vibrationEffect);
        }

        public /* synthetic */ void lambda$onAnimationStart$0(VibrationEffect vibrationEffect) {
            AllSetActivity.this.mVibrator.vibrate(vibrationEffect);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            AllSetActivity allSetActivity = AllSetActivity.this;
            Vibrator vibrator = allSetActivity.mVibrator;
            Objects.requireNonNull(vibrator);
            allSetActivity.runOnUiHelperThread(new f(vibrator, 1));
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            AllSetActivity allSetActivity = AllSetActivity.this;
            Vibrator vibrator = allSetActivity.mVibrator;
            Objects.requireNonNull(vibrator);
            allSetActivity.runOnUiHelperThread(new f(vibrator, 0));
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            AllSetActivity.this.runOnUiHelperThread(new e(this, this.val$vibrationEffect, 0));
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            AllSetActivity.this.runOnUiHelperThread(new e(this, this.val$vibrationEffect, 1));
        }
    }

    /* loaded from: classes.dex */
    public class BgDrawable extends Drawable {
        private static final float END_SIZE_FACTOR = 2.0f;
        private static final float GRADIENT_END_PROGRESS = 0.5f;
        private static final float START_SIZE_FACTOR = 0.5f;
        private final int mColor;
        private final ColorMatrixColorFilter mColorFilter;
        private final ColorMatrix mColorMatrix;
        private final RadialGradient mMaskGrad;
        private final Matrix mMatrix;
        private final Paint mPaint;
        private float mProgress;

        public BgDrawable(Context context) {
            Paint paint = new Paint();
            this.mPaint = paint;
            this.mMatrix = new Matrix();
            ColorMatrix colorMatrix = new ColorMatrix();
            this.mColorMatrix = colorMatrix;
            ColorMatrixColorFilter colorMatrixColorFilter = new ColorMatrixColorFilter(colorMatrix);
            this.mColorFilter = colorMatrixColorFilter;
            this.mProgress = 0.0f;
            int color = context.getColor(R.color.all_set_page_background);
            this.mColor = color;
            RadialGradient radialGradient = new RadialGradient(0.0f, 0.0f, 1.0f, new int[]{E.a.k(color, 0), color}, new float[]{0.0f, 1.0f}, Shader.TileMode.CLAMP);
            this.mMaskGrad = radialGradient;
            paint.setShader(radialGradient);
            paint.setColorFilter(colorMatrixColorFilter);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            float f4 = this.mProgress;
            if (f4 <= 0.0f) {
                canvas.drawColor(this.mColor);
                return;
            }
            Interpolator interpolator = y0.e.f12949m;
            float mapBoundToRange = Utilities.mapBoundToRange(f4, 0.0f, 0.5f, 0.0f, 1.0f, interpolator);
            Rect bounds = getBounds();
            float exactCenterX = bounds.exactCenterX();
            float height = bounds.height();
            float length = ((1.5f * mapBoundToRange) + 0.5f) * PointF.length(exactCenterX, height);
            float f5 = height + length;
            float f6 = (((height / END_SIZE_FACTOR) - f5) * mapBoundToRange) + f5;
            this.mMatrix.setTranslate(exactCenterX, f6);
            this.mMatrix.postScale(length, length, exactCenterX, f6);
            this.mMaskGrad.setLocalMatrix(this.mMatrix);
            this.mColorMatrix.getArray()[19] = Utilities.mapBoundToRange(this.mProgress, 0.0f, 1.0f, 0.0f, -255.0f, interpolator);
            this.mColorFilter.setColorMatrix(this.mColorMatrix);
            canvas.drawPaint(this.mPaint);
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i4) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public void setProgress(float f4) {
            if (this.mProgress != f4) {
                this.mProgress = f4;
                invalidateSelf();
            }
        }
    }

    /* loaded from: classes.dex */
    class SkipButtonAccessibilityDelegate extends View.AccessibilityDelegate {
        public /* synthetic */ SkipButtonAccessibilityDelegate(AllSetActivity allSetActivity, int i4) {
            this();
        }

        public AccessibilityNodeInfo createAccessibilityNodeInfo(View view) {
            AccessibilityNodeInfo createAccessibilityNodeInfo = super.createAccessibilityNodeInfo(view);
            createAccessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK);
            createAccessibilityNodeInfo.setClickable(true);
            return createAccessibilityNodeInfo;
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean performAccessibilityAction(View view, int i4, Bundle bundle) {
            if (i4 == AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK.getId()) {
                OverviewComponentObserver.startHomeIntentSafely(AllSetActivity.this, null);
                AllSetActivity.this.finish();
                return true;
            }
            return super.performAccessibilityAction(view, i4, bundle);
        }

        private SkipButtonAccessibilityDelegate() {
            AllSetActivity.this = r1;
        }
    }

    private void clearBinderOverride() {
        TouchInteractionService.TISBinder binder = this.mTISBindHelper.getBinder();
        if (binder != null) {
            setSetupUIVisible(false);
            binder.setSwipeUpProxy(null);
            binder.setOverviewTargetChangeListener(null);
        }
    }

    public AnimatedFloat createSwipeUpProxy(GestureState gestureState) {
        if (gestureState.getTopRunningTaskId() != getTaskId()) {
            return null;
        }
        this.mSwipeProgress.updateValue(0.0f);
        return this.mSwipeProgress;
    }

    private void dispatchLauncherAnimStartEnd() {
        AnimatorPlaybackController animatorPlaybackController = this.mLauncherStartAnim;
        if (animatorPlaybackController != null) {
            animatorPlaybackController.dispatchOnStart();
            this.mLauncherStartAnim.dispatchOnEnd();
            this.mLauncherStartAnim = null;
        }
    }

    private float getContentViewAlphaForSwipeProgress() {
        return Utilities.mapBoundToRange(this.mSwipeProgress.value, 0.0f, HINT_BOTTOM_FACTOR, 1.0f, 0.0f, y0.e.f12949m);
    }

    public /* synthetic */ void lambda$onCreate$0(View view) {
        try {
            startActivityForResult(Intent.parseUri(URI_SYSTEM_NAVIGATION_SETTING, 0), 0);
        } catch (URISyntaxException e4) {
            Log.e(LOG_TAG, "Failed to parse system nav settings intent", e4);
        }
    }

    private void maybeResumeOrPauseBackgroundAnimation() {
        boolean z4 = getContentViewAlphaForSwipeProgress() > 0.1f && isResumed();
        if (this.mAnimatedBackground.isAnimating() && !z4) {
            this.mAnimatedBackground.pauseAnimation();
        } else if (this.mAnimatedBackground.isAnimating() || !z4) {
        } else {
            this.mAnimatedBackground.resumeAnimation();
        }
    }

    public void onSwipeProgressUpdate() {
        this.mBackground.setProgress(this.mSwipeProgress.value);
        float contentViewAlphaForSwipeProgress = getContentViewAlphaForSwipeProgress();
        this.mRootView.setAlpha(contentViewAlphaForSwipeProgress);
        this.mRootView.setTranslationY((contentViewAlphaForSwipeProgress - 1.0f) * this.mSwipeUpShift);
        AnimatorPlaybackController animatorPlaybackController = this.mLauncherStartAnim;
        if (animatorPlaybackController != null) {
            animatorPlaybackController.setPlayFraction(((PathInterpolator) y0.e.f12950n).getInterpolation(this.mSwipeProgress.value));
        }
        maybeResumeOrPauseBackgroundAnimation();
    }

    public void onTISConnected(TouchInteractionService.TISBinder tISBinder) {
        setSetupUIVisible(isResumed());
        tISBinder.setSwipeUpProxy(isResumed() ? new a(this, 0) : null);
        tISBinder.setOverviewTargetChangeListener(new b(0, tISBinder));
        tISBinder.preloadOverviewForSUWAllSet();
        TaskbarManager taskbarManager = tISBinder.getTaskbarManager();
        if (taskbarManager != null) {
            this.mLauncherStartAnim = taskbarManager.createLauncherStartFromSuwAnim();
        }
    }

    public void runOnUiHelperThread(Runnable runnable) {
        if (!isResumed() || getContentViewAlphaForSwipeProgress() <= 0.1f) {
            return;
        }
        Executors.UI_HELPER_EXECUTOR.execute(runnable);
    }

    private void setSetupUIVisible(boolean z4) {
        TaskbarManager taskbarManager = this.mTISBindHelper.getTaskbarManager();
        if (taskbarManager == null) {
            return;
        }
        taskbarManager.setSetupUIVisible(z4);
    }

    private void startBackgroundAnimation(boolean z4) {
        Vibrator vibrator;
        if (!Utilities.ATLEAST_S || (vibrator = this.mVibrator) == null) {
            return;
        }
        boolean areAllPrimitivesSupported = vibrator.areAllPrimitivesSupported(2);
        if (areAllPrimitivesSupported || this.mVibrator.areAllPrimitivesSupported(7)) {
            if (this.mBackgroundAnimatorListener == null) {
                this.mBackgroundAnimatorListener = new AnonymousClass1(VibrationEffect.startComposition().addPrimitive(areAllPrimitivesSupported ? 2 : 7, z4 ? 1.0f : 0.3f, 50).compose());
            }
            this.mAnimatedBackground.addAnimatorListener(this.mBackgroundAnimatorListener);
            this.mAnimatedBackground.playAnimation();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_allset);
        View findViewById = findViewById(R.id.root_view);
        this.mRootView = findViewById;
        findViewById.setSystemUiVisibility(1792);
        Resources resources = getResources();
        boolean z4 = (resources.getConfiguration().uiMode & 48) == 32;
        int i4 = z4 ? 0 : 24;
        Window window = getWindow();
        WindowInsetsController insetsController = window == null ? null : window.getInsetsController();
        if (insetsController != null) {
            insetsController.setSystemBarsAppearance(i4, 24);
        }
        Intent intent = getIntent();
        int intExtra = intent.getIntExtra(z4 ? EXTRA_ACCENT_COLOR_DARK_MODE : EXTRA_ACCENT_COLOR_LIGHT_MODE, z4 ? -1 : -16777216);
        ((ImageView) findViewById(R.id.icon)).getDrawable().mutate().setTint(intExtra);
        BgDrawable bgDrawable = new BgDrawable(this);
        this.mBackground = bgDrawable;
        this.mRootView.setBackground(bgDrawable);
        this.mSwipeUpShift = resources.getDimension(R.dimen.allset_swipe_up_shift);
        TextView textView = (TextView) findViewById(R.id.subtitle);
        String stringExtra = intent.getStringExtra(EXTRA_DEVICE_NAME);
        Object[] objArr = new Object[1];
        if (TextUtils.isEmpty(stringExtra)) {
            stringExtra = getString(R.string.default_device_name);
        }
        objArr[0] = stringExtra;
        textView.setText(getString(R.string.allset_description_generic, objArr));
        TextView textView2 = (TextView) findViewById(R.id.navigation_settings);
        textView2.setTextColor(intExtra);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.android.quickstep.interaction.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AllSetActivity.this.lambda$onCreate$0(view);
            }
        });
        TextView textView3 = (TextView) findViewById(R.id.hint);
        DeviceProfile deviceProfile = ((InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.get(this)).getDeviceProfile(this);
        if (!deviceProfile.isGestureMode) {
            textView3.setText(R.string.allset_button_hint);
        }
        textView3.setAccessibilityDelegate(new SkipButtonAccessibilityDelegate(this, 0));
        this.mTISBindHelper = new TISBindHelper(this, new Consumer() { // from class: com.android.quickstep.interaction.d
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                AllSetActivity.this.onTISConnected((TouchInteractionService.TISBinder) obj);
            }
        });
        this.mVibrator = (Vibrator) getSystemService(Vibrator.class);
        LottieAnimationView lottieAnimationView = (LottieAnimationView) findViewById(R.id.animated_background);
        this.mAnimatedBackground = lottieAnimationView;
        lottieAnimationView.setAnimation(resources.openRawResource(R.raw.all_set_page_bg), null);
        LottieAnimationColorUtils.updateColors(this.mAnimatedBackground, Map.of(LOTTIE_PRIMARY_COLOR_TOKEN, Integer.valueOf((int) R.color.all_set_bg_primary), LOTTIE_TERTIARY_COLOR_TOKEN, Integer.valueOf((int) R.color.all_set_bg_tertiary)), getTheme());
        startBackgroundAnimation(deviceProfile.isTablet);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mTISBindHelper.onDestroy();
        clearBinderOverride();
        Animator.AnimatorListener animatorListener = this.mBackgroundAnimatorListener;
        if (animatorListener != null) {
            this.mAnimatedBackground.removeAnimatorListener(animatorListener);
        }
        if (isChangingConfigurations()) {
            return;
        }
        dispatchLauncherAnimStartEnd();
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        clearBinderOverride();
        maybeResumeOrPauseBackgroundAnimation();
        if (this.mSwipeProgress.value >= 1.0f) {
            finishAndRemoveTask();
            dispatchLauncherAnimStartEnd();
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        maybeResumeOrPauseBackgroundAnimation();
        TouchInteractionService.TISBinder binder = this.mTISBindHelper.getBinder();
        if (binder != null) {
            setSetupUIVisible(true);
            binder.setSwipeUpProxy(new a(this, 1));
        }
    }
}
