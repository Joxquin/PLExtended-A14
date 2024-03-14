package k2;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import i2.C0980a;
/* renamed from: k2.o  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1217o extends FrameLayout.LayoutParams {

    /* renamed from: a  reason: collision with root package name */
    public final int f11201a;

    /* renamed from: b  reason: collision with root package name */
    public float f11202b;

    public C1217o(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11201a = 0;
        this.f11202b = 0.5f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0980a.f9632h);
        this.f11201a = obtainStyledAttributes.getInt(0, 0);
        this.f11202b = obtainStyledAttributes.getFloat(1, 0.5f);
        obtainStyledAttributes.recycle();
    }

    public C1217o() {
        super(-1, -1);
        this.f11201a = 0;
        this.f11202b = 0.5f;
    }

    public C1217o(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f11201a = 0;
        this.f11202b = 0.5f;
    }
}
