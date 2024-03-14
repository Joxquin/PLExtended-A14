package com.android.launcher3.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.view.View;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.Insettable;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.util.SystemUiController;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class ScrimView extends View implements Insettable {
    private int mBackgroundColor;
    private ScrimDrawingController mDrawingController;
    private float mHeaderScale;
    private boolean mIsVisible;
    private boolean mLastDispatchedOpaqueness;
    private final ArrayList mOpaquenessListeners;
    private SystemUiController mSystemUiController;

    /* loaded from: classes.dex */
    public interface ScrimDrawingController {
    }

    public ScrimView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mOpaquenessListeners = new ArrayList(1);
        this.mIsVisible = true;
        this.mHeaderScale = 1.0f;
        setFocusable(false);
    }

    private void dispatchVisibilityListenersIfNeeded() {
        boolean isFullyOpaque = isFullyOpaque();
        if (this.mLastDispatchedOpaqueness == isFullyOpaque) {
            return;
        }
        this.mLastDispatchedOpaqueness = isFullyOpaque;
        for (int i4 = 0; i4 < this.mOpaquenessListeners.size(); i4++) {
            ((Runnable) this.mOpaquenessListeners.get(i4)).run();
        }
    }

    private void updateSysUiColors() {
        if (!(getVisibility() == 0 && getAlpha() > 0.9f && ((float) Color.alpha(this.mBackgroundColor)) / 255.0f > 0.9f)) {
            if (this.mSystemUiController == null) {
                this.mSystemUiController = BaseActivity.fromContext(getContext()).getSystemUiController();
            }
            this.mSystemUiController.updateUiState(1, 0);
            return;
        }
        if (this.mSystemUiController == null) {
            this.mSystemUiController = BaseActivity.fromContext(getContext()).getSystemUiController();
        }
        SystemUiController systemUiController = this.mSystemUiController;
        if (!(getBackground() instanceof ColorDrawable)) {
            throw new IllegalStateException("ScrimView must have a ColorDrawable background, this one has: " + getBackground());
        }
        boolean z4 = !(E.a.f(((ColorDrawable) getBackground()).getColor()) < 0.5d);
        systemUiController.getClass();
        systemUiController.updateUiState(1, z4 ? 5 : 10);
    }

    public final void addOpaquenessListener(W0.c cVar) {
        this.mOpaquenessListeners.add(cVar);
    }

    public final int getBackgroundColor() {
        return this.mBackgroundColor;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    public final boolean isFullyOpaque() {
        return this.mIsVisible && getAlpha() == 1.0f && Color.alpha(this.mBackgroundColor) == 255;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ScrimDrawingController scrimDrawingController = this.mDrawingController;
        if (scrimDrawingController != null) {
            ((ActivityAllAppsContainerView) scrimDrawingController).drawOnScrimWithScale(this.mHeaderScale, canvas);
        }
    }

    @Override // android.view.View
    public final boolean onSetAlpha(int i4) {
        updateSysUiColors();
        dispatchVisibilityListenersIfNeeded();
        return super.onSetAlpha(i4);
    }

    @Override // android.view.View
    public final void onVisibilityAggregated(boolean z4) {
        super.onVisibilityAggregated(z4);
        this.mIsVisible = z4;
        dispatchVisibilityListenersIfNeeded();
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i4) {
        super.onVisibilityChanged(view, i4);
        updateSysUiColors();
    }

    public final void removeOpaquenessListener(W0.c cVar) {
        this.mOpaquenessListeners.remove(cVar);
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i4) {
        this.mBackgroundColor = i4;
        updateSysUiColors();
        dispatchVisibilityListenersIfNeeded();
        super.setBackgroundColor(i4);
    }

    public final void setDrawingController(ActivityAllAppsContainerView activityAllAppsContainerView) {
        if (this.mDrawingController != activityAllAppsContainerView) {
            this.mDrawingController = activityAllAppsContainerView;
            invalidate();
        }
    }

    @Override // com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
    }

    public final void setScrimHeaderScale(float f4) {
        boolean z4 = this.mHeaderScale != f4;
        this.mHeaderScale = f4;
        if (z4) {
            invalidate();
        }
    }
}
