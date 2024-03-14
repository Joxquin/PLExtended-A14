package G2;

import A2.c;
import N.i;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.widget.AppCompatTextView;
import com.android.systemui.shared.R;
import i2.C0980a;
/* loaded from: classes.dex */
public final class a extends AppCompatTextView {
    public a(Context context, AttributeSet attributeSet) {
        super(H2.a.a(context, attributeSet, 16842884, 0), attributeSet, 16842884);
        Context context2 = getContext();
        TypedValue a4 = c.a(R.attr.textAppearanceLineHeightEnabled, context2);
        if ((a4 != null && a4.type == 18 && a4.data == 0) ? false : true) {
            Resources.Theme theme = context2.getTheme();
            int[] iArr = C0980a.f9645u;
            TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr, 16842884, 0);
            int s4 = s(context2, obtainStyledAttributes, 1, 2);
            obtainStyledAttributes.recycle();
            if (s4 != -1) {
                return;
            }
            TypedArray obtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, iArr, 16842884, 0);
            int resourceId = obtainStyledAttributes2.getResourceId(0, -1);
            obtainStyledAttributes2.recycle();
            if (resourceId != -1) {
                r(resourceId, theme);
            }
        }
    }

    public static int s(Context context, TypedArray typedArray, int... iArr) {
        int i4 = -1;
        for (int i5 = 0; i5 < iArr.length && i4 < 0; i5++) {
            int i6 = iArr[i5];
            TypedValue typedValue = new TypedValue();
            if (typedArray.getValue(i6, typedValue) && typedValue.type == 2) {
                TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
                int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, -1);
                obtainStyledAttributes.recycle();
                i4 = dimensionPixelSize;
            } else {
                i4 = typedArray.getDimensionPixelSize(i6, -1);
            }
        }
        return i4;
    }

    public final void r(int i4, Resources.Theme theme) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(i4, C0980a.f9644t);
        int s4 = s(getContext(), obtainStyledAttributes, 1, 2);
        obtainStyledAttributes.recycle();
        if (s4 >= 0) {
            i.a(this, s4);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public final void setTextAppearance(Context context, int i4) {
        super.setTextAppearance(context, i4);
        TypedValue a4 = c.a(R.attr.textAppearanceLineHeightEnabled, context);
        if ((a4 != null && a4.type == 18 && a4.data == 0) ? false : true) {
            r(i4, context.getTheme());
        }
    }
}
