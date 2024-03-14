package com.android.quickstep.util;

import java.io.File;
import java.io.FilenameFilter;
/* renamed from: com.android.quickstep.util.t  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0573t implements FilenameFilter {
    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        boolean lambda$clearOldCacheFiles$5;
        lambda$clearOldCacheFiles$5 = ImageActionUtils.lambda$clearOldCacheFiles$5(file, str);
        return lambda$clearOldCacheFiles$5;
    }
}
