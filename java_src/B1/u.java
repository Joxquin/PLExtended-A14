package b1;

import com.android.launcher3.uioverrides.QuickstepWidgetHolder;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final /* synthetic */ class u implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        ((ArrayList) QuickstepWidgetHolder.sHolders).forEach(new w(0));
    }
}
