package O1;

import android.content.Context;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.ViewGroup;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Insettable;
import com.android.launcher3.Launcher;
import com.google.android.apps.nexuslauncher.customize.OptionsPopupDialog$PopupView;
/* loaded from: classes.dex */
public final class k extends AbstractFloatingView implements Insettable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ l f1454d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(l lVar, Context context) {
        super(context, null);
        this.f1454d = lVar;
    }

    public static void a(k kVar) {
        if (kVar.getParent() != null) {
            ((ViewGroup) kVar.getParent()).removeView(kVar);
        }
        Launcher launcher = kVar.f1454d.f1465n;
        if (launcher != null) {
            launcher.getDragLayer().addView(kVar);
            kVar.mIsOpen = true;
        }
    }

    public OptionsPopupDialog$PopupView getOptionsPopup() {
        return this.f1454d.f1460i;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final void handleClose(boolean z4) {
        this.mIsOpen = false;
        Launcher launcher = this.f1454d.f1465n;
        if (launcher != null) {
            launcher.getDragLayer().removeView(this);
            if (this.f1454d.c()) {
                return;
            }
            this.f1454d.f1460i.close(z4);
        }
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final boolean isOfType(int i4) {
        return (i4 & 16384) != 0;
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        close(true);
        return true;
    }

    @Override // com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
    }
}
