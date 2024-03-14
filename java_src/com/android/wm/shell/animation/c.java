package com.android.wm.shell.animation;

import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class c {
    public static l a(Object target) {
        kotlin.jvm.internal.h.e(target, "target");
        WeakHashMap weakHashMap = m.f6300a;
        if (!weakHashMap.containsKey(target)) {
            weakHashMap.put(target, ((PhysicsAnimator$Companion$instanceConstructor$1) l.f6287m).invoke(target));
        }
        Object obj = weakHashMap.get(target);
        kotlin.jvm.internal.h.c(obj, "null cannot be cast to non-null type com.android.wm.shell.animation.PhysicsAnimator<T of com.android.wm.shell.animation.PhysicsAnimator.Companion.getInstance>");
        return (l) obj;
    }
}
