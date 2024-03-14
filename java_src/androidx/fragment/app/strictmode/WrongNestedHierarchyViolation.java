package androidx.fragment.app.strictmode;

import androidx.fragment.app.K;
/* loaded from: classes.dex */
public final class WrongNestedHierarchyViolation extends Violation {
    private final int containerId;
    private final K expectedParentFragment;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public WrongNestedHierarchyViolation(androidx.fragment.app.K r3, androidx.fragment.app.K r4, int r5) {
        /*
            r2 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Attempting to nest fragment "
            r0.<init>(r1)
            r0.append(r3)
            java.lang.String r1 = " within the view of parent fragment "
            r0.append(r1)
            r0.append(r4)
            java.lang.String r1 = " via container with ID "
            r0.append(r1)
            java.lang.String r1 = " without using parent's childFragmentManager"
            java.lang.String r0 = v.C1429e.a(r0, r5, r1)
            r2.<init>(r3, r0)
            r2.expectedParentFragment = r4
            r2.containerId = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.strictmode.WrongNestedHierarchyViolation.<init>(androidx.fragment.app.K, androidx.fragment.app.K, int):void");
    }
}
