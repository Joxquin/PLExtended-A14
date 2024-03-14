package X1;

import android.view.View;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.popup.SystemShortcut;
/* loaded from: classes.dex */
public final class q extends SystemShortcut {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f2057d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ t f2058e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ q(t tVar, int i4, int i5, BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo, View view, int i6) {
        super(i4, i5, baseDraggingActivity, itemInfo, view);
        this.f2057d = i6;
        this.f2058e = tVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f2057d) {
            case 0:
                this.f2058e.f2063a.a();
                SystemShortcut.dismissTaskMenuView(this.f2058e.f2064b.f2077o);
                return;
            default:
                this.f2058e.f2063a.onScreenshot();
                SystemShortcut.dismissTaskMenuView(this.f2058e.f2064b.f2077o);
                return;
        }
    }
}
