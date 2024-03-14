package com.android.systemui.shared.animation;

import android.graphics.Point;
import android.view.View;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.h;
import t1.InterfaceC1405d;
/* loaded from: classes.dex */
public final class UnfoldMoveFromCenterAnimator implements InterfaceC1405d {
    private final AlphaProvider alphaProvider;
    private final List animatedViews;
    private boolean isVerticalFold;
    private float lastAnimationProgress;
    private final Point screenSize;
    private final TranslationApplier translationApplier;
    private final ViewCenterProvider viewCenterProvider;
    private final WindowManager windowManager;

    /* loaded from: classes.dex */
    public interface AlphaProvider {
        float getAlpha(float f4);
    }

    /* loaded from: classes.dex */
    public interface TranslationApplier {

        /* loaded from: classes.dex */
        public final class DefaultImpls {
            public static void apply(TranslationApplier translationApplier, View view, float f4, float f5) {
                h.e(view, "view");
                view.setTranslationX(f4);
                view.setTranslationY(f5);
            }
        }

        void apply(View view, float f4, float f5);
    }

    /* loaded from: classes.dex */
    public interface ViewCenterProvider {

        /* loaded from: classes.dex */
        public final class DefaultImpls {
            public static void getViewCenter(ViewCenterProvider viewCenterProvider, View view, Point outPoint) {
                h.e(view, "view");
                h.e(outPoint, "outPoint");
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                int i4 = iArr[0];
                int i5 = iArr[1];
                outPoint.x = (view.getWidth() / 2) + i4;
                outPoint.y = (view.getHeight() / 2) + i5;
            }
        }

        void getViewCenter(View view, Point point);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public UnfoldMoveFromCenterAnimator(WindowManager windowManager) {
        this(windowManager, null, null, null, 14, null);
        h.e(windowManager, "windowManager");
    }

    private final void applyAlpha(AnimatedView animatedView, float f4) {
        View view;
        if (this.alphaProvider == null || (view = (View) animatedView.getView().get()) == null) {
            return;
        }
        view.setAlpha(this.alphaProvider.getAlpha(f4));
    }

    private final void applyTransition(AnimatedView animatedView, float f4) {
        View view = (View) animatedView.getView().get();
        if (view != null) {
            float f5 = 1 - f4;
            this.translationApplier.apply(view, animatedView.getStartTranslationX() * f5, animatedView.getStartTranslationY() * f5);
        }
    }

    private final AnimatedView createAnimatedView(View view) {
        return updateAnimatedView(new AnimatedView(new WeakReference(view), 0.0f, 0.0f, 6, null), view);
    }

    private final AnimatedView updateAnimatedView(AnimatedView animatedView, View view) {
        Point point = new Point();
        this.viewCenterProvider.getViewCenter(view, point);
        int i4 = point.x;
        int i5 = point.y;
        if (this.isVerticalFold) {
            animatedView.setStartTranslationX(((this.screenSize.x / 2) - i4) * 0.08f);
            animatedView.setStartTranslationY(0.0f);
        } else {
            animatedView.setStartTranslationX(0.0f);
            animatedView.setStartTranslationY(((this.screenSize.y / 2) - i5) * 0.08f);
        }
        return animatedView;
    }

    public static /* synthetic */ void updateDisplayProperties$default(UnfoldMoveFromCenterAnimator unfoldMoveFromCenterAnimator, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i4 = unfoldMoveFromCenterAnimator.windowManager.getDefaultDisplay().getRotation();
        }
        unfoldMoveFromCenterAnimator.updateDisplayProperties(i4);
    }

    public final void clearRegisteredViews() {
        onTransitionProgress(1.0f);
        this.animatedViews.clear();
    }

    @Override // t1.InterfaceC1405d
    public /* bridge */ /* synthetic */ void onTransitionFinished() {
    }

    @Override // t1.InterfaceC1405d
    public /* bridge */ /* synthetic */ void onTransitionFinishing() {
    }

    @Override // t1.InterfaceC1405d
    public void onTransitionProgress(float f4) {
        for (AnimatedView animatedView : this.animatedViews) {
            applyTransition(animatedView, f4);
            applyAlpha(animatedView, f4);
        }
        this.lastAnimationProgress = f4;
    }

