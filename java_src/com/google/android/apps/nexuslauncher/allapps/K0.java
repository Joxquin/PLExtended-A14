package com.google.android.apps.nexuslauncher.allapps;

import android.app.appsearch.GlobalSearchSession;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class K0 implements Consumer {
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        ((GlobalSearchSession) obj).close();
    }
}
