package a1;

import android.view.WindowManager;
import com.android.launcher3.taskbar.overlay.TaskbarOverlayContext;
import java.util.function.Function;
/* renamed from: a1.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0157b implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return (WindowManager) ((TaskbarOverlayContext) obj).getSystemService(WindowManager.class);
    }
}
