package k;

import android.content.res.TypedArray;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.TextView;
import d.C0792a;
/* renamed from: k.E  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1121E {

    /* renamed from: a  reason: collision with root package name */
    public final TextView f10755a;

    /* renamed from: b  reason: collision with root package name */
    public final R.m f10756b;

    public C1121E(TextView textView) {
        this.f10755a = textView;
        this.f10756b = new R.m(textView);
    }

    public final InputFilter[] a(InputFilter[] inputFilterArr) {
        return this.f10756b.f1630a.a(inputFilterArr);
    }

    public final void b(AttributeSet attributeSet, int i4) {
        TypedArray obtainStyledAttributes = this.f10755a.getContext().obtainStyledAttributes(attributeSet, C0792a.f8739i, i4, 0);
        try {
            boolean z4 = obtainStyledAttributes.hasValue(14) ? obtainStyledAttributes.getBoolean(14, true) : true;
            obtainStyledAttributes.recycle();
            this.f10756b.f1630a.d(z4);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final void c(boolean z4) {
        this.f10756b.f1630a.c(z4);
    }
}
