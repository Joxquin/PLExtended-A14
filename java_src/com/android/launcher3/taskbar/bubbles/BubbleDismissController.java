package com.android.launcher3.taskbar.bubbles;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.dynamicanimation.animation.m;
import com.android.launcher3.taskbar.TaskbarActivityContext;
import com.android.launcher3.taskbar.TaskbarDragLayer;
import com.android.systemui.shared.R;
import com.android.wm.shell.animation.g;
import com.android.wm.shell.animation.l;
import com.android.wm.shell.common.bubbles.e;
import com.android.wm.shell.common.bubbles.f;
import com.android.wm.shell.common.bubbles.h;
/* loaded from: classes.dex */
public final class BubbleDismissController {
    private final TaskbarActivityContext mActivity;
    private BubbleDragAnimator mAnimator;
    private BubbleBarViewController mBubbleBarViewController;
    private h mDismissView;
    private final TaskbarDragLayer mDragLayer;
    private com.android.wm.shell.common.magnetictarget.c mMagneticTarget;
    private com.android.wm.shell.common.magnetictarget.d mMagnetizedObject;

    public BubbleDismissController(TaskbarActivityContext taskbarActivityContext, TaskbarDragLayer taskbarDragLayer) {
        this.mActivity = taskbarActivityContext;
        this.mDragLayer = taskbarDragLayer;
    }

    public static void b(BubbleDismissController bubbleDismissController) {
        com.android.wm.shell.common.magnetictarget.d dVar = bubbleDismissController.mMagnetizedObject;
        if (dVar == null || bubbleDismissController.mBubbleBarViewController == null) {
            return;
        }
        if (!(dVar.getUnderlyingObject() instanceof BubbleView)) {
            if (bubbleDismissController.mMagnetizedObject.getUnderlyingObject() instanceof BubbleBarView) {
                bubbleDismissController.mBubbleBarViewController.onDismissAllBubblesWhileDragging();
                return;
            }
            return;
        }
        BubbleView bubbleView = (BubbleView) bubbleDismissController.mMagnetizedObject.getUnderlyingObject();
        if (bubbleView.getBubble() != null) {
            bubbleDismissController.mBubbleBarViewController.onDismissBubbleWhileDragging(bubbleView.getBubble());
        }
    }

    public final boolean handleTouchEvent(MotionEvent motionEvent) {
        com.android.wm.shell.common.magnetictarget.d dVar = this.mMagnetizedObject;
        return dVar != null && dVar.maybeConsumeMotionEvent(motionEvent);
    }

    public final void hideDismissView() {
        h hVar = this.mDismissView;
        if (hVar == null) {
            return;
        }
        hVar.a();
    }

    public final void init(BubbleControllers bubbleControllers) {
        this.mBubbleBarViewController = bubbleControllers.bubbleBarViewController;
    }

