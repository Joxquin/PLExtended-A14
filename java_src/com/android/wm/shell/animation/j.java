package com.android.wm.shell.animation;

import android.util.ArrayMap;
import androidx.dynamicanimation.animation.o;
import androidx.dynamicanimation.animation.q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.n;
/* loaded from: classes.dex */
public final class j implements androidx.dynamicanimation.animation.j {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ l f6279a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ q f6280b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ androidx.dynamicanimation.animation.m f6281c;

    public j(l lVar, q qVar, androidx.dynamicanimation.animation.m mVar) {
        this.f6279a = lVar;
        this.f6280b = qVar;
        this.f6281c = mVar;
    }

    @Override // androidx.dynamicanimation.animation.j
    public final void onAnimationEnd(androidx.dynamicanimation.animation.m mVar, final boolean z4, final float f4, final float f5) {
        int a4;
        l lVar = this.f6279a;
        ArrayList arrayList = lVar.f6297j;
        final q qVar = this.f6280b;
        final androidx.dynamicanimation.animation.m mVar2 = this.f6281c;
        m3.l lVar2 = new m3.l() { // from class: com.android.wm.shell.animation.PhysicsAnimator$configureDynamicAnimation$2$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // m3.l
            public final Object invoke(Object obj) {
                boolean z5;
                f it = (f) obj;
                kotlin.jvm.internal.h.e(it, "it");
                q property = q.this;
                boolean z6 = z4;
                float f6 = f4;
                float f7 = f5;
                boolean z7 = mVar2 instanceof o;
                kotlin.jvm.internal.h.e(property, "property");
                Set<q> set = it.f6266b;
                boolean z8 = false;
                if (set.contains(property)) {
                    it.f6270f--;
                    it.a();
                    ArrayMap arrayMap = it.f6271g;
                    if (arrayMap.containsKey(property)) {
                        for (h hVar : it.f6267c) {
                            new ArrayMap().put(property, arrayMap.get(property));
                            e3.f fVar = e3.f.f9037a;
                            hVar.a();
                        }
                        arrayMap.remove(property);
                    }
                    l lVar3 = it.f6272h;
                    lVar3.getClass();
                    if (!set.isEmpty()) {
                        for (q qVar2 : set) {
                            if (lVar3.e(qVar2)) {
                                z5 = true;
                                break;
                            }
                        }
                    }
                    z5 = false;
                    boolean z9 = !z5;
                    Iterator it2 = it.f6268d.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            ((d) it2.next()).a(it.f6265a, property, z7, z6, f6, f7, z9);
                            if (lVar3.e(property)) {
                                break;
                            }
                        } else {
                            if (z9 && !z6) {
                                for (m3.a aVar : it.f6269e) {
                                    aVar.invoke();
                                }
                            }
                            z8 = z9;
                        }
                    }
                }
                return Boolean.valueOf(z8);
            }
        };
        kotlin.jvm.internal.h.e(arrayList, "<this>");
        int i4 = 0;
        q3.b it = new q3.c(0, n.a(arrayList)).iterator();
        while (it.f12058f) {
            int a5 = it.a();
            Object obj = arrayList.get(a5);
            if (!((Boolean) lVar2.invoke(obj)).booleanValue()) {
                if (i4 != a5) {
                    arrayList.set(i4, obj);
                }
                i4++;
            }
        }
        if (i4 < arrayList.size() && i4 <= (a4 = n.a(arrayList))) {
            while (true) {
                arrayList.remove(a4);
                if (a4 == i4) {
                    break;
                }
                a4--;
            }
        }
        ArrayMap arrayMap = lVar.f6289b;
        q qVar2 = this.f6280b;
        Object obj2 = arrayMap.get(qVar2);
        androidx.dynamicanimation.animation.m mVar3 = this.f6281c;
        if (kotlin.jvm.internal.h.a(obj2, mVar3)) {
            arrayMap.remove(qVar2);
        }
        ArrayMap arrayMap2 = lVar.f6290c;
        if (kotlin.jvm.internal.h.a(arrayMap2.get(qVar2), mVar3)) {
            arrayMap2.remove(qVar2);
        }
    }
}
