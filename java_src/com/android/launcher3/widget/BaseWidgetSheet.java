package com.android.launcher3.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.WindowInsets;
import android.view.animation.Interpolator;
import android.widget.Toast;
import androidx.core.view.A;
import androidx.core.view.J;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.DragSource;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Insettable;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.touch.ItemLongClickListener;
import com.android.launcher3.util.Themes;
import com.android.launcher3.util.window.WindowManagerProxy;
import com.android.launcher3.views.AbstractSlideInView;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.ArrowTipView;
import com.android.systemui.shared.R;
import java.util.WeakHashMap;
import y0.e;
/* loaded from: classes.dex */
public abstract class BaseWidgetSheet extends AbstractSlideInView implements View.OnClickListener, View.OnLongClickListener, DragSource, PopupDataProvider.PopupDataChangeListener, Insettable, DeviceProfile.OnDeviceProfileChangeListener {
    protected int mContentHorizontalMargin;
    protected final Rect mInsets;
    protected int mNavBarScrimHeight;
    private final Paint mNavBarScrimPaint;
    protected int mWidgetCellHorizontalPadding;
    private Toast mWidgetInstructionToast;

    public BaseWidgetSheet(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mInsets = new Rect();
        this.mContentHorizontalMargin = getResources().getDimensionPixelSize(R.dimen.widget_list_horizontal_margin);
        this.mWidgetCellHorizontalPadding = getResources().getDimensionPixelSize(R.dimen.widget_cell_horizontal_padding);
        Paint paint = new Paint();
        this.mNavBarScrimPaint = paint;
        paint.setColor(Themes.getNavBarScrimColor((Launcher) this.mActivityContext));
    }

    private boolean beginDraggingWidget(WidgetCell widgetCell) {
        WidgetImageView widgetView = widgetCell.getWidgetView();
        if (widgetView.getDrawable() == null && widgetCell.getAppWidgetHostViewPreview() == null) {
            return false;
        }
        PendingItemDragHelper pendingItemDragHelper = new PendingItemDragHelper(widgetCell);
        pendingItemDragHelper.setRemoteViewsPreview(widgetCell.getRemoteViewsPreview(), widgetCell.getAppWidgetHostViewScale());
        pendingItemDragHelper.setAppWidgetHostViewPreview(widgetCell.getAppWidgetHostViewPreview());
        if (widgetView.getDrawable() != null) {
            int[] iArr = new int[2];
            getPopupContainer().getLocationInDragLayer(widgetView, iArr);
            pendingItemDragHelper.startDrag(widgetView.getBitmapBounds(), widgetView.getDrawable().getIntrinsicWidth(), widgetView.getWidth(), new Point(iArr[0], iArr[1]), this, new DragOptions());
        } else {
            NavigableAppWidgetHostView appWidgetHostViewPreview = widgetCell.getAppWidgetHostViewPreview();
            int[] iArr2 = new int[2];
            getPopupContainer().getLocationInDragLayer(appWidgetHostViewPreview, iArr2);
            Rect rect = new Rect();
            appWidgetHostViewPreview.getWorkspaceVisualDragBounds(rect);
            pendingItemDragHelper.startDrag(rect, appWidgetHostViewPreview.getMeasuredWidth(), appWidgetHostViewPreview.getMeasuredWidth(), new Point(iArr2[0], iArr2[1]), this, new DragOptions());
        }
        close(true);
        return true;
    }

    public static Toast showWidgetToast(Context context, Toast toast) {
        if (toast != null) {
            toast.cancel();
        }
        Toast makeText = Toast.makeText(context, Utilities.wrapForTts(context.getText(R.string.long_press_widget_to_add), context.getString(R.string.long_accessible_way_to_add)), 0);
        makeText.show();
        return makeText;
    }

