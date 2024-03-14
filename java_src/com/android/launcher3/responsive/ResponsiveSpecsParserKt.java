package com.android.launcher3.responsive;

import java.util.Map;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class ResponsiveSpecsParserKt {
    public static final SizeSpec getOrError(Map map, String str) {
        h.e(map, "<this>");
        Object obj = map.get(str);
        if (obj != null) {
            return (SizeSpec) obj;
        }
        throw new IllegalStateException(("Attr '" + str + "' must be defined.").toString());
    }
}
