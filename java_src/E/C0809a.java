package e;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import d.C0792a;
/* renamed from: e.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0809a extends ViewGroup.MarginLayoutParams {

    /* renamed from: a  reason: collision with root package name */
    public int f8905a;

    public C0809a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8905a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0792a.f8732b);
        this.f8905a = obtainStyledAttributes.getInt(0, 0);
        obtainStyledAttributes.recycle();
    }

    public C0809a() {
        super(-2, -2);
        this.f8905a = 8388627;
    }

    public C0809a(C0809a c0809a) {
        super((ViewGroup.MarginLayoutParams) c0809a);
        this.f8905a = 0;
        this.f8905a = c0809a.f8905a;
    }

    public C0809a(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f8905a = 0;
    }
}
