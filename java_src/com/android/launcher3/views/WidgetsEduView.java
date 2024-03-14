package com.android.launcher3.views;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Insettable;
import com.android.launcher3.Launcher;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class WidgetsEduView extends AbstractSlideInView implements Insettable {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f5332d = 0;
    private Rect mInsets;

    public WidgetsEduView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public static WidgetsEduView showEducationDialog(Launcher launcher) {
        WidgetsEduView widgetsEduView = (WidgetsEduView) LayoutInflater.from(launcher).inflate(R.layout.widgets_edu, (ViewGroup) launcher.getDragLayer(), false);
        widgetsEduView.attachToContainer();
        if (!widgetsEduView.mIsOpen && !widgetsEduView.mOpenCloseAnimation.getAnimationPlayer().isRunning()) {
            widgetsEduView.mIsOpen = true;
            widgetsEduView.setUpDefaultOpenAnimation().start();
        }
        return widgetsEduView;
    }

    @Override // com.android.launcher3.views.AbstractSlideInView
    public final int getScrimColor(Context context) {
        return context.getResources().getColor(R.color.widgets_picker_scrim);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final void handleClose(boolean z4) {
        handleClose(200L, true);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final boolean isOfType(int i4) {
        return (65536 & i4) != 0;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mContent = (ViewGroup) findViewById(R.id.edu_view);
        findViewById(R.id.edu_close_button).setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.views.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WidgetsEduView widgetsEduView = WidgetsEduView.this;
                int i4 = WidgetsEduView.f5332d;
                widgetsEduView.close(true);
            }
        });
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
        DeviceProfile deviceProfile = ((Launcher) this.mActivityContext).getDeviceProfile();
        Rect rect = this.mInsets;
        if (rect.bottom > 0) {
            max = rect.left + rect.right;
        } else {
            Rect rect2 = deviceProfile.workspacePadding;
            max = Math.max(rect2.left + rect2.right, (rect.left + rect.right) * 2);
        }
        measureChildWithMargins(this.mContent, i4, max, i5, this.mInsets.top + deviceProfile.edgeMarginPx);
        setMeasuredDimension(View.MeasureSpec.getSize(i4), View.MeasureSpec.getSize(i5));
    }

    @Override // com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
        this.mInsets.set(rect);
        ViewGroup viewGroup = this.mContent;
        viewGroup.setPadding(viewGroup.getPaddingStart(), this.mContent.getPaddingTop(), this.mContent.getPaddingEnd(), rect.bottom);
    }

    public WidgetsEduView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mInsets = new Rect();
    }
}
