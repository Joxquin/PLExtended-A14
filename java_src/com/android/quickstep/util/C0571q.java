package com.android.quickstep.util;

import android.content.Intent;
import android.net.Uri;
import java.util.function.BiFunction;
/* renamed from: com.android.quickstep.util.q  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0571q implements BiFunction {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5885a;

    public /* synthetic */ C0571q(int i4) {
        this.f5885a = i4;
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f5885a) {
            case 0:
            default:
                return ImageActionUtils.h((Uri) obj, (Intent) obj2);
        }
    }
}
