package com.android.systemui.shared.system;

import H1.f;
import android.util.ArrayMap;
import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import android.window.TransitionInfo;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public class RemoteAnimationTargetCompat {
    /* JADX INFO: Access modifiers changed from: private */
    public static boolean lambda$wrapNonApps$0(boolean z4, TransitionInfo.Change change) {
        if (z4) {
            if (change.getTaskInfo() == null && change.hasFlags(2) && !change.hasFlags(512)) {
                return true;
            }
        } else if (change.getTaskInfo() == null && !change.hasFlags(2) && !change.hasFlags(512)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:118:0x029d, code lost:
        if (r10 != 4) goto L56;
     */
    /* JADX WARN: Removed duplicated region for block: B:125:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02af  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.view.RemoteAnimationTarget[] wrap(android.window.TransitionInfo r47, android.view.SurfaceControl.Transaction r48, android.util.ArrayMap r49, java.util.function.Predicate r50) {
        /*
            Method dump skipped, instructions count: 799
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.shared.system.RemoteAnimationTargetCompat.wrap(android.window.TransitionInfo, android.view.SurfaceControl$Transaction, android.util.ArrayMap, java.util.function.Predicate):android.view.RemoteAnimationTarget[]");
    }

    public static RemoteAnimationTarget[] wrapApps(TransitionInfo transitionInfo, SurfaceControl.Transaction transaction, ArrayMap arrayMap) {
        return wrap(transitionInfo, transaction, arrayMap, new f());
    }

    public static RemoteAnimationTarget[] wrapNonApps(TransitionInfo transitionInfo, final boolean z4, SurfaceControl.Transaction transaction, ArrayMap arrayMap) {
        return wrap(transitionInfo, transaction, arrayMap, new Predicate() { // from class: com.android.systemui.shared.system.c
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$wrapNonApps$0;
                lambda$wrapNonApps$0 = RemoteAnimationTargetCompat.lambda$wrapNonApps$0(z4, (TransitionInfo.Change) obj);
                return lambda$wrapNonApps$0;
            }
        });
    }
}
