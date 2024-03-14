package h2;

import android.util.Log;
/* loaded from: classes.dex */
public final class l implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ m f9527d;

    public l(m mVar) {
        this.f9527d = mVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        m mVar = this.f9527d;
        if (mVar.f9533i) {
            try {
                mVar.f9528d.unbindService(mVar);
            } catch (IllegalArgumentException e4) {
                Log.d("LauncherClient", "Unbind failed, ignoring", e4);
            }
            mVar.f9533i = false;
        }
    }
}
