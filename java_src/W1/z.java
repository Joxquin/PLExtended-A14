package W1;

import K2.C0032e;
import android.app.smartspace.SmartspaceTarget;
import android.content.Intent;
import android.util.Log;
import android.view.View;
import com.google.android.apps.nexuslauncher.qsb.SmartspaceViewContainer;
import com.google.android.systemui.smartspace.BcSmartspaceCard;
import com.google.android.systemui.smartspace.BcSmartspaceView;
import com.google.android.systemui.smartspace.uitemplate.BaseTemplateCard;
/* loaded from: classes.dex */
public final /* synthetic */ class z implements View.OnLongClickListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f1929d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f1930e;

    public /* synthetic */ z(int i4, Object obj) {
        this.f1929d = i4;
        this.f1930e = obj;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        switch (this.f1929d) {
            case 0:
                int i4 = SmartspaceViewContainer.f7540g;
                view.getContext().startActivity((Intent) this.f1930e);
                return true;
            case 1:
                int i5 = SmartspaceViewContainer.f7540g;
                view.getContext().startActivity((Intent) this.f1930e);
                return true;
            default:
                SmartspaceViewContainer smartspaceViewContainer = (SmartspaceViewContainer) this.f1930e;
                BcSmartspaceView bcSmartspaceView = smartspaceViewContainer.f7542e;
                K2.A a4 = (K2.A) bcSmartspaceView.f8341r.f916d.get(bcSmartspaceView.f8331h.f10679i);
                BcSmartspaceCard bcSmartspaceCard = a4 != null ? a4.f909b : null;
                BcSmartspaceView bcSmartspaceView2 = smartspaceViewContainer.f7542e;
                K2.A a5 = (K2.A) bcSmartspaceView2.f8341r.f916d.get(bcSmartspaceView2.f8331h.f10679i);
                BaseTemplateCard baseTemplateCard = a5 != null ? a5.f911d : null;
                if (baseTemplateCard == null && bcSmartspaceCard == null) {
                    Log.e("SmartspaceViewContainer", "Cannot handle long click for: ".concat(view.getClass().getSimpleName()));
                    return false;
                } else if (bcSmartspaceCard == null) {
                    if (baseTemplateCard != null) {
                        smartspaceViewContainer.b(baseTemplateCard, baseTemplateCard.f8387e, baseTemplateCard.r());
                        return true;
                    }
                    return true;
                } else {
                    SmartspaceTarget smartspaceTarget = bcSmartspaceCard.f8271e;
                    L2.d dVar = bcSmartspaceCard.f8286t;
                    if (dVar == null) {
                        L2.c cVar = new L2.c();
                        cVar.f1305b = C0032e.d(bcSmartspaceCard.f8287u, bcSmartspaceCard.f8288v);
                        SmartspaceTarget smartspaceTarget2 = bcSmartspaceCard.f8271e;
                        cVar.f1308e = smartspaceTarget2 != null ? smartspaceTarget2.getFeatureType() : 0;
                        bcSmartspaceCard.getContext().getPackageManager();
                        cVar.f1310g = -1;
                        dVar = new L2.d(cVar);
                    }
                    smartspaceViewContainer.b(bcSmartspaceCard, smartspaceTarget, dVar);
                    return true;
                }
        }
    }
}
