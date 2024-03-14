package V1;

import android.app.prediction.AppTarget;
import android.content.pm.ShortcutInfo;
import android.graphics.RectF;
import com.android.quickstep.TaskOverlayFactory;
/* loaded from: classes.dex */
public interface i extends TaskOverlayFactory.OverlayUICallbacks {
    void a();

    void b(String str, boolean z4);

    void c(RectF rectF);

    void d(String str);

    void e(RectF rectF, boolean z4);

    void f();

    void g(String str, ShortcutInfo shortcutInfo, AppTarget appTarget, boolean z4);

    void h(RectF rectF, ShortcutInfo shortcutInfo, AppTarget appTarget, boolean z4);

    void i();
}
