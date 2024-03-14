package com.android.launcher3.secondarydisplay;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.secondarydisplay.SecondaryDragView;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class SecondaryDragView extends DragView {
    public SecondaryDragView(SecondaryDisplayLauncher secondaryDisplayLauncher, Drawable drawable, int i4, int i5, float f4, float f5, float f6) {
        super(secondaryDisplayLauncher, drawable, i4, i5, f4, f5, f6);
    }

    public static /* synthetic */ void l(SecondaryDragView secondaryDragView, Runnable runnable) {
        if (runnable != null) {
            secondaryDragView.getClass();
            runnable.run();
        }
        ((SecondaryDisplayLauncher) secondaryDragView.mActivity).getDragLayer().removeView(secondaryDragView);
    }

    @Override // com.android.launcher3.dragndrop.DragView
    public final void animateTo(int i4, int i5, final Runnable runnable, int i6) {
        animate().translationX(i4 - this.mRegistrationX).translationY(i5 - this.mRegistrationY).scaleX(this.mScaleOnDrop).scaleY(this.mScaleOnDrop).withEndAction(new Runnable() { // from class: V0.m
            @Override // java.lang.Runnable
            public final void run() {
                SecondaryDragView.l(SecondaryDragView.this, runnable);
            }
        }).setDuration(Math.max(i6, getResources().getInteger(R.integer.config_dropAnimMinDuration))).start();
    }

    public SecondaryDragView(SecondaryDisplayLauncher secondaryDisplayLauncher, View view, int i4, int i5, int i6, int i7, float f4, float f5, float f6) {
        super(secondaryDisplayLauncher, view, i4, i5, i6, i7, f4, f5, f6);
    }
}
