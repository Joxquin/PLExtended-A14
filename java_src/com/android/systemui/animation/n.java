package com.android.systemui.animation;
/* loaded from: classes.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public int f6091a;

    /* renamed from: b  reason: collision with root package name */
    public int f6092b;

    /* renamed from: c  reason: collision with root package name */
    public int f6093c;

    /* renamed from: d  reason: collision with root package name */
    public int f6094d;

    /* renamed from: e  reason: collision with root package name */
    public float f6095e;

    /* renamed from: f  reason: collision with root package name */
    public float f6096f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f6097g;

    public n(int i4, int i5, int i6, int i7, float f4, float f5, int i8) {
        i4 = (i8 & 1) != 0 ? 0 : i4;
        i5 = (i8 & 2) != 0 ? 0 : i5;
        i6 = (i8 & 4) != 0 ? 0 : i6;
        i7 = (i8 & 8) != 0 ? 0 : i7;
        f4 = (i8 & 16) != 0 ? 0.0f : f4;
        f5 = (i8 & 32) != 0 ? 0.0f : f5;
        this.f6091a = i4;
        this.f6092b = i5;
        this.f6093c = i6;
        this.f6094d = i7;
        this.f6095e = f4;
        this.f6096f = f5;
        this.f6097g = true;
    }
}
