package com.android.quickstep;

import com.android.quickstep.util.GroupTask;
import java.util.function.Function;
/* renamed from: com.android.quickstep.k0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0524k0 implements Function {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5717a;

    public /* synthetic */ C0524k0(int i4) {
        this.f5717a = i4;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f5717a) {
            case 0:
            default:
                return ((GroupTask) obj).copy();
        }
    }
}
