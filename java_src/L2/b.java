package L2;

import K2.K;
import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.app.smartspace.uitemplatedata.BaseTemplateData;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
import s1.C1393a;
/* loaded from: classes.dex */
public final class b {
    public static boolean a(BaseTemplateData baseTemplateData) {
        return (baseTemplateData == null || baseTemplateData.getTemplateType() == 0 || baseTemplateData.getTemplateType() == 8) ? false : true;
    }

    public static C1393a b(BaseTemplateData baseTemplateData) {
        if (baseTemplateData == null || baseTemplateData.getPrimaryItem() == null || baseTemplateData.getPrimaryItem().getTapAction() == null) {
            return null;
        }
        Bundle extras = baseTemplateData.getPrimaryItem().getTapAction().getExtras();
        ArrayList arrayList = new ArrayList();
        if (extras != null && !extras.isEmpty()) {
            ArrayList<Integer> integerArrayList = extras.getIntegerArrayList("ss_card_dimension_ids");
            ArrayList<Integer> integerArrayList2 = extras.getIntegerArrayList("ss_card_dimension_values");
            if (integerArrayList != null && integerArrayList2 != null && integerArrayList.size() == integerArrayList2.size()) {
                for (int i4 = 0; i4 < integerArrayList.size(); i4++) {
                    s1.b bVar = new s1.b();
                    bVar.f12284b = integerArrayList.get(i4).intValue();
                    bVar.f12285c = integerArrayList2.get(i4).intValue();
                    arrayList.add(bVar);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        C1393a c1393a = new C1393a();
        c1393a.f12282b = (s1.b[]) arrayList.toArray(new s1.b[arrayList.size()]);
        return c1393a;
    }

    public static h c(SmartspaceTarget smartspaceTarget) {
        if (smartspaceTarget == null || smartspaceTarget.getBaseAction() == null || smartspaceTarget.getBaseAction().getExtras() == null || smartspaceTarget.getBaseAction().getExtras().isEmpty() || smartspaceTarget.getBaseAction().getExtras().getInt("subcardType", -1) == -1) {
            return null;
        }
        SmartspaceAction baseAction = smartspaceTarget.getBaseAction();
        int b4 = K.b(baseAction.getExtras().getString("subcardId"));
        int i4 = baseAction.getExtras().getInt("subcardType");
        e eVar = new e();
        eVar.f1322a = b4;
        eVar.f1323b = i4;
        f fVar = new f(eVar);
        ArrayList arrayList = new ArrayList();
        arrayList.add(fVar);
        g gVar = new g();
        gVar.f1326a = arrayList;
        gVar.f1327b = 0;
        return new h(gVar);
    }

    public static h d(BaseTemplateData baseTemplateData) {
        if (baseTemplateData == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        e(arrayList, baseTemplateData.getSubtitleItem());
        e(arrayList, baseTemplateData.getSubtitleSupplementalItem());
        e(arrayList, baseTemplateData.getSupplementalLineItem());
        if (arrayList.isEmpty()) {
            return null;
        }
        g gVar = new g();
        gVar.f1326a = arrayList;
        return new h(gVar);
    }

    public static void e(List list, BaseTemplateData.SubItemInfo subItemInfo) {
        if (subItemInfo == null || subItemInfo.getLoggingInfo() == null) {
            return;
        }
        BaseTemplateData.SubItemLoggingInfo loggingInfo = subItemInfo.getLoggingInfo();
        e eVar = new e();
        eVar.f1323b = loggingInfo.getFeatureType();
        eVar.f1322a = loggingInfo.getInstanceId();
        ((ArrayList) list).add(new f(eVar));
    }

    public static void f(d dVar, SmartspaceTarget smartspaceTarget) {
        boolean z4;
        if (dVar.f1317e != 1) {
            z4 = false;
        } else {
            dVar.f1317e = 39;
            dVar.f1313a = K.b("date_card_794317_92634");
            z4 = true;
        }
        if (!z4 || smartspaceTarget == null || "date_card_794317_92634".equals(smartspaceTarget.getSmartspaceTargetId())) {
            return;
        }
        if (dVar.f1320h == null) {
            g gVar = new g();
            gVar.f1327b = 0;
            gVar.f1326a = new ArrayList();
            dVar.f1320h = new h(gVar);
        }
        h hVar = dVar.f1320h;
        if (hVar.f1328a == null) {
            hVar.f1328a = new ArrayList();
        }
        if (dVar.f1320h.f1328a.size() == 0 || !(dVar.f1320h.f1328a.get(0) == null || ((f) dVar.f1320h.f1328a.get(0)).f1325b == 1)) {
            List list = dVar.f1320h.f1328a;
            e eVar = new e();
            eVar.f1322a = K.a(smartspaceTarget);
            eVar.f1323b = 1;
            list.add(0, new f(eVar));
            h hVar2 = dVar.f1320h;
            int i4 = hVar2.f1329b;
            if (i4 > 0) {
                hVar2.f1329b = i4 + 1;
            }
        }
    }

    public static void g(d dVar, BaseTemplateData baseTemplateData) {
        boolean z4 = true;
        if (dVar.f1317e != 1) {
            z4 = false;
        } else {
            dVar.f1317e = 39;
            dVar.f1313a = K.b("date_card_794317_92634");
        }
        if (z4 || baseTemplateData == null || baseTemplateData.getPrimaryItem() == null || baseTemplateData.getPrimaryItem().getLoggingInfo() == null) {
            return;
        }
        int featureType = baseTemplateData.getPrimaryItem().getLoggingInfo().getFeatureType();
        if (featureType > 0) {
            dVar.f1317e = featureType;
        }
        int instanceId = baseTemplateData.getPrimaryItem().getLoggingInfo().getInstanceId();
        if (instanceId > 0) {
            dVar.f1313a = instanceId;
        }
    }
}
