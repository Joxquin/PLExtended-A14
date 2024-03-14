package com.android.launcher3.widget.picker;

import com.android.launcher3.widget.model.WidgetsListBaseEntry;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final /* synthetic */ class k implements Predicate {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5396a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ WidgetsListAdapter f5397b;

    public /* synthetic */ k(WidgetsListAdapter widgetsListAdapter, int i4) {
        this.f5396a = i4;
        this.f5397b = widgetsListAdapter;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f5396a) {
            case 0:
                return WidgetsListAdapter.d(this.f5397b, (WidgetsListBaseEntry) obj);
            default:
                return WidgetsListAdapter.c(this.f5397b, (WidgetsListBaseEntry) obj);
        }
    }
}
