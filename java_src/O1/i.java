package O1;

import android.graphics.Rect;
import android.view.View;
import com.android.launcher3.Launcher;
/* loaded from: classes.dex */
public final class i extends View {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Rect f1452d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(Launcher launcher, Rect rect) {
        super(launcher);
        this.f1452d = rect;
    }

    @Override // android.view.View
    public final void getLocationOnScreen(int[] iArr) {
        Rect rect = this.f1452d;
        iArr[0] = rect.left;
        iArr[1] = rect.top;
    }
}
