package com.android.wm.shell.animation;

import android.util.ArrayMap;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final Object f6265a;

    /* renamed from: b  reason: collision with root package name */
    public final Set f6266b;

    /* renamed from: c  reason: collision with root package name */
    public final List f6267c;

    /* renamed from: d  reason: collision with root package name */
    public final List f6268d;

    /* renamed from: e  reason: collision with root package name */
    public final List f6269e;

    /* renamed from: f  reason: collision with root package name */
    public int f6270f;

    /* renamed from: g  reason: collision with root package name */
    public final ArrayMap f6271g = new ArrayMap();

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ l f6272h;

    public f(l lVar, Object obj, Set set, List list, List list2, List list3) {
        this.f6272h = lVar;
        this.f6265a = obj;
        this.f6266b = set;
        this.f6267c = list;
        this.f6268d = list2;
        this.f6269e = list3;
        this.f6270f = set.size();
    }

    public final void a() {
        ArrayMap arrayMap = this.f6271g;
        if (arrayMap.size() < this.f6270f || arrayMap.size() <= 0) {
            return;
        }
        for (h hVar : this.f6267c) {
            new ArrayMap(arrayMap);
            hVar.a();
        }
        arrayMap.clear();
    }
}
