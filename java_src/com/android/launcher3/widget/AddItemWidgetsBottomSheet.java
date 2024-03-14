package com.android.launcher3.widget;

import android.content.Context;
import android.graphics.Insets;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.widget.ScrollView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.dragndrop.AddItemActivity;
import com.android.launcher3.views.AbstractSlideInView;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class AddItemWidgetsBottomSheet extends AbstractSlideInView implements View.OnApplyWindowInsetsListener {
    private int mContentHorizontalMarginInPx;
    private final Rect mInsets;
    private ScrollView mWidgetPreviewScrollView;

    public AddItemWidgetsBottomSheet(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private static void setContentHorizontalMargin(View view, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        marginLayoutParams.setMarginStart(i4);
        marginLayoutParams.setMarginEnd(i4);
    }

    @Override // com.android.launcher3.views.AbstractSlideInView
    public final int getScrimColor(Context context) {
        return context.getResources().getColor(R.color.widgets_picker_scrim);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final void handleClose(boolean z4) {
        handleClose(200L, z4);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final boolean isOfType(int i4) {
        return (32768 & i4) != 0;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        if (Utilities.ATLEAST_R) {
            Insets insets = windowInsets.getInsets(WindowInsets.Type.systemBars());
            this.mInsets.set(insets.left, insets.top, insets.right, insets.bottom);
        } else {
            this.mInsets.set(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        ViewGroup viewGroup = this.mContent;
        viewGroup.setPadding(viewGroup.getPaddingStart(), this.mContent.getPaddingTop(), this.mContent.getPaddingEnd(), this.mInsets.bottom);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.widget_list_horizontal_margin);
        if (dimensionPixelSize != this.mContentHorizontalMarginInPx) {
            setContentHorizontalMargin(findViewById(R.id.widget_appName), dimensionPixelSize);
            setContentHorizontalMargin(findViewById(R.id.widget_drag_instruction), dimensionPixelSize);
            setContentHorizontalMargin(findViewById(R.id.widget_cell), dimensionPixelSize);
            setContentHorizontalMargin(findViewById(R.id.actions_container), dimensionPixelSize);
            this.mContentHorizontalMarginInPx = dimensionPixelSize;
        }
        return windowInsets;
    }

    @Override // com.android.launcher3.views.AbstractSlideInView, com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.mNoIntercept = false;
            if (getPopupContainer().isEventOverView(this.mWidgetPreviewScrollView, motionEvent) && this.mWidgetPreviewScrollView.getScrollY() > 0) {
                this.mNoIntercept = true;
            }
        }
        return super.onControllerInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mContent = (ViewGroup) findViewById(R.id.add_item_bottom_sheet_content);
        this.mWidgetPreviewScrollView = (ScrollView) findViewById(R.id.widget_preview_scroll_view);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        int i8 = i7 - i5;
        int measuredWidth = this.mContent.getMeasuredWidth();
        Rect rect = this.mInsets;
        int i9 = rect.left;
        int i10 = (((((i6 - i4) - measuredWidth) - i9) - rect.right) / 2) + i9;
        ViewGroup viewGroup = this.mContent;
        viewGroup.layout(i10, i8 - viewGroup.getMeasuredHeight(), measuredWidth + i10, i8);
        setTranslationShift(this.mTranslationShift);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        int max;
        DeviceProfile deviceProfile = ((AddItemActivity) this.mActivityContext).getDeviceProfile();
        if (deviceProfile.isTablet) {
            Rect rect = this.mInsets;
            max = Math.max(deviceProfile.allAppsLeftRightMargin * 2, (rect.left + rect.right) * 2);
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

    public final void show() {
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this);
        }
        attachToContainer();
        setOnApplyWindowInsetsListener(this);
        if (this.mIsOpen || this.mOpenCloseAnimation.getAnimationPlayer().isRunning()) {
            return;
        }
        this.mIsOpen = true;
        setUpDefaultOpenAnimation().start();
    }

    public AddItemWidgetsBottomSheet(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mInsets = new Rect();
        this.mContentHorizontalMarginInPx = getResources().getDimensionPixelSize(R.dimen.widget_list_horizontal_margin);
    }
}
