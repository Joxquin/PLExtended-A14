package K0;

import android.view.SurfaceControlViewHost;
import com.android.launcher3.graphics.LauncherPreviewRenderer;
import com.android.launcher3.graphics.PreviewSurfaceRenderer;
/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f899d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f900e;

    public /* synthetic */ g(int i4, Object obj) {
        this.f899d = i4;
        this.f900e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f899d) {
            case 0:
                PreviewSurfaceRenderer.a((PreviewSurfaceRenderer) this.f900e);
                return;
            case 1:
                ((SurfaceControlViewHost) this.f900e).release();
                return;
            default:
                ((LauncherPreviewRenderer.PreviewContext) this.f900e).onDestroy();
                return;
        }
    }
}
