package com.android.launcher3.util;

import android.content.Context;
import android.icu.text.MessageFormat;
import java.util.HashMap;
import java.util.Locale;
/* loaded from: classes.dex */
public final class PluralMessageFormat {
    public static final String getIcuPluralString(Context context, int i4, int i5) {
        MessageFormat messageFormat = new MessageFormat(context.getResources().getString(i4), Locale.getDefault());
        HashMap hashMap = new HashMap();
        hashMap.put("count", Integer.valueOf(i5));
        return messageFormat.format(hashMap);
    }
}
