package O1;

import android.app.Dialog;
import android.content.Context;
import android.view.Window;
import java.util.Objects;
/* loaded from: classes.dex */
public final class h extends Dialog {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ l f1451d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(l lVar, Context context) {
        super(context);
        this.f1451d = lVar;
    }

    @Override // android.app.Dialog
    public final void onStart() {
        super.onStart();
        Window window = getWindow();
        Objects.requireNonNull(window);
        window.setWindowAnimations(0);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z4) {
        super.onWindowFocusChanged(z4);
        if (z4) {
            return;
        }
        this.f1451d.f1459h.close(true);
    }
}