    @Override // t1.InterfaceC1405d
    public /* bridge */ /* synthetic */ void onTransitionStarted() {
    }

    public final void registerViewForAnimation(View view) {
        h.e(view, "view");
        this.animatedViews.add(createAnimatedView(view));
    }

    public final void updateDisplayProperties() {
        updateDisplayProperties$default(this, 0, 1, null);
    }

    public final void updateViewPositions() {
        for (AnimatedView animatedView : this.animatedViews) {
            View view = (View) animatedView.getView().get();
            if (view != null) {
                updateAnimatedView(animatedView, view);
            }
        }
        onTransitionProgress(this.lastAnimationProgress);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public UnfoldMoveFromCenterAnimator(WindowManager windowManager, TranslationApplier translationApplier) {
        this(windowManager, translationApplier, null, null, 12, null);
        h.e(windowManager, "windowManager");
        h.e(translationApplier, "translationApplier");
    }

    public final void updateDisplayProperties(int i4) {
        this.windowManager.getDefaultDisplay().getSize(this.screenSize);
        this.isVerticalFold = i4 == 0 || i4 == 2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public UnfoldMoveFromCenterAnimator(WindowManager windowManager, TranslationApplier translationApplier, ViewCenterProvider viewCenterProvider) {
        this(windowManager, translationApplier, viewCenterProvider, null, 8, null);
        h.e(windowManager, "windowManager");
        h.e(translationApplier, "translationApplier");
        h.e(viewCenterProvider, "viewCenterProvider");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class AnimatedView {
        private float startTranslationX;
        private float startTranslationY;
        private final WeakReference view;

        public AnimatedView(WeakReference view, float f4, float f5) {
            h.e(view, "view");
            this.view = view;
            this.startTranslationX = f4;
            this.startTranslationY = f5;
        }

        public final float getStartTranslationX() {
            return this.startTranslationX;
        }

        public final float getStartTranslationY() {
            return this.startTranslationY;
        }

        public final WeakReference getView() {
            return this.view;
        }

        public final void setStartTranslationX(float f4) {
            this.startTranslationX = f4;
        }

        public final void setStartTranslationY(float f4) {
            this.startTranslationY = f4;
        }

        public /* synthetic */ AnimatedView(WeakReference weakReference, float f4, float f5, int i4, f fVar) {
            this(weakReference, (i4 & 2) != 0 ? 0.0f : f4, (i4 & 4) != 0 ? 0.0f : f5);
        }
    }

    public UnfoldMoveFromCenterAnimator(WindowManager windowManager, TranslationApplier translationApplier, ViewCenterProvider viewCenterProvider, AlphaProvider alphaProvider) {
        h.e(windowManager, "windowManager");
        h.e(translationApplier, "translationApplier");
        h.e(viewCenterProvider, "viewCenterProvider");
        this.windowManager = windowManager;
        this.translationApplier = translationApplier;
        this.viewCenterProvider = viewCenterProvider;
        this.alphaProvider = alphaProvider;
        this.screenSize = new Point();
        this.animatedViews = new ArrayList();
        this.lastAnimationProgress = 1.0f;
    }

    public /* synthetic */ UnfoldMoveFromCenterAnimator(WindowManager windowManager, TranslationApplier translationApplier, ViewCenterProvider viewCenterProvider, AlphaProvider alphaProvider, int i4, f fVar) {
        this(windowManager, (i4 & 2) != 0 ? new TranslationApplier() { // from class: com.android.systemui.shared.animation.UnfoldMoveFromCenterAnimator.1
            @Override // com.android.systemui.shared.animation.UnfoldMoveFromCenterAnimator.TranslationApplier
            public void apply(View view, float f4, float f5) {
                TranslationApplier.DefaultImpls.apply(this, view, f4, f5);
            }
        } : translationApplier, (i4 & 4) != 0 ? new ViewCenterProvider() { // from class: com.android.systemui.shared.animation.UnfoldMoveFromCenterAnimator.2
            @Override // com.android.systemui.shared.animation.UnfoldMoveFromCenterAnimator.ViewCenterProvider
            public void getViewCenter(View view, Point point) {
                ViewCenterProvider.DefaultImpls.getViewCenter(this, view, point);
            }
        } : viewCenterProvider, (i4 & 8) != 0 ? null : alphaProvider);
    }
}
