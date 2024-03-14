package W1;

import android.content.pm.PackageManager;
import android.net.Uri;
import com.google.android.apps.nexuslauncher.qsb.AssistStateManagerGoogle;
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ AssistStateManagerGoogle f1888d;

    @Override // java.lang.Runnable
    public final void run() {
        AssistStateManagerGoogle assistStateManagerGoogle = this.f1888d;
        Uri uri = AssistStateManagerGoogle.f7507q;
        assistStateManagerGoogle.getClass();
        try {
            assistStateManagerGoogle.f7514i = assistStateManagerGoogle.f7511f.getPackageManager().getProperty("omni.AWARE", "com.google.android.googlequicksearchbox").getBoolean();
            synchronized (assistStateManagerGoogle.f7516k) {
                assistStateManagerGoogle.f7516k.addLog("Updated isAware", assistStateManagerGoogle.f7514i);
            }
        } catch (PackageManager.NameNotFoundException unused) {
            assistStateManagerGoogle.f7514i = false;
            synchronized (assistStateManagerGoogle.f7516k) {
                assistStateManagerGoogle.f7516k.addLog("Name not found, isAware set to false");
            }
        }
    }
}
