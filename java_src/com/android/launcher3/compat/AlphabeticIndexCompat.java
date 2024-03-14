package com.android.launcher3.compat;

import android.icu.text.AlphabeticIndex;
import android.os.LocaleList;
import com.android.launcher3.Utilities;
import java.util.Locale;
/* loaded from: classes.dex */
public final class AlphabeticIndexCompat {
    private final AlphabeticIndex.ImmutableIndex mBaseIndex;
    private final String mDefaultMiscLabel;

    public AlphabeticIndexCompat(LocaleList localeList) {
        int size = localeList.size();
        Locale locale = size == 0 ? Locale.ENGLISH : localeList.get(0);
        AlphabeticIndex alphabeticIndex = new AlphabeticIndex(locale);
        for (int i4 = 1; i4 < size; i4++) {
            alphabeticIndex.addLabels(localeList.get(i4));
        }
        alphabeticIndex.addLabels(Locale.ENGLISH);
        this.mBaseIndex = alphabeticIndex.buildImmutableIndex();
        if (locale.getLanguage().equals(Locale.JAPANESE.getLanguage())) {
            this.mDefaultMiscLabel = "他";
        } else {
            this.mDefaultMiscLabel = "∙";
        }
    }

    public final String computeSectionName(CharSequence charSequence) {
        String trim = Utilities.trim(charSequence);
        AlphabeticIndex.ImmutableIndex immutableIndex = this.mBaseIndex;
        String label = immutableIndex.getBucket(immutableIndex.getBucketIndex(trim)).getLabel();
        if (!Utilities.trim(label).isEmpty() || trim.length() <= 0) {
            return label;
        }
        int codePointAt = trim.codePointAt(0);
        return Character.isDigit(codePointAt) ? "#" : Character.isLetter(codePointAt) ? this.mDefaultMiscLabel : "∙";
    }
}
