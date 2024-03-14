package com.android.systemui.shared.plugins;
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f6221d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ PluginActionManager f6222e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ PluginInstance f6223f;

    public /* synthetic */ a(PluginActionManager pluginActionManager, PluginInstance pluginInstance, int i4) {
        this.f6221d = i4;
        this.f6222e = pluginActionManager;
        this.f6223f = pluginInstance;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6221d) {
            case 0:
                this.f6222e.lambda$destroy$1(this.f6223f);
                return;
            case 1:
                this.f6222e.lambda$queryAll$4(this.f6223f);
                return;
            case 2:
                this.f6222e.lambda$removePkg$5(this.f6223f);
                return;
            default:
                this.f6222e.lambda$handleQueryPlugins$6(this.f6223f);
                return;
        }
    }
}
