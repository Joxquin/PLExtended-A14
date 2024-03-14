package com.android.launcher3.util;

import java.text.Collator;
import java.util.Comparator;
/* loaded from: classes.dex */
public final class LabelComparator implements Comparator {
    private final Collator mCollator = Collator.getInstance();

    @Override // java.util.Comparator
    public final int compare(String str, String str2) {
        boolean z4 = false;
        boolean z5 = str.length() > 0 && Character.isLetterOrDigit(str.codePointAt(0));
        if (str2.length() > 0 && Character.isLetterOrDigit(str2.codePointAt(0))) {
            z4 = true;
        }
        if (!z5 || z4) {
            if (z5 || !z4) {
                return this.mCollator.compare(str, str2);
            }
            return 1;
        }
        return -1;
    }
}
