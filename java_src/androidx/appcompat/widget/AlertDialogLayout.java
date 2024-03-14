package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.core.view.C0186x;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.WeakHashMap;
import k.C1167v0;
import k.C1169w0;
/* loaded from: classes.dex */
public class AlertDialogLayout extends C1169w0 {
    public AlertDialogLayout(Context context) {
        super(context);
    }

    public static int k(View view) {
        WeakHashMap weakHashMap = J.f3079a;
        int c4 = C0186x.c(view);
        if (c4 > 0) {
            return c4;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (viewGroup.getChildCount() == 1) {
                return k(viewGroup.getChildAt(0));
            }
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x009b  */
    @Override // k.C1169w0, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onLayout(boolean r10, int r11, int r12, int r13, int r14) {
        /*
            r9 = this;
            int r10 = r9.getPaddingLeft()
            int r13 = r13 - r11
            int r11 = r9.getPaddingRight()
            int r11 = r13 - r11
            int r13 = r13 - r10
            int r0 = r9.getPaddingRight()
            int r13 = r13 - r0
            int r0 = r9.getMeasuredHeight()
            int r1 = r9.getChildCount()
            int r2 = r9.f11007h
            r3 = r2 & 112(0x70, float:1.57E-43)
            r4 = 8388615(0x800007, float:1.1754953E-38)
            r2 = r2 & r4
            r4 = 16
            if (r3 == r4) goto L37
            r4 = 80
            if (r3 == r4) goto L2e
            int r12 = r9.getPaddingTop()
            goto L41
        L2e:
            int r3 = r9.getPaddingTop()
            int r3 = r3 + r14
            int r3 = r3 - r12
            int r12 = r3 - r0
            goto L41
        L37:
            int r3 = r9.getPaddingTop()
            int r14 = r14 - r12
            int r14 = r14 - r0
            int r14 = r14 / 2
            int r12 = r14 + r3
        L41:
            android.graphics.drawable.Drawable r14 = r9.f11013n
            r0 = 0
            if (r14 != 0) goto L48
            r14 = r0
            goto L4c
        L48:
            int r14 = r14.getIntrinsicHeight()
        L4c:
            if (r0 >= r1) goto Lad
            android.view.View r3 = r9.getChildAt(r0)
            if (r3 == 0) goto Laa
            int r4 = r3.getVisibility()
            r5 = 8
            if (r4 == r5) goto Laa
            int r4 = r3.getMeasuredWidth()
            int r5 = r3.getMeasuredHeight()
            android.view.ViewGroup$LayoutParams r6 = r3.getLayoutParams()
            k.v0 r6 = (k.C1167v0) r6
            int r7 = r6.gravity
            if (r7 >= 0) goto L6f
            r7 = r2
        L6f:
            java.util.WeakHashMap r8 = androidx.core.view.J.f3079a
            int r8 = androidx.core.view.C0187y.c(r9)
            int r7 = android.view.Gravity.getAbsoluteGravity(r7, r8)
            r7 = r7 & 7
            r8 = 1
            if (r7 == r8) goto L8a
            r8 = 5
            if (r7 == r8) goto L85
            int r7 = r6.leftMargin
            int r7 = r7 + r10
            goto L95
        L85:
            int r7 = r11 - r4
            int r8 = r6.rightMargin
            goto L94
        L8a:
            int r7 = r13 - r4
            int r7 = r7 / 2
            int r7 = r7 + r10
            int r8 = r6.leftMargin
            int r7 = r7 + r8
            int r8 = r6.rightMargin
        L94:
            int r7 = r7 - r8
        L95:
            boolean r8 = r9.j(r0)
            if (r8 == 0) goto L9c
            int r12 = r12 + r14
        L9c:
            int r8 = r6.topMargin
            int r12 = r12 + r8
            int r4 = r4 + r7
            int r8 = r5 + r12
            r3.layout(r7, r12, r4, r8)
            int r3 = r6.bottomMargin
            int r5 = r5 + r3
            int r5 = r5 + r12
            r12 = r5
        Laa:
            int r0 = r0 + 1
            goto L4c
        Lad:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AlertDialogLayout.onLayout(boolean, int, int, int, int):void");
    }

    @Override // k.C1169w0, android.view.View
    public final void onMeasure(int i4, int i5) {
        int i6;
        int i7;
        int i8;
        int i9;
        int childCount = getChildCount();
        View view = null;
        boolean z4 = false;
        View view2 = null;
        View view3 = null;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                int id = childAt.getId();
                if (id == R.id.topPanel) {
                    view = childAt;
                } else if (id != R.id.buttonPanel) {
                    if ((id != R.id.contentPanel && id != R.id.customPanel) || view3 != null) {
                        break;
                    }
                    view3 = childAt;
                } else {
                    view2 = childAt;
                }
            }
        }
        int mode = View.MeasureSpec.getMode(i5);
        int size = View.MeasureSpec.getSize(i5);
        int mode2 = View.MeasureSpec.getMode(i4);
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (view != null) {
            view.measure(i4, 0);
            paddingBottom += view.getMeasuredHeight();
            i6 = View.combineMeasuredStates(0, view.getMeasuredState());
        } else {
            i6 = 0;
        }
        if (view2 != null) {
            view2.measure(i4, 0);
            i7 = k(view2);
            i8 = view2.getMeasuredHeight() - i7;
            paddingBottom += i7;
            i6 = View.combineMeasuredStates(i6, view2.getMeasuredState());
        } else {
            i7 = 0;
            i8 = 0;
        }
        if (view3 != null) {
            view3.measure(i4, mode == 0 ? 0 : View.MeasureSpec.makeMeasureSpec(Math.max(0, size - paddingBottom), mode));
            i9 = view3.getMeasuredHeight();
            paddingBottom += i9;
            i6 = View.combineMeasuredStates(i6, view3.getMeasuredState());
        } else {
            i9 = 0;
        }
        int i11 = size - paddingBottom;
        if (view2 != null) {
            int i12 = paddingBottom - i7;
            int min = Math.min(i11, i8);
            if (min > 0) {
                i11 -= min;
                i7 += min;
            }
            view2.measure(i4, View.MeasureSpec.makeMeasureSpec(i7, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
            paddingBottom = i12 + view2.getMeasuredHeight();
            i6 = View.combineMeasuredStates(i6, view2.getMeasuredState());
        }
        if (view3 != null && i11 > 0) {
            view3.measure(i4, View.MeasureSpec.makeMeasureSpec(i9 + i11, mode));
            paddingBottom = (paddingBottom - i9) + view3.getMeasuredHeight();
            i6 = View.combineMeasuredStates(i6, view3.getMeasuredState());
        }
        int i13 = 0;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt2 = getChildAt(i14);
            if (childAt2.getVisibility() != 8) {
                i13 = Math.max(i13, childAt2.getMeasuredWidth());
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(getPaddingRight() + getPaddingLeft() + i13, i4, i6), View.resolveSizeAndState(paddingBottom, i5, 0));
        if (mode2 != 1073741824) {
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE);
            for (int i15 = 0; i15 < childCount; i15++) {
                View childAt3 = getChildAt(i15);
                if (childAt3.getVisibility() != 8) {
                    C1167v0 c1167v0 = (C1167v0) childAt3.getLayoutParams();
                    if (((LinearLayout.LayoutParams) c1167v0).width == -1) {
                        int i16 = ((LinearLayout.LayoutParams) c1167v0).height;
                        ((LinearLayout.LayoutParams) c1167v0).height = childAt3.getMeasuredHeight();
                        measureChildWithMargins(childAt3, makeMeasureSpec, 0, i5, 0);
                        ((LinearLayout.LayoutParams) c1167v0).height = i16;
                    }
                }
            }
        }
        z4 = true;
        if (z4) {
            return;
        }
        super.onMeasure(i4, i5);
    }

    public AlertDialogLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
