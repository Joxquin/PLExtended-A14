package com.android.launcher3.folder;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final class FolderNameInfos {
    private int mStatus = 0;
    private final CharSequence[] mLabels = new CharSequence[4];
    private final Float[] mScores = new Float[4];

    public final boolean contains(final CharSequence charSequence) {
        return Arrays.stream(this.mLabels).filter(new n()).anyMatch(new Predicate() { // from class: com.android.launcher3.folder.o
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CharSequence) obj).toString().equalsIgnoreCase(charSequence.toString());
            }
        });
    }

    public final CharSequence[] getLabels() {
        return this.mLabels;
    }

    public final Float[] getScores() {
        return this.mScores;
    }

    public final boolean hasPrimary() {
        return (this.mStatus & 2) > 0 && this.mLabels[0] != null;
    }

    public final boolean hasSuggestions() {
        CharSequence[] charSequenceArr;
        for (CharSequence charSequence : this.mLabels) {
            if (charSequence != null && !TextUtils.isEmpty(charSequence)) {
                return true;
            }
        }
        return false;
    }

    public final void setLabel(int i4, CharSequence charSequence, Float f4) {
        CharSequence[] charSequenceArr = this.mLabels;
        if (i4 < charSequenceArr.length) {
            charSequenceArr[i4] = charSequence;
            this.mScores[i4] = f4;
        }
    }

    public final void setStatus(int i4) {
        this.mStatus = i4 | this.mStatus;
    }

    public final String toString() {
        return String.format("status=%s, labels=%s", Integer.toBinaryString(this.mStatus), Arrays.toString(this.mLabels));
    }
}
