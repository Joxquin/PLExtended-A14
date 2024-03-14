package com.android.launcher3.taskbar;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.Switch;
import com.android.launcher3.popup.ArrowPopup;
import com.android.launcher3.popup.RoundedArrowDrawable;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.Themes;
import com.android.launcher3.views.BaseDragLayer;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class TaskbarDividerPopupView extends ArrowPopup {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f5070d = 0;
    private boolean alwaysShowTaskbarOn;
    private final float arrowHeight;
    private final float arrowPointRadius;
    private final float arrowWidth;
    private m3.a changePreference;
    private boolean didPreferenceChange;
    private View dividerView;
    private final int menuWidth;
    private m3.l onCloseCallback;
    private final float popupCornerRadius;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TaskbarDividerPopupView(Context context) {
        this(context, null, 0, 6, null);
        kotlin.jvm.internal.h.e(context, "context");
    }

    public static final void access$onClickAlwaysShowTaskbarSwitchOption(final TaskbarDividerPopupView taskbarDividerPopupView) {
        taskbarDividerPopupView.didPreferenceChange = true;
        taskbarDividerPopupView.changePreference.invoke();
        taskbarDividerPopupView.postDelayed(new Runnable() { // from class: com.android.launcher3.taskbar.TaskbarDividerPopupView$onClickAlwaysShowTaskbarSwitchOption$$inlined$postDelayed$1
            @Override // java.lang.Runnable
            public final void run() {
                TaskbarDividerPopupView.this.close(true);
            }
        }, 500L);
    }

    public static final void access$populateForView(TaskbarDividerPopupView taskbarDividerPopupView, View view) {
        taskbarDividerPopupView.dividerView = view;
        if (taskbarDividerPopupView.getBackground() instanceof GradientDrawable) {
            Drawable background = taskbarDividerPopupView.getBackground();
            kotlin.jvm.internal.h.c(background, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable");
            GradientDrawable gradientDrawable = (GradientDrawable) background;
            int color = taskbarDividerPopupView.getContext().getColor(R.color.popup_shade_first);
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setColor(color);
            gradientDrawable2.setShape(0);
            if (gradientDrawable.getCornerRadii() != null) {
                gradientDrawable2.setCornerRadii(gradientDrawable.getCornerRadii());
            } else {
                gradientDrawable2.setCornerRadius(gradientDrawable.getCornerRadius());
            }
            taskbarDividerPopupView.setBackground(gradientDrawable2);
        }
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public final void addArrow() {
        super.addArrow();
        View view = this.mArrow;
        View view2 = this.dividerView;
        if (view2 == null) {
            kotlin.jvm.internal.h.g("dividerView");
            throw null;
        }
        float x4 = view2.getX();
        View view3 = this.dividerView;
        if (view3 != null) {
            view.setX((x4 + (view3.getWidth() / 2)) - (this.mArrowWidth / 2));
        } else {
            kotlin.jvm.internal.h.g("dividerView");
            throw null;
        }
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public final void closeComplete() {
        this.onCloseCallback.invoke(Boolean.valueOf(this.didPreferenceChange));
        super.closeComplete();
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public final void getTargetObjectLocation(Rect outPos) {
        kotlin.jvm.internal.h.e(outPos, "outPos");
        BaseDragLayer popupContainer = getPopupContainer();
        View view = this.dividerView;
        if (view != null) {
            popupContainer.getDescendantRectRelativeToSelf(view, outPos);
        } else {
            kotlin.jvm.internal.h.g("dividerView");
            throw null;
        }
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final boolean isOfType(int i4) {
        return (2097152 & i4) != 0;
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (!(motionEvent != null && motionEvent.getAction() == 0)) {
            BaseDragLayer popupContainer = getPopupContainer();
            View view = this.dividerView;
            if (view == null) {
                kotlin.jvm.internal.h.g("dividerView");
                throw null;
            } else if (popupContainer.isEventOverView(view, motionEvent)) {
                return true;
            }
        } else if (!getPopupContainer().isEventOverView(this, motionEvent)) {
            close(true);
        }
        return false;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        final Switch r12 = (Switch) findViewById(R.id.taskbar_pinning_switch);
        r12.setChecked(this.alwaysShowTaskbarOn);
        ((LinearLayout) findViewById(R.id.taskbar_switch_option)).setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.taskbar.TaskbarDividerPopupView$onFinishInflate$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                boolean z4;
                r12.setClickable(true);
                Switch r32 = r12;
                z4 = this.alwaysShowTaskbarOn;
                r32.setChecked(true ^ z4);
                TaskbarDividerPopupView.access$onClickAlwaysShowTaskbarSwitchOption(this);
            }
        });
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public final void orientAboutObject() {
        super.orientAboutObject();
        setX(this.mTempRect.centerX() - (this.menuWidth / 2.0f));
    }

    public final void setChangePreference(m3.a aVar) {
        this.changePreference = aVar;
    }

    public final void setOnCloseCallback(m3.l lVar) {
        this.onCloseCallback = lVar;
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public final void updateArrowColor() {
        if (Gravity.isVertical(this.mGravity)) {
            return;
        }
        this.mArrow.setBackground(new RoundedArrowDrawable(this.arrowWidth, this.arrowHeight, this.arrowPointRadius, this.popupCornerRadius, getMeasuredWidth(), getMeasuredHeight(), (getMeasuredWidth() - this.arrowWidth) / 2, 0.0f, false, true, getContext().getColor(R.color.popup_shade_first)));
        setElevation(this.mElevation);
        this.mArrow.setElevation(this.mElevation);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TaskbarDividerPopupView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        kotlin.jvm.internal.h.e(context, "context");
    }

    public /* synthetic */ TaskbarDividerPopupView(Context context, AttributeSet attributeSet, int i4, int i5, kotlin.jvm.internal.f fVar) {
        this(context, (i5 & 2) != 0 ? null : attributeSet, (i5 & 4) != 0 ? 0 : i4);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TaskbarDividerPopupView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        kotlin.jvm.internal.h.e(context, "context");
        this.menuWidth = context.getResources().getDimensionPixelSize(R.dimen.taskbar_pinning_popup_menu_width);
        this.popupCornerRadius = Themes.getDialogCornerRadius(context);
        this.arrowWidth = getResources().getDimension(R.dimen.popup_arrow_width);
        this.arrowHeight = getResources().getDimension(R.dimen.popup_arrow_height);
        this.arrowPointRadius = getResources().getDimension(R.dimen.popup_arrow_corner_radius);
        this.alwaysShowTaskbarOn = !DisplayController.isTransientTaskbar(context);
        this.onCloseCallback = new m3.l() { // from class: com.android.launcher3.taskbar.TaskbarDividerPopupView$onCloseCallback$1
            @Override // m3.l
            public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
                ((Boolean) obj).booleanValue();
                return e3.f.f9037a;
            }
        };
        this.changePreference = new m3.a() { // from class: com.android.launcher3.taskbar.TaskbarDividerPopupView$changePreference$1
            @Override // m3.a
            public final /* bridge */ /* synthetic */ Object invoke() {
                return e3.f.f9037a;
            }
        };
        this.mOpenChildFadeStartDelay = this.mOpenFadeStartDelay;
        this.mOpenChildFadeDuration = this.mOpenFadeDuration;
        this.mCloseFadeStartDelay = this.mCloseChildFadeStartDelay;
        this.mCloseFadeDuration = this.mCloseChildFadeDuration;
    }
}
