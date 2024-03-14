package com.android.launcher3.dragndrop;

import J0.h;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Path;
import android.graphics.Picture;
import android.graphics.Rect;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PictureDrawable;
import android.os.Handler;
import android.os.Looper;
import android.util.FloatProperty;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.dynamicanimation.animation.q;
import androidx.dynamicanimation.animation.s;
import androidx.dynamicanimation.animation.t;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.Utilities;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.RunnableList;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import com.google.android.apps.nexuslauncher.allapps.M2;
import java.util.Objects;
import y0.e;
/* loaded from: classes.dex */
public abstract class DragView extends FrameLayout {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f4582d = 0;
    protected final Context mActivity;
    private int mAnimatedShiftX;
    private int mAnimatedShiftY;
    private Drawable mBadge;
    private Drawable mBgSpringDrawable;
    private final int mBlurSizeOutline;
    private final View mContent;
    private int mContentViewInParentViewIndex;
    private ViewGroup.LayoutParams mContentViewLayoutParams;
    private ViewGroup mContentViewParent;
    private final BaseDragLayer mDragLayer;
    private Rect mDragRegion;
    private final float mEndScale;
    private Drawable mFgSpringDrawable;
    private boolean mHasDragOffset;
    private boolean mHasDrawn;
    private final int mHeight;
    private final float mInitialScale;
    private int mLastTouchX;
    private int mLastTouchY;
    private final RunnableList mOnDragStartCallback;
    private Runnable mOnScaleAnimEndCallback;
    private Runnable mOnShiftAnimEndCallback;
    protected final int mRegistrationX;
    protected final int mRegistrationY;
    final ValueAnimator mScaleAnim;
    private boolean mScaleAnimStarted;
    protected final float mScaleOnDrop;
    private Path mScaledMaskPath;
    final ValueAnimator mShiftAnim;
    private boolean mShiftAnimStarted;
    protected final int[] mTempLoc;
    private SpringFloatValue mTranslateX;
    private SpringFloatValue mTranslateY;
    private final int mWidth;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class SpringFloatValue {
        private static final q VALUE = new q() { // from class: com.android.launcher3.dragndrop.DragView.SpringFloatValue.1
            @Override // androidx.dynamicanimation.animation.q
            public final float getValue(Object obj) {
                return ((SpringFloatValue) obj).mValue;
            }

            @Override // androidx.dynamicanimation.animation.q
            public final void setValue(Object obj, float f4) {
                SpringFloatValue springFloatValue = (SpringFloatValue) obj;
                springFloatValue.mValue = f4;
                springFloatValue.mView.invalidate();
            }
        };
        private final float mDelta;
        private final s mSpring;
        private float mValue;
        private final View mView;

        public SpringFloatValue(View view, float f4) {
            this.mView = view;
            s sVar = new s(this, VALUE);
            sVar.f3201h = -f4;
            sVar.f3200g = f4;
            t tVar = new t(0.0f);
            tVar.a(1.0f);
            tVar.b(4000.0f);
            sVar.f3211x = tVar;
            this.mSpring = sVar;
            this.mDelta = Math.min(f4, view.getResources().getDisplayMetrics().density * 8.0f);
        }

        public final void animateToPos(float f4) {
            float f5 = this.mDelta;
            this.mSpring.j(Utilities.boundToRange(f4, -f5, f5));
        }
    }

