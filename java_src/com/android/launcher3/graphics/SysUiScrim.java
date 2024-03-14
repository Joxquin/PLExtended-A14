package com.android.launcher3.graphics;

import android.animation.ObjectAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.DisplayMetrics;
import android.view.View;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.graphics.SysUiScrim;
import com.android.launcher3.testing.shared.ResourceUtils;
import com.android.launcher3.util.ScreenOnTracker;
import com.android.launcher3.util.Themes;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class SysUiScrim implements View.OnAttachStateChangeListener {
    private final BaseDraggingActivity mActivity;
    private boolean mAnimateScrimOnNextDraw;
    private final Bitmap mBottomMaskBitmap;
    private final int mBottomMaskHeight;
    private final Paint mBottomMaskPaint;
    private final RectF mBottomMaskRect;
    private boolean mDrawBottomScrim;
    private boolean mDrawTopScrim;
    private final boolean mHideSysUiScrim;
    private final View mRoot;
    private boolean mSkipScrimAnimationForTest;
    private final AnimatedFloat mSysUiAnimMultiplier;
    private final AnimatedFloat mSysUiProgress;
    private final Bitmap mTopMaskBitmap;
    private final int mTopMaskHeight;
    private final Paint mTopMaskPaint;
    private final ScreenOnTracker.ScreenOnListener mScreenOnListener = new ScreenOnTracker.ScreenOnListener() { // from class: com.android.launcher3.graphics.SysUiScrim.1
        @Override // com.android.launcher3.util.ScreenOnTracker.ScreenOnListener
        public final void onScreenOnChanged(boolean z4) {
            if (z4) {
                return;
            }
            SysUiScrim.this.mAnimateScrimOnNextDraw = true;
        }

        @Override // com.android.launcher3.util.ScreenOnTracker.ScreenOnListener
        public final void onUserPresent() {
            SysUiScrim.this.mAnimateScrimOnNextDraw = false;
        }
    };
    private final RectF mTopMaskRect = new RectF();

    public SysUiScrim(View view) {
        Paint paint = new Paint(6);
        this.mTopMaskPaint = paint;
        this.mBottomMaskRect = new RectF();
        this.mBottomMaskPaint = new Paint(6);
        this.mSkipScrimAnimationForTest = false;
        this.mAnimateScrimOnNextDraw = false;
        this.mSysUiAnimMultiplier = new AnimatedFloat(new Runnable(this) { // from class: K0.j

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ SysUiScrim f907e;

            {
                this.f907e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (r2) {
                    case 0:
                    default:
                        SysUiScrim.a(this.f907e);
                        return;
                }
            }
        });
        this.mSysUiProgress = new AnimatedFloat(new Runnable(this) { // from class: K0.j

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ SysUiScrim f907e;

            {
                this.f907e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (r2) {
                    case 0:
                    default:
                        SysUiScrim.a(this.f907e);
                        return;
                }
            }
        });
        this.mRoot = view;
        BaseDraggingActivity baseDraggingActivity = (BaseDraggingActivity) BaseActivity.fromContext(view.getContext());
        this.mActivity = baseDraggingActivity;
        DisplayMetrics displayMetrics = baseDraggingActivity.getResources().getDisplayMetrics();
        int pxFromDp = ResourceUtils.pxFromDp(100.0f, displayMetrics);
        this.mTopMaskHeight = pxFromDp;
        int pxFromDp2 = ResourceUtils.pxFromDp(200.0f, displayMetrics);
        this.mBottomMaskHeight = pxFromDp2;
        boolean attrBoolean = Themes.getAttrBoolean(R.attr.isWorkspaceDarkText, view.getContext());
        this.mHideSysUiScrim = attrBoolean;
        this.mTopMaskBitmap = attrBoolean ? null : createDitheredAlphaMask(pxFromDp, new int[]{1358954495, 184549375, 16777215}, new float[]{0.0f, 0.7f, 1.0f});
        paint.setColor(-14540254);
        this.mBottomMaskBitmap = attrBoolean ? null : createDitheredAlphaMask(pxFromDp2, new int[]{16777215, 805306367}, new float[]{0.0f, 1.0f});
        if (FeatureFlags.KEYGUARD_ANIMATION.get() || attrBoolean) {
            return;
        }
        view.addOnAttachStateChangeListener(this);
    }

    public static void a(SysUiScrim sysUiScrim) {
        sysUiScrim.reapplySysUiAlphaNoInvalidate();
        if (sysUiScrim.mHideSysUiScrim) {
            return;
        }
        sysUiScrim.mRoot.invalidate();
    }

    private Bitmap createDitheredAlphaMask(int i4, int[] iArr, float[] fArr) {
        Bitmap createBitmap = Bitmap.createBitmap(ResourceUtils.pxFromDp(2.0f, this.mActivity.getResources().getDisplayMetrics()), i4, Bitmap.Config.ALPHA_8);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(4);
        paint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, i4, iArr, fArr, Shader.TileMode.CLAMP));
        canvas.drawPaint(paint);
        return createBitmap;
    }

    private void reapplySysUiAlphaNoInvalidate() {
        float f4 = this.mSysUiProgress.value * this.mSysUiAnimMultiplier.value;
        if (this.mSkipScrimAnimationForTest) {
            f4 = 1.0f;
        }
        float f5 = f4 * 255.0f;
        this.mBottomMaskPaint.setAlpha(Math.round(f5));
        this.mTopMaskPaint.setAlpha(Math.round(f5));
    }

    public final void draw(Canvas canvas) {
        if (this.mHideSysUiScrim) {
            return;
        }
        if (this.mSysUiProgress.value <= 0.0f) {
            this.mAnimateScrimOnNextDraw = false;
            return;
        }
        if (this.mAnimateScrimOnNextDraw) {
            this.mSysUiAnimMultiplier.value = 0.0f;
            reapplySysUiAlphaNoInvalidate();
            ObjectAnimator animateToValue = this.mSysUiAnimMultiplier.animateToValue(1.0f);
            animateToValue.setDuration(600L);
            animateToValue.setStartDelay(this.mActivity.getWindow().getTransitionBackgroundFadeDuration());
            animateToValue.start();
            this.mAnimateScrimOnNextDraw = false;
        }
        if (this.mDrawTopScrim) {
            canvas.drawBitmap(this.mTopMaskBitmap, (Rect) null, this.mTopMaskRect, this.mTopMaskPaint);
        }
        if (this.mDrawBottomScrim) {
            canvas.drawBitmap(this.mBottomMaskBitmap, (Rect) null, this.mBottomMaskRect, this.mBottomMaskPaint);
        }
    }

    public final AnimatedFloat getSysUIMultiplier() {
        return this.mSysUiAnimMultiplier;
    }

    public final AnimatedFloat getSysUIProgress() {
        return this.mSysUiProgress;
    }

    public final void onInsetsChanged(Rect rect) {
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        boolean z4 = true;
        this.mDrawTopScrim = rect.top > 0;
        if (deviceProfile.isVerticalBarLayout() || deviceProfile.isGestureMode || deviceProfile.isTaskbarPresent) {
            z4 = false;
        }
        this.mDrawBottomScrim = z4;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        ((ScreenOnTracker) ScreenOnTracker.INSTANCE.get(this.mActivity)).addListener(this.mScreenOnListener);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        ((ScreenOnTracker) ScreenOnTracker.INSTANCE.get(this.mActivity)).removeListener(this.mScreenOnListener);
    }

    public final void setSize(int i4, int i5) {
        float f4 = i4;
        this.mTopMaskRect.set(0.0f, 0.0f, f4, this.mTopMaskHeight);
        this.mBottomMaskRect.set(0.0f, i5 - this.mBottomMaskHeight, f4, i5);
    }

    public void skipScrimAnimation() {
        this.mSkipScrimAnimationForTest = true;
        reapplySysUiAlphaNoInvalidate();
        if (this.mHideSysUiScrim) {
            return;
        }
        this.mRoot.invalidate();
    }
}
