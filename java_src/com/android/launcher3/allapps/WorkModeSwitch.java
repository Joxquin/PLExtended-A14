package com.android.launcher3.allapps;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.a0;
import androidx.core.view.c0;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Insettable;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.WorkModeSwitch;
import com.android.launcher3.anim.KeyboardInsetAnimationCallback;
import com.android.launcher3.model.StringCache;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.workprofile.PersonalWorkSlidingTabStrip;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class WorkModeSwitch extends LinearLayout implements Insettable, KeyboardInsetAnimationCallback.KeyboardInsetListener {
    private final ActivityContext mActivityContext;
    private int mFlags;
    private final Rect mImeInsets;
    private final Rect mInsets;
    private final int mScrollThreshold;
    private TextView mTextView;

    public WorkModeSwitch(Context context) {
        this(context, null, 0);
    }

    public static void a(WorkModeSwitch workModeSwitch) {
        workModeSwitch.mFlags &= -3;
        workModeSwitch.setVisibility(8);
    }

    public static void b(WorkModeSwitch workModeSwitch) {
        workModeSwitch.mFlags &= -3;
    }

    public final void animateVisibility(boolean z4) {
        clearAnimation();
        if (z4) {
            this.mFlags |= 2;
            setVisibility(0);
            extend();
            animate().alpha(1.0f).withEndAction(new Runnable(this) { // from class: D0.t

                /* renamed from: e  reason: collision with root package name */
                public final /* synthetic */ WorkModeSwitch f313e;

                {
                    this.f313e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (r2) {
                        case 0:
                            WorkModeSwitch.b(this.f313e);
                            return;
                        default:
                            WorkModeSwitch.a(this.f313e);
                            return;
                    }
                }
            }).start();
        } else if (getVisibility() != 8) {
            this.mFlags |= 2;
            animate().alpha(0.0f).withEndAction(new Runnable(this) { // from class: D0.t

                /* renamed from: e  reason: collision with root package name */
                public final /* synthetic */ WorkModeSwitch f313e;

                {
                    this.f313e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (r2) {
                        case 0:
                            WorkModeSwitch.b(this.f313e);
                            return;
                        default:
                            WorkModeSwitch.a(this.f313e);
                            return;
                    }
                }
            }).start();
        }
    }

    public final void extend() {
        this.mTextView.setVisibility(0);
    }

    public final Rect getImeInsets() {
        return this.mImeInsets;
    }

    public final int getScrollThreshold() {
        return this.mScrollThreshold;
    }

    @Override // android.view.View
    public final boolean isEnabled() {
        return super.isEnabled() && getVisibility() == 0 && this.mFlags == 0;
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        a0 a0Var = c0.g(windowInsets, this).f3106a;
        if (a0Var.o(8)) {
            Rect rect = this.mImeInsets;
            E.b f4 = a0Var.f(8);
            rect.set(f4.f329a, f4.f330b, f4.f331c, f4.f332d);
        } else {
            this.mImeInsets.setEmpty();
        }
        updateTranslationY();
        return super.onApplyWindowInsets(windowInsets);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        ImageView imageView = (ImageView) findViewById(R.id.work_icon);
        this.mTextView = (TextView) findViewById(R.id.pause_text);
        setSelected(true);
        if (Utilities.ATLEAST_R) {
            setWindowInsetsAnimationCallback(new KeyboardInsetAnimationCallback(this));
        }
        setInsets(this.mActivityContext.getDeviceProfile().getInsets());
        updateStringFromCache();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        View view = (View) getParent();
        int i8 = this.mActivityContext.getDeviceProfile().allAppsLeftRightPadding;
        int width = ((view.getWidth() - view.getPaddingLeft()) - view.getPaddingRight()) - (i8 * 2);
        int tabWidth = ((width - PersonalWorkSlidingTabStrip.getTabWidth(width, getContext())) / 2) + i8;
        setTranslationX(Utilities.isRtl(getResources()) ? tabWidth : -tabWidth);
    }

    @Override // com.android.launcher3.anim.KeyboardInsetAnimationCallback.KeyboardInsetListener
    public final void onTranslationEnd() {
        this.mFlags &= -5;
    }

    @Override // com.android.launcher3.anim.KeyboardInsetAnimationCallback.KeyboardInsetListener
    public final void onTranslationStart() {
        this.mFlags |= 4;
    }

    @Override // com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
        this.mInsets.set(rect);
        updateTranslationY();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
        if (marginLayoutParams != null) {
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.work_fab_margin_bottom);
            DeviceProfile deviceProfile = ((ActivityContext) ActivityContext.lookupContext(getContext())).getDeviceProfile();
            if (this.mActivityContext.getAppsView().isSearchBarFloating()) {
                dimensionPixelSize += deviceProfile.hotseatQsbHeight;
            }
            if (!deviceProfile.isGestureMode && deviceProfile.isTaskbarPresent) {
                dimensionPixelSize += deviceProfile.taskbarHeight;
            }
            marginLayoutParams.bottomMargin = dimensionPixelSize;
        }
    }

    @Override // android.view.View
    public final void setTranslationY(float f4) {
        super.setTranslationY(Math.min(f4, -this.mInsets.bottom));
    }

    public final void shrink() {
        this.mTextView.setVisibility(8);
    }

    public final void updateStringFromCache() {
        StringCache stringCache = this.mActivityContext.getStringCache();
        if (stringCache != null) {
            this.mTextView.setText(stringCache.workProfilePauseButton);
        }
    }

    public final void updateTranslationY() {
        setTranslationY(-this.mImeInsets.bottom);
    }

    public WorkModeSwitch(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WorkModeSwitch(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mInsets = new Rect();
        this.mImeInsets = new Rect();
        this.mScrollThreshold = Utilities.dpToPx(10.0f);
        ActivityContext activityContext = (ActivityContext) ActivityContext.lookupContext(getContext());
        this.mActivityContext = activityContext;
        activityContext.getStatsLogManager();
    }
}
