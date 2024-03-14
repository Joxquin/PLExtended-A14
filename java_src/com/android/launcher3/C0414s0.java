package com.android.launcher3;

import android.view.View;
import java.util.function.Supplier;
/* renamed from: com.android.launcher3.s0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0414s0 implements Supplier {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4967a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ MultipageCellLayout f4968b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f4969c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4970d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ int f4971e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ int f4972f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ View f4973g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ int[] f4974h;

    public /* synthetic */ C0414s0(MultipageCellLayout multipageCellLayout, int i4, int i5, int i6, int i7, View view, int[] iArr, int i8) {
        this.f4967a = i8;
        this.f4968b = multipageCellLayout;
        this.f4969c = i4;
        this.f4970d = i5;
        this.f4971e = i6;
        this.f4972f = i7;
        this.f4973g = view;
        this.f4974h = iArr;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f4967a) {
            case 0:
                return MultipageCellLayout.b(this.f4968b, this.f4969c, this.f4970d, this.f4971e, this.f4972f, this.f4973g, this.f4974h);
            default:
                return MultipageCellLayout.c(this.f4968b, this.f4969c, this.f4970d, this.f4971e, this.f4972f, this.f4973g, this.f4974h);
        }
    }
}
