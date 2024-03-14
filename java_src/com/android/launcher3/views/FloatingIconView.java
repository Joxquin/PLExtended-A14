package com.android.launcher3.views;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.Drawable;
import android.os.CancellationSignal;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.InsettableFrameLayout;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.util.Executors;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class FloatingIconView extends FrameLayout implements Animator.AnimatorListener, ViewTreeObserver.OnGlobalLayoutListener, FloatingView {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f5330d = 0;
    private static IconLoadResult sIconLoadResult;
    private Drawable mBadge;
    private View mBtvDrawable;
    private ClipIconView mClipIconView;
    private o mEndRunnable;
    private View mFadeOutView;
    private Runnable mFastFinishRunnable;
    private final Rect mFinalDrawableBounds;
    private IconLoadResult mIconLoadResult;
    private boolean mIsOpening;
    private final boolean mIsRtl;
    private final Launcher mLauncher;
    private ListenerView mListenerView;
    private CancellationSignal mLoadIconSignal;
    private View mMatchVisibilityView;
    private Runnable mOnTargetChangeRunnable;
    private View mOriginalIcon;
    private RectF mPositionOut;
    private static long sFetchIconId = 0;
    private static long sRecycledFetchIconId = 0;
    private static final RectF sTmpRectF = new RectF();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class IconLoadResult {
        Drawable badge;
        p btvDrawable;
        Drawable drawable;
        int iconOffset;
        boolean isIconLoaded;
        final boolean isThemed;
        final ItemInfo itemInfo;
        r onIconLoaded;

        public IconLoadResult(ItemInfo itemInfo, boolean z4) {
            this.itemInfo = itemInfo;
            this.isThemed = z4;
        }
    }

    public FloatingIconView(Context context) {
        this(context, null);
    }

    public static /* synthetic */ void a(FloatingIconView floatingIconView, CancellationSignal cancellationSignal) {
        floatingIconView.getClass();
        if (cancellationSignal.isCanceled()) {
            return;
        }
        IconLoadResult iconLoadResult = floatingIconView.mIconLoadResult;
        floatingIconView.setIcon(iconLoadResult.drawable, iconLoadResult.badge, iconLoadResult.btvDrawable, iconLoadResult.iconOffset);
        floatingIconView.setVisibility(0);
        floatingIconView.updateViewsVisibility(false);
    }

    public static /* synthetic */ void b(FloatingIconView floatingIconView, boolean z4, DragLayer dragLayer) {
        floatingIconView.mEndRunnable = null;
        View view = floatingIconView.mFadeOutView;
        if (view != null) {
            view.setAlpha(1.0f);
        }
        if (!z4) {
            floatingIconView.finish(dragLayer);
            return;
        }
        floatingIconView.updateViewsVisibility(true);
        floatingIconView.finish(dragLayer);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00fe A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void c(long r16, com.android.launcher3.Launcher r18, android.view.View r19, com.android.launcher3.model.data.ItemInfo r20, android.graphics.RectF r21, com.android.launcher3.icons.FastBitmapDrawable r22, com.android.launcher3.views.FloatingIconView.IconLoadResult r23) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.views.FloatingIconView.c(long, com.android.launcher3.Launcher, android.view.View, com.android.launcher3.model.data.ItemInfo, android.graphics.RectF, com.android.launcher3.icons.FastBitmapDrawable, com.android.launcher3.views.FloatingIconView$IconLoadResult):void");
    }

    public static IconLoadResult fetchIcon(final Launcher launcher, final View view, final ItemInfo itemInfo, boolean z4) {
        p pVar;
        final FastBitmapDrawable fastBitmapDrawable;
        FastBitmapDrawable icon;
        final RectF rectF = new RectF();
        getLocationBoundsForView(launcher, view, z4, rectF, new Rect());
        boolean z5 = false;
        if (view instanceof BubbleTextView) {
            BubbleTextView bubbleTextView = (BubbleTextView) view;
            if (!(itemInfo instanceof ItemInfoWithIcon) || (((ItemInfoWithIcon) itemInfo).runtimeStatusFlags & 3072) == 0) {
                icon = bubbleTextView.getIcon();
                pVar = new p(icon, 1);
            } else {
                icon = bubbleTextView.makePreloadIcon();
                pVar = new p(icon, 0);
            }
            fastBitmapDrawable = icon;
        } else {
            pVar = null;
            fastBitmapDrawable = null;
        }
        if (fastBitmapDrawable != null && fastBitmapDrawable.isThemed()) {
            z5 = true;
        }
        final IconLoadResult iconLoadResult = new IconLoadResult(itemInfo, z5);
        iconLoadResult.btvDrawable = pVar;
        final long j4 = sFetchIconId;
        sFetchIconId = 1 + j4;
        Executors.MODEL_EXECUTOR.getHandler().postAtFrontOfQueue(new Runnable() { // from class: com.android.launcher3.views.q
            @Override // java.lang.Runnable
            public final void run() {
                FloatingIconView.c(j4, launcher, view, itemInfo, rectF, fastBitmapDrawable, iconLoadResult);
            }
        });
        sIconLoadResult = iconLoadResult;
        return iconLoadResult;
    }

    private void finish(DragLayer dragLayer) {
        ((ViewGroup) dragLayer.getParent()).removeView(this);
        dragLayer.removeView(this.mListenerView);
        recycle();
        this.mLauncher.getViewCache().recycleView(this, R.layout.floating_icon_view);
    }

    /* JADX WARN: Type inference failed for: r9v2, types: [com.android.launcher3.views.r] */
    public static FloatingIconView getFloatingIconView(Launcher launcher, View view, View view2, View view3, boolean z4, RectF rectF, boolean z5) {
        DragLayer dragLayer = launcher.getDragLayer();
        ViewGroup viewGroup = (ViewGroup) dragLayer.getParent();
        final FloatingIconView floatingIconView = (FloatingIconView) launcher.getViewCache().getView(R.layout.floating_icon_view, launcher, viewGroup);
        floatingIconView.recycle();
        floatingIconView.mIsOpening = z5;
        floatingIconView.mOriginalIcon = view;
        floatingIconView.mMatchVisibilityView = view2;
        floatingIconView.mFadeOutView = view3;
        floatingIconView.mPositionOut = rectF;
        boolean z6 = (view.getTag() instanceof ItemInfo) && z4;
        if (z6) {
            IconLoadResult iconLoadResult = sIconLoadResult;
            if (iconLoadResult == null || iconLoadResult.itemInfo != view.getTag()) {
                floatingIconView.mIconLoadResult = fetchIcon(launcher, view, (ItemInfo) view.getTag(), z5);
            } else {
                floatingIconView.mIconLoadResult = sIconLoadResult;
            }
            p pVar = floatingIconView.mIconLoadResult.btvDrawable;
            if (!floatingIconView.mIsOpening) {
                floatingIconView.mBtvDrawable.setBackground(pVar == null ? null : (Drawable) pVar.get());
            }
        }
        sIconLoadResult = null;
        getLocationBoundsForView(launcher, view, z5, rectF, new Rect());
        InsettableFrameLayout.LayoutParams layoutParams = new InsettableFrameLayout.LayoutParams(Math.round(rectF.width()), Math.round(rectF.height()));
        floatingIconView.updatePosition(rectF, layoutParams);
        floatingIconView.setLayoutParams(layoutParams);
        floatingIconView.mClipIconView.setLayoutParams(new FrameLayout.LayoutParams(((FrameLayout.LayoutParams) layoutParams).width, ((FrameLayout.LayoutParams) layoutParams).height, 3));
        floatingIconView.mBtvDrawable.setLayoutParams(new FrameLayout.LayoutParams(((FrameLayout.LayoutParams) layoutParams).width, ((FrameLayout.LayoutParams) layoutParams).height, 3));
        floatingIconView.setVisibility(4);
        viewGroup.addView(floatingIconView);
        dragLayer.addView(floatingIconView.mListenerView);
        floatingIconView.mListenerView.setListener(new Runnable() { // from class: com.android.launcher3.views.n
            @Override // java.lang.Runnable
            public final void run() {
                FloatingIconView.this.fastFinish();
            }
        });
        floatingIconView.mEndRunnable = new o(floatingIconView, z4, dragLayer);
        if (z6) {
            final CancellationSignal cancellationSignal = new CancellationSignal();
            IconLoadResult iconLoadResult2 = floatingIconView.mIconLoadResult;
            if (iconLoadResult2 == null) {
                Log.w("FloatingIconView", "No icon load result found in checkIconResult");
            } else {
                synchronized (iconLoadResult2) {
                    IconLoadResult iconLoadResult3 = floatingIconView.mIconLoadResult;
                    if (iconLoadResult3.isIconLoaded) {
                        floatingIconView.setIcon(iconLoadResult3.drawable, iconLoadResult3.badge, iconLoadResult3.btvDrawable, iconLoadResult3.iconOffset);
                        floatingIconView.setVisibility(0);
                        floatingIconView.updateViewsVisibility(false);
                    } else {
                        iconLoadResult3.onIconLoaded = new Runnable() { // from class: com.android.launcher3.views.r
                            @Override // java.lang.Runnable
                            public final void run() {
                                FloatingIconView.a(FloatingIconView.this, cancellationSignal);
                            }
                        };
                        floatingIconView.mLoadIconSignal = cancellationSignal;
                    }
                }
            }
        }
        return floatingIconView;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void getLocationBoundsForView(com.android.launcher3.Launcher r3, android.view.View r4, boolean r5, android.graphics.RectF r6, android.graphics.Rect r7) {
        /*
            r5 = r5 ^ 1
            boolean r0 = r4 instanceof com.android.launcher3.views.BubbleTextHolder
            r1 = 0
            if (r0 == 0) goto Le
            com.android.launcher3.views.BubbleTextHolder r4 = (com.android.launcher3.views.BubbleTextHolder) r4
            com.android.launcher3.BubbleTextView r4 = r4.getBubbleText()
            goto L20
        Le:
            android.view.ViewParent r0 = r4.getParent()
            boolean r0 = r0 instanceof com.android.launcher3.shortcuts.DeepShortcutView
            if (r0 == 0) goto L21
            android.view.ViewParent r4 = r4.getParent()
            com.android.launcher3.shortcuts.DeepShortcutView r4 = (com.android.launcher3.shortcuts.DeepShortcutView) r4
            android.view.View r4 = r4.getIconView()
        L20:
            r5 = r1
        L21:
            if (r4 != 0) goto L24
            return
        L24:
            boolean r0 = r4 instanceof com.android.launcher3.BubbleTextView
            if (r0 == 0) goto L2f
            r0 = r4
            com.android.launcher3.BubbleTextView r0 = (com.android.launcher3.BubbleTextView) r0
            r0.getIconBounds(r7)
            goto L45
        L2f:
            boolean r0 = r4 instanceof com.android.launcher3.folder.FolderIcon
            if (r0 == 0) goto L3a
            r0 = r4
            com.android.launcher3.folder.FolderIcon r0 = (com.android.launcher3.folder.FolderIcon) r0
            r0.getPreviewBounds(r7)
            goto L45
        L3a:
            int r0 = r4.getWidth()
            int r2 = r4.getHeight()
            r7.set(r1, r1, r0, r2)
        L45:
            com.android.launcher3.dragndrop.DragLayer r3 = r3.getDragLayer()
            com.android.launcher3.Utilities.getBoundsForViewInDragLayer(r3, r4, r7, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.views.FloatingIconView.getLocationBoundsForView(com.android.launcher3.Launcher, android.view.View, boolean, android.graphics.RectF, android.graphics.Rect):void");
    }

    private void recycle() {
        setTranslationX(0.0f);
        setTranslationY(0.0f);
        setScaleX(1.0f);
        setScaleY(1.0f);
        setAlpha(1.0f);
        CancellationSignal cancellationSignal = this.mLoadIconSignal;
        if (cancellationSignal != null) {
            cancellationSignal.cancel();
        }
        this.mLoadIconSignal = null;
        this.mEndRunnable = null;
        this.mFinalDrawableBounds.setEmpty();
        this.mIsOpening = false;
        this.mPositionOut = null;
        this.mListenerView.setListener(null);
        this.mOriginalIcon = null;
        this.mOnTargetChangeRunnable = null;
        this.mBadge = null;
        sRecycledFetchIconId = sFetchIconId;
        this.mIconLoadResult = null;
        this.mClipIconView.recycle();
        this.mBtvDrawable.setBackground(null);
        this.mFastFinishRunnable = null;
        this.mMatchVisibilityView = null;
        this.mFadeOutView = null;
    }

    public static void resetIconLoadResult() {
        sIconLoadResult = null;
    }

    private void setIcon(Drawable drawable, Drawable drawable2, p pVar, int i4) {
        DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        InsettableFrameLayout.LayoutParams layoutParams = (InsettableFrameLayout.LayoutParams) getLayoutParams();
        this.mBadge = drawable2;
        this.mClipIconView.setIcon(drawable, i4, layoutParams, this.mIsOpening, deviceProfile);
        if (drawable instanceof AdaptiveIconDrawable) {
            this.mFinalDrawableBounds.set(0, 0, ((FrameLayout.LayoutParams) layoutParams).width, ((FrameLayout.LayoutParams) layoutParams).height);
            float f4 = this.mLauncher.getDeviceProfile().aspectRatio;
            if (deviceProfile.isLandscape) {
                ((FrameLayout.LayoutParams) layoutParams).width = (int) Math.max(((FrameLayout.LayoutParams) layoutParams).width, ((FrameLayout.LayoutParams) layoutParams).height * f4);
            } else {
                ((FrameLayout.LayoutParams) layoutParams).height = (int) Math.max(((FrameLayout.LayoutParams) layoutParams).height, ((FrameLayout.LayoutParams) layoutParams).width * f4);
            }
            setLayoutParams(layoutParams);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.mClipIconView.getLayoutParams();
            if (this.mBadge != null) {
                FastBitmapDrawable.setBadgeBounds(this.mBadge, new Rect(0, 0, layoutParams2.width, layoutParams2.height));
            }
            layoutParams2.width = ((FrameLayout.LayoutParams) layoutParams).width;
            layoutParams2.height = ((FrameLayout.LayoutParams) layoutParams).height;
            this.mClipIconView.setLayoutParams(layoutParams2);
        }
        if (!this.mIsOpening) {
            this.mBtvDrawable.setBackground(pVar == null ? null : (Drawable) pVar.get());
        }
        invalidate();
    }

    private void updatePosition(RectF rectF, InsettableFrameLayout.LayoutParams layoutParams) {
        this.mPositionOut.set(rectF);
        layoutParams.ignoreInsets = true;
        ((FrameLayout.LayoutParams) layoutParams).topMargin = Math.round(rectF.top);
        if (this.mIsRtl) {
            layoutParams.setMarginStart(Math.round(this.mLauncher.getDeviceProfile().widthPx - rectF.right));
        } else {
            layoutParams.setMarginStart(Math.round(rectF.left));
        }
        int marginStart = this.mIsRtl ? (this.mLauncher.getDeviceProfile().widthPx - layoutParams.getMarginStart()) - ((FrameLayout.LayoutParams) layoutParams).width : ((FrameLayout.LayoutParams) layoutParams).leftMargin;
        int i4 = ((FrameLayout.LayoutParams) layoutParams).topMargin;
        layout(marginStart, i4, ((FrameLayout.LayoutParams) layoutParams).width + marginStart, ((FrameLayout.LayoutParams) layoutParams).height + i4);
    }

    private void updateViewsVisibility(boolean z4) {
        View view = this.mOriginalIcon;
        if (view != null) {
            IconLabelDotView.setIconAndDotVisible(view, z4);
        }
        View view2 = this.mMatchVisibilityView;
        if (view2 != null) {
            IconLabelDotView.setIconAndDotVisible(view2, z4);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        Drawable drawable = this.mBadge;
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }

    @Override // com.android.launcher3.views.FloatingView
    public final void fastFinish() {
        Runnable runnable = this.mFastFinishRunnable;
        if (runnable != null) {
            runnable.run();
            this.mFastFinishRunnable = null;
        }
        CancellationSignal cancellationSignal = this.mLoadIconSignal;
        if (cancellationSignal != null) {
            cancellationSignal.cancel();
            this.mLoadIconSignal = null;
        }
        o oVar = this.mEndRunnable;
        if (oVar != null) {
            oVar.run();
            this.mEndRunnable = null;
        }
    }

    public final boolean isDifferentFromAppIcon() {
        IconLoadResult iconLoadResult = this.mIconLoadResult;
        if (iconLoadResult == null) {
            return false;
        }
        return iconLoadResult.isThemed;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        CancellationSignal cancellationSignal = this.mLoadIconSignal;
        if (cancellationSignal != null) {
            cancellationSignal.cancel();
        }
        o oVar = this.mEndRunnable;
        if (oVar != null) {
            oVar.run();
        } else {
            this.mClipIconView.endReveal();
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        IconLoadResult iconLoadResult = this.mIconLoadResult;
        if ((iconLoadResult != null && iconLoadResult.isIconLoaded) || (!this.mIsOpening && this.mBtvDrawable.getBackground() != null)) {
            setVisibility(0);
        }
        if (this.mIsOpening) {
            return;
        }
        updateViewsVisibility(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mIsOpening) {
            return;
        }
        getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        getViewTreeObserver().removeOnGlobalLayoutListener(this);
        super.onDetachedFromWindow();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        View view = this.mOriginalIcon;
        if (view == null || !view.isAttachedToWindow() || this.mPositionOut == null) {
            return;
        }
        Launcher launcher = this.mLauncher;
        View view2 = this.mOriginalIcon;
        boolean z4 = this.mIsOpening;
        RectF rectF = sTmpRectF;
        getLocationBoundsForView(launcher, view2, z4, rectF, new Rect());
        rectF.offset(0.0f, 0.0f);
        if (rectF.equals(this.mPositionOut)) {
            return;
        }
        updatePosition(rectF, (InsettableFrameLayout.LayoutParams) getLayoutParams());
        Runnable runnable = this.mOnTargetChangeRunnable;
        if (runnable != null) {
            runnable.run();
        }
    }

    public final void setFastFinishRunnable(Runnable runnable) {
        this.mFastFinishRunnable = runnable;
    }

    public final void setOnTargetChangeListener(Runnable runnable) {
        this.mOnTargetChangeRunnable = runnable;
    }

    public final void update(float f4, RectF rectF, float f5, float f6, float f7, boolean z4) {
        setAlpha(f4);
        this.mClipIconView.update(rectF, f5, f6, f7, z4, this, this.mLauncher.getDeviceProfile());
        View view = this.mFadeOutView;
        if (view != null) {
            view.setAlpha(1.0f - Math.min(1.0f, Utilities.mapToRange(f5, 0.0f, 0.33f, 0.0f, 1.0f, y0.e.f12949m)));
        }
    }

    public FloatingIconView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FloatingIconView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mFinalDrawableBounds = new Rect();
        this.mLauncher = Launcher.getLauncher(context);
        this.mIsRtl = Utilities.isRtl(getResources());
        this.mListenerView = new ListenerView(context, attributeSet);
        this.mClipIconView = new ClipIconView(context, attributeSet);
        ImageView imageView = new ImageView(context, attributeSet);
        this.mBtvDrawable = imageView;
        addView(imageView);
        addView(this.mClipIconView);
        setWillNotDraw(false);
    }
}
