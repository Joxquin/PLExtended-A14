package com.android.wm.shell.animation;

import android.util.ArrayMap;
import android.util.Log;
import androidx.dynamicanimation.animation.o;
import androidx.dynamicanimation.animation.q;
import androidx.dynamicanimation.animation.s;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.internal.FunctionReferenceImpl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class PhysicsAnimator$startAction$1 extends FunctionReferenceImpl implements m3.a {
    public PhysicsAnimator$startAction$1(Object obj) {
        super(0, obj, l.class, "startInternal", "startInternal$frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib()V");
    }

    public final void a() {
        ArrayList arrayList;
        ArrayMap arrayMap;
        ArrayMap arrayMap2;
        final l lVar = (l) this.receiver;
        final Object obj = lVar.f6288a.get();
        if (obj == null) {
            Log.w("PhysicsAnimator", "Trying to animate a GC-ed object.");
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = lVar.d().iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            arrayList = lVar.f6294g;
            arrayMap = lVar.f6291d;
            arrayMap2 = lVar.f6292e;
            if (!hasNext) {
                break;
            }
            final q qVar = (q) it.next();
            final e eVar = (e) arrayMap2.get(qVar);
            g gVar = (g) arrayMap.get(qVar);
            final float value = qVar.getValue(obj);
            if (eVar != null) {
                arrayList2.add(new m3.a() { // from class: com.android.wm.shell.animation.PhysicsAnimator$startInternal$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // m3.a
                    public final Object invoke() {
                        e eVar2 = e.this;
                        float f4 = value;
                        eVar2.f6262b = Math.min(f4, eVar2.f6262b);
                        eVar2.f6263c = Math.max(f4, eVar2.f6263c);
                        lVar.b(qVar);
                        l lVar2 = lVar;
                        q qVar2 = qVar;
                        Object obj2 = obj;
                        ArrayMap arrayMap3 = lVar2.f6290c;
                        Object obj3 = arrayMap3.get(qVar2);
                        Object obj4 = obj3;
                        if (obj3 == null) {
                            o oVar = new o(qVar2, obj2);
                            lVar2.c(oVar, qVar2);
                            arrayMap3.put(qVar2, oVar);
                            obj4 = oVar;
                        }
                        o oVar2 = (o) obj4;
                        e eVar3 = e.this;
                        eVar3.getClass();
                        float f5 = eVar3.f6261a;
                        if (f5 > 0.0f) {
                            oVar2.f3209x.f3206a = f5 * (-4.2f);
                            oVar2.f3201h = eVar3.f6262b;
                            oVar2.f3200g = eVar3.f6263c;
                            oVar2.f3194a = eVar3.f6264d;
                            oVar2.h();
                            return e3.f.f9037a;
                        }
                        throw new IllegalArgumentException("Friction must be positive");
                    }
                });
            }
            if (gVar != null) {
                if (eVar == null) {
                    ArrayMap arrayMap3 = lVar.f6289b;
                    Object obj2 = arrayMap3.get(qVar);
                    Object obj3 = obj2;
                    if (obj2 == null) {
                        s sVar = new s(qVar, obj);
                        lVar.c(sVar, qVar);
                        arrayMap3.put(qVar, sVar);
                        obj3 = sVar;
                    }
                    s sVar2 = (s) obj3;
                    gVar.a(sVar2);
                    arrayList2.add(new PhysicsAnimator$startInternal$2(sVar2));
                } else {
                    arrayList.add(0, new k(qVar, eVar.f6262b, eVar.f6263c, gVar, lVar));
                }
            }
        }
        ArrayList arrayList3 = lVar.f6297j;
        Set d4 = lVar.d();
        ArrayList arrayList4 = lVar.f6293f;
        ArrayList arrayList5 = new ArrayList(arrayList4);
        ArrayList arrayList6 = new ArrayList(arrayList);
        ArrayList arrayList7 = lVar.f6295h;
        arrayList3.add(new f(lVar, obj, d4, arrayList5, arrayList6, new ArrayList(arrayList7)));
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            ((m3.a) it2.next()).invoke();
        }
        arrayMap.clear();
        arrayMap2.clear();
        arrayList4.clear();
        arrayList.clear();
        arrayList7.clear();
    }

    @Override // m3.a
    public final /* bridge */ /* synthetic */ Object invoke() {
        a();
        return e3.f.f9037a;
    }
}
