package com.google.android.material.snackbar;

import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.C0187y;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class SnackbarContentLayout extends LinearLayout {

    /* renamed from: d  reason: collision with root package name */
    public TextView f8063d;

    public SnackbarContentLayout(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f8063d = (TextView) findViewById(R.id.snackbar_text);
        Button button = (Button) findViewById(R.id.snackbar_action);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        super.onMeasure(i4, i5);
        boolean z4 = true;
        if (getOrientation() == 1) {
            return;
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical);
        Layout layout = this.f8063d.getLayout();
        boolean z5 = false;
        if (!(layout != null && layout.getLineCount() > 1)) {
            dimensionPixelSize = dimensionPixelSize2;
        }
        if (getOrientation() != 0) {
            setOrientation(0);
            z5 = true;
        }
        if (this.f8063d.getPaddingTop() == dimensionPixelSize && this.f8063d.getPaddingBottom() == dimensionPixelSize) {
            z4 = z5;
        } else {
            TextView textView = this.f8063d;
            WeakHashMap weakHashMap = J.f3079a;
            if (C0187y.f(textView)) {
                C0187y.h(textView, C0187y.e(textView), dimensionPixelSize, C0187y.d(textView), dimensionPixelSize);
            } else {
                textView.setPadding(textView.getPaddingLeft(), dimensionPixelSize, textView.getPaddingRight(), dimensionPixelSize);
            }
        }
        if (z4) {
            super.onMeasure(i4, i5);
        }
    }

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
