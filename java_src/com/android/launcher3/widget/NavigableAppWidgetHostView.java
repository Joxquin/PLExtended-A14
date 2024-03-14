package com.android.launcher3.widget;

import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewDebug;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Reorderable;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.util.MultiTranslateDelegate;
import com.android.launcher3.views.ActivityContext;
import java.util.ArrayList;
/* loaded from: classes.dex */
public abstract class NavigableAppWidgetHostView extends AppWidgetHostView implements DraggableView, Reorderable {
    protected final ActivityContext mActivity;
    @ViewDebug.ExportedProperty(category = "launcher")
    private boolean mChildrenFocused;
    private boolean mDisableSetPadding;
    private float mScaleForReorderBounce;
    private float mScaleToFit;
    private final MultiTranslateDelegate mTranslateDelegate;

    public NavigableAppWidgetHostView(Context context) {
        super(context);
        this.mTranslateDelegate = new MultiTranslateDelegate(5, this);
        this.mScaleToFit = 1.0f;
        this.mScaleForReorderBounce = 1.0f;
        this.mDisableSetPadding = false;
        this.mActivity = (ActivityContext) ActivityContext.lookupContext(context);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void clearChildFocus(View view) {
        super.clearChildFocus(view);
        setSelected(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (this.mChildrenFocused && keyEvent.getKeyCode() == 111 && keyEvent.getAction() == 1) {
            this.mChildrenFocused = false;
            requestFocus();
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchUnhandledMove(View view, int i4) {
        return this.mChildrenFocused;
    }

    @Override // android.view.ViewGroup
    public final int getDescendantFocusability() {
        if (this.mChildrenFocused) {
            return 131072;
        }
        return AbstractFloatingView.TYPE_TASKBAR_OVERLAYS;
    }

    @Override // com.android.launcher3.Reorderable
    public final float getReorderBounceScale() {
        return this.mScaleForReorderBounce;
    }

    public final float getScaleToFit() {
        return this.mScaleToFit;
    }

    @Override // com.android.launcher3.Reorderable
    public final MultiTranslateDelegate getTranslateDelegate() {
        return this.mTranslateDelegate;
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public final int getViewType() {
        return 1;
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public final void getWorkspaceVisualDragBounds(Rect rect) {
        rect.set(0, 0, (int) (getMeasuredWidth() * this.mScaleToFit), (int) (getMeasuredHeight() * this.mScaleToFit));
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z4, int i4, Rect rect) {
        if (z4) {
            this.mChildrenFocused = false;
            setSelected(false);
        }
        super.onFocusChanged(z4, i4, rect);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i4, KeyEvent keyEvent) {
        if (this.mChildrenFocused || i4 != 66) {
            return super.onKeyDown(i4, keyEvent);
        }
        keyEvent.startTracking();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i4, KeyEvent keyEvent) {
        if (keyEvent.isTracking() && !this.mChildrenFocused && i4 == 66) {
            this.mChildrenFocused = true;
            ArrayList focusables = getFocusables(2);
            focusables.remove(this);
            int size = focusables.size();
            if (size != 0) {
                if (size != 1 || !shouldAllowDirectClick()) {
                    ((View) focusables.get(0)).requestFocus();
                    return true;
                }
                ((View) focusables.get(0)).performClick();
                this.mChildrenFocused = false;
                return true;
            }
            this.mChildrenFocused = false;
        }
        return super.onKeyUp(i4, keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        setSelected(this.mChildrenFocused && view2 != null);
        if (view2 != null) {
            view2.setFocusableInTouchMode(false);
        }
    }

    @Override // android.appwidget.AppWidgetHostView
    public void setAppWidget(int i4, AppWidgetProviderInfo appWidgetProviderInfo) {
        this.mDisableSetPadding = true;
        super.setAppWidget(i4, appWidgetProviderInfo);
        this.mDisableSetPadding = false;
    }

    @Override // android.view.View
    public void setPadding(int i4, int i5, int i6, int i7) {
        if (this.mDisableSetPadding) {
            return;
        }
        super.setPadding(i4, i5, i6, i7);
    }

    @Override // com.android.launcher3.Reorderable
    public final void setReorderBounceScale(float f4) {
        this.mScaleForReorderBounce = f4;
        super.setScaleX(this.mScaleToFit * f4);
        super.setScaleY(this.mScaleToFit * this.mScaleForReorderBounce);
    }

    public final void setScaleToFit(float f4) {
        this.mScaleToFit = f4;
        super.setScaleX(f4 * this.mScaleForReorderBounce);
        super.setScaleY(this.mScaleToFit * this.mScaleForReorderBounce);
    }

    public abstract boolean shouldAllowDirectClick();
}
