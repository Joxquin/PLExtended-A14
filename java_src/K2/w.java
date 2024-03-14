package K2;

import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.app.smartspace.SmartspaceTargetEvent;
import android.util.Log;
import com.google.android.systemui.smartspace.BcSmartspaceEvent;
import com.google.android.systemui.smartspace.BcSmartspaceView;
import com.google.android.systemui.smartspace.PageIndicator;
import j0.InterfaceC1107j;
import java.util.List;
/* loaded from: classes.dex */
public final class w implements InterfaceC1107j {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ BcSmartspaceView f1010a;

    public w(BcSmartspaceView bcSmartspaceView) {
        this.f1010a = bcSmartspaceView;
    }

    @Override // j0.InterfaceC1107j
    public final void a(int i4) {
        List list;
        BcSmartspaceView bcSmartspaceView = this.f1010a;
        bcSmartspaceView.f8337n = i4;
        if (i4 != 0 || (list = bcSmartspaceView.f8338o) == null) {
            return;
        }
        bcSmartspaceView.a(list);
    }

    @Override // j0.InterfaceC1107j
    public final void b(int i4) {
        BcSmartspaceView bcSmartspaceView = this.f1010a;
        SmartspaceTarget d4 = bcSmartspaceView.f8341r.d(bcSmartspaceView.f8333j);
        bcSmartspaceView.f8333j = i4;
        SmartspaceTarget d5 = bcSmartspaceView.f8341r.d(i4);
        bcSmartspaceView.d(d5, bcSmartspaceView.f8333j, BcSmartspaceEvent.SMARTSPACE_CARD_SEEN);
        if (bcSmartspaceView.f8327d == null) {
            Log.w("BcSmartspaceView", "Cannot notify target hidden/shown smartspace events: data provider null");
            return;
        }
        if (d4 == null) {
            Log.w("BcSmartspaceView", "Cannot notify target hidden smartspace event: previous target is null.");
        } else {
            SmartspaceTargetEvent.Builder builder = new SmartspaceTargetEvent.Builder(3);
            builder.setSmartspaceTarget(d4);
            SmartspaceAction baseAction = d4.getBaseAction();
            if (baseAction != null) {
                builder.setSmartspaceActionId(baseAction.getId());
            }
            bcSmartspaceView.f8327d.a(builder.build());
        }
        SmartspaceTargetEvent.Builder builder2 = new SmartspaceTargetEvent.Builder(2);
        builder2.setSmartspaceTarget(d5);
        SmartspaceAction baseAction2 = d5.getBaseAction();
        if (baseAction2 != null) {
            builder2.setSmartspaceActionId(baseAction2.getId());
        }
        bcSmartspaceView.f8327d.a(builder2.build());
    }

    @Override // j0.InterfaceC1107j
    public final void c(int i4, float f4) {
        PageIndicator pageIndicator = this.f1010a.f8332i;
        if (pageIndicator != null) {
            pageIndicator.b(f4, i4);
        }
    }
}
