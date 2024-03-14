package x2;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.C0187y;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.WeakHashMap;
/* renamed from: x2.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1469g extends ViewGroup {

    /* renamed from: d  reason: collision with root package name */
    public int f12848d;

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        int i8;
        int i9;
        if (getChildCount() == 0) {
            this.f12848d = 0;
            return;
        }
        this.f12848d = 1;
        WeakHashMap weakHashMap = J.f3079a;
        boolean z5 = C0187y.c(this) == 1;
        int paddingRight = z5 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = z5 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int i10 = (i6 - i4) - paddingLeft;
        int i11 = paddingRight;
        int i12 = paddingTop;
        for (int i13 = 0; i13 < getChildCount(); i13++) {
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() == 8) {
                childAt.setTag(R.id.row_index_key, -1);
            } else {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i9 = marginLayoutParams.getMarginStart();
                    i8 = marginLayoutParams.getMarginEnd();
                } else {
                    i8 = 0;
                    i9 = 0;
                }
                if (childAt.getMeasuredWidth() + i11 + i9 > i10) {
                    i12 = paddingTop + 0;
                    this.f12848d++;
                    i11 = paddingRight;
                }
                childAt.setTag(R.id.row_index_key, Integer.valueOf(this.f12848d - 1));
                int i14 = i11 + i9;
                int measuredWidth = childAt.getMeasuredWidth() + i14;
                int measuredHeight = childAt.getMeasuredHeight() + i12;
                if (z5) {
                    childAt.layout(i10 - measuredWidth, i12, (i10 - i11) - i9, measuredHeight);
                } else {
                    childAt.layout(i14, i12, measuredWidth, measuredHeight);
                }
                i11 += childAt.getMeasuredWidth() + i9 + i8 + 0;
                paddingTop = measuredHeight;
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i4, int i5) {
        int i6;
        int i7;
        int i8;
        int size = View.MeasureSpec.getSize(i4);
        int mode = View.MeasureSpec.getMode(i4);
        int size2 = View.MeasureSpec.getSize(i5);
        int mode2 = View.MeasureSpec.getMode(i5);
        int i9 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : Integer.MAX_VALUE;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = i9 - getPaddingRight();
        int i10 = paddingTop;
        int i11 = 0;
        for (int i12 = 0; i12 < getChildCount(); i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i4, i5);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i8 = marginLayoutParams.leftMargin + 0;
                    i7 = marginLayoutParams.rightMargin + 0;
                } else {
                    i7 = 0;
                    i8 = 0;
                }
                if (childAt.getMeasuredWidth() + paddingLeft + i8 > paddingRight) {
                    paddingLeft = getPaddingLeft();
                    i10 = paddingTop + 0;
                }
                int measuredWidth = childAt.getMeasuredWidth() + paddingLeft + i8;
                int measuredHeight = childAt.getMeasuredHeight() + i10;
                if (measuredWidth > i11) {
                    i11 = measuredWidth;
                }
                int measuredWidth2 = childAt.getMeasuredWidth() + i8 + i7 + 0 + paddingLeft;
                if (i12 == getChildCount() - 1) {
                    i11 += i7;
                }
                paddingLeft = measuredWidth2;
                paddingTop = measuredHeight;
            }
        }
        int paddingRight2 = getPaddingRight() + i11;
        int paddingBottom = getPaddingBottom() + paddingTop;
        if (mode != Integer.MIN_VALUE) {
            i6 = QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE;
            if (mode != 1073741824) {
                size = paddingRight2;
            }
        } else {
            i6 = QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE;
            size = Math.min(paddingRight2, size);
        }
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(paddingBottom, size2);
        } else if (mode2 != i6) {
            size2 = paddingBottom;
        }
        setMeasuredDimension(size, size2);
    }
}
