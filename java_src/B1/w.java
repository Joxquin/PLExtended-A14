package b1;

import com.android.launcher3.uioverrides.QuickstepWidgetHolder;
import com.android.launcher3.widget.LauncherWidgetHolder;
import java.util.ArrayList;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class w implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4211a;

    public /* synthetic */ w(int i4) {
        this.f4211a = i4;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f4211a) {
            case 0:
                new ArrayList(((QuickstepWidgetHolder) obj).mProviderChangedListeners).forEach(new w(1));
                return;
            default:
                ((LauncherWidgetHolder.ProviderChangedListener) obj).notifyWidgetProvidersChanged();
                return;
        }
    }
}
