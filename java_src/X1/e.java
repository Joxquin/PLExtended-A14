package X1;

import android.content.Context;
import android.net.Uri;
import com.android.launcher3.views.Snackbar;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f2032d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ f f2033e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Uri f2034f;

    public /* synthetic */ e(f fVar, Uri uri, int i4) {
        this.f2032d = i4;
        this.f2033e = fVar;
        this.f2034f = uri;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2032d) {
            case 0:
                f fVar = this.f2033e;
                Uri uri = this.f2034f;
                fVar.getClass();
                Snackbar.show((Context) fVar.f2035a, (int) R.string.saved_images_snackbar_label, (int) R.string.saved_images_snackbar_action, (Runnable) null, new e(fVar, uri, 1));
                return;
            default:
                f.f(this.f2033e, this.f2034f);
                return;
        }
    }
}
