package com.android.quickstep.util;

import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.android.systemui.shared.animation.UnfoldMoveFromCenterAnimator;
import java.util.HashMap;
import java.util.Map;
import java.util.function.BiConsumer;
import t1.InterfaceC1405d;
import w1.C1452d;
import w1.InterfaceC1450b;
import w1.RunnableC1451c;
/* loaded from: classes.dex */
public abstract class BaseUnfoldMoveFromCenterAnimator implements InterfaceC1405d {
    private final UnfoldMoveFromCenterAnimator mMoveFromCenterAnimation;
    private final C1452d mRotationChangeProvider;
    private final Map mOriginalClipToPadding = new HashMap();
    private final Map mOriginalClipChildren = new HashMap();
    private final UnfoldMoveFromCenterRotationListener mRotationListener = new UnfoldMoveFromCenterRotationListener(this, 0);
    private boolean mAnimationInProgress = false;
    private Float mLastTransitionProgress = null;

    /* loaded from: classes.dex */
    class UnfoldMoveFromCenterRotationListener implements InterfaceC1450b {
        public /* synthetic */ UnfoldMoveFromCenterRotationListener(BaseUnfoldMoveFromCenterAnimator baseUnfoldMoveFromCenterAnimator, int i4) {
            this();
        }

        @Override // w1.InterfaceC1450b
        public void onRotationChanged(int i4) {
            BaseUnfoldMoveFromCenterAnimator.this.mMoveFromCenterAnimation.updateDisplayProperties(i4);
            BaseUnfoldMoveFromCenterAnimator.this.updateRegisteredViewsIfNeeded();
        }

        private UnfoldMoveFromCenterRotationListener() {
        }
    }

    public BaseUnfoldMoveFromCenterAnimator(WindowManager windowManager, C1452d c1452d) {
        this.mMoveFromCenterAnimation = new UnfoldMoveFromCenterAnimator(windowManager, new LauncherViewsMoveFromCenterTranslationApplier());
        this.mRotationChangeProvider = c1452d;
    }

    private void clearRegisteredViews() {
        restoreClippings();
        this.mMoveFromCenterAnimation.clearRegisteredViews();
        this.mOriginalClipChildren.clear();
        this.mOriginalClipToPadding.clear();
    }

    public void onPrepareViewsForAnimation() {
        Float f4 = this.mLastTransitionProgress;
        if (f4 != null) {
            this.mMoveFromCenterAnimation.onTransitionProgress(f4.floatValue());
        }
    }

    @Override // t1.InterfaceC1405d
    public void onTransitionFinished() {
        this.mLastTransitionProgress = null;
        this.mAnimationInProgress = false;
        C1452d c1452d = this.mRotationChangeProvider;
        UnfoldMoveFromCenterRotationListener listener = this.mRotationListener;
        c1452d.getClass();
        kotlin.jvm.internal.h.e(listener, "listener");
        c1452d.f12746f.post(new RunnableC1451c(c1452d, listener, 1));
        this.mMoveFromCenterAnimation.onTransitionFinished();
        clearRegisteredViews();
    }

    @Override // t1.InterfaceC1405d
    public /* bridge */ /* synthetic */ void onTransitionFinishing() {
    }

    @Override // t1.InterfaceC1405d
    public void onTransitionProgress(float f4) {
        this.mMoveFromCenterAnimation.onTransitionProgress(f4);
        this.mLastTransitionProgress = Float.valueOf(f4);
    }

    @Override // t1.InterfaceC1405d
    public void onTransitionStarted() {
        this.mAnimationInProgress = true;
        this.mMoveFromCenterAnimation.updateDisplayProperties();
        onPrepareViewsForAnimation();
        C1452d c1452d = this.mRotationChangeProvider;
        UnfoldMoveFromCenterRotationListener listener = this.mRotationListener;
        c1452d.getClass();
        kotlin.jvm.internal.h.e(listener, "listener");
        c1452d.f12746f.post(new RunnableC1451c(c1452d, listener, 0));
    }

    public void registerViewForAnimation(View view) {
        this.mMoveFromCenterAnimation.registerViewForAnimation(view);
    }

    public void restoreClippings() {
        this.mOriginalClipToPadding.forEach(new BiConsumer() { // from class: com.android.quickstep.util.l
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                switch (r1) {
                    case 0:
                        ((ViewGroup) obj).setClipToPadding(((Boolean) obj2).booleanValue());
                        return;
                    default:
                        ((ViewGroup) obj).setClipChildren(((Boolean) obj2).booleanValue());
                        return;
                }
            }
        });
        this.mOriginalClipChildren.forEach(new BiConsumer() { // from class: com.android.quickstep.util.l
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                switch (r1) {
                    case 0:
                        ((ViewGroup) obj).setClipToPadding(((Boolean) obj2).booleanValue());
                        return;
                    default:
                        ((ViewGroup) obj).setClipChildren(((Boolean) obj2).booleanValue());
                        return;
                }
            }
        });
    }

    public void setClipChildren(ViewGroup viewGroup, boolean z4) {
        this.mOriginalClipChildren.put(viewGroup, Boolean.valueOf(viewGroup.getClipChildren()));
        viewGroup.setClipChildren(z4);
    }

    public void setClipToPadding(ViewGroup viewGroup, boolean z4) {
        this.mOriginalClipToPadding.put(viewGroup, Boolean.valueOf(viewGroup.getClipToPadding()));
        viewGroup.setClipToPadding(z4);
    }

    public void updateRegisteredViewsIfNeeded() {
        if (this.mAnimationInProgress) {
            clearRegisteredViews();
            onPrepareViewsForAnimation();
        }
    }
}
