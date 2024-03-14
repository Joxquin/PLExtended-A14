package com.android.launcher3.util;

import android.content.Context;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
/* loaded from: classes.dex */
public final class DynamicResource implements n1.m, n1.k {
    private static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new C0473f());
    private final Context mContext;
    private n1.m mPlugin;

    private DynamicResource(Context context) {
        this.mContext = context;
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.get(context)).addPluginListener(this, n1.m.class, false);
    }

    public static n1.m provider(Context context) {
        DynamicResource dynamicResource = (DynamicResource) INSTANCE.get(context);
        n1.m mVar = dynamicResource.mPlugin;
        return mVar == null ? dynamicResource : mVar;
    }

    public static /* synthetic */ DynamicResource q(Context context) {
        return new DynamicResource(context);
    }

    @Override // n1.m
    public final float getDimension(int i4) {
        return this.mContext.getResources().getDimension(i4);
    }

    @Override // n1.m
    public final float getFloat(int i4) {
        return this.mContext.getResources().getFloat(i4);
    }

    @Override // n1.k
    public final void onPluginConnected(n1.j jVar, Context context) {
        this.mPlugin = (n1.m) jVar;
    }

    @Override // n1.k
    public final void onPluginDisconnected(n1.j jVar) {
        n1.m mVar = (n1.m) jVar;
        this.mPlugin = null;
    }
}
