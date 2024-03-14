package com.android.launcher3.util;
/* renamed from: com.android.launcher3.util.j  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0477j implements FlagOp {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5297a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ FlagOp f5298b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f5299c;

    public /* synthetic */ C0477j(FlagOp flagOp, int i4, int i5) {
        this.f5297a = i5;
        this.f5298b = flagOp;
        this.f5299c = i4;
    }

    @Override // com.android.launcher3.util.FlagOp
    public final int apply(int i4) {
        int i5 = this.f5297a;
        int i6 = this.f5299c;
        FlagOp flagOp = this.f5298b;
        switch (i5) {
            case 0:
                return flagOp.apply(i4) | i6;
            default:
                return flagOp.apply(i4) & (~i6);
        }
    }
}
