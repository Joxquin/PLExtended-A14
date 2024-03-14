package com.android.wm.shell.animation;

import androidx.dynamicanimation.animation.o;
import androidx.dynamicanimation.animation.q;
import androidx.dynamicanimation.animation.s;
import java.util.Set;
import kotlin.jvm.internal.FunctionReferenceImpl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class PhysicsAnimator$cancelAction$1 extends FunctionReferenceImpl implements m3.l {
    public PhysicsAnimator$cancelAction$1(Object obj) {
        super(1, obj, l.class, "cancelInternal", "cancelInternal$frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib(Ljava/util/Set;)V");
    }

    @Override // m3.l
    public final Object invoke(Object obj) {
        Set<q> p02 = (Set) obj;
        kotlin.jvm.internal.h.e(p02, "p0");
        l lVar = (l) this.receiver;
        lVar.getClass();
        for (q qVar : p02) {
            o oVar = (o) lVar.f6290c.get(qVar);
            if (oVar != null) {
                oVar.b();
            }
            s sVar = (s) lVar.f6289b.get(qVar);
            if (sVar != null) {
                sVar.b();
            }
        }
        return e3.f.f9037a;
    }
}
