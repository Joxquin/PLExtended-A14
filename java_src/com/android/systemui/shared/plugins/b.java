package com.android.systemui.shared.plugins;
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f6224d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ PluginActionManager f6225e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ String f6226f;

    public /* synthetic */ b(PluginActionManager pluginActionManager, String str, int i4) {
        this.f6224d = i4;
        this.f6225e = pluginActionManager;
        this.f6226f = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6224d) {
            case 0:
                PluginActionManager.f(this.f6225e, this.f6226f);
                return;
            default:
                PluginActionManager.e(this.f6225e, this.f6226f);
                return;
        }
    }
}
