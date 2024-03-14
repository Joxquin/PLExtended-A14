package b1;

import com.android.launcher3.util.Executors;
import com.android.launcher3.widget.LauncherWidgetHolder;
/* loaded from: classes.dex */
public final /* synthetic */ class t implements LauncherWidgetHolder.ProviderChangedListener {
    @Override // com.android.launcher3.widget.LauncherWidgetHolder.ProviderChangedListener
    public final void notifyWidgetProvidersChanged() {
        Executors.MAIN_EXECUTOR.execute(new u());
    }
}
