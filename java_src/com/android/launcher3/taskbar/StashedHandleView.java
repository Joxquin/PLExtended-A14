package com.android.launcher3.taskbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import com.android.launcher3.LauncherAnimUtils;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class StashedHandleView extends View {
    private ObjectAnimator mColorChangeAnim;
    private final Rect mSampledRegion;
    private final int mStashedHandleDarkColor;
    private final int mStashedHandleLightColor;
    private final int[] mTmpArr;

    public StashedHandleView(Context context) {
        this(context, null);
    }

    public final Rect getSampledRegion() {
        return this.mSampledRegion;
    }

    public final void updateHandleColor(boolean z4, boolean z5) {
        int i4 = z4 ? this.mStashedHandleLightColor : this.mStashedHandleDarkColor;
        ObjectAnimator objectAnimator = this.mColorChangeAnim;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        if (!z5) {
            setBackgroundColor(i4);
            return;
        }
        ObjectAnimator ofArgb = ObjectAnimator.ofArgb(this, LauncherAnimUtils.VIEW_BACKGROUND_COLOR, i4);
        this.mColorChangeAnim = ofArgb;
        ofArgb.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.taskbar.StashedHandleView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                StashedHandleView.this.mColorChangeAnim = null;
            }
        });
        this.mColorChangeAnim.setDuration(120L);
        this.mColorChangeAnim.start();
    }

    public final void updateSampledRegion(Rect rect) {
        getLocationOnScreen(this.mTmpArr);
        int[] iArr = this.mTmpArr;
        iArr[0] = iArr[0] - Math.round(getTranslationX());
        int[] iArr2 = this.mTmpArr;
        iArr2[1] = iArr2[1] - Math.round(getTranslationY());
        this.mSampledRegion.set(rect);
        Rect rect2 = this.mSampledRegion;
        int[] iArr3 = this.mTmpArr;
        rect2.offset(iArr3[0], iArr3[1]);
    }

    public StashedHandleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StashedHandleView(Context context, AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, 0);
    }

    public StashedHandleView(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        this.mSampledRegion = new Rect();
        this.mTmpArr = new int[2];
        Object obj = B.c.f105a;
        this.mStashedHandleLightColor = context.getColor(R.color.taskbar_stashed_handle_light_color);
        this.mStashedHandleDarkColor = context.getColor(R.color.taskbar_stashed_handle_dark_color);
    }
}
