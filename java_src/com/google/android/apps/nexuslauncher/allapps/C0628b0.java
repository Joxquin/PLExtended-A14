package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.SearchTarget;
import com.android.launcher3.logging.StatsLogManager;
import java.util.function.Function;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.b0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0628b0 implements Function {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f7008a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f7009b;

    public /* synthetic */ C0628b0(int i4, Object obj) {
        this.f7008a = i4;
        this.f7009b = obj;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f7008a) {
            case 0:
                return ((C0719y0) this.f7009b).e((SearchTarget) obj);
            default:
                return ((StatsLogManager.StatsLogger) this.f7009b).withItemInfo((C0649g1) obj);
        }
    }
}
