package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.core.view.C0186x;
import androidx.core.view.H;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import d.C0792a;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class ButtonBarLayout extends LinearLayout {

    /* renamed from: d  reason: collision with root package name */
    public final boolean f2583d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f2584e;

    /* renamed from: f  reason: collision with root package name */
    public int f2585f;

    public ButtonBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2585f = -1;
        int[] iArr = C0792a.f8741k;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        WeakHashMap weakHashMap = J.f3079a;
        H.b(this, context, iArr, attributeSet, obtainStyledAttributes, 0, 0);
        boolean z4 = obtainStyledAttributes.getBoolean(0, true);
        this.f2583d = z4;
        obtainStyledAttributes.recycle();
        if (getOrientation() == 1) {
            a(z4);
        }
    }

    public final void a(boolean z4) {
        if (this.f2584e != z4) {
            if (!z4 || this.f2583d) {
                this.f2584e = z4;
                setOrientation(z4 ? 1 : 0);
                setGravity(z4 ? 8388613 : 80);
                View findViewById = findViewById(R.id.spacer);
                if (findViewById != null) {
                    findViewById.setVisibility(z4 ? 8 : 4);
                }
                for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
                    bringChildToFront(getChildAt(childCount));
                }
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        int i6;
        boolean z4;
        int i7;
        int paddingBottom;
        int size = View.MeasureSpec.getSize(i4);
        int i8 = 0;
        if (this.f2583d) {
            if (size > this.f2585f && this.f2584e) {
                a(false);
            }
            this.f2585f = size;
        }
        if (this.f2584e || View.MeasureSpec.getMode(i4) != 1073741824) {
            i6 = i4;
            z4 = false;
        } else {
            i6 = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
            z4 = true;
        }
        super.onMeasure(i6, i5);
        if (this.f2583d && !this.f2584e) {
            if ((getMeasuredWidthAndState() & (-16777216)) == 16777216) {
                a(true);
                z4 = true;
            }
        }
        if (z4) {
            super.onMeasure(i4, i5);
        }
        int childCount = getChildCount();
        int i9 = 0;
        while (true) {
            i7 = -1;
            if (i9 >= childCount) {
                i9 = -1;
                break;
            } else if (getChildAt(i9).getVisibility() == 0) {
                break;
            } else {
                i9++;
            }
        }
        if (i9 >= 0) {
            View childAt = getChildAt(i9);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            i8 = 0 + childAt.getMeasuredHeight() + getPaddingTop() + layoutParams.topMargin + layoutParams.bottomMargin;
            if (this.f2584e) {
                int i10 = i9 + 1;
                int childCount2 = getChildCount();
                while (true) {
                    if (i10 >= childCount2) {
                        break;
                    } else if (getChildAt(i10).getVisibility() == 0) {
                        i7 = i10;
                        break;
                    } else {
                        i10++;
                    }
                }
                if (i7 >= 0) {
                    paddingBottom = getChildAt(i7).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f));
                }
            } else {
                paddingBottom = getPaddingBottom();
            }
            i8 += paddingBottom;
        }
        WeakHashMap weakHashMap = J.f3079a;
        if (C0186x.c(this) != i8) {
            setMinimumHeight(i8);
            if (i5 == 0) {
                super.onMeasure(i4, i5);
            }
        }
    }
}
