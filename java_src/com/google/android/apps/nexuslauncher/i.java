package com.google.android.apps.nexuslauncher;

import android.content.SharedPreferences;
import java.util.function.Function;
/* loaded from: classes.dex */
public final /* synthetic */ class i implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return new h2.f(((SharedPreferences) obj).getBoolean("pref_enable_minus_one", true) | 2 | 4 | 8);
    }
}
