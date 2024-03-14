package com.android.launcher3.util;

import android.os.UserHandle;
import com.android.launcher3.model.data.ItemInfo;
import java.util.HashSet;
import java.util.Set;
import java.util.function.Predicate;
/* renamed from: com.android.launcher3.util.o  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0482o implements Predicate {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5305a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ UserHandle f5306b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Set f5307c;

    public /* synthetic */ C0482o(UserHandle userHandle, Set set, int i4) {
        this.f5305a = i4;
        this.f5306b = userHandle;
        this.f5307c = set;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f5305a) {
            case 0:
                return ItemInfoMatcher.a(this.f5306b, (HashSet) this.f5307c, (ItemInfo) obj);
            default:
                return ItemInfoMatcher.b(this.f5306b, this.f5307c, (ItemInfo) obj);
        }
    }
}