    @Override // com.android.launcher3.views.AbstractSlideInView, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.mNavBarScrimHeight > 0) {
            canvas.drawRect(0.0f, getHeight() - this.mNavBarScrimHeight, getWidth(), getHeight(), this.mNavBarScrimPaint);
        }
    }

    public final void doMeasure(int i4, int i5) {
        int max;
        DeviceProfile deviceProfile = ((Launcher) this.mActivityContext).getDeviceProfile();
        if (deviceProfile.isTablet) {
            int i6 = deviceProfile.allAppsLeftRightMargin;
            if (deviceProfile.isLandscape && FeatureFlags.LARGE_SCREEN_WIDGET_PICKER.get() && !deviceProfile.isTwoPanels) {
                i6 = getResources().getDimensionPixelSize(R.dimen.widget_picker_landscape_tablet_left_right_margin);
            }
            Rect rect = this.mInsets;
            max = Math.max(i6 * 2, (rect.left + rect.right) * 2);
        } else {
            Rect rect2 = this.mInsets;
            if (rect2.bottom > 0) {
                max = rect2.right + rect2.left;
            } else {
                Rect rect3 = deviceProfile.workspacePadding;
                max = Math.max(rect3.left + rect3.right, (rect2.left + rect2.right) * 2);
            }
        }
        measureChildWithMargins(this.mContent, i4, max, i5, deviceProfile.bottomSheetTopPadding);
        setMeasuredDimension(View.MeasureSpec.getSize(i4), View.MeasureSpec.getSize(i5));
    }

    @Override // com.android.launcher3.views.AbstractSlideInView
    public final Interpolator getIdleInterpolator() {
        return ((Launcher) this.mActivityContext).getDeviceProfile().isTablet ? e.f12937a : e.f12957u;
    }

    @Override // com.android.launcher3.views.AbstractSlideInView
    public final int getScrimColor(Context context) {
        return context.getResources().getColor(R.color.widgets_picker_scrim);
    }

    public final boolean hasSeenEducationTip() {
        return ((Launcher) this.mActivityContext).getSharedPrefs().getBoolean("launcher.widgets_education_tip_seen", false) || Utilities.isRunningInTestHarness();
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        this.mNavBarScrimHeight = Utilities.ATLEAST_Q ? windowInsets.getTappableElementInsets().bottom : windowInsets.getStableInsetBottom();
        return super.onApplyWindowInsets(windowInsets);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        WindowInsets normalizeWindowInsets = ((WindowManagerProxy) WindowManagerProxy.INSTANCE.get(getContext())).normalizeWindowInsets(getContext(), getRootWindowInsets(), new Rect());
        this.mNavBarScrimHeight = Utilities.ATLEAST_Q ? normalizeWindowInsets.getTappableElementInsets().bottom : normalizeWindowInsets.getStableInsetBottom();
        ((Launcher) this.mActivityContext).getPopupDataProvider().setChangeListener(this);
        ((Launcher) this.mActivityContext).addOnDeviceProfileChangeListener(this);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (!((view instanceof WidgetCell ? view.getTag() : view.getParent() instanceof WidgetCell ? ((WidgetCell) view.getParent()).getTag() : null) instanceof PendingAddShortcutInfo)) {
            this.mWidgetInstructionToast = showWidgetToast(getContext(), this.mWidgetInstructionToast);
            return;
        }
        Context context = getContext();
        Toast toast = this.mWidgetInstructionToast;
        if (toast != null) {
            toast.cancel();
        }
        Toast makeText = Toast.makeText(context, Utilities.wrapForTts(context.getText(R.string.long_press_shortcut_to_add), context.getString(R.string.long_accessible_way_to_add_shortcut)), 0);
        makeText.show();
        this.mWidgetInstructionToast = makeText;
    }

    @Override // com.android.launcher3.views.AbstractSlideInView
    public void onCloseComplete() {
        super.onCloseComplete();
        ((Launcher) this.mActivityContext).getSystemUiController().updateUiState(2, 0);
    }

    public abstract void onContentHorizontalMarginChanged(int i4);

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ((Launcher) this.mActivityContext).getPopupDataProvider().setChangeListener(null);
        ((Launcher) this.mActivityContext).removeOnDeviceProfileChangeListener(this);
    }

    @Override // com.android.launcher3.DeviceProfile.OnDeviceProfileChangeListener
    public final void onDeviceProfileChanged(DeviceProfile deviceProfile) {
        int navBarScrimColor = Themes.getNavBarScrimColor((Launcher) this.mActivityContext);
        if (this.mNavBarScrimPaint.getColor() != navBarScrimColor) {
            this.mNavBarScrimPaint.setColor(navBarScrimColor);
            invalidate();
        }
    }

    @Override // com.android.launcher3.DragSource
    public final void onDropCompleted(View view, DropTarget.DragObject dragObject, boolean z4) {
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        TestLogging.recordEvent("Main", "Widgets.onLongClick");
        view.cancelLongPress();
        if (ItemLongClickListener.canStartDrag((Launcher) this.mActivityContext)) {
            if (view instanceof WidgetCell) {
                return beginDraggingWidget((WidgetCell) view);
            }
            if (view.getParent() instanceof WidgetCell) {
                return beginDraggingWidget((WidgetCell) view.getParent());
            }
            return true;
        }
        return false;
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        this.mInsets.set(rect);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.widget_list_horizontal_margin);
        if (dimensionPixelSize != this.mContentHorizontalMargin) {
            onContentHorizontalMarginChanged(dimensionPixelSize);
            this.mContentHorizontalMargin = dimensionPixelSize;
        }
    }

    @Override // com.android.launcher3.views.AbstractSlideInView
    public final void setTranslationShift(float f4) {
        super.setTranslationShift(f4);
        ((Launcher) ActivityContext.lookupContext(getContext())).onWidgetsTransition(1.0f - f4);
    }

    public final void setupNavBarColor() {
        ((Launcher) this.mActivityContext).getSystemUiController().updateUiState(2, Themes.getAttrBoolean(R.attr.isMainColorDark, getContext()) ? 2 : 1);
    }

    public final ArrowTipView showEducationTipOnViewIfPossible(View view) {
        if (view != null) {
            WeakHashMap weakHashMap = J.f3079a;
            if (A.c(view)) {
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                ArrowTipView showAtLocation = new ArrowTipView(this.mActivityContext, false).showAtLocation(getContext().getString(R.string.long_press_widget_to_add), (view.getWidth() / 2) + iArr[0], iArr[1]);
                if (showAtLocation != null) {
                    ((Launcher) this.mActivityContext).getSharedPrefs().edit().putBoolean("launcher.widgets_education_tip_seen", true).apply();
                }
                return showAtLocation;
            }
            return null;
        }
        return null;
    }
}