    public DragView(Context context, View view, int i4, int i5, int i6, int i7, final float f4, float f5, float f6) {
        super(context);
        this.mContentViewInParentViewIndex = -1;
        this.mTempLoc = new int[2];
        this.mOnDragStartCallback = new RunnableList();
        this.mDragRegion = null;
        this.mHasDrawn = false;
        this.mActivity = context;
        this.mDragLayer = ((ActivityContext) context).getDragLayer();
        this.mContent = view;
        this.mWidth = i4;
        this.mHeight = i5;
        this.mContentViewLayoutParams = view.getLayoutParams();
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            this.mContentViewParent = viewGroup;
            this.mContentViewInParentViewIndex = viewGroup.indexOfChild(view);
            this.mContentViewParent.removeView(view);
        }
        addView(view, new FrameLayout.LayoutParams(i4, i5));
        if (view.getScaleX() != 1.0f || view.getScaleY() != 1.0f) {
            setClipChildren(false);
            setClipToPadding(false);
        }
        float f7 = i4;
        this.mEndScale = (f6 + f7) / f7;
        setScaleX(f4);
        setScaleY(f4);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.mScaleAnim = ofFloat;
        ofFloat.setDuration(150L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: J0.f
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DragView.d(DragView.this, f4, valueAnimator);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter(this) { // from class: com.android.launcher3.dragndrop.DragView.1
            final /* synthetic */ DragView this$0;

            {
                this.this$0 = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                switch (r2) {
                    case 0:
                        super.onAnimationEnd(animator);
                        if (this.this$0.mOnScaleAnimEndCallback != null) {
                            this.this$0.mOnScaleAnimEndCallback.run();
                            return;
                        }
                        return;
                    default:
                        if (this.this$0.mOnShiftAnimEndCallback != null) {
                            this.this$0.mOnShiftAnimEndCallback.run();
                            return;
                        }
                        return;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                switch (r2) {
                    case 0:
                        this.this$0.mScaleAnimStarted = true;
                        return;
                    default:
                        this.this$0.mShiftAnimStarted = true;
                        return;
                }
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.mShiftAnim = ofFloat2;
        ofFloat2.addListener(new AnimatorListenerAdapter(this) { // from class: com.android.launcher3.dragndrop.DragView.1
            final /* synthetic */ DragView this$0;

            {
                this.this$0 = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                switch (r2) {
                    case 0:
                        super.onAnimationEnd(animator);
                        if (this.this$0.mOnScaleAnimEndCallback != null) {
                            this.this$0.mOnScaleAnimEndCallback.run();
                            return;
                        }
                        return;
                    default:
                        if (this.this$0.mOnShiftAnimEndCallback != null) {
                            this.this$0.mOnShiftAnimEndCallback.run();
                            return;
                        }
                        return;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                switch (r2) {
                    case 0:
                        this.this$0.mScaleAnimStarted = true;
                        return;
                    default:
                        this.this$0.mShiftAnimStarted = true;
                        return;
                }
            }
        });
        this.mDragRegion = new Rect(0, 0, i4, i5);
        this.mRegistrationX = i6;
        this.mRegistrationY = i7;
        this.mInitialScale = f4;
        this.mScaleOnDrop = f5;
        measure(View.MeasureSpec.makeMeasureSpec(i4, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(i5, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
        this.mBlurSizeOutline = getResources().getDimensionPixelSize(R.dimen.blur_size_medium_outline);
        setElevation(getResources().getDimension(R.dimen.drag_elevation));
        setWillNotDraw(false);
    }

    public static void a(DragView dragView, ItemInfo itemInfo) {
        Drawable adaptiveIconDrawable;
        Object[] objArr = new Object[1];
        boolean[] zArr = new boolean[1];
        int i4 = dragView.mWidth;
        int i5 = dragView.mHeight;
        Drawable fullDrawable = Utilities.getFullDrawable(dragView.mActivity, itemInfo, i4, i5, true, objArr, zArr);
        if (fullDrawable instanceof AdaptiveIconDrawable) {
            int dimension = ((int) dragView.mActivity.getResources().getDimension(R.dimen.blur_size_medium_outline)) / 2;
            Rect rect = new Rect(0, 0, i4, i5);
            rect.inset(dimension, dimension);
            Drawable badge = Utilities.getBadge(dragView.mActivity, itemInfo, objArr[0], zArr[0]);
            dragView.mBadge = badge;
            FastBitmapDrawable.setBadgeBounds(badge, rect);
            boolean z4 = true ^ (fullDrawable instanceof FolderAdaptiveIcon);
            LauncherIcons obtain = LauncherIcons.obtain(dragView.mActivity);
            if (z4) {
                adaptiveIconDrawable = fullDrawable;
            } else {
                try {
                    adaptiveIconDrawable = new AdaptiveIconDrawable(new ColorDrawable(-16777216), null);
                } catch (Throwable th) {
                    try {
                        obtain.recycle();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            Utilities.scaleRectAboutCenter(rect, obtain.getNormalizer().getScale(adaptiveIconDrawable, null, null, null));
            obtain.recycle();
            AdaptiveIconDrawable adaptiveIconDrawable2 = (AdaptiveIconDrawable) fullDrawable;
            Rect rect2 = new Rect(rect);
            Utilities.scaleRectAboutCenter(rect2, 0.98f);
            adaptiveIconDrawable2.setBounds(rect2);
            Path iconMask = adaptiveIconDrawable2.getIconMask();
            dragView.mTranslateX = new SpringFloatValue(dragView, AdaptiveIconDrawable.getExtraInsetFraction() * i4);
            dragView.mTranslateY = new SpringFloatValue(dragView, AdaptiveIconDrawable.getExtraInsetFraction() * i5);
            rect.inset((int) (AdaptiveIconDrawable.getExtraInsetFraction() * (-rect.width())), (int) (AdaptiveIconDrawable.getExtraInsetFraction() * (-rect.height())));
            Drawable background = adaptiveIconDrawable2.getBackground();
            dragView.mBgSpringDrawable = background;
            if (background == null) {
                dragView.mBgSpringDrawable = new ColorDrawable(0);
            }
            dragView.mBgSpringDrawable.setBounds(rect);
            Drawable foreground = adaptiveIconDrawable2.getForeground();
            dragView.mFgSpringDrawable = foreground;
            if (foreground == null) {
                dragView.mFgSpringDrawable = new ColorDrawable(0);
            }
            dragView.mFgSpringDrawable.setBounds(rect);
            new Handler(Looper.getMainLooper()).post(new h(dragView, iconMask, itemInfo, 0));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyTranslation() {
        setTranslationX((this.mLastTouchX - this.mRegistrationX) + this.mAnimatedShiftX);
        setTranslationY((this.mLastTouchY - this.mRegistrationY) + this.mAnimatedShiftY);
    }

    public static /* synthetic */ void c(DragView dragView, Path path, ItemInfo itemInfo) {
        dragView.mScaledMaskPath = path;
        dragView.removeAllViewsInLayout();
        if (itemInfo.isDisabled()) {
            ColorFilter disabledColorFilter = FastBitmapDrawable.getDisabledColorFilter();
            dragView.mBgSpringDrawable.setColorFilter(disabledColorFilter);
            dragView.mFgSpringDrawable.setColorFilter(disabledColorFilter);
            dragView.mBadge.setColorFilter(disabledColorFilter);
        }
        dragView.invalidate();
    }

    public static void d(DragView dragView, float f4, ValueAnimator valueAnimator) {
        dragView.getClass();
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float f5 = dragView.mEndScale;
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        dragView.setScaleX(((f5 - f4) * floatValue) + f4);
        dragView.setScaleY(((dragView.mEndScale - f4) * floatValue) + f4);
        if (dragView.isAttachedToWindow()) {
            return;
        }
        valueAnimator.cancel();
    }

    public final void animateShift(final int i4, final int i5) {
        if (this.mShiftAnim.isStarted()) {
            return;
        }
        View view = this.mContent;
        if (view != null) {
            view.setVisibility(0);
        }
        this.mAnimatedShiftX = i4;
        this.mAnimatedShiftY = i5;
        applyTranslation();
        this.mShiftAnim.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.dragndrop.DragView.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float animatedFraction = 1.0f - valueAnimator.getAnimatedFraction();
                DragView.this.mAnimatedShiftX = (int) (i4 * animatedFraction);
                DragView.this.mAnimatedShiftY = (int) (animatedFraction * i5);
                DragView.this.applyTranslation();
            }
        });
        this.mShiftAnim.start();
    }

    public abstract void animateTo(int i4, int i5, Runnable runnable, int i6);

    public final void cancelAnimation() {
        ValueAnimator valueAnimator = this.mScaleAnim;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        this.mScaleAnim.cancel();
    }

    public final void crossFadeContent(FastBitmapDrawable fastBitmapDrawable, int i4) {
        if (this.mContent.getParent() == null) {
            return;
        }
        ImageView imageView = new ImageView(getContext());
        imageView.setImageDrawable(fastBitmapDrawable);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.measure(View.MeasureSpec.makeMeasureSpec(this.mWidth, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(this.mHeight, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
        imageView.layout(0, 0, this.mWidth, this.mHeight);
        addViewInLayout(imageView, 0, new FrameLayout.LayoutParams(this.mWidth, this.mHeight));
        AnimatorSet animatorSet = new AnimatorSet();
        FloatProperty floatProperty = LauncherAnimUtils.VIEW_ALPHA;
        animatorSet.play(ObjectAnimator.ofFloat(imageView, floatProperty, 0.0f, 1.0f));
        animatorSet.play(ObjectAnimator.ofFloat(this.mContent, floatProperty, 0.0f));
        animatorSet.setDuration(i4).setInterpolator(e.f12927A);
        animatorSet.start();
    }

    public final void detachContentView(boolean z4) {
        if (this.mContent == null || this.mContentViewParent == null || this.mContentViewInParentViewIndex < 0) {
            return;
        }
        Picture picture = new Picture();
        this.mContent.draw(picture.beginRecording(this.mWidth, this.mHeight));
        picture.endRecording();
        View view = new View(this.mActivity);
        view.setBackground(new PictureDrawable(picture));
        view.measure(View.MeasureSpec.makeMeasureSpec(this.mWidth, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(this.mHeight, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
        view.layout(this.mContent.getLeft(), this.mContent.getTop(), this.mContent.getRight(), this.mContent.getBottom());
        setClipToOutline(this.mContent.getClipToOutline());
        setOutlineProvider(this.mContent.getOutlineProvider());
        addViewInLayout(view, indexOfChild(this.mContent), this.mContent.getLayoutParams(), true);
        removeViewInLayout(this.mContent);
        this.mContent.setVisibility(4);
        this.mContent.setLayoutParams(this.mContentViewLayoutParams);
        if (z4) {
            this.mContentViewParent.addView(this.mContent, this.mContentViewInParentViewIndex);
        }
        this.mContentViewParent = null;
        this.mContentViewInParentViewIndex = -1;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        this.mHasDrawn = true;
        if (this.mScaledMaskPath != null) {
            int save = canvas.save();
            canvas.clipPath(this.mScaledMaskPath);
            this.mBgSpringDrawable.draw(canvas);
            canvas.translate(this.mTranslateX.mValue, this.mTranslateY.mValue);
            this.mFgSpringDrawable.draw(canvas);
            canvas.restoreToCount(save);
            this.mBadge.draw(canvas);
        }
    }

    public final int getBlurSizeOutline() {
        return this.mBlurSizeOutline;
    }

    public final View getContentView() {
        return this.mContent;
    }

    public final ViewGroup getContentViewParent() {
        return this.mContentViewParent;
    }

    public final Rect getDragRegion() {
        return this.mDragRegion;
    }

    public final int getDragRegionHeight() {
        return this.mDragRegion.height();
    }

    public final int getDragRegionWidth() {
        return this.mDragRegion.width();
    }

    public final float getEndScale() {
        return this.mEndScale;
    }

    public final float getInitialScale() {
        return this.mInitialScale;
    }

    public final boolean hasDrawn() {
        return this.mHasDrawn;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    public final boolean isScaleAnimationFinished() {
        return this.mScaleAnimStarted && !this.mScaleAnim.isRunning();
    }

    public final boolean isShiftAnimationFinished() {
        return this.mShiftAnimStarted && !this.mShiftAnim.isRunning();
    }

    public final void move(int i4, int i5) {
        int i6;
        if (i4 > 0 && i5 > 0 && (i6 = this.mLastTouchX) > 0 && this.mLastTouchY > 0 && this.mScaledMaskPath != null) {
            this.mTranslateX.animateToPos(i6 - i4);
            this.mTranslateY.animateToPos(this.mLastTouchY - i5);
        }
        this.mLastTouchX = i4;
        this.mLastTouchY = i5;
        applyTranslation();
    }

    public final void onDragStart() {
        this.mOnDragStartCallback.executeAllAndDestroy();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.mWidth, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(this.mHeight, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
    }

    public final void remove() {
        if (getParent() != null) {
            this.mDragLayer.removeView(this);
        }
    }

    public final void setDragRegion(Rect rect) {
        this.mDragRegion = rect;
    }

    public final void setHasDragOffset(boolean z4) {
        this.mHasDragOffset = z4;
    }

    public final void setOnScaleAnimEndCallback(Runnable runnable) {
        this.mOnScaleAnimEndCallback = runnable;
    }

    public final void setOnShiftAnimEndCallback(M2 m22) {
        this.mOnShiftAnimEndCallback = m22;
    }

    public final void show(int i4, int i5) {
        this.mDragLayer.addView(this);
        BaseDragLayer.LayoutParams layoutParams = new BaseDragLayer.LayoutParams(this.mWidth, this.mHeight);
        layoutParams.customPosition = true;
        setLayoutParams(layoutParams);
        View view = this.mContent;
        if (view != null) {
            if (this.mHasDragOffset) {
                view.setVisibility(4);
            } else {
                view.setVisibility(0);
            }
        }
        move(i4, i5);
        final ValueAnimator valueAnimator = this.mScaleAnim;
        Objects.requireNonNull(valueAnimator);
        post(new Runnable() { // from class: J0.e
            @Override // java.lang.Runnable
            public final void run() {
                valueAnimator.start();
            }
        });
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DragView(android.content.Context r11, android.graphics.drawable.Drawable r12, int r13, int r14, float r15, float r16, float r17) {
        /*
            r10 = this;
            android.widget.ImageView r2 = new android.widget.ImageView
            r1 = r11
            r2.<init>(r11)
            r0 = r12
            r2.setImageDrawable(r12)
            int r3 = r12.getIntrinsicWidth()
            int r4 = r12.getIntrinsicHeight()
            r0 = r10
            r1 = r11
            r5 = r13
            r6 = r14
            r7 = r15
            r8 = r16
            r9 = r17
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.dragndrop.DragView.<init>(android.content.Context, android.graphics.drawable.Drawable, int, int, float, float, float):void");
    }
}
