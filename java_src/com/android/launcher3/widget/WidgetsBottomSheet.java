package com.android.launcher3.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.IntProperty;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.ScrollView;
import android.widget.TableLayout;
import android.widget.TextView;
import com.android.launcher3.Launcher;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.widget.WidgetsBottomSheet;
import com.android.launcher3.widget.util.WidgetsTableUtils;
import com.android.systemui.shared.R;
import f1.j;
import f1.k;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class WidgetsBottomSheet extends BaseWidgetSheet {
    private static final IntProperty PADDING_BOTTOM = new IntProperty() { // from class: com.android.launcher3.widget.WidgetsBottomSheet.1
        @Override // android.util.Property
        public final Integer get(Object obj) {
            return Integer.valueOf(((View) obj).getPaddingBottom());
        }

        @Override // android.util.IntProperty
        public final void setValue(Object obj, int i4) {
            View view = (View) obj;
            view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), i4);
        }
    };

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f5381d = 0;
    private final View.OnLayoutChangeListener mLayoutChangeListenerToShowTips;
    private int mMaxHorizontalSpan;
    private ItemInfo mOriginalItemInfo;
    private final j mShowEducationTipTask;

    public WidgetsBottomSheet(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public static /* synthetic */ void a(WidgetsBottomSheet widgetsBottomSheet) {
        if (widgetsBottomSheet.hasSeenEducationTip()) {
            widgetsBottomSheet.removeOnLayoutChangeListener(widgetsBottomSheet.mLayoutChangeListenerToShowTips);
        } else if (widgetsBottomSheet.showEducationTipOnViewIfPossible(((ViewGroup) ((TableLayout) widgetsBottomSheet.findViewById(R.id.widgets_table)).getChildAt(0)).getChildAt(0)) != null) {
            widgetsBottomSheet.removeOnLayoutChangeListener(widgetsBottomSheet.mLayoutChangeListenerToShowTips);
        }
    }

    private boolean updateMaxSpansPerRow() {
        int measuredWidth;
        if (getMeasuredWidth() == 0 || this.mMaxHorizontalSpan == (measuredWidth = this.mContent.getMeasuredWidth() - (this.mContentHorizontalMargin * 2))) {
            return false;
        }
        this.mMaxHorizontalSpan = measuredWidth;
        onWidgetsBound();
        return true;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final void addHintCloseAnim(float f4, Interpolator interpolator, PendingAnimation pendingAnimation) {
        pendingAnimation.setInt(this, PADDING_BOTTOM, (int) (f4 + this.mInsets.bottom), interpolator);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final Pair getAccessibilityTarget() {
        return Pair.create(findViewById(R.id.title), getContext().getString(this.mIsOpen ? R.string.widgets_list : R.string.widgets_list_closed));
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final void handleClose(boolean z4) {
        handleClose(200L, z4);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final boolean isOfType(int i4) {
        return (i4 & 4) != 0;
    }

    @Override // com.android.launcher3.widget.BaseWidgetSheet
    public final void onContentHorizontalMarginChanged(int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) findViewById(R.id.widgets_table).getLayoutParams();
        marginLayoutParams.setMarginStart(i4);
        marginLayoutParams.setMarginEnd(i4);
    }

    @Override // com.android.launcher3.views.AbstractSlideInView, com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.mNoIntercept = false;
            ScrollView scrollView = (ScrollView) findViewById(R.id.widgets_table_scroll_view);
            if (getPopupContainer().isEventOverView(scrollView, motionEvent) && scrollView.getScrollY() > 0) {
                this.mNoIntercept = true;
            }
        }
        return super.onControllerInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mContent = (ViewGroup) findViewById(R.id.widgets_bottom_sheet);
        setContentBackgroundWithParent(this.mContent, getContext().getDrawable(R.drawable.bg_rounded_corner_bottom_sheet));
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
        if (((TableLayout) findViewById(R.id.widgets_table)).getMeasuredHeight() > ((ScrollView) findViewById(R.id.widgets_table_scroll_view)).getMeasuredHeight()) {
            findViewById(R.id.collapse_handle).setVisibility(0);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        doMeasure(i4, i5);
        if (updateMaxSpansPerRow()) {
            doMeasure(i4, i5);
        }
    }

    @Override // com.android.launcher3.popup.PopupDataProvider.PopupDataChangeListener
    public final void onWidgetsBound() {
        List widgetsForPackageUser = ((Launcher) this.mActivityContext).getPopupDataProvider().getWidgetsForPackageUser(new PackageUserKey(this.mOriginalItemInfo.getTargetComponent().getPackageName(), this.mOriginalItemInfo.user));
        TableLayout tableLayout = (TableLayout) findViewById(R.id.widgets_table);
        tableLayout.removeAllViews();
        Context context = this.mActivityContext;
        ((ArrayList) WidgetsTableUtils.groupWidgetItemsUsingRowPxWithReordering(widgetsForPackageUser, context, ((Launcher) context).getDeviceProfile(), this.mMaxHorizontalSpan, this.mWidgetCellHorizontalPadding)).forEach(new k(this, tableLayout, 0));
    }

    public final void populateAndShow(ItemInfo itemInfo) {
        this.mOriginalItemInfo = itemInfo;
        ((TextView) findViewById(R.id.title)).setText(this.mOriginalItemInfo.title);
        onWidgetsBound();
        attachToContainer();
        this.mIsOpen = false;
        if (this.mOpenCloseAnimation.getAnimationPlayer().isRunning()) {
            return;
        }
        this.mIsOpen = true;
        setupNavBarColor();
        setUpDefaultOpenAnimation().start();
    }

    @Override // com.android.launcher3.widget.BaseWidgetSheet, com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
        super.setInsets(rect);
        int max = Math.max(rect.bottom, this.mNavBarScrimHeight);
        View findViewById = findViewById(R.id.widgets_table);
        findViewById.setPadding(findViewById.getPaddingLeft(), findViewById.getPaddingTop(), findViewById.getPaddingRight(), max);
        if (max > 0) {
            setupNavBarColor();
        } else {
            ((Launcher) this.mActivityContext).getSystemUiController().updateUiState(2, 0);
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [f1.j] */
    public WidgetsBottomSheet(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        View.OnLayoutChangeListener onLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: com.android.launcher3.widget.WidgetsBottomSheet.2
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12) {
                if (WidgetsBottomSheet.this.hasSeenEducationTip()) {
                    WidgetsBottomSheet.this.removeOnLayoutChangeListener(this);
                    return;
                }
                WidgetsBottomSheet widgetsBottomSheet = WidgetsBottomSheet.this;
                widgetsBottomSheet.removeCallbacks(widgetsBottomSheet.mShowEducationTipTask);
                WidgetsBottomSheet widgetsBottomSheet2 = WidgetsBottomSheet.this;
                widgetsBottomSheet2.postDelayed(widgetsBottomSheet2.mShowEducationTipTask, 300L);
            }
        };
        this.mLayoutChangeListenerToShowTips = onLayoutChangeListener;
        this.mShowEducationTipTask = new Runnable() { // from class: f1.j
            @Override // java.lang.Runnable
            public final void run() {
                WidgetsBottomSheet.a(WidgetsBottomSheet.this);
            }
        };
        setWillNotDraw(false);
        if (hasSeenEducationTip()) {
            return;
        }
        addOnLayoutChangeListener(onLayoutChangeListener);
    }
}
