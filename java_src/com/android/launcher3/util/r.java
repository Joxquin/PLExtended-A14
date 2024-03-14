package com.android.launcher3.util;

import com.android.launcher3.model.data.WorkspaceItemInfo;
import java.util.HashSet;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class r implements Predicate {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5311a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ HashSet f5312b;

    public /* synthetic */ r(HashSet hashSet, int i4) {
        this.f5311a = i4;
        this.f5312b = hashSet;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f5311a) {
            case 0:
            default:
                return this.f5312b.contains((WorkspaceItemInfo) obj);
        }
    }
}
