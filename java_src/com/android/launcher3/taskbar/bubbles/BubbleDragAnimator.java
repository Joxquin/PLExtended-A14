package com.android.launcher3.taskbar.bubbles;

import android.content.res.Resources;
import android.graphics.PointF;
import android.view.View;
import androidx.dynamicanimation.animation.m;
import com.android.systemui.shared.R;
import com.android.wm.shell.animation.g;
import com.android.wm.shell.animation.l;
import com.android.wm.shell.common.bubbles.e;
import com.android.wm.shell.common.bubbles.h;
/* loaded from: classes.dex */
public final class BubbleDragAnimator {
    private final l mBubbleAnimator;
    private final float mBubbleCapturedScale;
    private final float mBubbleFocusedScale;
    private final g mDefaultConfig;
    private l mDismissAnimator;
    private final float mDismissCapturedScale;
    private h mDismissView;
    private final g mTranslationConfig;
    private final View mView;

    public BubbleDragAnimator(View view) {
        g gVar = new g(200.0f, 0.75f);
        this.mDefaultConfig = gVar;
        this.mTranslationConfig = new g(1500.0f, 0.75f);
        this.mView = view;
        m3.l lVar = l.f6287m;
        l a4 = com.android.wm.shell.animation.c.a(view);
        this.mBubbleAnimator = a4;
        a4.f6296i = gVar;
        Resources resources = view.getResources();
        float dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.bubblebar_dismiss_target_small_size) / resources.getDimensionPixelSize(R.dimen.bubblebar_dismiss_target_size);
        this.mDismissCapturedScale = dimensionPixelSize;
        if (view instanceof BubbleBarView) {
            this.mBubbleFocusedScale = 1.1f;
            this.mBubbleCapturedScale = dimensionPixelSize;
            return;
        }
        this.mBubbleFocusedScale = 1.2f;
        this.mBubbleCapturedScale = 0.9f;
    }

    public static /* synthetic */ void a(BubbleDragAnimator bubbleDragAnimator, PointF pointF, Runnable runnable, boolean z4, boolean z5) {
        bubbleDragAnimator.getClass();
        if (z4 || z5) {
            bubbleDragAnimator.resetAnimatedViews(pointF);
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public static /* synthetic */ void b(BubbleDragAnimator bubbleDragAnimator, PointF pointF, Runnable runnable, boolean z4, boolean z5) {
        bubbleDragAnimator.getClass();
        if (z4 || z5) {
            bubbleDragAnimator.resetAnimatedViews(pointF);
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    private void resetAnimatedViews(PointF pointF) {
        View view = this.mView;
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        view.setAlpha(1.0f);
        view.setTranslationX(pointF.x);
        view.setTranslationY(pointF.y);
        h hVar = this.mDismissView;
        if (hVar != null) {
            hVar.f6332d.setScaleX(1.0f);
            this.mDismissView.f6332d.setScaleY(1.0f);
        }
    }

    public final void animateDismiss(PointF pointF, c cVar) {
        h hVar = this.mDismissView;
        float translationY = this.mView.getTranslationY() + (hVar != null ? hVar.getHeight() : 0.0f);
        androidx.dynamicanimation.animation.h hVar2 = m.f3184n;
        l lVar = this.mBubbleAnimator;
        lVar.f(hVar2, translationY);
        lVar.f(m.f3186p, 0.0f);
        lVar.f(m.f3187q, 0.0f);
        lVar.f(m.f3191u, 0.0f);
        lVar.f6294g.add(new Z0.l(this, pointF, cVar, 0));
        lVar.h();
    }

    public final void animateDismissCaptured() {
        l lVar = this.mBubbleAnimator;
        lVar.a();
        androidx.dynamicanimation.animation.h hVar = m.f3186p;
        float f4 = this.mBubbleCapturedScale;
        lVar.f(hVar, f4);
        androidx.dynamicanimation.animation.h hVar2 = m.f3187q;
        lVar.f(hVar2, f4);
        androidx.dynamicanimation.animation.h hVar3 = m.f3191u;
        float f5 = this.mDismissCapturedScale;
        lVar.f(hVar3, f5);
        lVar.h();
        l lVar2 = this.mDismissAnimator;
        if (lVar2 != null) {
            lVar2.a();
            l lVar3 = this.mDismissAnimator;
            lVar3.f(hVar, f5);
            lVar3.f(hVar2, f5);
            lVar3.h();
        }
    }

    public final void animateDismissReleased() {
        l lVar = this.mBubbleAnimator;
        lVar.a();
        androidx.dynamicanimation.animation.h hVar = m.f3186p;
        float f4 = this.mBubbleFocusedScale;
        lVar.f(hVar, f4);
        androidx.dynamicanimation.animation.h hVar2 = m.f3187q;
        lVar.f(hVar2, f4);
        lVar.f(m.f3191u, 1.0f);
        lVar.h();
        l lVar2 = this.mDismissAnimator;
        if (lVar2 != null) {
            lVar2.a();
            l lVar3 = this.mDismissAnimator;
            lVar3.f(hVar, 1.0f);
            lVar3.f(hVar2, 1.0f);
            lVar3.h();
        }
    }

    public final void animateFocused() {
        l lVar = this.mBubbleAnimator;
        lVar.a();
        androidx.dynamicanimation.animation.h hVar = m.f3186p;
        float f4 = this.mBubbleFocusedScale;
        lVar.f(hVar, f4);
        lVar.f(m.f3187q, f4);
        lVar.h();
    }

    public final void animateToInitialState(PointF pointF, PointF pointF2, c cVar) {
        l lVar = this.mBubbleAnimator;
        lVar.a();
        lVar.f(m.f3186p, 1.0f);
        lVar.f(m.f3187q, 1.0f);
        androidx.dynamicanimation.animation.h hVar = m.f3183m;
        float f4 = pointF.x;
        float f5 = pointF2.x;
        g gVar = this.mTranslationConfig;
        lVar.g(hVar, f4, f5, gVar);
        lVar.g(m.f3184n, pointF.y, pointF2.y, gVar);
        lVar.f6294g.add(new Z0.l(this, pointF, cVar, 1));
        lVar.h();
    }

    public final void setDismissView(h hVar) {
        this.mDismissView = hVar;
        e eVar = hVar.f6332d;
        m3.l lVar = l.f6287m;
        l a4 = com.android.wm.shell.animation.c.a(eVar);
        this.mDismissAnimator = a4;
        g defaultSpring = this.mDefaultConfig;
        kotlin.jvm.internal.h.e(defaultSpring, "defaultSpring");
        a4.f6296i = defaultSpring;
    }
}
