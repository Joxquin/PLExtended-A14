package com.android.launcher3.model;

import com.android.launcher3.model.data.ItemInfo;
import java.util.function.Supplier;
/* renamed from: com.android.launcher3.model.s0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0389s0 implements Supplier {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4869a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ModelWriter f4870b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ItemInfo f4871c;

    public /* synthetic */ C0389s0(ModelWriter modelWriter, ItemInfo itemInfo, int i4) {
        this.f4869a = i4;
        this.f4870b = modelWriter;
        this.f4871c = itemInfo;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f4869a) {
            case 0:
                return ModelWriter.g(this.f4870b, this.f4871c);
            case 1:
                return ModelWriter.f(this.f4870b, this.f4871c);
            default:
                return ModelWriter.e(this.f4870b, this.f4871c);
        }
    }
}
