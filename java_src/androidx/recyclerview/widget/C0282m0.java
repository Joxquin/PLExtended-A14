package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup;
/* renamed from: androidx.recyclerview.widget.m0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0282m0 extends ViewGroup.MarginLayoutParams {

    /* renamed from: a  reason: collision with root package name */
    public E0 f3983a;

    /* renamed from: b  reason: collision with root package name */
    public final Rect f3984b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f3985c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f3986d;

    public C0282m0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3984b = new Rect();
        this.f3985c = true;
        this.f3986d = false;
    }

    public final int a() {
        return this.f3983a.getLayoutPosition();
    }

    public final boolean b() {
        return (this.f3983a.mFlags & 2) != 0;
    }

    public final boolean c() {
        return this.f3983a.isRemoved();
    }

    public C0282m0(int i4, int i5) {
        super(i4, i5);
        this.f3984b = new Rect();
        this.f3985c = true;
        this.f3986d = false;
    }

    public C0282m0(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f3984b = new Rect();
        this.f3985c = true;
        this.f3986d = false;
    }

    public C0282m0(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f3984b = new Rect();
        this.f3985c = true;
        this.f3986d = false;
    }

    public C0282m0(C0282m0 c0282m0) {
        super((ViewGroup.LayoutParams) c0282m0);
        this.f3984b = new Rect();
        this.f3985c = true;
        this.f3986d = false;
    }
}
