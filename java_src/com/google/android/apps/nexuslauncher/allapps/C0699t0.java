package com.google.android.apps.nexuslauncher.allapps;

import android.os.Handler;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.cache.HandlerRunnable;
import com.android.launcher3.util.Executors;
import java.util.ArrayList;
import java.util.function.Supplier;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.t0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0699t0 {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f7203a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    public final HandlerRunnable f7204b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f7205c;

    /* renamed from: d  reason: collision with root package name */
    public BitmapInfo f7206d;

    public C0699t0(Handler handler, Supplier supplier) {
        HandlerRunnable handlerRunnable = new HandlerRunnable(handler, supplier, Executors.MAIN_EXECUTOR, new C0691r0(0, this));
        this.f7204b = handlerRunnable;
        Utilities.postAsyncCallback(handler, handlerRunnable);
    }
}
