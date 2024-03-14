package a1;

import android.view.WindowManager;
import com.android.launcher3.taskbar.overlay.TaskbarOverlayController;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f2392a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ TaskbarOverlayController f2393b;

    public /* synthetic */ c(TaskbarOverlayController taskbarOverlayController, int i4) {
        this.f2392a = i4;
        this.f2393b = taskbarOverlayController;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f2392a) {
            case 0:
                TaskbarOverlayController.a(this.f2393b, (WindowManager) obj);
                return;
            default:
                TaskbarOverlayController.b(this.f2393b, (WindowManager) obj);
                return;
        }
    }
}