    public final void setupDismissView(View view, BubbleDragAnimator bubbleDragAnimator) {
        h hVar = this.mDismissView;
        TaskbarActivityContext taskbarActivityContext = this.mActivity;
        if (hVar == null) {
            h hVar2 = new h(taskbarActivityContext.getApplicationContext());
            this.mDismissView = hVar2;
            hVar2.f6334f = new f();
            hVar2.setLayoutParams(new FrameLayout.LayoutParams(-1, hVar2.getResources().getDimensionPixelSize(R.dimen.bubblebar_dismiss_floating_gradient_height), 80));
            f fVar = hVar2.f6334f;
            if (fVar == null) {
                Log.e(h.f6331m, "The view isn't ready. Should be called after `setup`");
            }
            if (fVar != null) {
                WindowInsets windowInsets = hVar2.f6338j.getCurrentWindowMetrics().getWindowInsets();
                kotlin.jvm.internal.h.d(windowInsets, "wm.getCurrentWindowMetrics().getWindowInsets()");
                hVar2.setPadding(0, 0, 0, hVar2.getResources().getDimensionPixelSize(fVar.f6326c) + windowInsets.getInsetsIgnoringVisibility(WindowInsets.Type.navigationBars()).bottom);
            }
            Context context = hVar2.getContext();
            Object obj = B.c.f105a;
            int color = context.getColor(17170472);
            GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, new int[]{Color.argb((int) 178.5f, Color.red(color), Color.green(color), Color.blue(color)), 0});
            gradientDrawable.setDither(true);
            gradientDrawable.setAlpha(0);
            hVar2.f6339k = gradientDrawable;
            hVar2.setBackgroundDrawable(gradientDrawable);
            e eVar = hVar2.f6332d;
            eVar.f6321d = R.drawable.bg_bubble_dismiss_circle;
            eVar.f6322e = R.dimen.bubblebar_dismiss_target_icon_size;
            eVar.setBackground(eVar.getContext().getDrawable(R.drawable.bg_bubble_dismiss_circle));
            eVar.f6323f.setImageDrawable(eVar.getContext().getDrawable(R.drawable.ic_bubble_dismiss_white));
            int dimensionPixelSize = eVar.getResources().getDimensionPixelSize(eVar.f6322e);
            eVar.f6323f.setLayoutParams(new FrameLayout.LayoutParams(dimensionPixelSize, dimensionPixelSize, 17));
            int dimensionPixelSize2 = hVar2.getResources().getDimensionPixelSize(R.dimen.bubblebar_dismiss_target_size);
            hVar2.f6332d.setLayoutParams(new FrameLayout.LayoutParams(dimensionPixelSize2, dimensionPixelSize2, 81));
            hVar2.f6332d.setTranslationY(hVar2.getResources().getDimensionPixelSize(R.dimen.bubblebar_dismiss_floating_gradient_height));
            this.mDragLayer.addView(this.mDismissView, 0, new FrameLayout.LayoutParams(-1, -1));
            h hVar3 = this.mDismissView;
            hVar3.setElevation(hVar3.getResources().getDimensionPixelSize(R.dimen.bubblebar_elevation));
            this.mMagneticTarget = new com.android.wm.shell.common.magnetictarget.c(this.mDismissView.f6332d, taskbarActivityContext.getResources().getDimensionPixelSize(R.dimen.bubblebar_dismiss_target_size));
        }
        com.android.wm.shell.common.magnetictarget.d dVar = new com.android.wm.shell.common.magnetictarget.d(taskbarActivityContext.getApplicationContext(), view, m.f3183m, m.f3184n) { // from class: com.android.launcher3.taskbar.bubbles.BubbleDismissController.1
            @Override // com.android.wm.shell.common.magnetictarget.d
            public final float getHeight(Object obj2) {
                View view2 = (View) obj2;
                return view2.getScaleY() * view2.getHeight();
            }

            @Override // com.android.wm.shell.common.magnetictarget.d
            public final void getLocationOnScreen(Object obj2, int[] iArr) {
                ((View) obj2).getLocationOnScreen(iArr);
            }

            @Override // com.android.wm.shell.common.magnetictarget.d
            public final float getWidth(Object obj2) {
                View view2 = (View) obj2;
                return view2.getScaleX() * view2.getWidth();
            }
        };
        this.mMagnetizedObject = dVar;
        dVar.setHapticsEnabled();
        this.mMagnetizedObject.setFlingToTargetMinVelocity();
        com.android.wm.shell.common.magnetictarget.c cVar = this.mMagneticTarget;
        if (cVar != null) {
            this.mMagnetizedObject.addTarget(cVar);
        } else {
            Log.e("BubbleDismissController", "Requires MagneticTarget to add target to MagnetizedObject!");
        }
        com.android.wm.shell.common.magnetictarget.d dVar2 = this.mMagnetizedObject;
        com.android.wm.shell.common.magnetictarget.a aVar = new com.android.wm.shell.common.magnetictarget.a() { // from class: com.android.launcher3.taskbar.bubbles.BubbleDismissController.2
            @Override // com.android.wm.shell.common.magnetictarget.a
            public final void onReleasedInTarget() {
                BubbleDismissController.b(BubbleDismissController.this);
            }

            @Override // com.android.wm.shell.common.magnetictarget.a
            public final void onStuckToTarget() {
                BubbleDismissController bubbleDismissController = BubbleDismissController.this;
                if (bubbleDismissController.mAnimator == null) {
                    return;
                }
                bubbleDismissController.mAnimator.animateDismissCaptured();
            }

            @Override // com.android.wm.shell.common.magnetictarget.a
            public final void onUnstuckFromTarget() {
                BubbleDismissController bubbleDismissController = BubbleDismissController.this;
                if (bubbleDismissController.mAnimator == null) {
                    return;
                }
                bubbleDismissController.mAnimator.animateDismissReleased();
            }
        };
        dVar2.getClass();
        dVar2.magnetListener = aVar;
        h hVar4 = this.mDismissView;
        if (hVar4 != null) {
            bubbleDragAnimator.setDismissView(hVar4);
            this.mAnimator = bubbleDragAnimator;
        }
    }

    public final void showDismissView() {
        h hVar = this.mDismissView;
        if (hVar == null || hVar.f6333e) {
            return;
        }
        GradientDrawable gradientDrawable = hVar.f6339k;
        if (gradientDrawable == null) {
            Log.e(h.f6331m, "The view isn't ready. Should be called after `setup`");
        }
        if (gradientDrawable == null) {
            return;
        }
        hVar.f6333e = true;
        hVar.setVisibility(0);
        ObjectAnimator ofInt = ObjectAnimator.ofInt(gradientDrawable, hVar.f6340l, gradientDrawable.getAlpha(), 255);
        ofInt.setDuration(hVar.f6337i);
        ofInt.start();
        hVar.f6335g.a();
        l lVar = hVar.f6335g;
        androidx.dynamicanimation.animation.h TRANSLATION_Y = m.f3184n;
        kotlin.jvm.internal.h.d(TRANSLATION_Y, "TRANSLATION_Y");
        g config = hVar.f6336h;
        lVar.getClass();
        kotlin.jvm.internal.h.e(config, "config");
        lVar.g(TRANSLATION_Y, 0.0f, 0.0f, config);
        lVar.h();
    }
}
