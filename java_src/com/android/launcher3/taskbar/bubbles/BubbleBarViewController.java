package com.android.launcher3.taskbar.bubbles;

import Z0.h;
import Z0.k;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.taskbar.TaskbarActivityContext;
import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.launcher3.taskbar.TaskbarInsetsController;
import com.android.launcher3.taskbar.TaskbarStashController;
import com.android.launcher3.taskbar.bubbles.BubbleBarViewController;
import com.android.launcher3.taskbar.bubbles.BubbleDragController;
import com.android.launcher3.util.MultiValueAlpha;
import com.android.quickstep.SystemUiProxy;
import com.android.systemui.shared.R;
import java.util.List;
import java.util.Objects;
/* loaded from: classes.dex */
public final class BubbleBarViewController {
    private final TaskbarActivityContext mActivity;
    private final BubbleBarView mBarView;
    private final MultiValueAlpha mBubbleBarAlpha;
    private h mBubbleBarClickListener;
    private BubbleBarController mBubbleBarController;
    private float mBubbleBarSwipeUpTranslationY;
    private h mBubbleClickListener;
    private BubbleDragController mBubbleDragController;
    private BubbleStashController mBubbleStashController;
    private boolean mHiddenForNoBubbles;
    private boolean mHiddenForSysui;
    private final int mIconSize;
    private final SystemUiProxy mSystemUiProxy;
    private TaskbarInsetsController mTaskbarInsetsController;
    private TaskbarStashController mTaskbarStashController;
    private final AnimatedFloat mBubbleBarScale = new AnimatedFloat(new Runnable(this) { // from class: Z0.j

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ BubbleBarViewController f2360e;

        {
            this.f2360e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    BubbleBarViewController.e(this.f2360e);
                    return;
                default:
                    BubbleBarViewController.c(this.f2360e);
                    return;
            }
        }
    });
    private final AnimatedFloat mBubbleBarTranslationY = new AnimatedFloat(new Runnable(this) { // from class: Z0.j

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ BubbleBarViewController f2360e;

        {
            this.f2360e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    BubbleBarViewController.e(this.f2360e);
                    return;
                default:
                    BubbleBarViewController.c(this.f2360e);
                    return;
            }
        }
    });

    public BubbleBarViewController(TaskbarActivityContext taskbarActivityContext, BubbleBarView bubbleBarView) {
        this.mActivity = taskbarActivityContext;
        this.mBarView = bubbleBarView;
        this.mSystemUiProxy = (SystemUiProxy) SystemUiProxy.INSTANCE.get(taskbarActivityContext);
        MultiValueAlpha multiValueAlpha = new MultiValueAlpha(1, bubbleBarView, 4);
        this.mBubbleBarAlpha = multiValueAlpha;
        multiValueAlpha.setUpdateVisibility();
        this.mIconSize = taskbarActivityContext.getResources().getDimensionPixelSize(R.dimen.bubblebar_icon_size);
    }

    public static void b(BubbleBarViewController bubbleBarViewController, View view) {
        bubbleBarViewController.getClass();
        BubbleBarItem bubble = ((BubbleView) view).getBubble();
        if (bubble == null) {
            Log.e("BubbleBarViewController", "bubble click listener, bubble was null");
        }
        String selectedBubbleKey = bubbleBarViewController.mBubbleBarController.getSelectedBubbleKey();
        if (!bubbleBarViewController.mBarView.isExpanded() || !Objects.equals(bubble.getKey(), selectedBubbleKey)) {
            bubbleBarViewController.mBubbleBarController.showAndSelectBubble(bubble);
            return;
        }
        bubbleBarViewController.setExpanded(false);
        bubbleBarViewController.mBubbleStashController.stashBubbleBar();
    }

    public static void c(BubbleBarViewController bubbleBarViewController) {
        bubbleBarViewController.mBarView.setTranslationY(bubbleBarViewController.mBubbleBarTranslationY.value + bubbleBarViewController.mBubbleBarSwipeUpTranslationY);
    }

    public static void e(BubbleBarViewController bubbleBarViewController) {
        float f4 = bubbleBarViewController.mBubbleBarScale.value;
        BubbleBarView bubbleBarView = bubbleBarViewController.mBarView;
        bubbleBarView.setScaleX(f4);
        bubbleBarView.setScaleY(f4);
    }

    public final void addBubble(BubbleBarItem bubbleBarItem) {
        if (bubbleBarItem == null) {
            Log.w("BubbleBarViewController", "addBubble, bubble was null!");
            return;
        }
        BubbleView view = bubbleBarItem.getView();
        int i4 = this.mIconSize;
        this.mBarView.addView(view, 0, new FrameLayout.LayoutParams(i4, i4));
        bubbleBarItem.getView().setOnClickListener(this.mBubbleClickListener);
        BubbleDragController bubbleDragController = this.mBubbleDragController;
        BubbleView view2 = bubbleBarItem.getView();
        bubbleDragController.getClass();
        if (view2.getBubble() instanceof BubbleBarBubble) {
            view2.setOnTouchListener(new BubbleDragController.BubbleTouchListener(view2) { // from class: com.android.launcher3.taskbar.bubbles.BubbleDragController.1
                final /* synthetic */ BubbleView val$bubbleView;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                    this.val$bubbleView = view2;
                }

                @Override // com.android.launcher3.taskbar.bubbles.BubbleDragController.BubbleTouchListener
                public final void onDragEnd() {
                    BubbleDragController.this.mBubbleBarViewController.onDragEnd();
                }

                @Override // com.android.launcher3.taskbar.bubbles.BubbleDragController.BubbleTouchListener
                public final void onDragRelease() {
                    BubbleDragController.this.mBubbleBarViewController.onDragRelease(this.val$bubbleView);
                }

                @Override // com.android.launcher3.taskbar.bubbles.BubbleDragController.BubbleTouchListener
                public final void onDragStart() {
                    BubbleDragController.this.mBubbleBarViewController.onDragStart(this.val$bubbleView);
                }
            });
        }
    }

    public final MultiValueAlpha getBubbleBarAlpha() {
        return this.mBubbleBarAlpha;
    }

    public final Rect getBubbleBarBounds() {
        return this.mBarView.getBubbleBarBounds();
    }

    public final AnimatedFloat getBubbleBarScale() {
        return this.mBubbleBarScale;
    }

    public final AnimatedFloat getBubbleBarTranslationY() {
        return this.mBubbleBarTranslationY;
    }

    public final int getHorizontalMargin() {
        return ((FrameLayout.LayoutParams) this.mBarView.getLayoutParams()).getMarginEnd();
    }

    public final boolean hasBubbles() {
        return this.mBubbleBarController.getSelectedBubbleKey() != null;
    }

    /* JADX WARN: Type inference failed for: r4v7, types: [Z0.h] */
    /* JADX WARN: Type inference failed for: r4v8, types: [Z0.h] */
    public final void init(TaskbarControllers taskbarControllers, BubbleControllers bubbleControllers) {
        this.mBubbleStashController = bubbleControllers.bubbleStashController;
        this.mBubbleBarController = bubbleControllers.bubbleBarController;
        this.mBubbleDragController = bubbleControllers.bubbleDragController;
        this.mTaskbarStashController = taskbarControllers.taskbarStashController;
        this.mTaskbarInsetsController = taskbarControllers.taskbarInsetsController;
        DeviceProfile.OnDeviceProfileChangeListener onDeviceProfileChangeListener = new DeviceProfile.OnDeviceProfileChangeListener() { // from class: Z0.g
            @Override // com.android.launcher3.DeviceProfile.OnDeviceProfileChangeListener
            public final void onDeviceProfileChanged(DeviceProfile deviceProfile) {
                BubbleBarViewController.this.mBarView.getLayoutParams().height = r0.mActivity.getDeviceProfile().taskbarHeight;
            }
        };
        TaskbarActivityContext taskbarActivityContext = this.mActivity;
        taskbarActivityContext.addOnDeviceProfileChangeListener(onDeviceProfileChangeListener);
        final BubbleBarView bubbleBarView = this.mBarView;
        bubbleBarView.getLayoutParams().height = taskbarActivityContext.getDeviceProfile().taskbarHeight;
        this.mBubbleBarScale.updateValue(1.0f);
        this.mBubbleClickListener = new View.OnClickListener(this) { // from class: Z0.h

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ BubbleBarViewController f2357e;

            {
                this.f2357e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (r2) {
                    case 0:
                        BubbleBarViewController.b(this.f2357e, view);
                        return;
                    default:
                        this.f2357e.setExpanded(true);
                        return;
                }
            }
        };
        this.mBubbleBarClickListener = new View.OnClickListener(this) { // from class: Z0.h

            /* renamed from: e  reason: collision with root package name */
            public final /* synthetic */ BubbleBarViewController f2357e;

            {
                this.f2357e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (r2) {
                    case 0:
                        BubbleBarViewController.b(this.f2357e, view);
                        return;
                    default:
                        this.f2357e.setExpanded(true);
                        return;
                }
            }
        };
        BubbleDragController bubbleDragController = this.mBubbleDragController;
        bubbleDragController.getClass();
        final PointF pointF = new PointF();
        bubbleBarView.setOnTouchListener(new BubbleDragController.BubbleTouchListener(bubbleDragController) { // from class: com.android.launcher3.taskbar.bubbles.BubbleDragController.2
            @Override // com.android.launcher3.taskbar.bubbles.BubbleDragController.BubbleTouchListener
            public final void onDragEnd() {
                BubbleBarView bubbleBarView2 = bubbleBarView;
                PointF pointF2 = pointF;
                bubbleBarView2.setRelativePivot(pointF2.x, pointF2.y);
            }

            @Override // com.android.launcher3.taskbar.bubbles.BubbleDragController.BubbleTouchListener
            public final void onDragStart() {
                pointF.set(bubbleBarView.getRelativePivotX(), bubbleBarView.getRelativePivotY());
                bubbleBarView.setRelativePivot(0.5f, 0.5f);
            }

            @Override // com.android.launcher3.taskbar.bubbles.BubbleDragController.BubbleTouchListener
            public final boolean onTouchDown(View view, MotionEvent motionEvent) {
                if (bubbleBarView.isExpanded()) {
                    return false;
                }
                super.onTouchDown(view, motionEvent);
                return true;
            }
        });
        bubbleBarView.setOnClickListener(this.mBubbleBarClickListener);
        bubbleBarView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: Z0.i
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
                BubbleBarViewController.this.mTaskbarInsetsController.onTaskbarOrBubblebarWindowHeightOrInsetsChanged();
            }
        });
    }

    public final boolean isBubbleBarVisible() {
        return this.mBarView.getVisibility() == 0;
    }

    public final boolean isEventOverAnyItem(MotionEvent motionEvent) {
        return this.mBarView.isEventOverAnyItem(motionEvent);
    }

    public final boolean isExpanded() {
        return this.mBarView.isExpanded();
    }

    public final boolean isHiddenForNoBubbles() {
        return this.mHiddenForNoBubbles;
    }

    public final void onDismissAllBubblesWhileDragging() {
        this.mSystemUiProxy.removeAllBubbles();
    }

    public final void onDismissBubbleWhileDragging(BubbleBarItem bubbleBarItem) {
        this.mSystemUiProxy.removeBubble(bubbleBarItem.getKey());
    }

    public final void onDragEnd() {
        this.mBarView.setDraggedBubble(null);
    }

    public final void onDragRelease(BubbleView bubbleView) {
        if (bubbleView.getBubble() == null) {
            return;
        }
        this.mSystemUiProxy.onBubbleDrag(bubbleView.getBubble().getKey(), false);
    }

    public final void onDragStart(BubbleView bubbleView) {
        if (bubbleView.getBubble() == null) {
            return;
        }
        this.mSystemUiProxy.onBubbleDrag(bubbleView.getBubble().getKey(), true);
        this.mBarView.setDraggedBubble(bubbleView);
    }

    public final void removeBubble(BubbleBarBubble bubbleBarBubble) {
        this.mBarView.removeView(bubbleBarBubble.getView());
    }

    public final void reorderBubbles(List list) {
        this.mBarView.reorder(list.stream().filter(new Z0.d()).map(new k()).toList());
    }

    public final void setExpanded(boolean z4) {
        BubbleBarView bubbleBarView = this.mBarView;
        if (z4 != bubbleBarView.isExpanded()) {
            bubbleBarView.setExpanded(z4);
            if (!z4) {
                this.mSystemUiProxy.collapseBubbles();
                return;
            }
            this.mBubbleBarController.showSelectedBubble();
            this.mTaskbarStashController.updateAndAnimateTransientTaskbar(true, false);
        }
    }

    public final void setExpandedFromSysui(boolean z4) {
        if (z4) {
            this.mBubbleStashController.showBubbleBar(true);
        } else {
            this.mBubbleStashController.stashBubbleBar();
        }
    }

    public final void setHiddenForBubbles(boolean z4) {
        if (this.mHiddenForNoBubbles != z4) {
            this.mHiddenForNoBubbles = z4;
            boolean z5 = this.mHiddenForSysui;
            BubbleBarView bubbleBarView = this.mBarView;
            if (!z5 && !z4) {
                bubbleBarView.setVisibility(0);
                return;
            }
            bubbleBarView.setVisibility(4);
            bubbleBarView.setAlpha(0.0f);
            bubbleBarView.setExpanded(false);
        }
    }

    public final void setHiddenForSysui(boolean z4) {
        if (this.mHiddenForSysui != z4) {
            this.mHiddenForSysui = z4;
            BubbleBarView bubbleBarView = this.mBarView;
            if (!z4 && !this.mHiddenForNoBubbles) {
                bubbleBarView.setVisibility(0);
                return;
            }
            bubbleBarView.setVisibility(4);
            bubbleBarView.setAlpha(0.0f);
            bubbleBarView.setExpanded(false);
        }
    }

    public final void setTranslationYForSwipe(float f4) {
        this.mBubbleBarSwipeUpTranslationY = f4;
        this.mBarView.setTranslationY(this.mBubbleBarTranslationY.value + f4);
    }

    public final void setUpdateSelectedBubbleAfterCollapse(Z0.b bVar) {
        this.mBarView.setUpdateSelectedBubbleAfterCollapse(bVar);
    }

    public final void updateSelectedBubble(BubbleBarItem bubbleBarItem) {
        this.mBarView.setSelectedBubble(bubbleBarItem.getView());
    }
}
