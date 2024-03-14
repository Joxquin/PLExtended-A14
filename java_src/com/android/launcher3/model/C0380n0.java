package com.android.launcher3.model;

import com.android.launcher3.model.data.ItemInfo;
import java.util.Objects;
import java.util.function.Predicate;
/* renamed from: com.android.launcher3.model.n0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0380n0 implements Predicate {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4844a;

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f4844a) {
            case 0:
                return Objects.isNull((ItemInfo) obj);
            default:
                return ((ItemInfo) obj).container == -101;
        }
    }
}
