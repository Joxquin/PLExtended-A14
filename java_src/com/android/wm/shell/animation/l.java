package com.android.wm.shell.animation;

import android.util.ArrayMap;
import androidx.dynamicanimation.animation.o;
import androidx.dynamicanimation.animation.q;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.collections.EmptySet;
import kotlin.collections.s;
import kotlin.collections.w;
/* loaded from: classes.dex */
public final class l {

    /* renamed from: m  reason: collision with root package name */
    public static final m3.l f6287m = PhysicsAnimator$Companion$instanceConstructor$1.f6255d;

    /* renamed from: a  reason: collision with root package name */
    public final WeakReference f6288a;

    /* renamed from: b  reason: collision with root package name */
    public final ArrayMap f6289b = new ArrayMap();

    /* renamed from: c  reason: collision with root package name */
    public final ArrayMap f6290c = new ArrayMap();

    /* renamed from: d  reason: collision with root package name */
    public final ArrayMap f6291d = new ArrayMap();

    /* renamed from: e  reason: collision with root package name */
    public final ArrayMap f6292e = new ArrayMap();

    /* renamed from: f  reason: collision with root package name */
    public final ArrayList f6293f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    public final ArrayList f6294g = new ArrayList();

    /* renamed from: h  reason: collision with root package name */
    public final ArrayList f6295h = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    public g f6296i = m.f6301b;

    /* renamed from: j  reason: collision with root package name */
    public final ArrayList f6297j = new ArrayList();

    /* renamed from: k  reason: collision with root package name */
    public final m3.a f6298k = new PhysicsAnimator$startAction$1(this);

    /* renamed from: l  reason: collision with root package name */
    public final m3.l f6299l = new PhysicsAnimator$cancelAction$1(this);

    public l(Object obj) {
        this.f6288a = new WeakReference(obj);
    }

    public final void a() {
        ArrayMap arrayMap = this.f6290c;
        int size = arrayMap.size();
        m3.l lVar = this.f6299l;
        if (size > 0) {
            Set keySet = arrayMap.keySet();
            kotlin.jvm.internal.h.d(keySet, "flingAnimations.keys");
            ((PhysicsAnimator$cancelAction$1) lVar).invoke(keySet);
        }
        ArrayMap arrayMap2 = this.f6289b;
        if (arrayMap2.size() > 0) {
            Set keySet2 = arrayMap2.keySet();
            kotlin.jvm.internal.h.d(keySet2, "springAnimations.keys");
            ((PhysicsAnimator$cancelAction$1) lVar).invoke(keySet2);
        }
    }

    public final void b(q... qVarArr) {
        Collection collection;
        m3.l lVar = this.f6299l;
        int length = qVarArr.length;
        if (length != 0) {
            if (length != 1) {
                collection = new LinkedHashSet(w.a(qVarArr.length));
                for (q qVar : qVarArr) {
                    collection.add(qVar);
                }
            } else {
                collection = Collections.singleton(qVarArr[0]);
                kotlin.jvm.internal.h.d(collection, "singleton(element)");
            }
        } else {
            collection = EmptySet.f11228d;
        }
        ((PhysicsAnimator$cancelAction$1) lVar).invoke(collection);
    }

    public final void c(androidx.dynamicanimation.animation.m mVar, q qVar) {
        i iVar = new i(this, qVar);
        if (mVar.f3199f) {
            throw new UnsupportedOperationException("Error: Update listeners must be added beforethe animation.");
        }
        ArrayList arrayList = mVar.f3205l;
        if (!arrayList.contains(iVar)) {
            arrayList.add(iVar);
        }
        mVar.a(new j(this, qVar, mVar));
    }

    public final Set d() {
        Set keySet = this.f6291d.keySet();
        kotlin.jvm.internal.h.d(keySet, "springConfigs.keys");
        Set keySet2 = this.f6292e.keySet();
        kotlin.jvm.internal.h.d(keySet2, "flingConfigs.keys");
        Set m4 = s.m(keySet);
        kotlin.collections.q.e(keySet2, m4);
        return m4;
    }

    public final boolean e(q property) {
        kotlin.jvm.internal.h.e(property, "property");
        androidx.dynamicanimation.animation.s sVar = (androidx.dynamicanimation.animation.s) this.f6289b.get(property);
        if (!(sVar != null ? sVar.f3199f : false)) {
            o oVar = (o) this.f6290c.get(property);
            if (!(oVar != null ? oVar.f3199f : false)) {
                return false;
            }
        }
        return true;
    }

    public final void f(androidx.dynamicanimation.animation.h property, float f4) {
        kotlin.jvm.internal.h.e(property, "property");
        g(property, f4, 0.0f, this.f6296i);
    }

    public final void g(q property, float f4, float f5, g config) {
        kotlin.jvm.internal.h.e(property, "property");
        kotlin.jvm.internal.h.e(config, "config");
        WeakHashMap weakHashMap = m.f6300a;
        this.f6291d.put(property, new g(config.f6273a, config.f6274b, f5, f4));
    }

    public final void h() {
        ((PhysicsAnimator$startAction$1) this.f6298k).invoke();
    }
}
