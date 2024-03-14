package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.core.view.H;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import java.util.WeakHashMap;
import o.C1319a;
import p.C1336a;
import p.C1337b;
import p.C1338c;
/* loaded from: classes.dex */
public class CardView extends FrameLayout {

    /* renamed from: f  reason: collision with root package name */
    public static final int[] f2703f = {16842801};

    /* renamed from: g  reason: collision with root package name */
    public static final C1336a f2704g = new C1336a();

    /* renamed from: d  reason: collision with root package name */
    public final Rect f2705d;

    /* renamed from: e  reason: collision with root package name */
    public final Rect f2706e;

    public CardView(Context context) {
        this(context, null);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        super.onMeasure(i4, i5);
    }

    @Override // android.view.View
    public final void setMinimumHeight(int i4) {
        super.setMinimumHeight(i4);
    }

    @Override // android.view.View
    public final void setMinimumWidth(int i4) {
        super.setMinimumWidth(i4);
    }

    @Override // android.view.View
    public final void setPadding(int i4, int i5, int i6, int i7) {
    }

    @Override // android.view.View
    public final void setPaddingRelative(int i4, int i5, int i6, int i7) {
    }

    public CardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.cardViewStyle);
    }

    public CardView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        int color;
        ColorStateList valueOf;
        float f4;
        Rect rect = new Rect();
        this.f2705d = rect;
        this.f2706e = new Rect();
        int[] iArr = C1319a.f11839a;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i4, R.style.CardView);
        WeakHashMap weakHashMap = J.f3079a;
        H.b(this, context, iArr, attributeSet, obtainStyledAttributes, i4, R.style.CardView);
        if (obtainStyledAttributes.hasValue(2)) {
            valueOf = obtainStyledAttributes.getColorStateList(2);
        } else {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(f2703f);
            int color2 = obtainStyledAttributes2.getColor(0, 0);
            obtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color2, fArr);
            if (fArr[2] > 0.5f) {
                color = getResources().getColor(R.color.cardview_light_background);
            } else {
                color = getResources().getColor(R.color.cardview_dark_background);
            }
            valueOf = ColorStateList.valueOf(color);
        }
        float dimension = obtainStyledAttributes.getDimension(3, 0.0f);
        float dimension2 = obtainStyledAttributes.getDimension(4, 0.0f);
        float dimension3 = obtainStyledAttributes.getDimension(5, 0.0f);
        boolean z4 = obtainStyledAttributes.getBoolean(7, false);
        boolean z5 = obtainStyledAttributes.getBoolean(6, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(8, 0);
        rect.left = obtainStyledAttributes.getDimensionPixelSize(10, dimensionPixelSize);
        rect.top = obtainStyledAttributes.getDimensionPixelSize(12, dimensionPixelSize);
        rect.right = obtainStyledAttributes.getDimensionPixelSize(11, dimensionPixelSize);
        rect.bottom = obtainStyledAttributes.getDimensionPixelSize(9, dimensionPixelSize);
        dimension3 = dimension2 > dimension3 ? dimension2 : dimension3;
        obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.getDimensionPixelSize(1, 0);
        obtainStyledAttributes.recycle();
        C1337b c1337b = new C1337b(dimension, valueOf);
        setBackgroundDrawable(c1337b);
        setClipToOutline(true);
        setElevation(dimension2);
        if (dimension3 != c1337b.f11888e || c1337b.f11889f != z4 || c1337b.f11890g != z5) {
            c1337b.f11888e = dimension3;
            c1337b.f11889f = z4;
            c1337b.f11890g = z5;
            c1337b.b(null);
            c1337b.invalidateSelf();
        }
        if (!z4) {
            this.f2706e.set(0, 0, 0, 0);
            Rect rect2 = this.f2705d;
            super.setPadding(rect2.left + 0, rect2.top + 0, rect2.right + 0, 0 + rect2.bottom);
            return;
        }
        float f5 = c1337b.f11888e;
        float f6 = c1337b.f11884a;
        if (z5) {
            f4 = (float) (((1.0d - C1338c.f11895a) * f6) + f5);
        } else {
            int i5 = C1338c.f11896b;
            f4 = f5;
        }
        int ceil = (int) Math.ceil(f4);
        int ceil2 = (int) Math.ceil(C1338c.a(f5, f6, z5));
        this.f2706e.set(ceil, ceil2, ceil, ceil2);
        Rect rect3 = this.f2705d;
        super.setPadding(rect3.left + ceil, rect3.top + ceil2, ceil + rect3.right, ceil2 + rect3.bottom);
    }
}
